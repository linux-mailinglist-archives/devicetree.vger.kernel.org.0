Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFBDD419F84
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 21:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236469AbhI0Ty3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 15:54:29 -0400
Received: from mga17.intel.com ([192.55.52.151]:16937 "EHLO mga17.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236402AbhI0Ty2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 15:54:28 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="204703941"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="204703941"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:50 -0700
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="486267994"
Received: from asen4-mobl2.amr.corp.intel.com (HELO [10.212.27.2]) ([10.212.27.2])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:47 -0700
Subject: Re: [PATCH v8 16/22] ASoC: qdsp6: audioreach: add module
 configuration command helpers
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-17-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <2be40835-e98a-ff3f-71b1-ab2dd80086c3@linux.intel.com>
Date:   Mon, 27 Sep 2021 11:16:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927135559.738-17-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> +static int audioreach_shmem_set_media_format(struct q6apm_graph *graph,
> +					     struct audioreach_module *module,
> +					     struct audioreach_module_config *mcfg)
> +{
> +	uint32_t num_channels = mcfg->num_channels;
> +	struct apm_module_param_data *param_data;
> +	struct payload_media_fmt_pcm *cfg;
> +	struct media_format *header;
> +	int rc, payload_size;
> +	struct gpr_pkt *pkt;
> +	void *p;
> +
> +	if (num_channels > 2) {
> +		dev_err(graph->dev, "Error: Invalid channels (%d)!\n", num_channels);
> +		return -EINVAL;
> +	}

so here mcfg->num_channels > 2 is flagged as an error, but ...

> +
> +	payload_size = APM_SHMEM_FMT_CFG_PSIZE(num_channels) + APM_MODULE_PARAM_DATA_SIZE;
> +
> +	pkt = audioreach_alloc_cmd_pkt(payload_size, APM_CMD_SET_CFG, 0,
> +				     graph->port->id, module->instance_id);
> +	if (IS_ERR(pkt))
> +		return PTR_ERR(pkt);
> +
> +	p = (void *)pkt + GPR_HDR_SIZE + APM_CMD_HDR_SIZE;
> +
> +	param_data = p;
> +	param_data->module_instance_id = module->instance_id;
> +	param_data->error_code = 0;
> +	param_data->param_id = PARAM_ID_MEDIA_FORMAT;
> +	param_data->param_size = payload_size - APM_MODULE_PARAM_DATA_SIZE;
> +	p = p + APM_MODULE_PARAM_DATA_SIZE;
> +
> +	header = p;
> +	header->data_format = DATA_FORMAT_FIXED_POINT;
> +	header->fmt_id = MEDIA_FMT_ID_PCM;
> +	header->payload_size = payload_size - sizeof(*header);
> +
> +	p = p + sizeof(*header);
> +	cfg = p;
> +	cfg->sample_rate = mcfg->sample_rate;
> +	cfg->bit_width = mcfg->bit_width;
> +	cfg->alignment = PCM_LSB_ALIGNED;
> +	cfg->bits_per_sample = mcfg->bit_width;
> +	cfg->q_factor = mcfg->bit_width - 1;
> +	cfg->endianness = PCM_LITTLE_ENDIAN;
> +	cfg->num_channels = mcfg->num_channels;
> +
> +	if (mcfg->num_channels == 1) {
> +		cfg->channel_mapping[0] =  PCM_CHANNEL_L;
> +	} else if (num_channels == 2) {
> +		cfg->channel_mapping[0] =  PCM_CHANNEL_L;
> +		cfg->channel_mapping[1] =  PCM_CHANNEL_R;
> +	} else {
> +		dev_err(graph->dev, "Error: Invalid channels (%d)!\n", num_channels);
> +		rc = -EINVAL;
> +		goto err;

... this is again the case where mcfg->num_channels > 2 so this block is
never executed.

> +	}
> +
> +	rc = audioreach_graph_send_cmd_sync(graph, pkt, 0);
> +err:
> +	kfree(pkt);
> +
> +	return rc;
> +}
> +
