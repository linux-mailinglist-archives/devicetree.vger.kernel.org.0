Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB1E367BB8F
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 21:02:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234783AbjAYUCR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 15:02:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235381AbjAYUCQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 15:02:16 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94F851A1
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 12:02:14 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id r2so18175468wrv.7
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 12:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zpQiYKewfM75LgZx2CGS8jz1svX6UbmzP2z2lvxLxDE=;
        b=a5gQiL4vwHYxarBjINRBH4tzxGyOCLnWp00lqjv6prz+avlW5QmltN37SqMs6H6G76
         7yr+HvlMna6Lwt91idASeao21M+zT/erDeevNbMeBTkcCZk/RCApZNvwSsllOyaDFvf/
         Nxm1WTO9e1XXMbXeWXgit3BikzxvAkyJeGNMIdytZ4BERFOF5+2IuzI9ZLG6ts4lOUZg
         zLRA52zdgjro2Dz1nrfv2RTvvUTOTq56zBe7Rsal4WyGh6SzRlioCyFf+tMJ+EboS+Qj
         ZaKztZopavHkJgvUT6sl6s4yAhKHN+9UGyG/4+4VrsT96ArkybfgjqpyjG3KRHtyPM3q
         Cb/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zpQiYKewfM75LgZx2CGS8jz1svX6UbmzP2z2lvxLxDE=;
        b=fjeIODeTErB19SoGPC+nMKNWVQ9oS42MZ6+Pp0R6cmBIbQtw/q/Pv61oXWG682YZMX
         daVyzlQUwxRyxuWwWu6/ks8krRFPdxkL6BItVyPEe0tIyQP5Ux5vJif2YLZJFqFzzewi
         1NTeyLNhyXTEo5X/s9Z+Lj9E+mRyNp8nQ1TraGRhkUY4+V+t9HMneJgINDoz0qRHeUsj
         E9I2weugwbnaYo442SaDemgLm3HCcbjjKHa/LAcCJWSkQ91BVAJCdNc+RniOACepfw+7
         MDda4vD33uWTHMVpzFT9ysjEwrykX0TIdmy4n7Y9vSQ3C3lYR7v9SUkCN4CfSdAHGiV+
         y2sQ==
X-Gm-Message-State: AO0yUKX+NZlG7N/AZy9kbSIyzLYTtG0BIiN9ansMSTr4FYwOSUQcHF2N
        Jsx+dvyEuEq05gXHuijIZGs=
X-Google-Smtp-Source: AK7set+VtmsiILSUq/hTnS3Nys6aOIhGVTP/Z/nn8sy5cMhxWx3fajxSdyNs1ZNSBzu8v5j7t+dtvQ==
X-Received: by 2002:a5d:5a87:0:b0:2bf:b7ca:8ae2 with SMTP id bp7-20020a5d5a87000000b002bfb7ca8ae2mr3822237wrb.15.1674676932918;
        Wed, 25 Jan 2023 12:02:12 -0800 (PST)
Received: from ?IPV6:2a01:c22:720f:5a00:b1aa:59d6:6587:3051? (dynamic-2a01-0c22-720f-5a00-b1aa-59d6-6587-3051.c22.pool.telefonica.de. [2a01:c22:720f:5a00:b1aa:59d6:6587:3051])
        by smtp.googlemail.com with ESMTPSA id h18-20020adffd52000000b002bfc24e1c55sm303748wrs.78.2023.01.25.12.02.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 12:02:12 -0800 (PST)
Message-ID: <0f702de6-91f8-f01f-2ea5-6b1d9ab325e2@gmail.com>
Date:   Wed, 25 Jan 2023 21:02:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] arm64: dts: amlogic: Fix SDIO interrupt and make it
 level-sensitive
To:     Peter Suti <peter.suti@streamunlimited.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9b72573-a59f-989f-a752-1aa8517cf8dc@gmail.com>
 <CACMGZgbtX7zgy2USO5O0qY54tGW+d2cZ6qcUUbb-uOFAtfqOVw@mail.gmail.com>
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <CACMGZgbtX7zgy2USO5O0qY54tGW+d2cZ6qcUUbb-uOFAtfqOVw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25.01.2023 09:30, Peter Suti wrote:
> On Wed, Jan 25, 2023 at 8:00 AM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
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
>>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
>>  arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> index 1a931d5c2..c09eb9f6f 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> @@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
>>                 sd_emmc_a: mmc@ffe03000 {
>>                         compatible = "amlogic,meson-axg-mmc";
>>                         reg = <0x0 0xffe03000 0x0 0x800>;
>> -                       interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
>> +                       interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
>>                         status = "disabled";
>>                         clocks = <&clkc CLKID_SD_EMMC_A>,
>>                                  <&clkc CLKID_SD_EMMC_A_CLK0>,
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>> index a79a35e84..ae1a5a568 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
>> @@ -603,7 +603,7 @@ apb: apb@d0000000 {
>>                         sd_emmc_a: mmc@70000 {
>>                                 compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>>                                 reg = <0x0 0x70000 0x0 0x800>;
>> -                               interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
>> +                               interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
>>                                 status = "disabled";
>>                         };
>>
>> --
>> 2.39.1
>>
> 
> Please also change arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> sd_emmc_b because it was tested on that platform.
> 
I'm not sure whether sd_emmc_b is used as SDIO port on all axg systems.
Maybe one of the maintainers can comment on it.

If systems may use sd_emmc_b differently, then overriding the interrupt
trigger type should be done in the respective board file that includes
meson-axg.dtsi.

>>
>> _______________________________________________
>> linux-amlogic mailing list
>> linux-amlogic@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>>
>>

