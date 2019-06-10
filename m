Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B6D043B018
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2019 09:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388309AbfFJH6h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jun 2019 03:58:37 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:51006 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388242AbfFJH6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jun 2019 03:58:37 -0400
Received: by mail-wm1-f67.google.com with SMTP id c66so7481159wmf.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 00:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oWEp6Smq9HgtNsDGiPy/kfOisBvfFm/zGIpQCU//1j8=;
        b=tPWiMoaZTxIg+ivBcwmlElm+0vlw8VlzRSFGWWqzkumTqJVKQsfEOfm4gUr1SwSF4+
         OP6lP+PGVF+WPm9/NMLY3dhw+o06UaurpHiLVOdtsWiVqxgvC6izd2jyAZXigWlBH7D5
         aiQ9L60OxHqg653nyvjbBDHArg4rxY2cmyzHOyqVkcdRI+GnVp9aSJJS0pAbNcwqNHiU
         OrA1dT4U4CBGfefIWHO4/9CkV2/7kWUSxPpF9CGt0MM5rCeDLxtD2pfNh+pPZI1RHDIG
         +qwtX7CpV6YIO/dPqxetlnA9ur6JWfBFz9JWzKi+MWKLQZnKSMkgLGd6uL6uGf/s2TtR
         dHOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oWEp6Smq9HgtNsDGiPy/kfOisBvfFm/zGIpQCU//1j8=;
        b=Xfx/dh+17YNVKNAMjtmGna8QpeLCwdhhyZ3XJBzl8i/W4sTpbQ64wkbspOSjhhQneX
         cCGGNjdWQtB3builsMGAe1qBI0Zp6w4N2/GPgfhMtKB9tisQAjULGHhVIjq/7fTsBC0f
         9EGpOEBaRt+OmJ6o0yumFOgqx0dlGgZ0IKjZEM9rHMhqh2svcPjAer5azbwq0mCufyr7
         +AqUWNzbD66h3j9deefJyEOuiNlD2nL5hLELFiKWTpQ+f7PmPEZ6wjmVvgtBvbM937/O
         gzwk+DD+kjrI2Un41QzD24KEDLWmqy9imVxKB+MO78OVItX6hyf1aVrNRjgyGo89P1ky
         //TQ==
X-Gm-Message-State: APjAAAWUvzRDQLdRTvpwmr4/AI7sDU/DQQZgkfs4SmxN7X0cSYSc95sT
        T3ci7e1TS1gxREXyrE+trpM+3A==
X-Google-Smtp-Source: APXvYqxX6qNDmm5mRKIsfaOwn9+hQG/rSiP3wiBkr0VL16rtdRvuL/PwPrcJmQD4xKROrWwqko4fcw==
X-Received: by 2002:a1c:3b45:: with SMTP id i66mr11106276wma.48.1560153515330;
        Mon, 10 Jun 2019 00:58:35 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id a81sm4227375wmh.3.2019.06.10.00.58.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Jun 2019 00:58:34 -0700 (PDT)
Subject: Re: [RFC PATCH 1/6] ASoC: core: add support to
 snd_soc_dai_get_sdw_stream()
To:     Vinod Koul <vkoul@kernel.org>
Cc:     broonie@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
References: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
 <20190607085643.932-2-srinivas.kandagatla@linaro.org>
 <20190610043432.GI9160@vkoul-mobl.Dlink>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <689065b2-9d5c-68b4-d72f-1e971b903df2@linaro.org>
Date:   Mon, 10 Jun 2019 08:58:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190610043432.GI9160@vkoul-mobl.Dlink>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/06/2019 05:34, Vinod Koul wrote:
> On 07-06-19, 09:56, Srinivas Kandagatla wrote:
>> On platforms which have smart speaker amplifiers connected via
>> soundwire and modeled as aux devices in ASoC, in such usecases machine
>> driver should be able to get sdw master stream from dai so that it can
>> use the runtime stream to setup slave streams.
>>
>> soundwire already as a set function, get function would provide more
>> flexibility to above configurations.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   include/sound/soc-dai.h | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
>> index f5d70041108f..9f90b936fd9a 100644
>> --- a/include/sound/soc-dai.h
>> +++ b/include/sound/soc-dai.h
>> @@ -177,6 +177,7 @@ struct snd_soc_dai_ops {
>>   
>>   	int (*set_sdw_stream)(struct snd_soc_dai *dai,
>>   			void *stream, int direction);
>> +	void *(*get_sdw_stream)(struct snd_soc_dai *dai, int direction);
> 
> So who would be calling this API? Machine or someone else?

 From Machine driver in my case where smart speaker amplifiers are 
modeled as aux device which is also dai less.

--srini
> 
