Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1AA878BF00
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 18:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727221AbfHMQwZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 12:52:25 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33137 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726810AbfHMQwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 12:52:25 -0400
Received: by mail-wm1-f67.google.com with SMTP id p77so1468653wme.0
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 09:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qLtqPAsEGfnUp7CDjhn/8fwHbe2P4gxMdN6KrPmONdo=;
        b=mW5YUm5wvdISB+s0lKeJ43zd9eGbsQWF9DRWounfZBtWcu4JLOB8EQRlfB/rDhjSgr
         DKFYgTyZvuGRIpRyo7qQJiookhVDTq8mKof/6PoFQpMuAM+rvAYNuvYwnDTgRkzkbdyU
         l8Ig2cdjFoG1SQZcfNSo37LhmGznPEbjJ1q+DnJbjMlS87365uyRdL1U7wa/OvK5KjYT
         Bfd5R1xpzaiOA8rPWtkmfraEvd+7lDXCVRvYHzjyC4ajwXRgI/RSEA6IZGu/HhYzuW99
         TK+Gqiy54WUYpU20s7CUL6nkjGvhth9kyeBHhMX+SUBxOI6HHqyzPJ6B0TrpYWy7HA6K
         0B5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qLtqPAsEGfnUp7CDjhn/8fwHbe2P4gxMdN6KrPmONdo=;
        b=GfJTYbuqee3vRcTpXeFnvib0wKzxvU/4u0SuSVWtQEpB9snRlXv/ZmYkaZbYPOP22T
         15OEBIaxSubodjdUkZZv/RnRyTRvFscevE3qOwykip7zjvozvPFABaF0kR3wUfiDdMyw
         Mz6lkq+wpjc8lktLVLO92j9oi6eOH8p1eFokK/tAShzctLisRXUyEjABYZf5s2W8Azw6
         YCGQs94517RNTbFzLDY9iuKCBEMar6YEUJ3XWuqCJwBdiJFXgPyRTCaRLcQ4n8RgkTfv
         setiM0IIaxWd4vq9eecSZPBb1OD5kArwDfeIevSbUYVKmw+D75PBRobMsHJ8V+1mjqn6
         eRqg==
X-Gm-Message-State: APjAAAVAk0GFMAcXZJYz76e2f4tSuJxHOWJsykFfzSTPfWMUWpEavqzR
        2DTWV4DLf+J1HlUhgGqk+uvhWw==
X-Google-Smtp-Source: APXvYqyDTslYtT+nos0C9th5ic6vn8MyRNZrZ/a7bFDyc53Tg0MzTNOzv1OYn9FBo/c6bVTFIpy9QQ==
X-Received: by 2002:a7b:c947:: with SMTP id i7mr4274787wml.77.1565715142658;
        Tue, 13 Aug 2019 09:52:22 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id z8sm25678055wru.13.2019.08.13.09.52.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 09:52:22 -0700 (PDT)
Subject: Re: [PATCH v2 3/5] ASoC: core: add support to
 snd_soc_dai_get_sdw_stream()
To:     Cezary Rojewski <cezary.rojewski@intel.com>
Cc:     vkoul@kernel.org, broonie@kernel.org, bgoswami@codeaurora.org,
        plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        lgirdwood@gmail.com, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, spapothi@codeaurora.org
References: <20190813083550.5877-1-srinivas.kandagatla@linaro.org>
 <20190813083550.5877-4-srinivas.kandagatla@linaro.org>
 <95c517ab-7c63-5d13-a03a-1db01812bb69@intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <71fb21d0-3083-e590-db83-dbe489a4357e@linaro.org>
Date:   Tue, 13 Aug 2019 17:52:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <95c517ab-7c63-5d13-a03a-1db01812bb69@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for the review,

On 13/08/2019 17:03, Cezary Rojewski wrote:
> On 2019-08-13 10:35, Srinivas Kandagatla wrote:
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
>>   include/sound/soc-dai.h | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
>> index dc48fe081a20..1e01f4a302e0 100644
>> --- a/include/sound/soc-dai.h
>> +++ b/include/sound/soc-dai.h
>> @@ -202,6 +202,7 @@ struct snd_soc_dai_ops {
>>       int (*set_sdw_stream)(struct snd_soc_dai *dai,
>>               void *stream, int direction);
>> +    void *(*get_sdw_stream)(struct snd_soc_dai *dai, int direction);
>>       /*
>>        * DAI digital mute - optional.
>>        * Called by soc-core to minimise any pops.
>> @@ -410,4 +411,13 @@ static inline int 
>> snd_soc_dai_set_sdw_stream(struct snd_soc_dai *dai,
>>           return -ENOTSUPP;
>>   }
>> +static inline void *snd_soc_dai_get_sdw_stream(struct snd_soc_dai *dai,
>> +                           int direction)
>> +{
>> +    if (dai->driver->ops->get_sdw_stream)
>> +        return dai->driver->ops->get_sdw_stream(dai, direction);
>> +    else
>> +        return ERR_PTR(-ENOTSUPP);
>> +}
> 
> Drop redundant else.
Not all the dai drivers would implement this function, I guess else is 
not redundant here!

--srini
> 
