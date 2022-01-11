Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FEB348AE33
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 14:13:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240322AbiAKNNH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 08:13:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239945AbiAKNNG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 08:13:06 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC92EC06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 05:13:05 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id j11so56130699lfg.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 05:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=HexBkH7IffTlCvDylw+G6ZVzQ2BUVoFgl2mC3mgeHX8=;
        b=5Wf3hap5AZRbMO2KtXQL6Y/jtuLHF9cg2HUFpAtgmKsD+p5kYZvdbE38ZfdUKWqoDy
         dddQcy60+sYew/kg53hMXSXTHQjdZqvAlt4vz0bNRIjKj6hgwaG+Tc0A/fzTzWe14lDG
         xUUeGMhRRDnme/GsZyHE6NrbpE7D4eYX2ktBooxJsHkHwyML4Bqvpap7v4qYru4YFGmp
         jNvI4/kXGnU2JKBfOajZazXxr7yQTrS8q18F16HP2HC+keyobwHKixpZPf0epN5qgZrr
         CLqmXogtTcuJ/7eKyPOKdJOv6tvaQTJIFzI4n+/EqIJEjzfU8p0UlMtq9ePBgVl9la8D
         HF3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=HexBkH7IffTlCvDylw+G6ZVzQ2BUVoFgl2mC3mgeHX8=;
        b=uP1qOBvWkuRBwFfcjXXIE0Em82gJ8SPXniQ6Z2NDJfgXy/iEE2X2ga8xadN2fJStP+
         eyOfkiZjQmi5HyY8Pf0hmdiCL8A03OXwSQiqfmxaY31KNH4iWR1qqQECrfCusYdshE8H
         X77+e2+/6al+PwJDkpbkLL3bMQIpiyboci2IGBiktExQsI68soNgnkyI8eahvns8PQRR
         m4ZzKVEQ04IFBFuY34vOABd2gFuwVpvt1EmtrDW7c6elHI48eKN6JlOthkqmgpNUo2NT
         Y5BAg1B5mnfksqJKQCyFQK0U/xsJ4Tx1supuKfqp907Rg+74mIjDpRoVmCAmmUQkx8pl
         PBhA==
X-Gm-Message-State: AOAM531nKx/L1z4odtwOBtluZUxXIX3oI3y5G5DhnmW4wbwKKWQC70m1
        Giq1cSHUht5nV8gNX2a3CvSpwg==
X-Google-Smtp-Source: ABdhPJz5CmqUsI8AwKAkSmuFVrJyv0PTq2BHqKKwqEDZ0HMGLPjd3R4ayPll7KW5YV+J701nrFEFeA==
X-Received: by 2002:a05:6512:3445:: with SMTP id j5mr3250433lfr.30.1641906784075;
        Tue, 11 Jan 2022 05:13:04 -0800 (PST)
Received: from [192.168.1.213] (81.5.110.253.dhcp.mipt-telecom.ru. [81.5.110.253])
        by smtp.googlemail.com with ESMTPSA id i9sm1331120lfe.195.2022.01.11.05.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 05:13:03 -0800 (PST)
Subject: Re: [PATCH 1/3] iio: adc: sun4i-gpadc-iio: no temp sensor on R40
To:     Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org
References: <20211119191456.510435-1-boger@wirenboard.com>
 <20211119191456.510435-2-boger@wirenboard.com>
 <20211122091132.yjudzei3bdqmnxq6@gilmour>
 <20211122124115.00005186@Huawei.com>
From:   Evgeny Boger <boger@wirenboard.com>
Message-ID: <85db7e8a-2b9a-7e44-ec96-b804201a3491@wirenboard.com>
Date:   Tue, 11 Jan 2022 16:13:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211122124115.00005186@Huawei.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


22.11.2021 15:41, Jonathan Cameron пишет:
> On Mon, 22 Nov 2021 10:11:32 +0100
> Maxime Ripard <maxime@cerno.tech> wrote:
>
>> On Fri, Nov 19, 2021 at 10:14:54PM +0300, Evgeny Boger wrote:
>>> R40 SoC has touchscreen controller also serving as general-purpose ADC.
>>> The hardware is very similar to A31, except that R40 has separate
>>> calibrated thermal sensor IP (handled by sun8i_thermal).
>>>
>>> Despite the temperature sensor in the RTP is never mentioned in
>>> the R40 family user manuals, it appears to be working. However,
>>> it's not very useful as it lacks calibration data and there is another
>>> fully functioning temperature sensor anyway.
>>>
>>> This patch disables the temperature sensor in RTP/GPADC IP on R40.
>>>
>>> The reason for disabling the temperature sensor is that the IP
>>> needs to be switched back and forth between RTP and GPADC modes for
>>> temperature measurements. Not only this introduces delays, but it also
>>> disturbs external circuitry by injecting current into ADC inputs.
>>>
>>> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
>> Acked-by: Maxime Ripard <maxime@cerno.tech>
> +Cc linux-iio@vger.kernel.org
>
> I'm fine with this and assuming Lee is happy to pick it up + send
> me an immutable branch in case anything crosses with it this cycle..
>
> Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Hi Jonathan!

Is there anything else I should do to make this patch series accepted?


> Thanks,
>
> Jonathan
>
>> Maxime
>>

