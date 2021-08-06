Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 024223E2AD3
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 14:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343803AbhHFMse (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 08:48:34 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:51272
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1343800AbhHFMsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 08:48:31 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 0742A40679
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 12:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628254095;
        bh=+iMOfeE6Vf9NGHS30HYXv4eokVZ3e25K5G9GYGN0DC8=;
        h=Subject:From:To:Cc:References:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=qyy4zqB/scUf9TZOVxmmHRWZlVPk1VFfKrzcxRLYcRncNQk0uTMBTxOVssJHCkwXk
         63HacumoZmXkATPZdgxbCx9IB/Xy3Dbz2+nI+XOjBJFT15iTA5k82J5CYaIs8F1Zcy
         bpESGLO6lD4PF1MOsqoUibTUIzhMF/7UCOhrboZIO6CHykXCEhMFDPUK9LVkX9iqwx
         DSxp3Kje92I/jripIkhfcV+kgu06CB/WuZwlIQfY+UyJjNDeqLD0Mm/uZYbcOMs//7
         PKIxSyUtJ+i0T+25LKOZ6GcFtQ7yxjIpHZLr19PaiSFQ4kR/BNoLHeNfd5Rf00MtQi
         ipPTh/igVsjhg==
Received: by mail-ed1-f70.google.com with SMTP id ay20-20020a0564022034b02903bc515b673dso4878753edb.3
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 05:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+iMOfeE6Vf9NGHS30HYXv4eokVZ3e25K5G9GYGN0DC8=;
        b=OPVMxjmloxQDcT/Q5/o4C9iobEs8Mg0sn+5cf5NW9zkZm8JgRjM4Q89AOxuDP+WMC9
         QBAUFjCMnpAlv3JDNtuFr+58BKwJpSqHyre4pMXn11Uz4HEOA67ZjlSBwcEvJVpQn1kD
         rQRP7tN98DHdXqRz8k4O43FqaPar0yR3b1/21nLrf0jFWzrcBULsnQg2ZDtSGgYVFAby
         /iw3Wa/ycSKifhc2puUFkOzqzokG7WQEuWckeggImnWIO82HbSg2GE2O8RsoqgoqKe2x
         t7sezg6z6BqFgGygd6JG1s6zFgSPf7+60caPxkx4UBcrGvFAB9T9CRuSHaPzca54x0oz
         rOCw==
X-Gm-Message-State: AOAM530kIV9gKiEVyU0WVrEP0ZAaDANMZIoee9H8XfKNC83lGevlqF6j
        5Q702R6115oWrOGeBqH/FwphtxKXkTQanDHXTDPqicD0sEW5XeQvsuY1Pmkt5f7x/fxOvu+WMq2
        LcZ1VS76ERgzZxJO6YPz2WE0nDDgEuZn5KQ2+mOs=
X-Received: by 2002:a17:906:2dc5:: with SMTP id h5mr9916692eji.515.1628254094627;
        Fri, 06 Aug 2021 05:48:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyw0Ophi5VEEXPM4XZ0YWYJmokSCe46iXLol1mXc81JTaSdAe1qWBzFoVyacX3XeKr/xC3Vqg==
X-Received: by 2002:a17:906:2dc5:: with SMTP id h5mr9916653eji.515.1628254094423;
        Fri, 06 Aug 2021 05:48:14 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id lw22sm2849189ejb.74.2021.08.06.05.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 05:48:13 -0700 (PDT)
Subject: Re: [PATCH 12/12] arm64: dts: exynos: Add Exynos850 SoC support
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Charles Keepax <ckeepax@opensource.wolfsonmicro.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>
References: <20210730144922.29111-1-semen.protsenko@linaro.org>
 <20210730144922.29111-13-semen.protsenko@linaro.org>
 <455cfb5e-dff7-a5c0-3875-49abe3e900f3@canonical.com>
 <CAPLW+4nDS0atrbUFagDA0W_Ky5MvOiY+N+NQoQ+me4pndp_iWg@mail.gmail.com>
 <68734f6c-fc76-595c-8d34-8924dbbbb845@canonical.com>
 <CAPLW+4n_JKj5xeBHXONcv__vyAFvx3fhXoxJa17NTHK1RSJFJw@mail.gmail.com>
 <b753796c-2ce6-4166-7c20-289e950237ad@canonical.com>
Message-ID: <bb08f7a4-1da9-fb20-f091-6a3c37a1f898@canonical.com>
Date:   Fri, 6 Aug 2021 14:48:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b753796c-2ce6-4166-7c20-289e950237ad@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/08/2021 14:32, Krzysztof Kozlowski wrote:
> On 06/08/2021 14:07, Sam Protsenko wrote:
>> On Fri, 6 Aug 2021 at 10:49, Krzysztof Kozlowski
>> <krzysztof.kozlowski@canonical.com> wrote:
>>>
>>> On 06/08/2021 01:06, Sam Protsenko wrote:
>>>> On Sat, 31 Jul 2021 at 12:03, Krzysztof Kozlowski
>>>> <krzysztof.kozlowski@canonical.com> wrote:
>>>>
>>>>>>
>>>>>> This patch adds minimal SoC support. Particular board device tree files
>>>>>> can include exynos850.dtsi file to get SoC related nodes, and then
>>>>>> reference those nodes further as needed.
>>>>>>
>>>>>> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
>>>>>> ---
>>>>>>  .../boot/dts/exynos/exynos850-pinctrl.dtsi    | 782 ++++++++++++++++++
>>>>>>  arch/arm64/boot/dts/exynos/exynos850-usi.dtsi |  30 +
>>>>>>  arch/arm64/boot/dts/exynos/exynos850.dtsi     | 245 ++++++
>>>>>
>>>>> Not buildable. Missing Makefile, missing DTS. Please submit with initial
>>>>> DTS, otherwise no one is able to verify it even compiles.
>>>>>
>>>>
>>>> This device is not available for purchase yet. I'll send the patch for
>>>> board dts once it's announced. I can do all the testing for now, if
>>>> you have any specific requests. Would it be possible for us to review
>>>> and apply only SoC support for now? Will send v2 soon...
>>>
>>> What you propose is equal to adding a driver (C source code) without
>>> ability to compile it. What's the point of having it in the kernel? It's
>>> unverifiable, unbuildable and unusable.
>>>
>>
>> Yes, I understand. That's adding code with no users, and it's not a
>> good practice.
>>
>>> We can review the DTSI however merging has to be with a DTS. Usually the
>>> SoC vendor adds first an evalkit (e.g. SMDK board). Maybe you have one
>>> for Exynos850? Otherwise if you cannot disclose the actual board, the
>>> DTSI will have to wait. You can submit drivers, though.
>>>
>>
>> Sure, let's go this way. I'll send v2 soon. Improving patches and
>> having Reviewed-by tag for those would good enough for me at this
>> point. I'll continue to prepare another Exynos850 related patches
>> until the actual board is announced, like proper clock driver, reset,
>> MMC, etc. Is it ok if I send those for a review too (so I can fix all
>> issues ahead)?
> 
> Sure, prepare all necessary drivers earlier. I suspect clocks will be a
> real pain because of significant changes modeled in vendor kernel. I
> remember Paweł Chmiel (+Cc) was doing something for these:
> https://github.com/PabloPL/linux/tree/exynos7420
> 
> I mentioned before - you should also modify the chipid driver. Check
> also other drivers in drivers/soc/samsung, although some are needed only
> for suspend&resume.
> 

You can also take a look at Exynos8895 efforts:
https://github.com/ivoszbg/linux/commits/for-upstream/exynos8895

Since knowledge, datasheets and efforts are quite spread all over, I
keep track of some work here:
https://exynos.wiki.kernel.org/community


Best regards,
Krzysztof
