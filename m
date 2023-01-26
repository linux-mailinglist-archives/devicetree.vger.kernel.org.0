Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F006B67C65C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 09:54:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236415AbjAZIyn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 03:54:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236559AbjAZIyj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 03:54:39 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12BFE1554F
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 00:54:21 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id h16so985654wrz.12
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 00:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/yomjLl0UqeDwQFZM4SnBExhoHB/3ysiOZb01/B7mAQ=;
        b=IKtouoBc4MjdbUJNK5+NfYtKz9rU+WSR/T37nlK9G05BVyrJc6mbcKmZD2DBTglgYY
         Eg5cNQumh+Le+b2pAG67B3I9eaXi2j6lJbA/JF9hVsdgnVcixSmne1jvPoehTFCMKwyl
         TcR532v1flutrycL+HyK/NtHSbdSC/19Ai/VX2+SbR4xtiJ0ltaxoEIWjmvjFnb5HdKz
         bEI6q9o2uFs2T+QiCxHNXRityxJoP/Imje4fS5d2YNSwwyjjMpQv8lJoeZYqYd7z4LGP
         zkWwYS/lxZgUeo85y6qSvkXC2fmqiPneZc97LMdjQeMCsrRBoWyICKO6pvlDH2/x5DVJ
         6WWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/yomjLl0UqeDwQFZM4SnBExhoHB/3ysiOZb01/B7mAQ=;
        b=POVDOn96i0B2GNC2U9UTN6B8lXOJlu9h0CdvrA4NLGeb0Wvk3UWFpD5jU4wtgDkZ5U
         ortbPSWHTZaxycpYD7xgM5GnhkRzxvaOZq+6+HzRtigKjkH/RYCqAJWmvV5EffPuykUf
         ViDojTOVk2fRp4kkRj2raA604MycjGA4MBtAH3W3iNzLeFc6aj+f7azwvq/jQ7xeTRQG
         9EWD/d1Oi4rIHY77SAm23xZ5bfltmaPdQQWnWup0VEdtwauMHbCJGgmtE8arrPsanNF0
         wUUu7Q83gZreuiiGaiK7OLmpZhiVKulraEXaFPs03nBT1kLRZgW8MY7ploaDcEsnfaKJ
         POXg==
X-Gm-Message-State: AO0yUKXihvqpwfa5F6H39hICEoeQPVgxmB8WIu2xUZgZFEpVGJP51jGb
        DJqLYykTZrSBNxHpZJPIqAxlJQ==
X-Google-Smtp-Source: AK7set8C0+kqD0yODwoj3uN1fi+XGdbuddXx3D4XKoMTWfc/S4zPBzTohrRgE47bYgdegBAPK4ySPQ==
X-Received: by 2002:a5d:66d0:0:b0:2bf:adfb:58cd with SMTP id k16-20020a5d66d0000000b002bfadfb58cdmr8856285wrw.30.1674723259185;
        Thu, 26 Jan 2023 00:54:19 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:aa89:e801:e296:9b7c? ([2a01:e0a:982:cbb0:aa89:e801:e296:9b7c])
        by smtp.gmail.com with ESMTPSA id q12-20020a056000136c00b002882600e8a0sm705401wrz.12.2023.01.26.00.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 00:54:18 -0800 (PST)
Message-ID: <0f7c5e1c-cff4-9213-e47b-19b57264a933@linaro.org>
Date:   Thu, 26 Jan 2023 09:54:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: amlogic: Fix SDIO interrupt and make it
 level-sensitive
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9b72573-a59f-989f-a752-1aa8517cf8dc@gmail.com>
 <6055791c-68d8-987b-0f2c-0526fde9686e@linaro.org>
 <4f9839a9-66e7-bdde-f33d-0798bf363b17@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <4f9839a9-66e7-bdde-f33d-0798bf363b17@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2023 09:44, Heiner Kallweit wrote:
> On 26.01.2023 08:57, Neil Armstrong wrote:
>> Hi Heiner,
>>
>> On 25/01/2023 08:00, Heiner Kallweit wrote:
>>> SDIO specification defines that the interrupt is level-sensitive.
>>> Fix the interrupt trigger type for emmc_a accordingly.
>>> See comment at beginning of the file wrt which is the SDIO port.
>>> mmc2 = &sd_emmc_a; /* SDIO */
>>>
>>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>>> see [0]. This was confirmed to be fixed by using level-triggered
>>> interrupts.
>>>
>>> Note:
>>> SDIO interrupt support was added in Linux just recently, however other
>>> users of this dts may be affected too.
>>
>> Switching from edge to level has already fixed performance issues on ethernet,
>> so I think this would be the right direction, but since the SDIO, eMMC and SD controllers
>> are basically the same IP, they should have the same interrupt setup.
>>
>> It makes no sense to have level only for SDIO, so perhaps it would be right to
>> switch every controllers to LEVEL (including AXG) and test to see if there's no regressions.
>>
> After thinking a minute about it I think you're right. I tested on my system and
> see no difference in behavior no matter whether emmc interrupt is level or edge.
> Do you want to make further tests on your test systems?
> And I'm wondering whether there's stronger evidence than just testing which trigger
> type works better. Don't the datasheets give a hint?

Nop the datasheet doesn't help here at all, I can totally apply a patch you send on
my for-next branch for testing and see if it breaks something on the various CIs running
on linux-next.

I'd say all interrupts are level on amlogic SoCs, mainly because the interrupt signal
stays high until we clear all the status bits, but the way we design the interrupt
handler works with both.

In edge, you get the interrupt event on a transition from low to high, so if you miss
an interrupt status that arrives between the time you read the status and you clear it,
you'll totally miss it and probably all future events.

On level, the interrupt handler will fire until the status bits are not cleared, so you
can't miss an interrupt.

The way Amlogic designs their interrupts mask/clear/status matches the level setup.

So provide a patch changing the mmc controller's trigger type, and I'll push it to
linux-next for testing.

Neil

> 
>> Neil
>>
>>>
>>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>>
>>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
>>> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
>>> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>>> ---
>>> v2:
>>> - rebase considering recent node name change sd -> mmc for sd_emmc_a
>>> ---
>>>    arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
>>>    arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 2 +-
>>>    2 files changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>>> index 1a931d5c2..c09eb9f6f 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>>> @@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
>>>            sd_emmc_a: mmc@ffe03000 {
>>>                compatible = "amlogic,meson-axg-mmc";
>>>                reg = <0x0 0xffe03000 0x0 0x800>;
>>> -            interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
>>> +            interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
>>>                status = "disabled";
>>>                clocks = <&clkc CLKID_SD_EMMC_A>,
>>>                     <&clkc CLKID_SD_EMMC_A_CLK0>,
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>>> index a79a35e84..ae1a5a568 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>>> @@ -603,7 +603,7 @@ apb: apb@d0000000 {
>>>                sd_emmc_a: mmc@70000 {
>>>                    compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>>>                    reg = <0x0 0x70000 0x0 0x800>;
>>> -                interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
>>> +                interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
>>>                    status = "disabled";
>>>                };
>>>    
>>
> 

