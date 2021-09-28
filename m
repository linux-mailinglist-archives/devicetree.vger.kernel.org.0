Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C331941ACD7
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 12:21:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240148AbhI1KXU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 06:23:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239952AbhI1KXT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 06:23:19 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B3FEC061575
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 03:21:40 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id j27so3020307wms.0
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 03:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=P4rbKj3d/woidokjvbpPUbGWRF5RvEv/2Gj/Zmur/bI=;
        b=n8hiDNLG/+TGnrfWgbNWtgHz01Rbv76vsUlLnhJq6MfpUUVO2xl8+OjARxPRVfx3EW
         ArzChCTRAU6+jgzESeqD22n4Gobb2Inx4MufrvCbIWJTLEZOh5GFmEIBjJ3fuk3ow+h3
         28693JHfhTZViJVJodzoKPYsmz//SMZ+5yRigBpuPThM1Py/O9tzDcMpeGpMz3pd2T76
         Mq3yV/XSC26N0DOgX0ITm35PhtfTapegNfMbAchIbCxDUVgg7h/iBehQ6mAXNxkEurTu
         HnGn297T89s8mpNwXxgcO+lskslQzr987fkC5HMqD8K0rzS/8jKq4QHBtfDQRv2ufWXd
         USMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=P4rbKj3d/woidokjvbpPUbGWRF5RvEv/2Gj/Zmur/bI=;
        b=YJc1faMZ/nhnrCVYvVJUnJHj0dF8dPHvdVLuWAM0RhuFqVx7FdTAI3vME7h2tSG77p
         e5hc4cFW4xhiUQT9NGYs0x6LynJMwNzcn5BMkz9P3RcS9IVIdmG3uyqtnD/PpMT45vAW
         GP13hT4b8UaTS4m1et1grIqoyyDsUZDwlCBMFb6NnVvW0xlEQWHwV8u2EfJ4oqqasc7e
         54ZIeukZrVb7m+FEqus+R4zBMAGEuwsBRVzCLM+oyYu1kptFSCm7OHU4v0sfZSE7T9zW
         a0po6ZOeZ3qubOIgah63YAJ+BrvycptZAY1INtKo+NYxNjt5LFqf/PzpVy4ds/pqbvkB
         zxfg==
X-Gm-Message-State: AOAM530eorw/5OPozyeKYL81TDNwz30h1tbzleQ/YUwzN+SrCGcFBarN
        A9Tq0MPtJUz5SiFErjABCi+o+g==
X-Google-Smtp-Source: ABdhPJy+BvIKjHPLakTXuFs6462RKnaNRkKp7fL0GUlBTuSHpti2s5PKjkQNBn5GNz56rEL68WSkNg==
X-Received: by 2002:a05:600c:247:: with SMTP id 7mr1908531wmj.4.1632824499076;
        Tue, 28 Sep 2021 03:21:39 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id a3sm6597588wrn.16.2021.09.28.03.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 03:21:38 -0700 (PDT)
Subject: Re: [PATCH v8 16/22] ASoC: qdsp6: audioreach: add module
 configuration command helpers
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-17-srinivas.kandagatla@linaro.org>
 <2be40835-e98a-ff3f-71b1-ab2dd80086c3@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <42986413-57a5-30cb-5256-84b5f4e5e004@linaro.org>
Date:   Tue, 28 Sep 2021 11:21:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <2be40835-e98a-ff3f-71b1-ab2dd80086c3@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27/09/2021 17:16, Pierre-Louis Bossart wrote:
> 
>> +static int audioreach_shmem_set_media_format(struct q6apm_graph *graph,
>> +					     struct audioreach_module *module,
>> +					     struct audioreach_module_config *mcfg)
>> +{
>> +	uint32_t num_channels = mcfg->num_channels;
>> +	struct apm_module_param_data *param_data;
>> +	struct payload_media_fmt_pcm *cfg;
>> +	struct media_format *header;
>> +	int rc, payload_size;
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +
>> +	if (num_channels > 2) {
>> +		dev_err(graph->dev, "Error: Invalid channels (%d)!\n", num_channels);
>> +		return -EINVAL;
>> +	}
> 
> so here mcfg->num_channels > 2 is flagged as an error, but ...
> 
>> +
>> +	payload_size = APM_SHMEM_FMT_CFG_PSIZE(num_channels) + APM_MODULE_PARAM_DATA_SIZE;
>> +
>> +	pkt = audioreach_alloc_cmd_pkt(payload_size, APM_CMD_SET_CFG, 0,
>> +				     graph->port->id, module->instance_id);
>> +	if (IS_ERR(pkt))
>> +		return PTR_ERR(pkt);
>> +
>> +	p = (void *)pkt + GPR_HDR_SIZE + APM_CMD_HDR_SIZE;
>> +
>> +	param_data = p;
>> +	param_data->module_instance_id = module->instance_id;
>> +	param_data->error_code = 0;
>> +	param_data->param_id = PARAM_ID_MEDIA_FORMAT;
>> +	param_data->param_size = payload_size - APM_MODULE_PARAM_DATA_SIZE;
>> +	p = p + APM_MODULE_PARAM_DATA_SIZE;
>> +
>> +	header = p;
>> +	header->data_format = DATA_FORMAT_FIXED_POINT;
>> +	header->fmt_id = MEDIA_FMT_ID_PCM;
>> +	header->payload_size = payload_size - sizeof(*header);
>> +
>> +	p = p + sizeof(*header);
>> +	cfg = p;
>> +	cfg->sample_rate = mcfg->sample_rate;
>> +	cfg->bit_width = mcfg->bit_width;
>> +	cfg->alignment = PCM_LSB_ALIGNED;
>> +	cfg->bits_per_sample = mcfg->bit_width;
>> +	cfg->q_factor = mcfg->bit_width - 1;
>> +	cfg->endianness = PCM_LITTLE_ENDIAN;
>> +	cfg->num_channels = mcfg->num_channels;
>> +
>> +	if (mcfg->num_channels == 1) {
>> +		cfg->channel_mapping[0] =  PCM_CHANNEL_L;
>> +	} else if (num_channels == 2) {
>> +		cfg->channel_mapping[0] =  PCM_CHANNEL_L;
>> +		cfg->channel_mapping[1] =  PCM_CHANNEL_R;
>> +	} else {
>> +		dev_err(graph->dev, "Error: Invalid channels (%d)!\n", num_channels);
>> +		rc = -EINVAL;
>> +		goto err;
> 
> ... this is again the case where mcfg->num_channels > 2 so this block is
> never executed.

I agree this else is dead code, will remove this.

--srini
> 
>> +	}
>> +
>> +	rc = audioreach_graph_send_cmd_sync(graph, pkt, 0);
>> +err:
>> +	kfree(pkt);
>> +
>> +	return rc;
>> +}
>> +
