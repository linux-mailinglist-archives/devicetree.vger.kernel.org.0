Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0205B2CC093
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 16:19:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728312AbgLBPSV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 10:18:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726075AbgLBPSV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 10:18:21 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8246C0613D4
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 07:17:40 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id x22so8103375wmc.5
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 07:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/Y0icDYJYLrdu3OvNT2zbeWx1FJTPoSGg3Tnj6XiwU8=;
        b=VXfZGFFIRGghiRfwkfLU6LjjuaGkoM0dXtgtToMQOQGac7F/THkCEtiQ6ewmDPKzec
         OhGMo+Tt8mKiI+GoJ4KnA6VvnE5Nk17d21chMbar5bSntCGEJScEE/pCobqA0SUHA8kF
         ObF2NjaHNDnUXbY68SIlQkHzXdQrwYqG6Sx/NnxfZy2GOryrvLamtNwgvwBfSt+tvuaO
         uFCtW4tNEzot+PNEunvKCfj/rj+VzPJspWDGi6eG4lI8A86p+5rTBYOuH41hekiij5vD
         U6QV9DkO1DrOelysBnQAPY4XYQSZL9eKtGnbF2qaaIBum3OUYypLwjybFaoXW3v7WGr7
         ANnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/Y0icDYJYLrdu3OvNT2zbeWx1FJTPoSGg3Tnj6XiwU8=;
        b=ozf+whrL/y7N8bTwF5P7j4W4wJHlky6FxcIAGMcY9Zx2xIG3W7KhNo03+r9jKkMkI0
         TJAdHQT7JlTiWTbHCduVqN6ypK3LWNmmp/r4Em/gr7vukalCDRDVb1/qWkam+IiYqCEH
         hrtPOT0FFSkl48BoJ59pA0HrU+OYaLhN988VgiyYiNSvqXXl2yhVTVSzPTA+uRUKD/6z
         Tki7aYfQF2l0+QTiFEcJkoIeFCsN/oEHcLit8sjZoj5q5Q5MRaHLUDB5GStXzLk7+vlq
         ThYdG65YIuyDE3Es54zUAU0bVqEtBufqP4iAYgbgQSjA31PU3Xw+dkBiKmhHKkLj0kB/
         Lt4Q==
X-Gm-Message-State: AOAM533aE3f9B5W7qow4/a/dvRhSk77+PtjJt8YDK3CbmGriWq6dC8MX
        xTzUOwf5LoZYf2nNi9Nh2P05tQ==
X-Google-Smtp-Source: ABdhPJyDm/rnIbajp48WsCqoLs4JXvHjzYC6BKhHYgu8qMCchv5bPI8dTXLQ5qVdhyA6kSiPyXNS/g==
X-Received: by 2002:a1c:2681:: with SMTP id m123mr3552375wmm.114.1606922259452;
        Wed, 02 Dec 2020 07:17:39 -0800 (PST)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id j14sm2473154wrs.49.2020.12.02.07.17.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 07:17:38 -0800 (PST)
Subject: Re: [PATCH v5 2/2] pinctrl: qcom: Add sm8250 lpass lpi pinctrl driver
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linus.walleij@linaro.org, robh+dt@kernel.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201201142830.13152-1-srinivas.kandagatla@linaro.org>
 <20201201142830.13152-3-srinivas.kandagatla@linaro.org>
 <X8ad9lw73ZKsqXKT@builder.lan>
 <c7f8e95d-21aa-b723-2b6e-0420cb400025@linaro.org>
Message-ID: <50411940-ded8-d5cc-c373-f1bbad2c02fe@linaro.org>
Date:   Wed, 2 Dec 2020 15:17:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c7f8e95d-21aa-b723-2b6e-0420cb400025@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 02/12/2020 09:56, Srinivas Kandagatla wrote:
>>> +        case PIN_CONFIG_SLEW_RATE:
>>> +            if (arg > LPI_SLEW_RATE_MAX) {
>>> +                dev_err(pctldev->dev, "invalid slew rate %u for pin: 
>>> %d\n",
>>> +                    arg, group);
>>> +                return -EINVAL;
>>> +            }
>>> +
>>> +            slew_offset = g->slew_offset;
>>> +            if (slew_offset == NO_SLEW)
>>> +                break;
>>> +
>>> +            mutex_lock(&pctrl->slew_access_lock);
>>> +            sval = ioread32(pctrl->slew_base + LPI_SLEW_RATE_CTL_REG);
>>> +
>>> +            for (i = 0; i < LPI_SLEW_BITS_SIZE; i++) {
>>> +                assign_bit(slew_offset, &sval, arg & 0x01);
>>> +                slew_offset++;
>>> +                arg = arg >> 1;
>>> +            }
>>
>> Isn't this loop just the same as
>>
>>     FIELD_SET(3 << slew_offset, arg & 3, sval)

None of FIELD_* or replace_bits apis will work here, as the mask passed 
to those macros should be a constant #define. Passing variable to them 
in mask will result in compile error!

mask in this case is retrieved at runtime.

I think we should live with the existing code unless there is a strong 
reason for it to change! Or a better alternative.


--srini


> 

> This will not work FIELD_SET will not clear any bits wich are already 
> set! assing_bit will work, but we could do better by adding slew_mask 
> per pin rather than slew_offset which should allow us to use 
> replace_bits straight away.
