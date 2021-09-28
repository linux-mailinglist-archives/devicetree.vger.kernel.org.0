Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB7D641ABF7
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 11:33:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239769AbhI1JfB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 05:35:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239724AbhI1JfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 05:35:01 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5B3CC061575
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:33:21 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id t8so56977035wri.1
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UFWLjB0W2jsMi2ZnH6ymwZl3bjSBnAe186vh+OeB0WU=;
        b=vVUBSuUmwZNQZQMQuWoFG0MCX8iygaH4nDSZ3bBuoSYm1eryM+fPHk3LPc3yJRifM6
         cnhmlP4XWb1o1y0ABTaQxGumsQqdxeUefWzlLCMhGcOQG1JLgPKoEBOqZpOMZIWdWgLt
         9jpiUMtY8jt4fXiH9uEf/9wkkBv3f9LzszdJL6HAhhrbJcm3yWP/Dd+PkK/Bl9qOqaSt
         zkFrKOcNJQ5GW+GMx/MgteKtzTIagHxmlCOhAexpCjBo2y3vXaVR5idqUxLwr+lfrgIx
         mWpYq5iRY9ptJd7TqHnRL6h1LxOvJknBqfhj1tTSQmfoS1SmYS/YrmTcUbYIa10pGKah
         gB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UFWLjB0W2jsMi2ZnH6ymwZl3bjSBnAe186vh+OeB0WU=;
        b=jWfdgnODlv6EFy4LUjfIRSR2NTRdHojuH5Z+AfhAR2gsBSg/DsQee4e3CcVX4FCijE
         0Se9QbASS48qeUDsZ7xrHeQxsgihuJEl2KfxJl0bebo6YnwWBEDYvmU00ijlQY5KG7CK
         2ZqUsKDcCdzqxV30dORX+H+jqcOPBOs9zwsHQVKRvrbGyLx92JuqVa7EYXnIV+C4gtMZ
         01gvqYZByVhIBtLsARkiOgIkPHA+6XnbIZ4iUwRDrrg3mjtouc05DxkcitzC76NI78Ei
         B+eXrUcrcdGsGX38U2ICuiYy2BE4Qz9O76Mgaqmhmd9c2f4VJa2HBm434mgqi5oXLIj+
         7TWA==
X-Gm-Message-State: AOAM532ApzsbcondQ1uzhk4WU2FDMmPkUPFjNvBolYuE3yAdN40ipg4/
        CU8WmAuk0DOyBWSMEYO2cRwrhQ==
X-Google-Smtp-Source: ABdhPJyv/THNOKdhlB1LmnC9UxX4hlZiTSiUuFLuzeCFWMaqw7PSUijQmKwiWgKSY9IOP4ZWuehsXw==
X-Received: by 2002:a5d:6c67:: with SMTP id r7mr5202503wrz.29.1632821600565;
        Tue, 28 Sep 2021 02:33:20 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id w14sm18892145wro.8.2021.09.28.02.33.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 02:33:20 -0700 (PDT)
Subject: Re: [PATCH v8 19/22] ASoC: qdsp6: audioreach: add q6apm-dai support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-20-srinivas.kandagatla@linaro.org>
 <20605122-e6b4-1b5f-003a-96a74306f984@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c12ac2f5-bc53-ac0c-6ed0-f748a62015ac@linaro.org>
Date:   Tue, 28 Sep 2021 10:33:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20605122-e6b4-1b5f-003a-96a74306f984@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27/09/2021 17:25, Pierre-Louis Bossart wrote:
> 
>> +static int q6apm_dai_prepare(struct snd_soc_component *component,
>> +			     struct snd_pcm_substream *substream)
>> +{
>> +	struct snd_pcm_runtime *runtime = substream->runtime;
>> +	struct q6apm_dai_rtd *prtd = runtime->private_data;
>> +	struct audioreach_module_config cfg;
>> +	struct device *dev = component->dev;
>> +	struct q6apm_dai_data *pdata;
>> +	int ret;
>> +
>> +	pdata = snd_soc_component_get_drvdata(component);
>> +	if (!pdata)
>> +		return -EINVAL;
>> +
>> +	if (!prtd || !prtd->graph) {
>> +		dev_err(dev, "%s: private data null or audio client freed\n", __func__);
>> +		return -EINVAL;
>> +	}
>> +
>> +	cfg.direction = substream->stream;
>> +	cfg.sample_rate = runtime->rate;
>> +	cfg.num_channels = runtime->channels;
>> +	cfg.bit_width = prtd->bits_per_sample;
>> +
>> +	prtd->pcm_count = snd_pcm_lib_period_bytes(substream);
>> +	prtd->pos = 0;
>> +	/* rate and channels are sent to audio driver */
>> +	ret = q6apm_graph_media_format_shmem(prtd->graph, &cfg);
>> +	if (ret < 0) {
>> +		dev_err(dev, "%s: q6apm_open_write failed\n", __func__);
>> +		return ret;
>> +	}
>> +
>> +	ret = q6apm_graph_media_format_pcm(prtd->graph, &cfg);
>> +	if (ret < 0)
>> +		dev_err(dev, "%s: CMD Format block failed\n", __func__);
>> +
>> +	ret = q6apm_map_memory_regions(prtd->graph, substream->stream, prtd->phys,
>> +				       (prtd->pcm_size / prtd->periods), prtd->periods);
>> +
>> +	if (ret < 0) {
>> +		dev_err(dev, "Audio Start: Buffer Allocation failed rc = %d\n",	ret);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	ret = q6apm_graph_prepare(prtd->graph);
>> +	if (ret) {
>> +		dev_err(dev, "Failed to prepare Graph %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	ret = q6apm_graph_start(prtd->graph);
>> +	if (ret) {
>> +		dev_err(dev, "Failed to Start Graph %d\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
>> +		int i;
>> +		/* Queue the buffers for Capture ONLY after graph is started */
>> +		for (i = 0; i < runtime->periods; i++)
>> +			q6apm_read(prtd->graph);
>> +
>> +	}
>> +
>> +	prtd->state = Q6APM_STREAM_RUNNING;
> 
> you should probably explain why a stream moves to the 'RUNNING' state in
> a .prepare() callback, instead of TRIGGER_START?

Sure, will add a comment,

--srini
> 
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
>> +		 /* start writing buffers for playback only as we already queued capture buffers */
>> +		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
>> +			ret = q6apm_write_async(prtd->graph, prtd->pcm_count, 0, 0, 0);
>> +		break;
>> +	case SNDRV_PCM_TRIGGER_STOP:
>> +		/* TODO support be handled via SoftPause Module */
>> +		prtd->state = Q6APM_STREAM_STOPPED;
>> +		break;
>> +	case SNDRV_PCM_TRIGGER_SUSPEND:
>> +	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
>> +		break;
>> +	default:
>> +		ret = -EINVAL;
>> +		break;
>> +	}
>> +
>> +	return ret;
>> +}
> 
