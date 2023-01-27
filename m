Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE6867DECE
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 08:59:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229874AbjA0H7e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 02:59:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbjA0H7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 02:59:34 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEAA8761EA
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:59:32 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id j36-20020a05600c1c2400b003dc39cb9c33so436222wms.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 23:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1evn3OyldRBX/K2AFHL4ychXVXaRi8/AkJ+MuWZq/ac=;
        b=H8ZQbYQ0qiQQQOPGue/P+jRbQUjuHHcHCTs4qIHHld/3wBDSgZW3yak0ee0Z3ChgzO
         dAZ8nXgLnXEnNmuaxl/ugKfb0tHwLgY/VWzcnQveE22HjtSCmSrQ3bF5159iG0EEon79
         AwM8+lV3gX9xHnfmyGOv73SByMrC0s1tVFldIDoUxDMzcwEpHZIk3Apd3FfP+ZXHJSR5
         VBmRbnRbS7+gZnkIEYX7u0Er64c1Tf+o8fWkyQUg35x3Iawpkk4p4J1s3CFhI2SCdz6U
         78sN5iXvZHFwn73kx6RCBEPKDuP6weo/uHasVOdQhkdjVr+h7JNP2N4LrqXb8rkDdfnz
         +LnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1evn3OyldRBX/K2AFHL4ychXVXaRi8/AkJ+MuWZq/ac=;
        b=3czS0GwKh9/SUV5FVUfXDNJWVodLcZ1XAg+WaYO2znofQtgNiEgiDR9MKqVyveqCPX
         ejn9nXWiis9yt3gWsC3l2bQxHPWulITmxZQSOooK8MB3rAgyIpAnsz9zH4M3X+28gLTm
         7AcUbxoW+0Y5t1fK+G7wxilDDvG4SkwFgtzikhTaRTauzwCBV84b+xZNU/AaXVEmk40L
         LzIe16+160+COqvCrCUXinq5YY/BOl0nv9UELvChPABWAwss8jefYOWuhCCJx729aADf
         e/yw4Yh3L1JuPgRe5VKP/mHxmf3FefeyvQR/7zmyWeKX5J4q75jKuoNK+9jHLei9o+gn
         yHqQ==
X-Gm-Message-State: AFqh2kriU+dIiV4juwjMfTeN8gq+JoiDJsmjsFPiwYGTNL7rcKBZdoBb
        b4EBtmnHQ5ZMYzsMexfzcmK0Qw==
X-Google-Smtp-Source: AMrXdXsYVu7APJnfmWx6Uh1ruX4EvjzTSsoxvfK/aNb67COhAEo48Je3QQmrOduqRfjzUmfVj2CNVQ==
X-Received: by 2002:a7b:c4d7:0:b0:3db:2fc6:e124 with SMTP id g23-20020a7bc4d7000000b003db2fc6e124mr27740602wmk.7.1674806371186;
        Thu, 26 Jan 2023 23:59:31 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:d4ec:15ea:873c:61e6? ([2a01:e0a:982:cbb0:d4ec:15ea:873c:61e6])
        by smtp.gmail.com with ESMTPSA id p22-20020a1c5456000000b003da286f8332sm3673828wmi.18.2023.01.26.23.59.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 23:59:30 -0800 (PST)
Message-ID: <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
Date:   Fri, 27 Jan 2023 08:59:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
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
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 26/01/2023 15:03, Heiner Kallweit wrote:
> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
> The report was about SDIO. However, as the host controller is the same
> for SD and MMC, apply the change to all mmc controller instances.

Thanks, I applied it in for-next so it runs on the CI tests.

> 
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
> 
> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")

I think we should find a better Fixes or perhaps split in 3 so it targets the
right commit adding the nodes for each family.

If the test doesn't report any breakage, I'll probably ask you that.

Neil


> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:
> - apply the fix also to meson-axg
> - apply the fix to all host controller instances
> ---
>   arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 +++---
>   arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 +++---
>   3 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index ed895fb32..a6a3095de 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -1886,7 +1886,7 @@ apb: bus@ffe00000 {
>   			sd_emmc_b: mmc@5000 {
>   				compatible = "amlogic,meson-axg-mmc";
>   				reg = <0x0 0x5000 0x0 0x800>;
> -				interrupts = <GIC_SPI 217 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
>   				status = "disabled";
>   				clocks = <&clkc CLKID_SD_EMMC_B>,
>   					<&clkc CLKID_SD_EMMC_B_CLK0>,
> @@ -1898,7 +1898,7 @@ sd_emmc_b: mmc@5000 {
>   			sd_emmc_c: mmc@7000 {
>   				compatible = "amlogic,meson-axg-mmc";
>   				reg = <0x0 0x7000 0x0 0x800>;
> -				interrupts = <GIC_SPI 218 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
>   				status = "disabled";
>   				clocks = <&clkc CLKID_SD_EMMC_C>,
>   					<&clkc CLKID_SD_EMMC_C_CLK0>,
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 6d7272b2c..13fdaba21 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -2324,7 +2324,7 @@ uart_A: serial@24000 {
>   		sd_emmc_a: mmc@ffe03000 {
>   			compatible = "amlogic,meson-axg-mmc";
>   			reg = <0x0 0xffe03000 0x0 0x800>;
> -			interrupts = <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>;
>   			status = "disabled";
>   			clocks = <&clkc CLKID_SD_EMMC_A>,
>   				 <&clkc CLKID_SD_EMMC_A_CLK0>,
> @@ -2336,7 +2336,7 @@ sd_emmc_a: mmc@ffe03000 {
>   		sd_emmc_b: mmc@ffe05000 {
>   			compatible = "amlogic,meson-axg-mmc";
>   			reg = <0x0 0xffe05000 0x0 0x800>;
> -			interrupts = <GIC_SPI 190 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>;
>   			status = "disabled";
>   			clocks = <&clkc CLKID_SD_EMMC_B>,
>   				 <&clkc CLKID_SD_EMMC_B_CLK0>,
> @@ -2348,7 +2348,7 @@ sd_emmc_b: mmc@ffe05000 {
>   		sd_emmc_c: mmc@ffe07000 {
>   			compatible = "amlogic,meson-axg-mmc";
>   			reg = <0x0 0xffe07000 0x0 0x800>;
> -			interrupts = <GIC_SPI 191 IRQ_TYPE_EDGE_RISING>;
> +			interrupts = <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
>   			status = "disabled";
>   			clocks = <&clkc CLKID_SD_EMMC_C>,
>   				 <&clkc CLKID_SD_EMMC_C_CLK0>,
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> index e3c12e0be..5eed15035 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> @@ -603,21 +603,21 @@ apb: apb@d0000000 {
>   			sd_emmc_a: mmc@70000 {
>   				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>   				reg = <0x0 0x70000 0x0 0x800>;
> -				interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>;
>   				status = "disabled";
>   			};
>   
>   			sd_emmc_b: mmc@72000 {
>   				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>   				reg = <0x0 0x72000 0x0 0x800>;
> -				interrupts = <GIC_SPI 217 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>;
>   				status = "disabled";
>   			};
>   
>   			sd_emmc_c: mmc@74000 {
>   				compatible = "amlogic,meson-gx-mmc", "amlogic,meson-gxbb-mmc";
>   				reg = <0x0 0x74000 0x0 0x800>;
> -				interrupts = <GIC_SPI 218 IRQ_TYPE_EDGE_RISING>;
> +				interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
>   				status = "disabled";
>   			};
>   		};

