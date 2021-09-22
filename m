Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BA9A4146E7
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 12:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235055AbhIVKqF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 06:46:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234825AbhIVKqF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 06:46:05 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69263C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:44:35 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id g8so8150815edt.7
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gfo3ySx0mOztzhYe0egxReN8tzekiAsXOUHxeQvHwnc=;
        b=u8KxRyGKQ0vPOQCFtNr1StgJN8QdTjUYqkfBifs7zqKaXUclYblFKGBpaxvXAiu/NW
         9mmG8jm/+kgShGKcNuodK9053OixmjzAuvYF3PLv88420cMAONjNNg/EnEOtO9OXJIuf
         Oz9rQUOp6oxfRBw68A3kQbEIJgOLulXgtqWzmS7anevqV7q4hwFEjZpTS1u8qHlKklNb
         X82Vfu4gQjKd27e6V45O/lb2umRil8UYSfP9/4g3fk9MQy7dOYIJdqaxeaoxBwT9jVLY
         NH1JGhxHt0/FOUM8NHWV+qyXMuxhjDdeqrFbCGm3qmoTFhE79ejuAseQJKLj1xgAzXiU
         tVbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gfo3ySx0mOztzhYe0egxReN8tzekiAsXOUHxeQvHwnc=;
        b=hx7Vv3LzWn2/BfjO6cZgzckWOhNPm8+MKFAV3sFjallSpj3PVleX71I3FITbol/48E
         Bvu+UsWvAzZjwCLubFioj03FEr3XajFDqOIUR8g/NVWiq2/1FI4Y9bSfvC8iWwUE/vbC
         czQaTmREDHMKhNtz/oHtEI5PaeKL8cSCbarU9QKcOxUtytEldzxC5tCPCB7NNYeII0fD
         VNY8AK3DVZ9lspqkoi1UG+83kBMPk1cM2k7ZbXSAo9/53mp9YWPGEtI0mSZ9EgMCHtYf
         oFObJBD72aP8NBcdwNWfNRCdjDyQuJ4+mnUKCxCsljzoX6z7MNVRQTaYQAbxIZh+PZmJ
         8NuA==
X-Gm-Message-State: AOAM533t4wkUm8Kxzt5VrivK8Ewq6EgxCmusjoO9uvdKR/1+fTCapxOt
        zvNhx3BnYhR5FRs0uHinpV1mH+xS+lBTVQ==
X-Google-Smtp-Source: ABdhPJxNVxvLYU5TyoLcQQXcXBu9X2EkqhfMWYsnypyaZDyxrUYPCk57Wp7yFPfLqDaQ+wIBN2owew==
X-Received: by 2002:a17:906:b183:: with SMTP id w3mr40128468ejy.394.1632307474026;
        Wed, 22 Sep 2021 03:44:34 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id y8sm882133ejm.104.2021.09.22.03.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 03:44:33 -0700 (PDT)
Subject: Re: [PATCH v7 16/22] ASoC: qdsp6: audioreach: add module
 configuration command helpers
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
 <20210921133709.4973-17-srinivas.kandagatla@linaro.org>
 <b2d677c6-db3b-1b4b-9121-dabdf56cb137@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <b8d29948-7e29-f226-861a-6fdf94fbc7ac@linaro.org>
Date:   Wed, 22 Sep 2021 11:44:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b2d677c6-db3b-1b4b-9121-dabdf56cb137@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/09/2021 18:09, Pierre-Louis Bossart wrote:
> 
>> +static int audioreach_i2s_set_media_format(struct q6apm_graph *graph,
>> +					   struct audioreach_module *module,
>> +					   struct audioreach_module_config *cfg)
>> +{
>> +	struct apm_module_frame_size_factor_cfg *fs_cfg;
>> +	struct apm_module_param_data *param_data;
>> +	struct apm_i2s_module_intf_cfg *intf_cfg;
>> +	struct apm_module_hw_ep_mf_cfg *hw_cfg;
>> +	int ic_sz, ep_sz, fs_sz;
>> +	int rc, payload_size;
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +
>> +	ic_sz = APM_I2S_INTF_CFG_PSIZE;
>> +	ep_sz = APM_HW_EP_CFG_PSIZE;
>> +	fs_sz = APM_FS_CFG_PSIZE;
>> +
>> +	payload_size = ic_sz + ep_sz + fs_sz;
>> +
>> +	pkt = audioreach_alloc_apm_cmd_pkt(payload_size, APM_CMD_SET_CFG, 0);
>> +	if (IS_ERR(pkt))
>> +		return -ENOMEM;
>> +
>> +	p = (void *)pkt + GPR_HDR_SIZE + APM_CMD_HDR_SIZE;
>> +	intf_cfg = p;
>> +
>> +	param_data = &intf_cfg->param_data;
>> +	param_data->module_instance_id = module->instance_id;
>> +	param_data->error_code = 0;
>> +	param_data->param_id = PARAM_ID_I2S_INTF_CFG;
>> +	param_data->param_size = ic_sz - APM_MODULE_PARAM_DATA_SIZE;
>> +
>> +	intf_cfg->cfg.intf_idx = module->hw_interface_idx;
>> +	intf_cfg->cfg.sd_line_idx = module->sd_line_idx;
>> +
>> +	switch (cfg->fmt & SND_SOC_DAIFMT_MASTER_MASK) {
> SND_SOC_DAIFMT_CLOCK_PROVIDER_MASK
> 
Its now fixed in next version.

>> +	case SND_SOC_DAIFMT_CBC_CFC:
>> +		intf_cfg->cfg.ws_src = CONFIG_I2S_WS_SRC_INTERNAL;
>> +		break;
>> +	case SND_SOC_DAIFMT_CBP_CFP:
>> +		/* CPU is slave */
>> +		intf_cfg->cfg.ws_src = CONFIG_I2S_WS_SRC_EXTERNAL;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +
>> +	p += ic_sz;
>> +	hw_cfg = p;
>> +	param_data = &hw_cfg->param_data;
>> +	param_data->module_instance_id = module->instance_id;
>> +	param_data->error_code = 0;
>> +	param_data->param_id = PARAM_ID_HW_EP_MF_CFG;
>> +	param_data->param_size = ep_sz - APM_MODULE_PARAM_DATA_SIZE;
>> +
>> +	hw_cfg->mf.sample_rate = cfg->sample_rate;
>> +	hw_cfg->mf.bit_width = cfg->bit_width;
>> +	hw_cfg->mf.num_channels = cfg->num_channels;
>> +	hw_cfg->mf.data_format = module->data_format;
>> +
>> +	p += ep_sz;
>> +	fs_cfg = p;
>> +	param_data = &fs_cfg->param_data;
>> +	param_data->module_instance_id = module->instance_id;
>> +	param_data->error_code = 0;
>> +	param_data->param_id = PARAM_ID_HW_EP_FRAME_SIZE_FACTOR;
>> +	param_data->param_size = fs_sz - APM_MODULE_PARAM_DATA_SIZE;
>> +	fs_cfg->frame_size_factor = 1;
>> +
>> +	rc = q6apm_send_cmd_sync(graph->apm, pkt, 0);
>> + error and
>> +	kfree(pkt);
>> +
>> +	return rc;
>> +}
>> +int audioreach_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, size_t period_sz,
>> +				  unsigned int periods, bool is_contiguous)
>> +{
>> +	struct apm_shared_map_region_payload *mregions;
>> +	struct apm_cmd_shared_mem_map_regions *cmd;
>> +	uint32_t num_regions, buf_sz, payload_size;
>> +	struct audioreach_graph_data *data;
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +	int rc, i;
>> +
>> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
>> +		data = &graph->rx_data;
>> +	else
>> +		data = &graph->tx_data;
>> +
>> +	if (is_contiguous) {
>> +		num_regions = 1;
>> +		buf_sz = period_sz * periods;
>> +	} else {
>> +		buf_sz = period_sz;
>> +		num_regions = periods;
>> +	}
>> +
>> +	/* DSP expects size should be aligned to 4K */
>> +	buf_sz = ALIGN(buf_sz, 4096);
>> +
>> +	payload_size = sizeof(*cmd) + (sizeof(*mregions) * num_regions);
>> +
>> +	pkt = audioreach_alloc_apm_pkt(payload_size, APM_CMD_SHARED_MEM_MAP_REGIONS, dir,
>> +				     graph->port->id);
>> +	if (IS_ERR(pkt))
>> +		return -ENOMEM;
> return PTR_ERR(pkt) ?
> 

Removed such instances across all the files.

--srini
> 
>> +int audioreach_shared_memory_send_eos(struct q6apm_graph *graph)
>> +{
>> +	struct data_cmd_wr_sh_mem_ep_eos *eos;
>> +	struct gpr_pkt *pkt;
>> +	int rc = 0, iid;
>> +
>> +	iid = q6apm_graph_get_rx_shmem_module_iid(graph);
>> +	pkt = audioreach_alloc_cmd_pkt(sizeof(*eos), DATA_CMD_WR_SH_MEM_EP_EOS, 0,
>> +				       graph->port->id, iid);
>> +	if (IS_ERR(pkt))
>> +		return -ENOMEM;
> return PTR_ERR(pkt) ?
> 
