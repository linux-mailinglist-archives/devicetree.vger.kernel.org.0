Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAB1E49CBBC
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 15:02:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234888AbiAZOCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 09:02:54 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:53422 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234893AbiAZOCx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 09:02:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643205773; x=1674741773;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VSilYUrMWZOEGjhwV3eLRn3UXQpNTHjrMfBk/OgXYZs=;
  b=PdS7GnYNOdyl+c+IsGtB/ARHIoOVpT218Z55kjlQwr8OWs56NepcrSaR
   1u2TMG83Uny11G3aqWjv19zZum9G4YCuspm1bkeRszC6U4GVgOO/MfCP5
   8nNPJ3Ij0m8bhkrSAR2whtk4a/bbTk7AEwCet1WcCWN0dsxrHikM3zUyO
   +TOyzEh8uRwzHoi7/YaL3rfq0N1p9TuemVZK/6ShmCfQElPle6JvKWPxa
   nnOFQDKtfNxxZeM53MWRuwHLqRNkWUWqdol6zEya89jir5kcBt0CuxDR7
   JRlSsNUz9hpr695Z0DZqBT5/wkmD+/iQfyupDtNi66m6xNfb/8egs0PjX
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,318,1635199200"; 
   d="scan'208";a="21725199"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Jan 2022 15:02:51 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 26 Jan 2022 15:02:51 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 26 Jan 2022 15:02:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643205771; x=1674741771;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VSilYUrMWZOEGjhwV3eLRn3UXQpNTHjrMfBk/OgXYZs=;
  b=dVGLxVmbHnWDldH9ug1yhRF0z8ZP0yJO23dtupAmhCTrBd/w+huYgn/9
   SVOjoMCQZcECo2p4VOjcoWVotFhWzYJZmXJ19S99kSXNcvUFou5+j707/
   2ozmqa/v2fvDwtzulO5eB8XEyzy3YTYm3ZJX0xnGbFpWDQGTChGzKghQl
   b+r0lVJDtuFF6uYHHGbkN/By6YJ+QXZf1S2qFvcDUvivHf56J00VvZ9yi
   k1/i242rssZjzyQaZ7fbc68nqen//B5O1d66JY3MEYyV4qloI5sAoJuEy
   rBjoEpqg5TljhieTfLYp9FrrR7xFEyk9+1EVy95uPMiygk4PI2fxBnuzJ
   A==;
X-IronPort-AV: E=Sophos;i="5.88,318,1635199200"; 
   d="scan'208";a="21725198"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Jan 2022 15:02:51 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9D5B7280065;
        Wed, 26 Jan 2022 15:02:51 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: (EXT) [PATCH 7/9] arm64: dts: imx8mp: add HSIO power-domains
Date:   Wed, 26 Jan 2022 15:02:51 +0100
Message-ID: <4713370.usQuhbGJ8B@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220119134027.2931945-8-l.stach@pengutronix.de>
References: <20220119134027.2931945-1-l.stach@pengutronix.de> <20220119134027.2931945-8-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Am Mittwoch, 19. Januar 2022, 14:40:25 CET schrieb Lucas Stach:
> This adds the GPC and HSIO blk-ctrl nodes providing power control for
> the high-speed (USB and PCIe) IOs.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

$ make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/
fsl,imx8mp-dwc3.yaml gives the warnings:
> usb@32f10100: 'power-domains' does not match any of the regexes: 
'^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'
>         From schema: linux/Documentation/devicetree/bindings/usb/fsl,imx8mp-
dwc3.yaml
> usb@32f10108: 'power-domains' does not match any of the regexes: 
'^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'
>         From schema: linux/Documentation/devicetree/bindings/usb/fsl,imx8mp-
dwc3.yaml

Alexander

> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 63 ++++++++++++++++++++---
>  1 file changed, 57 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 04d259de5667..b76af96b9b5c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -4,6 +4,7 @@
>   */
> 
>  #include <dt-bindings/clock/imx8mp-clock.h>
> +#include <dt-bindings/power/imx8mp-power.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -443,6 +444,44 @@ src: reset-controller@30390000 {
>  				interrupts = <GIC_SPI 89 
IRQ_TYPE_LEVEL_HIGH>;
>  				#reset-cells = <1>;
>  			};
> +
> +			gpc: gpc@303a0000 {
> +				compatible = "fsl,imx8mp-gpc";
> +				reg = <0x303a0000 0x10000>;
> +				interrupt-parent = <&gic>;
> +				interrupt-controller;
> +				#interrupt-cells = <3>;
> +
> +				pgc {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					pgc_pcie_phy: power-
domain@1 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_PCIE_PHY>;
> +					};
> +
> +					pgc_usb1_phy: power-
domain@2 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_USB1_PHY>;
> +					};
> +
> +					pgc_usb2_phy: power-
domain@3 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_USB2_PHY>;
> +					};
> +
> +					pgc_hsiomix: power-
domains@17 {
> +						#power-
domain-cells = <0>;
> +						reg = 
<IMX8MP_POWER_DOMAIN_HSIOMIX>;
> +						clocks = 
<&clk IMX8MP_CLK_HSIO_AXI>,
> +							 
<&clk IMX8MP_CLK_HSIO_ROOT>;
> +						assigned-
clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> +						assigned-
clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> +						assigned-
clock-rates = <500000000>;
> +					};
> +				};
> +			};
>  		};
> 
>  		aips2: bus@30400000 {
> @@ -875,6 +914,20 @@ ddr-pmu@3d800000 {
>  			interrupts = <GIC_SPI 98 
IRQ_TYPE_LEVEL_HIGH>;
>  		};
> 
> +		hsio_blk_ctrl: blk-ctrl@32f10000 {
> +			compatible = "fsl,imx8mp-hsio-blk-ctrl", 
"syscon";
> +			reg = <0x32f10000 0x24>;
> +			clocks = <&clk IMX8MP_CLK_USB_ROOT>,
> +				 <&clk IMX8MP_CLK_PCIE_ROOT>;
> +			clock-names = "usb", "pcie";
> +			power-domains = <&pgc_hsiomix>, 
<&pgc_hsiomix>,
> +					<&pgc_usb1_phy>, 
<&pgc_usb2_phy>,
> +					<&pgc_hsiomix>, 
<&pgc_pcie_phy>;
> +			power-domain-names = "bus", "usb", "usb-
phy1",
> +					     "usb-phy2", 
"pcie", "pcie-phy";
> +			#power-domain-cells = <1>;
> +		};
> +
>  		usb3_phy0: usb-phy@381f0040 {
>  			compatible = "fsl,imx8mp-usb-phy";
>  			reg = <0x381f0040 0x40>;
> @@ -882,6 +935,7 @@ usb3_phy0: usb-phy@381f0040 {
>  			clock-names = "phy";
>  			assigned-clocks = <&clk 
IMX8MP_CLK_USB_PHY_REF>;
>  			assigned-clock-parents = <&clk 
IMX8MP_CLK_24M>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB_PHY1>;
>  			#phy-cells = <0>;
>  			status = "disabled";
>  		};
> @@ -893,6 +947,7 @@ usb3_0: usb@32f10100 {
>  				 <&clk IMX8MP_CLK_USB_ROOT>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 148 
IRQ_TYPE_LEVEL_HIGH>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			dma-ranges = <0x40000000 0x40000000 
0xc0000000>;
> @@ -906,9 +961,6 @@ usb_dwc3_0: usb@38100000 {
>  					 <&clk 
IMX8MP_CLK_USB_CORE_REF>,
>  					 <&clk 
IMX8MP_CLK_USB_ROOT>;
>  				clock-names = "bus_early", "ref", 
"suspend";
> -				assigned-clocks = <&clk 
IMX8MP_CLK_HSIO_AXI>;
> -				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_500M>;
> -				assigned-clock-rates = 
<500000000>;
>  				interrupts = <GIC_SPI 40 
IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy0>, <&usb3_phy0>;
>  				phy-names = "usb2-phy", "usb3-
phy";
> @@ -924,6 +976,7 @@ usb3_phy1: usb-phy@382f0040 {
>  			clock-names = "phy";
>  			assigned-clocks = <&clk 
IMX8MP_CLK_USB_PHY_REF>;
>  			assigned-clock-parents = <&clk 
IMX8MP_CLK_24M>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB_PHY2>;
>  			#phy-cells = <0>;
>  		};
> 
> @@ -934,6 +987,7 @@ usb3_1: usb@32f10108 {
>  				 <&clk IMX8MP_CLK_USB_ROOT>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 149 
IRQ_TYPE_LEVEL_HIGH>;
> +			power-domains = <&hsio_blk_ctrl 
IMX8MP_HSIOBLK_PD_USB>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			dma-ranges = <0x40000000 0x40000000 
0xc0000000>;
> @@ -947,9 +1001,6 @@ usb_dwc3_1: usb@38200000 {
>  					 <&clk 
IMX8MP_CLK_USB_CORE_REF>,
>  					 <&clk 
IMX8MP_CLK_USB_ROOT>;
>  				clock-names = "bus_early", "ref", 
"suspend";
> -				assigned-clocks = <&clk 
IMX8MP_CLK_HSIO_AXI>;
> -				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL2_500M>;
> -				assigned-clock-rates = 
<500000000>;
>  				interrupts = <GIC_SPI 41 
IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy1>, <&usb3_phy1>;
>  				phy-names = "usb2-phy", "usb3-
phy";




