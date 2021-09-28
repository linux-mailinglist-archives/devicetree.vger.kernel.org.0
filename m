Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CC3441ABFE
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 11:34:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239945AbhI1Jga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 05:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239724AbhI1Jg3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 05:36:29 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65D3AC061575
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:34:50 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id d207-20020a1c1dd8000000b00307e2d1ec1aso2214018wmd.5
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+W9aJf0EmxrO92oeUCfttwGgO8htvC8XeZ6ScNOCkEQ=;
        b=U3gK7RNaFxd9qMHOrid8Eo5TlzU4hKRvBpUW0w80ekspMBdigx3bYRC8Q0empgjQQ7
         b+EVONDhbBQmp19A9p/BJlwxPqYZne/vMvUjjvjtn0px51e2cwQVPAoNFe0sRoHcAMp3
         TdwQCRlPz5uxqUqDK+MHip+NH9rse9QASm91gsButbn7OFAnFLQPux7uY559RU2/Z5bN
         BjGpIHd8vwuwGZCRvOX+nsTCtYN4q9GGJ3RobhXOBEFwSlcJCaHQwVieOcg/0u5imGuq
         yIXxTGizCokKXaCvpZDUdqImsW5F6pBjA6YH3rPI3nyRrekD2Gu8tcIVAZNDo1P6xn94
         XtZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+W9aJf0EmxrO92oeUCfttwGgO8htvC8XeZ6ScNOCkEQ=;
        b=xv55+tJzhGZqN3I4Vsi19SELjWcFWG7aKE/IgDzv6Wm27tZoiOc38ZVeTo2/VzP724
         MomEDHlmfLoo2ZIEdlcr+azoQ3vujte4vQUAR0RGDp48tTAyYl2ZNLQsWr5ZB2K2QJBs
         tI2YsKVJZgvGe0CvHGTwpdIOoWn7BfDeQ1WH3UnMKmTJzVNqEeZmX00f5zVE1p4stNkM
         LCu4lE/JL/06+EV9e6zrmxdDlvGxWISy2nz7sQZp5c3i7Z7KQdon3juS0WmixM9l5Lih
         KHlM5l+NG+EdVoL87pHSjAK/liL4uVGHY6FFjmVlUItNlnl151BcjzuPshvs+NZfHszK
         asCg==
X-Gm-Message-State: AOAM530QlTyWFXlJ8kG+y7buvwDNxWXFJeVA9DmWrAsNmTd22pP2Kver
        7HBGj3jBjwwdOa3XIIskZUVkoA==
X-Google-Smtp-Source: ABdhPJwvCIHs/V58eqkhRPAnECcR0pGi+za099CKWU3IQiPQFqDp1szchuKGBBVy1BMdxR7gq4LGtg==
X-Received: by 2002:a05:600c:3646:: with SMTP id y6mr3612017wmq.61.1632821689003;
        Tue, 28 Sep 2021 02:34:49 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id u5sm20508832wrg.57.2021.09.28.02.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 02:34:48 -0700 (PDT)
Subject: Re: [PATCH v8 18/22] ASoC: qdsp6: audioreach: add topology support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-19-srinivas.kandagatla@linaro.org>
 <f2009225-22b5-97ed-9cb5-87a43b2c3039@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <535723fb-d354-4d90-ae5a-8981ed6c3fde@linaro.org>
Date:   Tue, 28 Sep 2021 10:34:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <f2009225-22b5-97ed-9cb5-87a43b2c3039@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27/09/2021 17:21, Pierre-Louis Bossart wrote:
> 
>> +static int audioreach_control_load_mix(struct snd_soc_component *scomp,
>> +				       struct snd_ar_control *scontrol,
>> +				       struct snd_kcontrol_new *kc,
>> +				       struct snd_soc_tplg_ctl_hdr *hdr)
>> +{
>> +	struct snd_soc_tplg_vendor_value_elem *c_elem;
>> +	struct snd_soc_tplg_vendor_array *c_array;
>> +	struct snd_soc_tplg_mixer_control *mc;
>> +	int tkn_count = 0;
>> +
>> +	mc = container_of(hdr, struct snd_soc_tplg_mixer_control, hdr);
>> +	c_array = (struct snd_soc_tplg_vendor_array *)mc->priv.data;
>> +
>> +	c_elem = c_array->value;
>> +
>> +	while (tkn_count <= (le32_to_cpu(c_array->num_elems) - 1)) {
>> +		switch (le32_to_cpu(c_elem->token)) {
>> +		case AR_TKN_U32_SUB_GRAPH_INSTANCE_ID:
>> +			scontrol->sgid = le32_to_cpu(c_elem->value);
>> +			break;
>> +		default:
>> +			/* Ignore other tokens */
>> +		break;
> 
> indentation still off
> 

its fixed now


--srini
>> +
>> +		}
>> +		c_elem++;
>> +		tkn_count++;
>> +	}
>> +
>> +	return 0;
>> +}
