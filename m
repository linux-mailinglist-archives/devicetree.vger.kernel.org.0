Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B07D61969C
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 13:53:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231967AbiKDMx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 08:53:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231944AbiKDMxZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 08:53:25 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F1BFD2
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 05:53:24 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id s4so2936793qtx.6
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 05:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MbVtVx5Qqdbv10cVGELlnVCS3kEdvD/GYmw5He1x3rs=;
        b=M4fJD6ZQ+dppH1e5ErP88Ms7cZsnGlENxoSiuaWclMiiqZd8BkioZrbHMCqUNNQV7J
         b1w2PggUugIZ7ikcs3gsbr5A8pzFT9deRxzktW/R8UjhaFzckQ5qIhOH+D/S8NxmyUA4
         DjgZ3qeVGXvEf6C05NEXNQjE6I16z4cA8Jw4cqbP1SmncmfbvI7rMPW5zDnVppot7o8Q
         PvO8Yae2Swh9qSC64BsmjRM94eArcIy2zz90GDKA3RUeeyREkHU0JpXtr1fAVnSvI5tn
         jAyk/fgFBkH/p1g0MggiXRqh9/dpOvhtvmBiDBKRNXF1E5B8Y2ta3GfKIFF9Hc17qzHV
         NuOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MbVtVx5Qqdbv10cVGELlnVCS3kEdvD/GYmw5He1x3rs=;
        b=XX54pJ9zszihhKZhmtJ86F7kPa+EEiUJsg6b7S8lq5/PJpq4YNoVVWA/EBdBW8w+gR
         iKCV9mc2FnpKjqmG1cTP8rG2w7eoDxzhr0Dqx8Oj7/MTPwPzCOMVHEYtS2+k+jYxBVWK
         GEAOPt+UKkjGAyJnwy+Bae0usy3iAaK1/SwuguoF5N0vbtQKK/HoTykRUsi4GtTIuq+k
         jZYUD/ZYlaxDZxRKDkVgDI6Wts3sdMTprjqUg01Qaowyi38aqznZLHBR4LlIE+E1OM1o
         ltoFhBj355EBF53DxGrOBhjGqbdHEIdKdLIR8XYMtZM2e3WB8jDLLdfon8bIOiePsq35
         9vXg==
X-Gm-Message-State: ACrzQf0Ri2El8BZXrNK3htDz/PxEEHNmR3VwIcCueLvzlstrIFXx8P8g
        0dM4ch2DYV1t5cAnqmD6fqB2oQ==
X-Google-Smtp-Source: AMsMyM6agpSUAmZU5SZi3g7Op1rGqBEPSWUvbVcrhvDXLI4sS50ZRdtiEZiSxMDaPTyEIzPHSyYB4Q==
X-Received: by 2002:ac8:7190:0:b0:3a5:10c1:5d3d with SMTP id w16-20020ac87190000000b003a510c15d3dmr28230259qto.483.1667566403817;
        Fri, 04 Nov 2022 05:53:23 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id az17-20020a05620a171100b006faa2c0100bsm86978qkb.110.2022.11.04.05.53.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 05:53:23 -0700 (PDT)
Message-ID: <4273adf9-7005-8fa6-51ae-2f9e7c57d8aa@linaro.org>
Date:   Fri, 4 Nov 2022 08:53:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/3] arm64: dts: exynos: Rename compatible string property
 from version to SOC specific
Content-Language: en-US
To:     Aakarsh Jain <aakarsh.jain@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     m.szyprowski@samsung.com, andrzej.hajda@intel.com,
        mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
        ezequiel@vanguardiasur.com.ar, jernej.skrabec@gmail.com,
        benjamin.gaignard@collabora.com, krzysztof.kozlowski+dt@linaro.org,
        stanimir.varbanov@linaro.org, dillon.minfei@gmail.com,
        david.plowman@raspberrypi.com, mark.rutland@arm.com,
        robh+dt@kernel.org, krzk+dt@kernel.org, andi@etezian.org,
        alim.akhtar@samsung.com, aswani.reddy@samsung.com,
        pankaj.dubey@samsung.com, smitha.t@samsung.com
References: <20221102130602.48969-1-aakarsh.jain@samsung.com>
 <CGME20221102125816epcas5p23e16fefd6b820e7dd7d9a93f0d48f40d@epcas5p2.samsung.com>
 <20221102130602.48969-3-aakarsh.jain@samsung.com>
 <352e31de-cb79-f08e-b817-2712d97b84f1@linaro.org>
 <000001d8f03b$1cd111f0$567335d0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <000001d8f03b$1cd111f0$567335d0$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 06:49, Aakarsh Jain wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@linaro.org]
>> Sent: 03 November 2022 18:04
>> To: Aakarsh Jain <aakarsh.jain@samsung.com>; linux-arm-
>> kernel@lists.infradead.org; linux-media@vger.kernel.org; linux-
>> kernel@vger.kernel.org; devicetree@vger.kernel.org
>> Cc: m.szyprowski@samsung.com; andrzej.hajda@intel.com;
>> mchehab@kernel.org; hverkuil-cisco@xs4all.nl;
>> ezequiel@vanguardiasur.com.ar; jernej.skrabec@gmail.com;
>> benjamin.gaignard@collabora.com; krzysztof.kozlowski+dt@linaro.org;
>> stanimir.varbanov@linaro.org; dillon.minfei@gmail.com;
>> david.plowman@raspberrypi.com; mark.rutland@arm.com;
>> robh+dt@kernel.org; krzk+dt@kernel.org; andi@etezian.org;
>> alim.akhtar@samsung.com; aswani.reddy@samsung.com;
>> pankaj.dubey@samsung.com; smitha.t@samsung.com
>> Subject: Re: [PATCH 3/3] arm64: dts: exynos: Rename compatible string
>> property from version to SOC specific
>>
>> On 02/11/2022 09:06, Aakarsh Jain wrote:
>>> commit "752d3a23d1f68de87e3c" which adds MFC codec device node for
>>> exynos3250 SOC. Since exynos3250.dtsi and exynos5420.dtsi are using
>>> same compatible string as "samsung,mfc-v7" but their node properties
>>> are different.As both SoCs have MFC v7 hardware module but with
>>> different clock hierarchy and complexity.
>>> So renaming compatible string from version specific to SOC based.
>>>
>>> Suggested-by: Alim Akhtar <alim.akhtar@samsung.com>
>>> Fixes: 752d3a23d1f6 ("ARM: dts: add MFC codec device node for
>>> exynos3250")
>>
>> There is no bug to fix and backporting is forbidden as it breaks the usage of
>> DTS in older kernel.
>>
> Okay will remove this Fix tag in next series.
>>> Signed-off-by: Aakarsh Jain <aakarsh.jain@samsung.com>
>>> ---
>>>  arch/arm/boot/dts/exynos3250.dtsi | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm/boot/dts/exynos3250.dtsi
>>> b/arch/arm/boot/dts/exynos3250.dtsi
>>> index 326b9e0ed8d3..98105c64f7d9 100644
>>> --- a/arch/arm/boot/dts/exynos3250.dtsi
>>> +++ b/arch/arm/boot/dts/exynos3250.dtsi
>>> @@ -485,7 +485,7 @@
>>>  		};
>>>
>>>  		mfc: codec@13400000 {
>>> -			compatible = "samsung,mfc-v7";
>>> +			compatible = "samsung,exynos3250-mfc";
>>
>> The change is non-bisectable and breaks using DTS in older kernel.
>>
> Right, so what is your suggestion on this?
> I can see two ways here:
> 1> To squash patch2 and patch3 in one?
> 2> Have a warning about this breakage in the patch-3 commit message?

Here - nothing except implementing bindings. The suggestion was given to
the bindings patch - use fallback.

Best regards,
Krzysztof

