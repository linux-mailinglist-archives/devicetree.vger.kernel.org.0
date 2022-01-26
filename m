Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4C4549C627
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 10:19:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238993AbiAZJTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 04:19:43 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47000
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238979AbiAZJTn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 04:19:43 -0500
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9AF5D3F1C6
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 09:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643188781;
        bh=pBqXXr3PeJ7ykOBVowRPGxEs/0VxNU9EERyHzmf0x6M=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ciVPTht0HSgb/hqrZi2K5eLZNdH0AOCpvxU+qvgPcOGwrWPQl6OXTlFjPA/3uFOYR
         JgnyvjTTA3AZlAYsTsZAShEpMf7B7SZ817Lw2pdfgg70e0QDFs5bHZw3Y07luUPGBv
         V4mbL31vVXNgOis+rKLwLZgrC/PAHPHqiivhVdiSkjgfYP3m9qEIm9q6xtjb7jnLrL
         MQHxMI8494RS/l1y92rNhRPk3k31IJLhz3D3//Vfa2s85iyMbkN1zfRdwlB4Fd4Kqt
         TiyACteO63fr7Ew0tO6R1Nks4c5vjeHl4X7vNTYPAQaiE+4V6PHorI8S/qwUFfYu5E
         EPhR+cMs+hkBw==
Received: by mail-wr1-f71.google.com with SMTP id b3-20020a5d4b83000000b001d676462248so4048268wrt.17
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 01:19:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pBqXXr3PeJ7ykOBVowRPGxEs/0VxNU9EERyHzmf0x6M=;
        b=xqESSCBNXe58bvk7fY/JTMc/FQf7+ZLQMVAqAP39XASdAOsWmZi9xpJw6IFgK37p1V
         QFNF8JwfeDyYJHZFi4gP0iiYJbjkqXZuVFJSQLQBUTHAcz47FKp+A7dd5uN2L9VqIoUH
         9UVcDTtpu4W/LJUlDzBFZInVbLYSjg5pVWUVprAP5dezlQhGaIuGd2KGl9F7QYCJ2MSg
         2PGJQ/I5fy/+DHRxXhf00XwTUNQyYs28IVP7sGVDMlkNsaDmLyhdaHRteyzwtd4xVNnY
         rxMRnq2STFOOVc6ovLHq5D4fAz+r7+eQRwMrOh/Pmr4eTYn5nS2+9BLgiJKQjxOAO4sg
         S0sw==
X-Gm-Message-State: AOAM531TeIWKdrIYuLiLUHr6S5CQge/J+PdCwUfgUkTPsMD8ijBrLYPi
        GQZIyKLoLzxeFcPuIcNI4aVqd9BF5vadShjLPHkw4a0bpH2PPKgBRVAr6ga4RhAoJlWX+r5ZD5A
        fBDRQv/dYGfhKM9nUGJ3ZwYWeftYk1NYgn/ngYEw=
X-Received: by 2002:adf:eb87:: with SMTP id t7mr21742767wrn.147.1643188778786;
        Wed, 26 Jan 2022 01:19:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwEP5/lu7fbvZTNXya5lAtVgrXBoVxZH1tRfgYLoGaoAPtg9tM6DO08WcYy4M6fXSv2af6NTA==
X-Received: by 2002:adf:eb87:: with SMTP id t7mr21742754wrn.147.1643188778608;
        Wed, 26 Jan 2022 01:19:38 -0800 (PST)
Received: from [192.168.0.60] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id j2sm3230420wms.2.2022.01.26.01.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 01:19:38 -0800 (PST)
Message-ID: <4c029f92-ece7-78c1-e64b-cbe438b45a5f@canonical.com>
Date:   Wed, 26 Jan 2022 10:19:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 00/16] Add support for Tesla Full Self-Driving (FSD)
 SoC
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        sboyd@kernel.org
References: <CGME20220124142850epcas5p2f82243b87386b3d49a9302c87e015d6b@epcas5p2.samsung.com>
 <20220124141644.71052-1-alim.akhtar@samsung.com>
 <d9682f16-13b7-b6dc-5afd-b2d319143de5@canonical.com>
 <4cfcde38-50cb-646a-0d17-c2cb2977a2e4@canonical.com>
 <063501d81281$10e5b3c0$32b11b40$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <063501d81281$10e5b3c0$32b11b40$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2022 07:50, Alim Akhtar wrote:
> Hi Krzysztof
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@canonical.com]
>> Sent: Tuesday, January 25, 2022 10:56 PM
>> To: Alim Akhtar <alim.akhtar@samsung.com>; linux-arm-
>> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
>> Cc: soc@kernel.org; linux-clk@vger.kernel.org; devicetree@vger.kernel.org;
>> olof@lixom.net; arnd@arndb.de; linus.walleij@linaro.org;
>> catalin.marinas@arm.com; robh+dt@kernel.org; s.nawrocki@samsung.com;
>> linux-samsung-soc@vger.kernel.org; pankaj.dubey@samsung.com;
>> sboyd@kernel.org
>> Subject: Re: [PATCH v5 00/16] Add support for Tesla Full Self-Driving (FSD) SoC
>>
>> On 25/01/2022 18:12, Krzysztof Kozlowski wrote:
>>> On 24/01/2022 15:16, Alim Akhtar wrote:
>>>> Adds basic support for the Tesla Full Self-Driving (FSD) SoC. This
>>>> SoC contains three clusters of four Cortex-A72 CPUs, as well as
>>>> several IPs.
>>>>
>>>> Patches 1 to 9 provide support for the clock controller (which is
>>>> designed similarly to Exynos SoCs).
>>>>
>>>> The remaining changes provide pinmux support, initial device tree support.
>>>>
>>>> - Changes since v4
>>>> * fixed 'make dtbs_check' warnings on patch 14/16
>>>>
>>>> - Changes since v3
>>>> * Addressed Stefen's review comments on patch 14/16
>>>> * Fixed kernel test robot warning on patch 04/16
>>>> * rebsaed this series on Krzysztof's pinmux new binding schema work
>>>> [1]
>>>>
>>>> - Changes since v2
>>>> * Addressed Krzysztof's and Stephen's review comments
>>>> * Added Reviewed-by and Acked-by tags
>>>> * Rebased on next-20220120
>>>>
>>>> - Changes since v1
>>>> * fixed make dt_binding_check error as pointed by Rob
>>>> * Addressed Krzysztof's and Rob's review comments
>>>> * Added Reviewed-by and Acked-by tags
>>>> * Dropped SPI, MCT and ADC from this series (to be posted in small
>>>> sets)
>>>>
>>>> NOTE: These patches are based on Krzysztof's pinmux for-next branch
>>>> commit 832ae134ccc1 ("pinctrl: samsung: add support for Exynos850 and
>>>> ExynosAutov9 wake-ups") [1]
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git/l
>>>> og/?h=for-next
>>>>
>>>>
>>>
>>> Thanks, applied DTS/soc and pinctrl patches.
>>>
>>> I expect Sylwester will pick up the clock ones. Otherwise please let
>>> me know to pick it up as well.
>>
>> I forgot that clock macros are used in DTS. This does not compile and I cannot
>> take drivers into DTS branch.
>>
>> Alim,
>> DTS changes dropped. Please resend with the same trick we did for
>> Exynos850 board - hard-coded clock IDs as defines. See:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/diff/arch/arm6
>> 4/boot/dts/exynos/exynos850.dtsi?h=samsung-dt64-5.17-
>> 2&id=e3493220fd3e474abcdcefbe14fb60485097ce06
>>
> Ok, I will resend patch 14 and 15 (DTS changes) only as suggested above.

I see Sylwester acked clock patches, so I will take them. No need to
resend, I'll organize the patches so they will compile.


Best regards,
Krzysztof
