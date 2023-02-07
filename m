Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CD9A68D157
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 09:16:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbjBGIQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 03:16:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjBGIQj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 03:16:39 -0500
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC2FF274A1
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 00:16:36 -0800 (PST)
X-QQ-mid: bizesmtp68t1675757791toybj5cr
Received: from [192.168.30.129] ( [92.202.159.105])
        by bizesmtp.qq.com (ESMTP) with 
        id ; Tue, 07 Feb 2023 16:16:29 +0800 (CST)
X-QQ-SSF: 0110000000200090E000B00A0000000
X-QQ-FEAT: J5JfekO1WsjmSEsrsZCepIBB4zsEdDzrGA9YsKwGYTzD80WKhYEWxspFA8rKV
        jsxC/juXwmCEGl/GMcvzUpHEvmRqeyZJrjxtYBIoyT5NVNj63X0r86ETfxaG0SjNhJRGAhZ
        AByNA9nbaAeIY7p9wv5aMtJHU6b4FF2glU9AxMzg69Djh66ZgHqq/ahKBOKArh+qwFmeeCW
        9S0bnmEXYUIjDD2Ap3HdGoQqUUKolRRI/ObiZcFjEfHXSDGeQQ6ITeGCVZ9yRbx5Xo5/276
        HRrtXMc9N9YZo71V4zBqYq9AUhH6blIw6nFoTSXJFxXRLbTzKhyTGdrkLDPvr9N9BFKtCGU
        1BPG4RFV0zEEqSTqEeYEHVcu47/tFRJcVgJz1zxhuWufhtcjUJPJ/hElDHgsTBbj+LAIsQN
        tKaO2Vw98up18xn4U1GRzg==
X-QQ-GoodBg: 0
Message-ID: <73073D2437C98934+72a611be-d3b4-4db4-9051-12b1623b1e80@radxa.com>
Date:   Tue, 7 Feb 2023 17:16:29 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
From:   FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvr:qybglogicsvr5
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,FORGED_MUA_MOZILLA,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

hi,

On 1/26/23 23:03, Heiner Kallweit wrote:
> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
> The report was about SDIO. However, as the host controller is the same
> for SD and MMC, apply the change to all mmc controller instances.
> 
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
> 
> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

this fixes wifi issue on Radxa Zero/Zero2. thank you so much!

Tested-by: FUKAUMI Naoki <naoki@radxa.com>

--
FUKAUMI Naoki

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
