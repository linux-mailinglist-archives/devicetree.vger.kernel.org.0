Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F2D0419F8A
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 21:53:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236702AbhI0Tyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 15:54:37 -0400
Received: from mga05.intel.com ([192.55.52.43]:39457 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236703AbhI0Tyh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 15:54:37 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310102853"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="310102853"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="486268028"
Received: from asen4-mobl2.amr.corp.intel.com (HELO [10.212.27.2]) ([10.212.27.2])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:56 -0700
Subject: Re: [PATCH v8 19/22] ASoC: qdsp6: audioreach: add q6apm-dai support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-20-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <20605122-e6b4-1b5f-003a-96a74306f984@linux.intel.com>
Date:   Mon, 27 Sep 2021 11:25:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927135559.738-20-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> +static int q6apm_dai_prepare(struct snd_soc_component *component,
> +			     struct snd_pcm_substream *substream)
> +{
> +	struct snd_pcm_runtime *runtime = substream->runtime;
> +	struct q6apm_dai_rtd *prtd = runtime->private_data;
> +	struct audioreach_module_config cfg;
> +	struct device *dev = component->dev;
> +	struct q6apm_dai_data *pdata;
> +	int ret;
> +
> +	pdata = snd_soc_component_get_drvdata(component);
> +	if (!pdata)
> +		return -EINVAL;
> +
> +	if (!prtd || !prtd->graph) {
> +		dev_err(dev, "%s: private data null or audio client freed\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	cfg.direction = substream->stream;
> +	cfg.sample_rate = runtime->rate;
> +	cfg.num_channels = runtime->channels;
> +	cfg.bit_width = prtd->bits_per_sample;
> +
> +	prtd->pcm_count = snd_pcm_lib_period_bytes(substream);
> +	prtd->pos = 0;
> +	/* rate and channels are sent to audio driver */
> +	ret = q6apm_graph_media_format_shmem(prtd->graph, &cfg);
> +	if (ret < 0) {
> +		dev_err(dev, "%s: q6apm_open_write failed\n", __func__);
> +		return ret;
> +	}
> +
> +	ret = q6apm_graph_media_format_pcm(prtd->graph, &cfg);
> +	if (ret < 0)
> +		dev_err(dev, "%s: CMD Format block failed\n", __func__);
> +
> +	ret = q6apm_map_memory_regions(prtd->graph, substream->stream, prtd->phys,
> +				       (prtd->pcm_size / prtd->periods), prtd->periods);
> +
> +	if (ret < 0) {
> +		dev_err(dev, "Audio Start: Buffer Allocation failed rc = %d\n",	ret);
> +		return -ENOMEM;
> +	}
> +
> +	ret = q6apm_graph_prepare(prtd->graph);
> +	if (ret) {
> +		dev_err(dev, "Failed to prepare Graph %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = q6apm_graph_start(prtd->graph);
> +	if (ret) {
> +		dev_err(dev, "Failed to Start Graph %d\n", ret);
> +		return ret;
> +	}
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
> +		int i;
> +		/* Queue the buffers for Capture ONLY after graph is started */
> +		for (i = 0; i < runtime->periods; i++)
> +			q6apm_read(prtd->graph);
> +
> +	}
> +
> +	prtd->state = Q6APM_STREAM_RUNNING;

you should probably explain why a stream moves to the 'RUNNING' state in
a .prepare() callback, instead of TRIGGER_START?

> +
> +	return 0;
> +}
> +
> +static int q6apm_dai_trigger(struct snd_soc_component *component,
> +			     struct snd_pcm_substream *substream, int cmd)
> +{
> +	struct snd_pcm_runtime *runtime = substream->runtime;
> +	struct q6apm_dai_rtd *prtd = runtime->private_data;
> +	int ret = 0;
> +
> +	switch (cmd) {
> +	case SNDRV_PCM_TRIGGER_START:
> +	case SNDRV_PCM_TRIGGER_RESUME:
> +	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
> +		 /* start writing buffers for playback only as we already queued capture buffers */
> +		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
> +			ret = q6apm_write_async(prtd->graph, prtd->pcm_count, 0, 0, 0);
> +		break;
> +	case SNDRV_PCM_TRIGGER_STOP:
> +		/* TODO support be handled via SoftPause Module */
> +		prtd->state = Q6APM_STREAM_STOPPED;
> +		break;
> +	case SNDRV_PCM_TRIGGER_SUSPEND:
> +	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
> +		break;
> +	default:
> +		ret = -EINVAL;
> +		break;
> +	}
> +
> +	return ret;
> +}

