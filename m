Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1F494C84B7
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 08:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231542AbiCAHN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 02:13:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229940AbiCAHN5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 02:13:57 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A664960CF6
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 23:13:16 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id BD246478;
        Tue,  1 Mar 2022 08:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1646118794;
        bh=H0TTANtQCtmqXjAV8bOhHIc7R2RWH3t0U3MQbrA2f2s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=eUxG4n2hxttqT2Tb0N9XPAcLGOZfHwRhW8Ucxc929jptnxUxs8mID99e7NmE37wLu
         s5/GHnHpw7siKtjb6cveXAsGVQDiqyiD251JNd9jD0p6GduT6feIm6CaNIBv0OuWjP
         7UkPKuzfOcZ6JXjxaVwPivZLFxs0qahZ4TVP+jc8=
Date:   Tue, 1 Mar 2022 09:13:03 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH v3 5/7] arm64: dts: imx8mp: add HSIO power-domains
Message-ID: <Yh3Hf95q+STtImg5@pendragon.ideasonboard.com>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
 <20220228201731.3330192-6-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220228201731.3330192-6-l.stach@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Thank you for the patch.

On Mon, Feb 28, 2022 at 09:17:29PM +0100, Lucas Stach wrote:
> This adds the GPC and HSIO blk-ctrl nodes providing power control for
> the high-speed (USB and PCIe) IOs.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 71 +++++++++++++++++++++--
>  1 file changed, 65 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 6b840c05dd77..69e533add539 100644
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
> @@ -475,6 +476,44 @@ src: reset-controller@30390000 {
>  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>  				#reset-cells = <1>;
>  			};
> +
> +			gpc: gpc@303a0000 {
> +				compatible = "fsl,imx8mp-gpc";
> +				reg = <0x303a0000 0x1000>;
> +				interrupt-parent = <&gic>;
> +				interrupt-controller;
> +				#interrupt-cells = <3>;
> +
> +				pgc {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					pgc_pcie_phy: power-domain@1 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MP_POWER_DOMAIN_PCIE_PHY>;
> +					};
> +
> +					pgc_usb1_phy: power-domain@2 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MP_POWER_DOMAIN_USB1_PHY>;
> +					};
> +
> +					pgc_usb2_phy: power-domain@3 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MP_POWER_DOMAIN_USB2_PHY>;
> +					};
> +
> +					pgc_hsiomix: power-domains@17 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MP_POWER_DOMAIN_HSIOMIX>;
> +						clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
> +							 <&clk IMX8MP_CLK_HSIO_ROOT>;
> +						assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> +						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> +						assigned-clock-rates = <500000000>;
> +					};
> +				};
> +			};
>  		};
>  
>  		aips2: bus@30400000 {
> @@ -892,6 +931,28 @@ eqos: ethernet@30bf0000 {
>  			};
>  		};
>  
> +		aips4 {

I think this should be

		aips4: bus@32c00000 {

to match the other buses. Apart from that, the patch looks good, my Rb
tag still applies.

> +			compatible = "fsl,aips-bus", "simple-bus";
> +			reg = <0x32c00000 0x400000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			hsio_blk_ctrl: blk-ctrl@32f10000 {
> +				compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
> +				reg = <0x32f10000 0x24>;
> +				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
> +					 <&clk IMX8MP_CLK_PCIE_ROOT>;
> +				clock-names = "usb", "pcie";
> +				power-domains = <&pgc_hsiomix>, <&pgc_hsiomix>,
> +						<&pgc_usb1_phy>, <&pgc_usb2_phy>,
> +						<&pgc_hsiomix>, <&pgc_pcie_phy>;
> +				power-domain-names = "bus", "usb", "usb-phy1",
> +						     "usb-phy2", "pcie", "pcie-phy";
> +				#power-domain-cells = <1>;
> +			};
> +		};
> +
>  		gic: interrupt-controller@38800000 {
>  			compatible = "arm,gic-v3";
>  			reg = <0x38800000 0x10000>,
> @@ -915,6 +976,7 @@ usb3_phy0: usb-phy@381f0040 {
>  			clock-names = "phy";
>  			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
>  			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY1>;
>  			#phy-cells = <0>;
>  			status = "disabled";
>  		};
> @@ -926,6 +988,7 @@ usb3_0: usb@32f10100 {
>  				 <&clk IMX8MP_CLK_USB_ROOT>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
> @@ -939,9 +1002,6 @@ usb_dwc3_0: usb@38100000 {
>  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
>  					 <&clk IMX8MP_CLK_USB_ROOT>;
>  				clock-names = "bus_early", "ref", "suspend";
> -				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> -				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> -				assigned-clock-rates = <500000000>;
>  				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy0>, <&usb3_phy0>;
>  				phy-names = "usb2-phy", "usb3-phy";
> @@ -957,6 +1017,7 @@ usb3_phy1: usb-phy@382f0040 {
>  			clock-names = "phy";
>  			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
>  			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY2>;
>  			#phy-cells = <0>;
>  		};
>  
> @@ -967,6 +1028,7 @@ usb3_1: usb@32f10108 {
>  				 <&clk IMX8MP_CLK_USB_ROOT>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
> +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
> @@ -980,9 +1042,6 @@ usb_dwc3_1: usb@38200000 {
>  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
>  					 <&clk IMX8MP_CLK_USB_ROOT>;
>  				clock-names = "bus_early", "ref", "suspend";
> -				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> -				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> -				assigned-clock-rates = <500000000>;
>  				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy1>, <&usb3_phy1>;
>  				phy-names = "usb2-phy", "usb3-phy";

-- 
Regards,

Laurent Pinchart
