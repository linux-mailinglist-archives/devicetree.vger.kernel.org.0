Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07EAC401EA3
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 18:42:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234742AbhIFQn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 12:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230404AbhIFQn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 12:43:59 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00C69C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 09:42:54 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id b10so10713331wru.0
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 09:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bxN5ft21MI9Jrg1SLU4AYO87aZP7SDoptFjFb/4W0nk=;
        b=XvgubvQe8ZVZGJx9v4lKjdFMpW4xHk49O6UOatSJFU6aTswNGHz69ne8ah+CEhwXMj
         g+3akKwC0wgrIWEnYDYmYguEGWgHtGxmY41kUqpMNPlD4Khehi+VsGpP0PBsaHK1gbai
         t9OeZK5rDDx8EDH+y/fmYUsDkW9xqg7wQfsK4Wmd9qKkvz8YishqKYayHFyHTvvOiu24
         7RUNl1hq73ONQF7ymkRc42J7nFEOyTTDHtUkEpLLP9BxdjiLqn/l7WmVwc3uxPf7lL23
         h02OTcs+kWKLZ7a1OKtkDgAl+/hUh5n7jyabak7tJf9loKbBYs3x7SRCx9gmNSebQDcE
         nVFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bxN5ft21MI9Jrg1SLU4AYO87aZP7SDoptFjFb/4W0nk=;
        b=t6ei+x4EopNVmW8YnN6SuAhXNRtNynSnvN22IdWV5ldcTB48xzE8R0AGaC3k7r/VdK
         L9GN8pD9y5YUWR9/d14g/bgxMpaO5/wVdQvrbptPMSbLkyXHWS5qasr1fOjCNDt4q0J6
         1WTrDXrO6tQTqQFZigAcPUAD8f9esSRwVyYaoAf8syMuwyk4Erftq1osObb8BVlEM1Ab
         W5rfZHCzXaexT3972xKNwRj/Wy28oR/bOTe48vJmQvFKwR8eRzI7mERVBtdtMXFLZtoH
         QrU4CThKGsuE+RihOQuX9VKVnOiTwx38dLy5o9v1lC9ZS5swTHspWl3kwPEkJxDSg2iv
         +Low==
X-Gm-Message-State: AOAM532/Rum/JbKmX08KPRh/7k9WPLd+e37eQ2F0ns/Uous28jwaCHq6
        FMeyqan0P1JbCdrmgdm/HOjGkw==
X-Google-Smtp-Source: ABdhPJwVj/n/CVD1gy+YYsFJP932EXsIi4RuKKD3stoFsT+2aHvQssDqqKakd9bPP4Xh0GBSg+yQcg==
X-Received: by 2002:adf:ee48:: with SMTP id w8mr14817799wro.10.1630946572566;
        Mon, 06 Sep 2021 09:42:52 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id z19sm55473wma.0.2021.09.06.09.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:42:52 -0700 (PDT)
Subject: Re: [PATCH v5 18/21] ASoC: qdsp6: audioreach: add q6apm-dai support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-19-srinivas.kandagatla@linaro.org>
 <9cd5b8ec-d3ef-5f1c-5c13-3da4c662d29a@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <d48d6f1a-2a32-2da9-f314-22a265d592c4@linaro.org>
Date:   Mon, 6 Sep 2021 17:42:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <9cd5b8ec-d3ef-5f1c-5c13-3da4c662d29a@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

thanks Pierre for taking time to review the patches.

On 03/09/2021 16:48, Pierre-Louis Bossart wrote:
> 
> 
> On 9/3/21 6:20 AM, Srinivas Kandagatla wrote:
> 
> commit message?
> 
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   sound/soc/qcom/Kconfig           |   5 +
>>   sound/soc/qcom/qdsp6/Makefile    |   1 +
>>   sound/soc/qcom/qdsp6/q6apm-dai.c | 504 +++++++++++++++++++++++++++++++
>>   3 files changed, 510 insertions(+)
>>   create mode 100644 sound/soc/qcom/qdsp6/q6apm-dai.c
>>
>> diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
>> index 66d8436ab0a8..fb1921889dc4 100644
>> --- a/sound/soc/qcom/Kconfig
>> +++ b/sound/soc/qcom/Kconfig
>> @@ -84,7 +84,12 @@ config SND_SOC_QDSP6_ASM_DAI
>>   	select SND_SOC_COMPRESS
>>   	tristate
>>   
>> +config SND_SOC_QDSP6_APM_DAI
>> +	select SND_SOC_COMPRESS
>> +	tristate
>> +
>>   config SND_SOC_QDSP6_APM
>> +	select SND_SOC_QDSP6_APM_DAI
>>   	tristate
> 
> usually it's tristate then select?
This is now fixed in new version.

> 
> 
>> +static int q6apm_dai_prepare(struct snd_soc_component *component,
>> +			     struct snd_pcm_substream *substream)
>> +{
>> +	struct snd_pcm_runtime *runtime = substream->runtime;
>> +	struct q6apm_dai_rtd *prtd = runtime->private_data;
>> +	struct audioreach_module_config cfg;
>> +	struct q6apm_dai_data *pdata;
>> +	int ret;
>> +
>> +	pdata = snd_soc_component_get_drvdata(component);
>> +	if (!pdata)
>> +		return -EINVAL;
>> +
>> +	if (!prtd || !prtd->graph) {
>> +		dev_err(component->dev, "%s: private data null or audio client freed\n",
>> +			__func__);
>> +		return -EINVAL;
>> +	}
>> +
>> +	cfg.direction = substream->stream;
>> +	cfg.sample_rate = runtime->rate;
>> +	cfg.num_channels = runtime->channels;
>> +	cfg.bit_width = prtd->bits_per_sample;
>> +
>> +	prtd->pcm_count = snd_pcm_lib_period_bytes(substream);
>> +	prtd->pcm_irq_pos = 0;
>> +	/* rate and channels are sent to audio driver */
>> +	ret = q6apm_graph_media_format_shmem(prtd->graph, &cfg);
>> +	if (ret < 0) {
>> +		dev_err(component->dev, "%s: q6apm_open_write failed\n", __func__);
>> +		return ret;
>> +	}
>> +
>> +	ret = q6apm_graph_media_format_pcm(prtd->graph, &cfg);
>> +	if (ret < 0)
>> +		pr_info("%s: CMD Format block failed\n", __func__);
>> +
>> +	ret = q6apm_map_memory_regions(prtd->graph,
>> +				       substream->stream,
>> +				       prtd->phys,
>> +				       (prtd->pcm_size / prtd->periods),
>> +				       prtd->periods);
>> +
>> +	if (ret < 0) {
>> +		dev_err(component->dev, "Audio Start: Buffer Allocation failed rc = %d\n",
>> +							ret);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	ret = q6apm_graph_prepare(prtd->graph);
>> +	if (ret) {
>> +		dev_err(component->dev, "Failed to prepare Graph %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = q6apm_graph_start(prtd->graph);
>> +	if (ret) {
>> +		dev_err(component->dev, "Failed to Start Graph %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
>> +		int i;
>> +		/* Queue the buffers */
>> +		for (i = 0; i < runtime->periods; i++)
>> +			q6apm_read(prtd->graph);
>> +
>> +	}
> 
> shouldn't the buffers be queued *before* starting? maybe add a comment
> on why this is done in this order.

I never tried it and am not 100% sure if that is possible to do if the 
graph is not active. but I can give that a go if not I will add a 
comment with more details.

> 
>> +	prtd->state = Q6APM_STREAM_RUNNING;
>> +
>> +	return 0;
>> +}
>> +
>> +static int q6apm_dai_trigger(struct snd_soc_component *component,
>> +			     struct snd_pcm_substream *substream, int cmd)
>> +{
>> +	struct snd_pcm_runtime *runtime = substream->runtime;
>> +	struct q6apm_dai_rtd *prtd = runtime->private_data;
>> +	int ret = 0;
>> +
>> +	switch (cmd) {
>> +	case SNDRV_PCM_TRIGGER_START:
>> +	case SNDRV_PCM_TRIGGER_RESUME:
>> +	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
>> +		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
>> +			ret = q6apm_write_async(prtd->graph, prtd->pcm_count, 0, 0, NO_TIMESTAMP);
>> +		break;
> 
> surprising, why do this only for playback?

We get READ DONE callbacks for capture which can queue next buffer.
> 
>> +	case SNDRV_PCM_TRIGGER_STOP:
>> +		prtd->state = Q6APM_STREAM_STOPPED;
> 
> equally surprising, you just store a state but don't take any action?

Currently I have not integrated all the modules like soft-pause which 
should have have been invoked at this point.
> 
>> +		break;
>> +	case SNDRV_PCM_TRIGGER_SUSPEND:
>> +	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
> 
> and for those two you do nothing?

soft-pause module implementation is missing in this version.

> 
>> +		break;
>> +	default:
>> +		ret = -EINVAL;
>> +		break;
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>> +static int q6apm_dai_open(struct snd_soc_component *component,
>> +			  struct snd_pcm_substream *substream)
>> +{
>> +	struct snd_pcm_runtime *runtime = substream->runtime;
>> +	struct snd_soc_pcm_runtime *soc_prtd = substream->private_data;
>> +	struct snd_soc_dai *cpu_dai = asoc_rtd_to_cpu(soc_prtd, 0);
>> +	struct q6apm_dai_rtd *prtd;
>> +	struct q6apm_dai_data *pdata;
>> +	struct device *dev = component->dev;
>> +	int ret;
>> +	int graph_id;
>> +
>> +	graph_id = cpu_dai->driver->id;
>> +
>> +	pdata = snd_soc_component_get_drvdata(component);
>> +	if (!pdata) {
>> +		dev_err(component->dev, "Drv data not found ..\n");
> 
> dev_err(dev, for consistency?

Sure.

> 
>> +		return -EINVAL;
>> +	}
>> +
>> +	prtd = kzalloc(sizeof(*prtd), GFP_KERNEL);
>> +	if (prtd == NULL)
> 
> if (!prtd)
>> +		return -ENOMEM;
>> +
>> +	prtd->substream = substream;
>> +
>> +	prtd->graph = q6apm_graph_open(dev, (q6apm_cb)event_handler,
>> +				       prtd, graph_id);
>> +	if (IS_ERR(prtd->graph)) {
>> +		pr_info("%s: Could not allocate memory\n", __func__);
> 
> dev_info(dev,

I agree.

> 
>> +		ret = PTR_ERR(prtd->graph);
>> +		kfree(prtd);
>> +		return ret;
>> +	}
>> +
>> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
>> +		runtime->hw = q6apm_dai_hardware_playback;
>> +	else if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
>> +		runtime->hw = q6apm_dai_hardware_capture;
>> +
>> +	/* Ensure that buffer size is a multiple of period size */
>> +	ret = snd_pcm_hw_constraint_integer(runtime,
>> +					    SNDRV_PCM_HW_PARAM_PERIODS);
>> +	if (ret < 0) {
>> +		dev_err(dev, "snd_pcm_hw_constraint_integer failed\n");
>> +		return ret;
> 
> kfree(prtd)?
> 
> The error handling is broken in the rest of this function as well.
> please revisit.

100% true, I will revisit this thanks for spotting this.
> 
>> +	}
>> +
>> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
>> +		ret = snd_pcm_hw_constraint_minmax(runtime,
>> +			SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
>> +			BUFFER_BYTES_MIN, BUFFER_BYTES_MAX);
>> +		if (ret < 0) {
>> +			dev_err(dev, "constraint for buffer bytes min max ret = %d\n",
>> +									ret);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	ret = snd_pcm_hw_constraint_step(runtime, 0,
>> +					 SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
>> +	if (ret < 0) {
>> +		dev_err(dev, "constraint for period bytes step ret = %d\n",
>> +								ret);
>> +		return ret;
>> +	}
>> +	ret = snd_pcm_hw_constraint_step(runtime, 0,
>> +					 SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 32);
>> +	if (ret < 0) {
>> +		dev_err(dev, "constraint for buffer bytes step ret = %d\n",
>> +								ret);
>> +		return ret;
>> +	}
>> +
>> +	runtime->private_data = prtd;
>> +	runtime->dma_bytes = BUFFER_BYTES_MAX;
>> +	if (pdata->sid < 0)
>> +		prtd->phys = substream->dma_buffer.addr;
>> +	else
>> +		prtd->phys = substream->dma_buffer.addr | (pdata->sid << 32);
>> +
>> +	snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
>> +
>> +	return 0;
>> +}
>> +
>> +static int q6apm_dai_close(struct snd_soc_component *component,
>> +			   struct snd_pcm_substream *substream)
>> +{
>> +	struct snd_pcm_runtime *runtime = substream->runtime;
>> +	struct q6apm_dai_rtd *prtd = runtime->private_data;
>> +
>> +	if (prtd && prtd->graph) {
> 
> This is always true if the open succeeds...

Yes,
> 
>> +		q6apm_graph_stop(prtd->graph);
>> +
>> +		q6apm_unmap_memory_regions(prtd->graph,
>> +					   substream->stream);
>> +		q6apm_graph_close(prtd->graph);
>> +		prtd->graph = NULL;
>> +		kfree(prtd);
>> +		runtime->private_data = NULL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static snd_pcm_uframes_t q6apm_dai_pointer(struct snd_soc_component *component,
>> +					   struct snd_pcm_substream *substream)
>> +{
>> +
>> +	struct snd_pcm_runtime *runtime = substream->runtime;
>> +	struct q6apm_dai_rtd *prtd = runtime->private_data;
>> +
>> +	if (prtd->pcm_irq_pos >= prtd->pcm_size)
>> +		prtd->pcm_irq_pos = 0;
> 
> that's surprising, no wrap-around?
> 
>> +
>> +	return bytes_to_frames(runtime, (prtd->pcm_irq_pos));
>> +}
>> +

>> +
>> +static int q6apm_dai_pcm_new(struct snd_soc_component *component,
>> +			     struct snd_soc_pcm_runtime *rtd)
>> +{
>> +	struct snd_pcm_substream *psubstream, *csubstream;
>> +	struct snd_pcm *pcm = rtd->pcm;
>> +	struct device *dev;
>> +	int size, ret;
>> +
>> +	dev = component->dev;
>> +	size = BUFFER_BYTES_MAX;
>> +	psubstream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
>> +	if (psubstream) {
>> +		ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size,
>> +					  &psubstream->dma_buffer);
>> +		if (ret) {
>> +			dev_err(dev, "Cannot allocate buffer(s)\n");
> 
> for playback. Using the same error messages in different cases isn't
> very helpful to debug bad sequences...
> 
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	csubstream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
>> +	if (csubstream) {
>> +		ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size,
>> +					  &csubstream->dma_buffer);
>> +		if (ret) {
>> +			dev_err(dev, "Cannot allocate buffer(s)\n");
> 
> for capture
Yes, this code has been cleaned up in 5.15 we should totally get rid of 
this allocation function and use generic function.
> 
>> +			if (psubstream)
>> +				snd_dma_free_pages(&psubstream->dma_buffer);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}
> 
>> +MODULE_LICENSE("GPL v2");
> 
> "GPL" is enough, the SPDX line deals with the license version.

I agree.
> 
