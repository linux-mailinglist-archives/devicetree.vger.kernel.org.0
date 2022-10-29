Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9F17611FDF
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 05:54:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbiJ2Dyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 23:54:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiJ2Dyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 23:54:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A906FCD
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 20:54:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D82B062B5B
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 03:54:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC468C433D6;
        Sat, 29 Oct 2022 03:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667015670;
        bh=kvO9qOsc2ma0/1905YHSA3ev7aQq+EetuvzM2APeDfo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=og/gWEIO6ZjdWyuUV7jHdteqtwMtA/W6o60UtTW5bnzWWyeZU6oCkcdG7Uw9/8bT2
         lwpsGxeEhWZSyCU4bLXV3fbsJIhQ0cYMvR0RP0F+1d7eCIIqMcthn8O7hX+kDWQacb
         97UfoPVofrhtPg836Pi5QXAb1KeRZNp+6+o7oN9nnsz3ZRYlOiRzILkmLwXcH5+boR
         zT01AqCdM88lz6QH4cg4z13u2/5umP8kTYYe3F9wnTsb1dleRDJ1fU4sq6Q4K4hI5e
         a4f+HQrKzF7KYN5tm28I3/f7faDzpMpihMnUQsiKEWsuaCI/1gjr9P2U/SJyfFef2+
         gbkmxGu6HCJcw==
Date:   Sat, 29 Oct 2022 11:54:22 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: tqma8mpql: add PCIe support
Message-ID: <20221029035422.GL125525@dragon>
References: <20221018085330.2540222-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221018085330.2540222-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 18, 2022 at 10:53:29AM +0200, Alexander Stein wrote:
> Add PCIe support on TQMa8MPxL module on MBa8MPxL mainboard.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> This is based on next-20221018 where imp8mp PCIe support has been
> merged.
> 
>  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 42 ++++++++++++++++++-
>  1 file changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> index 7bf6f81e87b4..7a32379cd006 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -8,6 +8,7 @@
>  
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/net/ti-dp83867.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
>  #include <dt-bindings/pwm/pwm.h>
>  #include "imx8mp-tqma8mpql.dtsi"
>  
> @@ -48,6 +49,12 @@ backlight_lvds: backlight {
>  		status = "disabled";
>  	};
>  
> +	clk_xtal25: clk-xtal25 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  		pinctrl-names = "default";
> @@ -340,9 +347,16 @@ &gpio4 {
>  			  "", "", "", "",
>  			  "", "", "", "",
>  			  "", "", "DP_IRQ", "DSI_EN",
> -			  "HDMI_OC#", "TEMP_EVENT#", "PCIE_CLK_OE#", "",
> +			  "HDMI_OC#", "TEMP_EVENT#", "PCIE_REFCLK_OE#", "",
>  			  "", "", "", "FAN_PWR",
>  			  "RTC_EVENT#", "CODEC_RST#", "", "";
> +
> +	pcie_refclkreq-hog {

Hyphen is more recommended than underscore for node name.

> +		gpio-hog;
> +		gpios = <22 0>;
> +		output-high;
> +		line-name = "PCIE_REFCLK_OE#";
> +	};
>  };
>  
>  &gpio5 {
> @@ -377,6 +391,13 @@ at24c02_54: eeprom@54 {
>  		pagesize = <16>;
>  		vcc-supply = <&reg_vcc_3v3>;
>  	};
> +
> +	pcieclk: clk@6a {

Should be clock-controller@6a?

Shawn

> +		compatible = "renesas,9fgv0241";
> +		reg = <0x6a>;
> +		clocks = <&clk_xtal25>;
> +		#clock-cells = <1>;
> +	};
>  };
>  
>  &i2c4 {
> @@ -407,6 +428,25 @@ &pcf85063 {
>  	interrupts = <28 IRQ_TYPE_EDGE_FALLING>;
>  };
>  
> +&pcie_phy {
> +	fsl,clkreq-unsupported;
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	clocks = <&pcieclk 0>;
> +	clock-names = "ref";
> +	status = "okay";
> +};
> +
> +&pcie {
> +	clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> +		 <&clk IMX8MP_CLK_HSIO_AXI>,
> +		 <&clk IMX8MP_CLK_PCIE_ROOT>;
> +	clock-names = "pcie", "pcie_bus", "pcie_aux";
> +	assigned-clocks = <&clk IMX8MP_CLK_PCIE_AUX>;
> +	assigned-clock-rates = <10000000>;
> +	assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_50M>;
> +	status = "okay";
> +};
> +
>  &pwm2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_pwm2>;
> -- 
> 2.25.1
> 
