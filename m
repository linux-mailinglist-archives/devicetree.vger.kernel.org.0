Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B982F3E1120
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:17:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239830AbhHEJSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:18:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239960AbhHEJSB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:18:01 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 606F8C06179E
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 02:17:47 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id c16so5547937wrp.13
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GJa/B18PSEsyuwuolhK87OQEucGZlB6tOjan1zRCNT0=;
        b=FoeB+ExM0YyDzrhJr5Hrfq/5Ie3qBvxf3tj3hmjniSZ5+q2tkESR4New7V5OvgKipz
         kbYZYUwjy9QyRovmHnqgjKJA8MYh/kg1IXccqlzXRGOb+7SUwl1PiBo903EbIOkqVQt0
         8jBG7zN3oMtJ/V4Py+eE4EmwvJgXLBsiYuxLaicwdkMEgfXG4+SRjwEKGNizhUpIGEwI
         ywZsxlNwBMugfCkjuRb3MJYJFfl2PVFyaFWjOYvONjOSFnBjHThwhe+aNm+SnAeOG0MD
         opkcvcuGVnpHyNxjX6W1LjnfJpK6HJ0c5aXh8dgDb6vF6k9S0xXrG9zcPU8kKmOOQNhz
         AWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GJa/B18PSEsyuwuolhK87OQEucGZlB6tOjan1zRCNT0=;
        b=D8gt+qFAbyxakfWCe1zBlcXRThnOt+B9UWsLWb/Uzwg0n46j9dzTxaC5n7ycSpB6Sp
         vJT9hibRF69V3SPtwUsbUOrLBjyOv5+NttXf1fJ1fTck6ns9AAd1BmbINOoMphvAVn4v
         9lC2mXCX/j+Fe6mOqlgwbwFyU6OUhWQt0r8mPBPMhNPvtPs15P5fQwQTBjP3+GGuwvKr
         vBh+pLrkxes6W69issLoYkOJj+H3ZJMiRim8rXQbPJXJbdLEkX1+HXtGEGJx9hZWgWVT
         gGy1RS8V9fhjsBq8MBAq7JgTSNZO9lWZeGeqdkNxi9UDNyDZcVOBR+p/CNPPWkjO5R5H
         9hdA==
X-Gm-Message-State: AOAM5302yTPlPnCx581fVqGftalHkZwRUZQdfPwgiTCN+eHBO5m5wgRX
        mfyQqbKgbmTVP5F4W9eDLPPyXQ==
X-Google-Smtp-Source: ABdhPJyw7RtsLTkUNzM22r7POq5inabh4RlxT4Iy01PZDkOWRZ+kwsUqzOEZmDpvnOjRZ3pc64cYFw==
X-Received: by 2002:a05:6000:1818:: with SMTP id m24mr4019566wrh.49.1628155066067;
        Thu, 05 Aug 2021 02:17:46 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id j14sm5617073wru.58.2021.08.05.02.17.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:17:45 -0700 (PDT)
Subject: Re: [PATCH v3 13/20] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-14-srinivas.kandagatla@linaro.org>
 <20210804180947.GI26252@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <a23bdeed-9986-2e29-54d8-dcfba440825b@linaro.org>
Date:   Thu, 5 Aug 2021 10:17:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210804180947.GI26252@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Mark for the review,

On 04/08/2021 19:09, Mark Brown wrote:
> On Tue, Aug 03, 2021 at 01:54:04PM +0100, Srinivas Kandagatla wrote:
> 
>> +config SND_SOC_QDSP6_AUDIOREACH
>> +	tristate "SoC ALSA audio drives for Qualcomm QDSP AUDIOREACH Framework"
>> +	depends on QCOM_GPR
>> +	help
>> +	 To add support for Qualcomm QDSP6 AudioReach Audio Framework.
>> +	 This will enable sound soc platform specific audio drivers.
>> +	 This includes q6apm, q6prm and associated dai and clock drivers
>> +	 for DSP.
>> +
> 
> We're adding the Kconfig before we've added all the code so the thing
> works?

These are compile tested, but as you said previously with other patches 
I can move these Kconfig changes to patch at end of the series.

> 
>>   obj-$(CONFIG_SND_SOC_QDSP6) += qdsp6/
>> +obj-${CONFIG_SND_SOC_QDSP6_AUDIOREACH} += qdsp6/
> 
> This adds two different references to the qdsp6 subdirectory which feels
> like there's something wrong...

I could have avoided this extra config by adding all audioreach configs 
under CONFIG_SND_SOC_QDSP6. Will fix that in next version.

--srini

> 
