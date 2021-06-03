Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4EB139A1AF
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 14:58:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229916AbhFCNAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 09:00:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhFCNAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 09:00:22 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3171AC06174A
        for <devicetree@vger.kernel.org>; Thu,  3 Jun 2021 05:58:38 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id w21so6900298edv.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 05:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=S32qhgXw6lhcBac72fW5aifr88ZTXgBqkSLyW4FBSRE=;
        b=aDfm993CvwBzKEU6AMF3NjjBBTCq3pYbIDf+HDoVgTqBJ5UrcUk/OuIlcxTYXL1loC
         TjdpT6ASpEN6RgFQTG5jrJggb5OUNheVMZjleXGXQtwdLmJqtFEwdg8WS8cSTDfM27vX
         rdDT/0PJl6TnTWvPQQsH7JX16wXJ6a8pqDJz9VyrS8fHhtVOMi4NzxF4ai/Wm2wr1UYJ
         JQilApDLYXx2/ePzQix7V+ngwWD9t3pUvHIamB20DG+ZMMmN5ce3+AwsGDGPRlJ0ZJQr
         xCTgCsTDQCFIrHZX3gbGw8v+QC5otgxdnbsD17u27A7ZinB+VpB8g++j3n+WllPD6acs
         WaDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=S32qhgXw6lhcBac72fW5aifr88ZTXgBqkSLyW4FBSRE=;
        b=cVNOQlmqAvVTIuLXOCVECYIemS6Jk2epCvVW0+YD3OKHZJ1za/oMp+fVwJN1vjXqP4
         gNrVPnWtYMcAIvKMOIK7C+4fx5z7Dx9oVdoz9QAuww+gShJdwskkvYPqW9mM06bBz6oO
         9mm7zAY99skxiro0Zn9r5RqLJNZmefkTgJa9WQQXm0NWh9l5LjfMm7tDe2tpax055riS
         3Iva7dSwP4yqntLBweIaNg+GeLlPEvut2vpW0N0xTJa1VF7q4n5yDx3+fd3Mh/yOh6oA
         TFRnQV7eQlQ5aNPzVKV6tii1kDlOaN9dlwYQKZVk19Va12e/omTklBzEiAdUZBEtkkue
         f+yA==
X-Gm-Message-State: AOAM532BNnuSBO5nczzW4IKD5eVl2lXrYEGJvfwzRinniA50BUHQiXka
        jA8AXuOLTdSO0qwSJX2XtwrEcQ==
X-Google-Smtp-Source: ABdhPJzmI3KvAOVc3eQ2Z1TXrXwjtBqFKOhH08L/qt7QjcYkxgy6UMrK5D0Kj9lBamgyA8IQJBPzrw==
X-Received: by 2002:aa7:dc12:: with SMTP id b18mr43396617edu.52.1622725116707;
        Thu, 03 Jun 2021 05:58:36 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id ho32sm1423106ejc.82.2021.06.03.05.58.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 05:58:36 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] ASoC: codecs: wcd: add multi button Headset
 detection support
To:     Mark Brown <broonie@kernel.org>
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com
References: <20210524110700.27077-1-srinivas.kandagatla@linaro.org>
 <20210524110700.27077-3-srinivas.kandagatla@linaro.org>
 <20210603124455.GE4257@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <676a583f-1bed-f837-3013-ffec7bfd36e1@linaro.org>
Date:   Thu, 3 Jun 2021 13:58:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210603124455.GE4257@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 03/06/2021 13:44, Mark Brown wrote:
> On Mon, May 24, 2021 at 12:06:58PM +0100, Srinivas Kandagatla wrote:
> 
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(wcd_mbhc_event_notify);
> 
> Why is this not EXPORT_SYMBOL_GPL?  Same for the other symbols that are
> exported, between ASoC and regmap I'm not clear that there's anything
> useful that is usable from non-GPL code...

This was not intentional, will fix this in next version.
> 
>> +	/* Report insertion */
>> +	if (jack_type == SND_JACK_HEADPHONE)
>> +		mbhc->current_plug = MBHC_PLUG_TYPE_HEADPHONE;
>> +	else if (jack_type == SND_JACK_HEADSET) {
>> +		mbhc->current_plug = MBHC_PLUG_TYPE_HEADSET;
>> +		mbhc->jiffies_atreport = jiffies;
>> +	} else if (jack_type == SND_JACK_LINEOUT)
>> +		mbhc->current_plug = MBHC_PLUG_TYPE_HIGH_HPH;
> 
> This would be more idiomatically written as a switch statement.

I agree, I did try to keep it mostly in switch case, looks like I missed 
this one. Will change this in next spin.

--srini
> 
