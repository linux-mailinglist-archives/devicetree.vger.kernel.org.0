Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ADB54BE649
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 19:02:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355264AbiBUKog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 05:44:36 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355375AbiBUKoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 05:44:24 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8AA06E4DF
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 02:05:08 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nM5Z0-0000e8-W5; Mon, 21 Feb 2022 11:05:03 +0100
Message-ID: <3e9d3135d9d838cb58e828478145704b9cb7f58d.camel@pengutronix.de>
Subject: Re: [PATCH v2 7/9] arm64: dts: imx8mp: add HSIO power-domains
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Date:   Mon, 21 Feb 2022 11:05:00 +0100
In-Reply-To: <YhCfAJbLkrzS9rIz@pendragon.ideasonboard.com>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
         <20220207192547.1997549-7-l.stach@pengutronix.de>
         <YhCfAJbLkrzS9rIz@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

Am Samstag, dem 19.02.2022 um 09:40 +0200 schrieb Laurent Pinchart:
> Hi Lucas,
> 
> Thank you for the patch.
> 
> On Mon, Feb 07, 2022 at 08:25:45PM +0100, Lucas Stach wrote:
> > This adds the GPC and HSIO blk-ctrl nodes providing power control for
> > the high-speed (USB and PCIe) IOs.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 63 ++++++++++++++++++++---
> >  1 file changed, 57 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > index 6b840c05dd77..dc488a147d0c 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -4,6 +4,7 @@
> >   */
> >  
> >  #include <dt-bindings/clock/imx8mp-clock.h>
> > +#include <dt-bindings/power/imx8mp-power.h>
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/input/input.h>
> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > @@ -475,6 +476,44 @@ src: reset-controller@30390000 {
> >  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> >  				#reset-cells = <1>;
> >  			};
> > +
> > +			gpc: gpc@303a0000 {
> > +				compatible = "fsl,imx8mp-gpc";
> > +				reg = <0x303a0000 0x10000>;
> 
> According to the reference manual, the GPC occupies 4kB, not 64kB.

Right, will fix.

> 
> > +				interrupt-parent = <&gic>;
> > +				interrupt-controller;
> > +				#interrupt-cells = <3>;
> > +
> > +				pgc {
> > +					#address-cells = <1>;
> > +					#size-cells = <0>;
> > +
> 
> We're working on support for the MEDIAMIX power domains, which we'll
> rebase on top of this. In case the HSIO part still needs more work,
> could you split this patch in two, with one patch that adds the PGC,
> with an empty pgc nodde, and a second patch that adds the HSIO-related
> power domains ? The first one could then be merged faster (it would be
> great if it could get in v5.18).

I don't think the HSIO part is controversial. It seems to work well in
my testing and DT binding is already reviewed. Not sure if someone is
going to review it properly, but I hope that we can land it together
with the reset of this series.

> 
> > +					pgc_pcie_phy: power-domain@1 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MP_POWER_DOMAIN_PCIE_PHY>;
> > +					};
> > +
> > +					pgc_usb1_phy: power-domain@2 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MP_POWER_DOMAIN_USB1_PHY>;
> > +					};
> > +
> > +					pgc_usb2_phy: power-domain@3 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MP_POWER_DOMAIN_USB2_PHY>;
> > +					};
> > +
> > +					pgc_hsiomix: power-domains@17 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MP_POWER_DOMAIN_HSIOMIX>;
> > +						clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
> > +							 <&clk IMX8MP_CLK_HSIO_ROOT>;
> > +						assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> > +						assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> > +						assigned-clock-rates = <500000000>;
> > +					};
> > +				};
> > +			};
> >  		};
> >  
> >  		aips2: bus@30400000 {
> > @@ -908,6 +947,20 @@ ddr-pmu@3d800000 {
> >  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> >  		};
> >  
> > +		hsio_blk_ctrl: blk-ctrl@32f10000 {
> > +			compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
> > +			reg = <0x32f10000 0x24>;
> > +			clocks = <&clk IMX8MP_CLK_USB_ROOT>,
> > +				 <&clk IMX8MP_CLK_PCIE_ROOT>;
> > +			clock-names = "usb", "pcie";
> > +			power-domains = <&pgc_hsiomix>, <&pgc_hsiomix>,
> > +					<&pgc_usb1_phy>, <&pgc_usb2_phy>,
> > +					<&pgc_hsiomix>, <&pgc_pcie_phy>;
> 
> Would it be useful to rework the driver to avoid specifying the same
> parent power domain multiple times in DT ?

I don't think so. That's the pattern we used for all the other blk-
ctrls, where each virtual power-domain in the blk-ctrl has its own
handle to a upstream GPC power domain. I don't see why we would want to
change this now.

Regards,
Lucas

> 
> > +			power-domain-names = "bus", "usb", "usb-phy1",
> > +					     "usb-phy2", "pcie", "pcie-phy";
> > +			#power-domain-cells = <1>;
> > +		};
> > +
> >  		usb3_phy0: usb-phy@381f0040 {
> >  			compatible = "fsl,imx8mp-usb-phy";
> >  			reg = <0x381f0040 0x40>;
> > @@ -915,6 +968,7 @@ usb3_phy0: usb-phy@381f0040 {
> >  			clock-names = "phy";
> >  			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
> >  			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY1>;
> >  			#phy-cells = <0>;
> >  			status = "disabled";
> >  		};
> > @@ -926,6 +980,7 @@ usb3_0: usb@32f10100 {
> >  				 <&clk IMX8MP_CLK_USB_ROOT>;
> >  			clock-names = "hsio", "suspend";
> >  			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
> > @@ -939,9 +994,6 @@ usb_dwc3_0: usb@38100000 {
> >  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> >  					 <&clk IMX8MP_CLK_USB_ROOT>;
> >  				clock-names = "bus_early", "ref", "suspend";
> > -				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> > -				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> > -				assigned-clock-rates = <500000000>;
> >  				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> >  				phys = <&usb3_phy0>, <&usb3_phy0>;
> >  				phy-names = "usb2-phy", "usb3-phy";
> > @@ -957,6 +1009,7 @@ usb3_phy1: usb-phy@382f0040 {
> >  			clock-names = "phy";
> >  			assigned-clocks = <&clk IMX8MP_CLK_USB_PHY_REF>;
> >  			assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB_PHY2>;
> >  			#phy-cells = <0>;
> >  		};
> >  
> > @@ -967,6 +1020,7 @@ usb3_1: usb@32f10108 {
> >  				 <&clk IMX8MP_CLK_USB_ROOT>;
> >  			clock-names = "hsio", "suspend";
> >  			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
> > +			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
> >  			#address-cells = <1>;
> >  			#size-cells = <1>;
> >  			dma-ranges = <0x40000000 0x40000000 0xc0000000>;
> > @@ -980,9 +1034,6 @@ usb_dwc3_1: usb@38200000 {
> >  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> >  					 <&clk IMX8MP_CLK_USB_ROOT>;
> >  				clock-names = "bus_early", "ref", "suspend";
> > -				assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
> > -				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
> > -				assigned-clock-rates = <500000000>;
> >  				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> >  				phys = <&usb3_phy1>, <&usb3_phy1>;
> >  				phy-names = "usb2-phy", "usb3-phy";
> > 
> 


