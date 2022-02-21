Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92ADA4BE76F
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 19:03:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356082AbiBULTf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 06:19:35 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356083AbiBULS6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 06:18:58 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E6C3214
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 03:01:57 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 29BE0482;
        Mon, 21 Feb 2022 12:01:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1645441316;
        bh=zL+A9J1KeW/ARZ1q5A5RpjSe1/HILtoHdyf3xFjXq0k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mBHDogm5BBVNQTtB2Tpn96vE9QVtc2yKbxvFAx9w5wvnlegb5IHpHE9J0upsjgGsd
         nu5dB7ak588SQ1XnXgfuex84yz1pe+kjiWkl4fMlIpXZGSqk3A3Y3czc6HlHhbVIC6
         csgUHV4WfaOV6N3fb6s6YsoSDLiqv3ULFMVr/0oo=
Date:   Mon, 21 Feb 2022 13:01:47 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 7/9] arm64: dts: imx8mp: add HSIO power-domains
Message-ID: <YhNxG8oJb/kOArBt@pendragon.ideasonboard.com>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-7-l.stach@pengutronix.de>
 <YhCfAJbLkrzS9rIz@pendragon.ideasonboard.com>
 <3e9d3135d9d838cb58e828478145704b9cb7f58d.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3e9d3135d9d838cb58e828478145704b9cb7f58d.camel@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Mon, Feb 21, 2022 at 11:05:00AM +0100, Lucas Stach wrote:
> Am Samstag, dem 19.02.2022 um 09:40 +0200 schrieb Laurent Pinchart:
> > On Mon, Feb 07, 2022 at 08:25:45PM +0100, Lucas Stach wrote:
> > > This adds the GPC and HSIO blk-ctrl nodes providing power control for
> > > the high-speed (USB and PCIe) IOs.
> > > 
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 63 ++++++++++++++++++++---
> > >  1 file changed, 57 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > index 6b840c05dd77..dc488a147d0c 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > @@ -4,6 +4,7 @@
> > >   */
> > >  
> > >  #include <dt-bindings/clock/imx8mp-clock.h>
> > > +#include <dt-bindings/power/imx8mp-power.h>
> > >  #include <dt-bindings/gpio/gpio.h>
> > >  #include <dt-bindings/input/input.h>
> > >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > @@ -475,6 +476,44 @@ src: reset-controller@30390000 {
> > >  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > >  				#reset-cells = <1>;
> > >  			};
> > > +
> > > +			gpc: gpc@303a0000 {
> > > +				compatible = "fsl,imx8mp-gpc";
> > > +				reg = <0x303a0000 0x10000>;
> > 
> > According to the reference manual, the GPC occupies 4kB, not 64kB.
> 
> Right, will fix.
> 
> > > +				interrupt-parent = <&gic>;
> > > +				interrupt-controller;
> > > +				#interrupt-cells = <3>;
> > > +
> > > +				pgc {
> > > +					#address-cells = <1>;
> > > +					#size-cells = <0>;
> > > +
> > 
> > We're working on support for the MEDIAMIX power domains, which we'll
> > rebase on top of this. In case the HSIO part still needs more work,
> > could you split this patch in two, with one patch that adds the PGC,
> > with an empty pgc nodde, and a second patch that adds the HSIO-related
> > power domains ? The first one could then be merged faster (it would be
> > great if it could get in v5.18).
> 
> I don't think the HSIO part is controversial. It seems to work well in
> my testing and DT binding is already reviewed. Not sure if someone is
> going to review it properly, but I hope that we can land it together
> with the reset of this series.

I'll give it a review.

> > > +					pgc_pcie_phy: power-domain@1 {
> > > +						#power-domain-cells = <0>;
> > > +						reg = <IMX8MP_POWER_DOMAIN_PCIE_PHY>;
> > > +					};
> > > +
> > > +					pgc_usb1_phy: power-domain@2 {
> > > +						#power-domain-cells = <0>;
> > > +						reg = <IMX8MP_POWER_DOMAIN_USB1_PHY>;
> > > +					};
> > > +
> > > +					pgc_usb2_phy: power-domain@3 {
> > > +						#power-domain-cells = <0>;
> > > +						reg = <IMX8MP_POWER_DOMAIN_USB2_PHY>;
> > > +					};
> > > +
> > > +					pgc_hsiomix: power-domains@17 {
> > > +						#power-domain-cells = <0>;
> > > +						reg = <IMX8MP_POWER_DOMAIN_HSIOMIX>;
> > > +						clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
> > > +							 <&clk IMX8MP_CLK_HSIO_ROOT>;
> > > +						assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> > > +						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> > > +						assigned-clock-rates = <500000000>;
> > > +					};
> > > +				};
> > > +			};
> > >  		};
> > >  
> > >  		aips2: bus@30400000 {
> > > @@ -908,6 +947,20 @@ ddr-pmu@3d800000 {
> > >  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> > >  		};
> > >  
> > > +		hsio_blk_ctrl: blk-ctrl@32f10000 {
> > > +			compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
> > > +			reg = <0x32f10000 0x24>;
> > > +			clocks = <&clk IMX8MP_CLK_USB_ROOT>,
> > > +				 <&clk IMX8MP_CLK_PCIE_ROOT>;
> > > +			clock-names = "usb", "pcie";
> > > +			power-domains = <&pgc_hsiomix>, <&pgc_hsiomix>,
> > > +					<&pgc_usb1_phy>, <&pgc_usb2_phy>,
> > > +					<&pgc_hsiomix>, <&pgc_pcie_phy>;
> > 
> > Would it be useful to rework the driver to avoid specifying the same
> > parent power domain multiple times in DT ?
> 
> I don't think so. That's the pattern we used for all the other blk-
> ctrls, where each virtual power-domain in the blk-ctrl has its own
> handle to a upstream GPC power domain. I don't see why we would want to
> change this now.

It's a small optimization, but probably not really important.

> > > +			power-domain-names = "bus", "usb", "usb-phy1",
> > > +					     "usb-phy2", "pcie", "pcie-phy";
> > > +			#power-domain-cells = <1>;
> > > +		};
> > > +
> > >  		usb3_phy0: usb-phy@381f0040 {
> > >  			compatible = "fsl,imx8mp-usb-phy";
> > >  			reg = <0x381f0040 0x40>;
> > > @@ -915,6 +968,7 @@ usb3_phy0: usb-phy@381f0040 {
> > >  			clock-names = "phy";
> > >  			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
> > >  			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> > > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY1>;
> > >  			#phy-cells = <0>;
> > >  			status = "disabled";
> > >  		};
> > > @@ -926,6 +980,7 @@ usb3_0: usb@32f10100 {
> > >  				 <&clk IMX8MP_CLK_USB_ROOT>;
> > >  			clock-names = "hsio", "suspend";
> > >  			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> > > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
> > >  			#address-cells = <1>;
> > >  			#size-cells = <1>;
> > >  			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
> > > @@ -939,9 +994,6 @@ usb_dwc3_0: usb@38100000 {
> > >  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> > >  					 <&clk IMX8MP_CLK_USB_ROOT>;
> > >  				clock-names = "bus_early", "ref", "suspend";
> > > -				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> > > -				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> > > -				assigned-clock-rates = <500000000>;
> > >  				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > >  				phys = <&usb3_phy0>, <&usb3_phy0>;
> > >  				phy-names = "usb2-phy", "usb3-phy";
> > > @@ -957,6 +1009,7 @@ usb3_phy1: usb-phy@382f0040 {
> > >  			clock-names = "phy";
> > >  			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
> > >  			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> > > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY2>;
> > >  			#phy-cells = <0>;
> > >  		};
> > >  
> > > @@ -967,6 +1020,7 @@ usb3_1: usb@32f10108 {
> > >  				 <&clk IMX8MP_CLK_USB_ROOT>;
> > >  			clock-names = "hsio", "suspend";
> > >  			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
> > > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
> > >  			#address-cells = <1>;
> > >  			#size-cells = <1>;
> > >  			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
> > > @@ -980,9 +1034,6 @@ usb_dwc3_1: usb@38200000 {
> > >  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> > >  					 <&clk IMX8MP_CLK_USB_ROOT>;
> > >  				clock-names = "bus_early", "ref", "suspend";
> > > -				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> > > -				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> > > -				assigned-clock-rates = <500000000>;
> > >  				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> > >  				phys = <&usb3_phy1>, <&usb3_phy1>;
> > >  				phy-names = "usb2-phy", "usb3-phy";
> > > 

-- 
Regards,

Laurent Pinchart
