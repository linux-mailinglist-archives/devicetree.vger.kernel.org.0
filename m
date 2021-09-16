Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAD9040DD78
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:02:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238289AbhIPPDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:03:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235474AbhIPPDx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:03:53 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C9B3C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:33 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id g16so10015729wrb.3
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dSgHedLjzf+f2rTJK3kZU0KWVdsOwbxIVOfdR15sHOM=;
        b=h6fESi2hIwSa+szyFIzV+yyW7VKuG7EV9Qyl+Eqe7NT9DAzSpbOR8bBkYbVOtijLzG
         BPwznn97wAnKiDsi6nJLJbhAHRdpKDwIlI057FelyFgk7oBbEffN7XLI1Td0m1beLB2V
         smnWrfxEKnw23hKp/tKv6zw/QhkzEG4x0XCJB6ES/YyCmuUoSIGSDncuFCI+VvW/tM9/
         GGZiMnt0QsEXYKNWDv04KV0uTQCmXSn2XigFFDx8WfKfL/DPEnfE3JXugvfUfntcygBc
         6tWfWDA6erk7rMt2CafWW3h8c9f+PDHIdxIlrKNn5xfpzKuhOnvVl57lg90WzQ37JYOC
         lTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dSgHedLjzf+f2rTJK3kZU0KWVdsOwbxIVOfdR15sHOM=;
        b=0Z4J66i04F9oCeu5DNPeRH7JeskmGXJ0robqF8KWh/+uyR08cOfkdychI+3AfaUcX+
         3v3U0AZz0a0PVTsOkhSxOXo/Oze2EsHWR5VThyzPsLxibrBTouMkIrkuLtdcTTM5Pjlj
         LOyjKSboOCQHLiRqgYy2MnM04cdzMKfKE66b40jCCQE+Bz/QdgRs1ECioZbnbpMQVbai
         3VUrlHFj28sHRMDVqH0594apTCc5qs/dim2K9pHewEZDVaGF+YP4hfdQ4k028VwoWx0r
         sYY/M9a/QWAZMJufK/Srx48pxNqhzXpQmKVoKmQxAR3Zkij9e2Bgue5tAWYIZHyES8UK
         YtrQ==
X-Gm-Message-State: AOAM533iW43XW2Y8CEN7XsYTsPdIHmgy6Xj9CPvUAhdOjiDPB3fkXEDb
        ZJEPSgOkHxDMsaqaCFFMSp1jCg==
X-Google-Smtp-Source: ABdhPJzqLpnHO/KWZL5nlsyJVJOE8FaDqAmJmi1qSMMbwOIQirjc26qr0OeKJEsY4UuBqvpWyFUxuA==
X-Received: by 2002:adf:f084:: with SMTP id n4mr6770289wro.362.1631804551728;
        Thu, 16 Sep 2021 08:02:31 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id s15sm3806235wrb.22.2021.09.16.08.02.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:02:31 -0700 (PDT)
Subject: Re: [PATCH v6 18/22] ASoC: qdsp6: audioreach: add topology support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-19-srinivas.kandagatla@linaro.org>
 <bc93c17e-b65d-5885-f151-243d259f40ff@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <3c5f75f9-8ee2-6da2-b7ec-7854759e2647@linaro.org>
Date:   Thu, 16 Sep 2021 16:02:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <bc93c17e-b65d-5885-f151-243d259f40ff@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre for such quick review,

On 15/09/2021 17:22, Pierre-Louis Bossart wrote:
> 
>> +static int audioreach_widget_load_buffer(struct snd_soc_component *component,
>> +					 int index, struct snd_soc_dapm_widget *w,
>> +					 struct snd_soc_tplg_dapm_widget *tplg_w)
>> +{
>> +	struct snd_soc_tplg_vendor_array *mod_array;
>> +	struct audioreach_module *mod;
>> +	struct snd_soc_dobj *dobj;
>> +	int ret;
>> +
>> +	ret = audioreach_widget_load_module_common(component, index, w, tplg_w);
>> +	if (ret)
>> +		return ret;
>> +
>> +	dobj = &w->dobj;
>> +	mod = dobj->private;
>> +
>> +	mod_array = audioreach_get_module_array(&tplg_w->priv);
>> +
>> +	switch (mod->module_id) {
>> +	case MODULE_ID_CODEC_DMA_SINK:
>> +	case MODULE_ID_CODEC_DMA_SOURCE:
>> +		audioreach_widget_dma_module_load(mod, mod_array);
>> +		break;
>> +	case MODULE_ID_DATA_LOGGING:
>> +		audioreach_widget_log_module_load(mod, mod_array);
>> +		break;
>> +	case MODULE_ID_I2S_SINK:
>> +	case MODULE_ID_I2S_SOURCE:
>> +		audioreach_widget_i2s_module_load(mod, mod_array);
>> +		break;
> 
> no default case?

Thanks for spotting this, its fixed now in next version.
> 
>> +	}
>> +
>> +	return 0;
>> +}
>> +
> 
>> +int audioreach_tplg_init(struct snd_soc_component *component)
>> +{
>> +	struct device *dev = component->dev;
>> +	const struct firmware *fw;
>> +	int ret;
>> +
>> +	ret = request_firmware(&fw, "audioreach.bin", dev);
>> +	if (ret < 0) {
>> +		dev_err(dev, "tplg fw audioreach.bin load failed with %d\n", ret);
>> +		return ret;
>> +	}
> 
> How does this work if you want to change the topology, which will happen
> rather frequently if you have a framework precisely to change the DSP
> graph? You need to override a file in userspace?
> 
> Shouldn't you have a means to identify what topology file you want on a
> platform-basis?
> 
> Or at the very least a means to change the file name with a kernel
> parameter or something.

I totally agree, I was planning to do that as a next step. But now that 
you pointed it out, I can take a look at SOF for some ideas and add it 
in next version.

--srini
> 
>> +
>> +	ret = snd_soc_tplg_component_load(component, &audioreach_tplg_ops, fw);
>> +	if (ret < 0) {
>> +		dev_err(dev, "tplg component load failed%d\n", ret);
>> +		ret = -EINVAL;
>> +	}
>> +
>> +	release_firmware(fw);
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL_GPL(audioreach_tplg_init);
>>
