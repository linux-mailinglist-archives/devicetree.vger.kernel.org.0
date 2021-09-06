Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5D4401E46
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 18:29:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243980AbhIFQaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 12:30:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243932AbhIFQaZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 12:30:25 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 775F5C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 09:29:20 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v10so10618745wrd.4
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 09:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=svt/1vpTG7VrK2HiSdps0aR796SgANL3/Z27Aku9mKw=;
        b=a9AWRLgg5kG035Md5wkqLas2q0V3DDvvkf8rbo7lwx0+Fr37O9T2IXsK7LIaSdaA/M
         qpYmUAbjWJSF3/mXKrmPEOo1vamSca8Odo2r/u2lO1uj0sdnu3Z/WKsZf505S9JYK2zA
         gA75AGhbJ7eydkQd/sI48hGRmDhgQ3ZB1N4qyRzS+CUQ2wsEnyfz3Fcr8TSFfFysXZ6N
         WDrc3V0Ogc4xk79vce81+eJtw0Od2urTQylCDnO2US/eudro3w3HSAQ3Qa0weXBWaf41
         xfzXfJM4yRb1sk6UqrKKAFbIVTGuQ3iKq4mFeWtPHpnXky03AK8dOq6YElNBycsw6Q/1
         4XWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=svt/1vpTG7VrK2HiSdps0aR796SgANL3/Z27Aku9mKw=;
        b=HG3voWVP+YjB8se3VeaEHAwN3qyg2gUl3q+r/Sb5krzA/ckKh8XD1JieqGuPoGYX9a
         f1oI/W0y9Gyc5f84FvqwDmiZIHlDQk0XKOrod7VfiPJkV4gBjTGdhVUE1lWZpFOdZKhI
         nCYIKKPGlvKcHmPU6L1O4ajeUOeI5PTRCu/0WAACIp6r2I5C6bY6yzqx7FC0ysWBlyfV
         tMi91X5g/YfSqE+3kv0SJhXgfRZ0YGWpcaBOui650popEK620SC2ow0Dkx5SOdjRQJyz
         uk8X4hWBrouKXckzJVL2ejP9eTn+jkanhu2sLggsjaCX4zMfB+YcIjJ8KxV5PhNSkwkN
         vBqw==
X-Gm-Message-State: AOAM532edsi0suolFcUf/a/2szCqYWfw7fv9V1LC52nh0YR5Tu56kYMV
        u4ZcpLqBmyCbYV9K4JD8phPxrA==
X-Google-Smtp-Source: ABdhPJwvY/BXjuBuEvVM2UWTdAxh2ieL6rSFMROPIN9xVEdIe23FrGU/J7QIWoRALeNDV/Adu+YpqQ==
X-Received: by 2002:adf:fb8d:: with SMTP id a13mr14136668wrr.164.1630945758960;
        Mon, 06 Sep 2021 09:29:18 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o14sm7654900wrg.91.2021.09.06.09.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:29:18 -0700 (PDT)
Subject: Re: [PATCH v5 19/21] ASoC: qdsp6: audioreach: add q6apm lpass dai
 support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-20-srinivas.kandagatla@linaro.org>
 <4374a141-877e-fe80-d61b-e3c7b90c447b@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <c41e46aa-a854-eb65-042a-ab91c0ac1764@linaro.org>
Date:   Mon, 6 Sep 2021 17:29:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4374a141-877e-fe80-d61b-e3c7b90c447b@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre for taking time to review this,

On 03/09/2021 16:53, Pierre-Louis Bossart wrote:
> 
>>   config SND_SOC_QDSP6_APM
>>   	select SND_SOC_QDSP6_APM_DAI
>> +	select SND_SOC_QDSP6_APM_LPASS_DAI
>>   	tristate
> 
> tristate then select?
> 
Its fixed now.

>>
>> +static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream,
>> +			       struct snd_soc_dai *dai)
>> +{
>> +	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
>> +	struct audioreach_module_config *cfg = &dai_data->module_config[dai->id];
>> +	int graph_id = dai->id;
>> +	int rc;
>> +	struct q6apm_graph *graph;
>> +
>> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
>> +		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
>> +		if (IS_ERR(graph)) {
>> +			dev_err(dai->dev, "Failed to open graph (%d)\n",
>> +				graph_id);
>> +			rc = PTR_ERR(graph);
>> +			return rc;
>> +		}
>> +		dai_data->graph[graph_id] = graph;
>> +	}
> 
> so you don't open a graph on capture?
> 
> How does the rest work if dai_data->graph is not initialized?
> Or is it done somewhere else and it'd be worthy of a comment?

Yes, we are trying to sequence source graph and sink graph.
It is recommend that we load DSP with source graph first and then sink 
graph.

I will add a comment too.

--srini

> 
>> +
>> +	cfg->direction = substream->stream;
>> +	rc = q6apm_graph_media_format_pcm(dai_data->graph[dai->id], cfg);
>> +
>> +	if (rc) {
>> +		dev_err(dai->dev, "Failed to set media format %d\n", rc);
>> +		return rc;
>> +	}
>> +
>> +	rc = q6apm_graph_prepare(dai_data->graph[dai->id]);
>> +	if (rc) {
>> +		dev_err(dai->dev, "Failed to prepare Graph %d\n", rc);
>> +		return rc;
>> +	}
>> +
>> +	rc = q6apm_graph_start(dai_data->graph[dai->id]);
>> +	if (rc < 0) {
>> +		dev_err(dai->dev, "fail to start APM port %x\n", dai->id);
>> +		return rc;
>> +	}
>> +	dai_data->is_port_started[dai->id] = true;
>> +
>> +	return 0;
>> +}
>> +
>> +static int q6apm_lpass_dai_startup(struct snd_pcm_substream *substream,
>> +				struct snd_soc_dai *dai)
>> +{
>> +	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
>> +	int graph_id = dai->id;
>> +	struct q6apm_graph *graph;
>> +
>> +	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
>> +		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
>> +		if (IS_ERR(graph)) {
>> +			dev_err(dai->dev, "Failed to open graph (%d)\n",
>> +				graph_id);
>> +			return PTR_ERR(graph);
>> +		}
>> +		dai_data->graph[graph_id] = graph;
>> +	}
> 
> definitively need a comment on why the behavior is different from
> capture and playback?
> 
> What prevents you from doing the same operations in .startup for capture
> and playback?
> 
>> +
>> +	return 0;
>> +}
>> +
> 
