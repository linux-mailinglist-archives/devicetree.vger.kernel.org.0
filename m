Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCF3467C626
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 09:44:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231124AbjAZIoj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 03:44:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjAZIoi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 03:44:38 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B969E76A3
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 00:44:37 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso613206wmq.5
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 00:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SbYlGevNKB62GXyU/rx67Jf4BE8GrxNTyP6+q38eEsg=;
        b=MBuBeEt+l7abDnFNWDrK5q9VzVpmnHIK/OvP1Uf55HfSojo1nDreld/SiMMTgCGrs+
         3/ce+U6ukbd4yNkOeliezOWVaDKNYTcqB2KEHJwqWw4Sjv170Dy5HOgGiCucHgVXeW/P
         lts98AZudUMWvnBvVCjce4Jf2S08wxvJ8P/V/0v1QHUjBXMAyVP4dnVloiEPDs86PNx3
         X7ZPEHaSfQ70g9rfvxQ3Ojbt/KoyeTF8wv+G1RnHlmhF+E6el4Co2XEuAKEaSMQfwSUm
         ZFJ2k6QFtQInvhlQwd8HKsno+ijMuoLjiteB3oJp35rYqLLvX4K7bxlD0dKx4rgNRrmr
         TIkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SbYlGevNKB62GXyU/rx67Jf4BE8GrxNTyP6+q38eEsg=;
        b=kgGJN6ORd/17PP/++jRmmMHXFuWuhRb37L/NgBHzG/LfzfmRMKX3tRB45G4SeudZyO
         9EQSIqG5SmxakqEmguxJ5lnEDfGjQQjzdnxtIN9A9zUf90LnrkbG4mkcAv4+g6koi5VR
         Pcj6zsB2qstIL6IM19hT3vmSsOEPhrbYi++G7HZn45SxYpsX6+bgR2iOp7K2F7YVxUBl
         hJ2DSgYm8N0lzI40TShzYGu+4BS2RFPXb/Rbpk80cxgIC6FxPxppeZRegg6k0cHBpq3X
         j0brUrnDLlfCaL9WuhR1mw1Dg3QHq5SPVltGSXiHFEnkVZlXog+2X7xdOX5tkNmzHVu+
         WPAQ==
X-Gm-Message-State: AFqh2koNf7B7O7ijS8xMXWEnyy7zxBcDKHMB033kGEk1LUEyRl0nUZ18
        MBDtgHx7u0Bq7jNmC/YMu/I=
X-Google-Smtp-Source: AMrXdXtRXcyS3Ccs0fMMrCF1Gkwbqj9I3rc/hmBPNqI2KeQGWyRJ6ZFolJfLOHRQrQUZHLTRzXnbPg==
X-Received: by 2002:a05:600c:4256:b0:3da:1d51:ef9e with SMTP id r22-20020a05600c425600b003da1d51ef9emr34152984wmm.17.1674722676032;
        Thu, 26 Jan 2023 00:44:36 -0800 (PST)
Received: from ?IPV6:2a01:c23:c0e4:9a00:8920:c495:4c2e:69ca? (dynamic-2a01-0c23-c0e4-9a00-8920-c495-4c2e-69ca.c23.pool.telefonica.de. [2a01:c23:c0e4:9a00:8920:c495:4c2e:69ca])
        by smtp.googlemail.com with ESMTPSA id ip6-20020a05600ca68600b003d04e4ed873sm3996330wmb.22.2023.01.26.00.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 00:44:35 -0800 (PST)
Message-ID: <4f9839a9-66e7-bdde-f33d-0798bf363b17@gmail.com>
Date:   Thu, 26 Jan 2023 09:44:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To:     neil.armstrong@linaro.org, Rob Herring <robh+dt@kernel.org>,
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
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: amlogic: Fix SDIO interrupt and make it
 level-sensitive
In-Reply-To: <6055791c-68d8-987b-0f2c-0526fde9686e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26.01.2023 08:57, Neil Armstrong wrote:
> Hi Heiner,
> 
> On 25/01/2023 08:00, Heiner Kallweit wrote:
>> SDIO specification defines that the interrupt is level-sensitive.
>> Fix the interrupt trigger type for emmc_a accordingly.
>> See comment at beginning of the file wrt which is the SDIO port.
>> mmc2 = &sd_emmc_a; /* SDIO */
>>
>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>> see [0]. This was confirmed to be fixed by using level-triggered
>> interrupts.
>>
>> Note:
>> SDIO interrupt support was added in Linux just recently, however other
>> users of this dts may be affected too.
> 
> Switching from edge to level has already fixed performance issues on ethernet,
> so I think this would be the right direction, but since the SDIO, eMMC and SD controllers
> are basically the same IP, they should have the same interrupt setup.
> 
> It makes no sense to have level only for SDIO, so perhaps it would be right to
> switch every controllers to LEVEL (including AXG) and test to see if there's no regressions.
> 
After thinking a minute about it I think you're right. I tested on my system and
see no difference in behavior no matter whether emmc interrupt is level or edge.
Do you want to make further tests on your test systems?
And I'm wondering whether there's stronger evidence than just testing which trigger
type works better. Don't the datasheets give a hint?

> Neil
> 
>>
>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>
>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
>> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
>> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>> v2:
>> - rebase considering recent node name change sd -> mmc for sd_emmc_a
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
>>   arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> index 1a931d5c2..c09eb9f6f 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> @@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
>>           sd_emmc_a: mmc@ffe03000 {
>>               compatible = "amlogic,meson-axg-mmc";
>>               reg = <0x0 0xffe03000 0x0 0x800>;
>> -            interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
>> +            interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
>>               status = "disabled";
>>               clocks = <&clkc CLKID_SD_EMMC_A>,
>>                    <&clkc CLKID_SD_EMMC_A_CLK0>,
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>> index a79a35e84..ae1a5a568 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>> @@ -603,7 +603,7 @@ apb: apb@d0000000 {
>>               sd_emmc_a: mmc@70000 {
>>                   compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>>                   reg = <0x0 0x70000 0x0 0x800>;
>> -                interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
>> +                interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
>>                   status = "disabled";
>>               };
>>   
> 

