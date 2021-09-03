Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5307400383
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 18:38:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235714AbhICQjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 12:39:17 -0400
Received: from mga09.intel.com ([134.134.136.24]:17724 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1350054AbhICQjN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 3 Sep 2021 12:39:13 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="219477855"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="219477855"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2021 09:37:56 -0700
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="462453494"
Received: from seangorm-mobl.amr.corp.intel.com (HELO [10.251.136.111]) ([10.251.136.111])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2021 09:37:55 -0700
Subject: Re: [PATCH v5 19/21] ASoC: qdsp6: audioreach: add q6apm lpass dai
 support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-20-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <4374a141-877e-fe80-d61b-e3c7b90c447b@linux.intel.com>
Date:   Fri, 3 Sep 2021 10:53:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903112032.25834-20-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


>  config SND_SOC_QDSP6_APM
>  	select SND_SOC_QDSP6_APM_DAI
> +	select SND_SOC_QDSP6_APM_LPASS_DAI
>  	tristate

tristate then select?

>
> +static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream,
> +			       struct snd_soc_dai *dai)
> +{
> +	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
> +	struct audioreach_module_config *cfg = &dai_data->module_config[dai->id];
> +	int graph_id = dai->id;
> +	int rc;
> +	struct q6apm_graph *graph;
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> +		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
> +		if (IS_ERR(graph)) {
> +			dev_err(dai->dev, "Failed to open graph (%d)\n",
> +				graph_id);
> +			rc = PTR_ERR(graph);
> +			return rc;
> +		}
> +		dai_data->graph[graph_id] = graph;
> +	}

so you don't open a graph on capture?

How does the rest work if dai_data->graph is not initialized?
Or is it done somewhere else and it'd be worthy of a comment?

> +
> +	cfg->direction = substream->stream;
> +	rc = q6apm_graph_media_format_pcm(dai_data->graph[dai->id], cfg);
> +
> +	if (rc) {
> +		dev_err(dai->dev, "Failed to set media format %d\n", rc);
> +		return rc;
> +	}
> +
> +	rc = q6apm_graph_prepare(dai_data->graph[dai->id]);
> +	if (rc) {
> +		dev_err(dai->dev, "Failed to prepare Graph %d\n", rc);
> +		return rc;
> +	}
> +
> +	rc = q6apm_graph_start(dai_data->graph[dai->id]);
> +	if (rc < 0) {
> +		dev_err(dai->dev, "fail to start APM port %x\n", dai->id);
> +		return rc;
> +	}
> +	dai_data->is_port_started[dai->id] = true;
> +
> +	return 0;
> +}
> +
> +static int q6apm_lpass_dai_startup(struct snd_pcm_substream *substream,
> +				struct snd_soc_dai *dai)
> +{
> +	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
> +	int graph_id = dai->id;
> +	struct q6apm_graph *graph;
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
> +		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
> +		if (IS_ERR(graph)) {
> +			dev_err(dai->dev, "Failed to open graph (%d)\n",
> +				graph_id);
> +			return PTR_ERR(graph);
> +		}
> +		dai_data->graph[graph_id] = graph;
> +	}

definitively need a comment on why the behavior is different from
capture and playback?

What prevents you from doing the same operations in .startup for capture
and playback?

> +
> +	return 0;
> +}
> +

