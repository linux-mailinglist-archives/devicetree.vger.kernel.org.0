Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74E9B4CA077
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 10:18:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233787AbiCBJTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 04:19:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231479AbiCBJTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 04:19:37 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50683B0A51
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 01:18:53 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nPL81-0003HX-Oi; Wed, 02 Mar 2022 10:18:37 +0100
Message-ID: <87f3a597d13f5122c88fd6d5d8ff01ec9f9fa0c1.camel@pengutronix.de>
Subject: Re: [PATCH v3 5/7] arm64: dts: imx8mp: add HSIO power-domains
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Hongxing Zhu <hongxing.zhu@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>, Marek Vasut <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Date:   Wed, 02 Mar 2022 10:18:35 +0100
In-Reply-To: <AS8PR04MB86765CDD268E93769C6D6ED78C039@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
         <20220228201731.3330192-6-l.stach@pengutronix.de>
         <Yh3Hf95q+STtImg5@pendragon.ideasonboard.com>
         <c5e9214b67260654efac52eed575fd9377f46f08.camel@pengutronix.de>
         <AS8PR04MB86765CDD268E93769C6D6ED78C039@AS8PR04MB8676.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Hi Richard,

Am Mittwoch, dem 02.03.2022 um 08:47 +0000 schrieb Hongxing Zhu:
> > -----Original Message-----
> > From: Lucas Stach <l.stach@pengutronix.de>
> > Sent: 2022年3月1日 17:09
> > To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>; Rob Herring
> > <robh+dt@kernel.org>;
> > Pengutronix Kernel Team <kernel@pengutronix.de>; dl-linux-imx
> > <linux-imx@nxp.com>; Marek Vasut <marex@denx.de>;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > patchwork-lst@pengutronix.de
> > Subject: Re: [PATCH v3 5/7] arm64: dts: imx8mp: add HSIO power-
> > domains
> > 
> > Am Dienstag, dem 01.03.2022 um 09:13 +0200 schrieb Laurent
> > Pinchart:
> > > Hi Lucas,
> > > 
> > > Thank you for the patch.
> > > 
> > > On Mon, Feb 28, 2022 at 09:17:29PM +0100, Lucas Stach wrote:
> > > > This adds the GPC and HSIO blk-ctrl nodes providing power
> > > > control
> > > > for the high-speed (USB and PCIe) IOs.
> > > > 
> > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > > Reviewed-by: Laurent Pinchart
> > > > <laurent.pinchart@ideasonboard.com>
> Hi Lucas:
> Thank you for the patch.
> Based on this V3 serial patch-set. I'm trying to bring up PCIe on
> i.MX8MP EVK.
> But I encounter system hang when access the controller's register.
> Clocks are turned on refer to the /sys/kernel/debug/clk/clk_summary.
> It seems that the pd of PCIe controller is not up properly.
> More investigation is still on-going.

Just to check the obvious things: you've put the controller into the
IMX8MP_HSIOBLK_PD_PCIE and the PHY into IMX8MP_HSIOBLK_PD_PCIE_PHY,
right?

If the PHY access works then the power-domains should be powered up
properly, as the PHY domain is nested inside the HSIO domain where the
controller is located according to my information. So the most likely
reason is still a clock path that isn't fully turned on. 

Regards,
Lucas

> BTW, the access of PHY register is successful.
> 
> Best Regards
> Richard Zhu
> 
> > > > ---
> > > >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 71
> > > > +++++++++++++++++++++--
> > > >  1 file changed, 65 insertions(+), 6 deletions(-)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > > b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > > index 6b840c05dd77..69e533add539 100644
> > > > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > > > @@ -4,6 +4,7 @@
> > > >   */
> > > > 
> > > >  #include <dt-bindings/clock/imx8mp-clock.h>
> > > > +#include <dt-bindings/power/imx8mp-power.h>
> > > >  #include <dt-bindings/gpio/gpio.h>
> > > >  #include <dt-bindings/input/input.h>  #include
> > > > <dt-bindings/interrupt-controller/arm-gic.h>
> > > > @@ -475,6 +476,44 @@ src: reset-controller@30390000 {
> > > >  				interrupts = <GIC_SPI 89
> > > > IRQ_TYPE_LEVEL_HIGH>;
> > > >  				#reset-cells = <1>;
> > > >  			};
> > > > +
> > > > +			gpc: gpc@303a0000 {
> > > > +				compatible = "fsl,imx8mp-gpc";
> > > > +				reg = <0x303a0000 0x1000>;
> > > > +				interrupt-parent = <&gic>;
> > > > +				interrupt-controller;
> > > > +				#interrupt-cells = <3>;
> > > > +
> > > > +				pgc {
> > > > +					#address-cells = <1>;
> > > > +					#size-cells = <0>;
> > > > +
> > > > +					pgc_pcie_phy: power-
> > > > domain@1 {
> > > > +						#power-domain-
> > > > cells = <0>;
> > > > +						reg =
> > > > <IMX8MP_POWER_DOMAIN_PCIE_PHY>;
> > > > +					};
> > > > +
> > > > +					pgc_usb1_phy: power-
> > > > domain@2 {
> > > > +						#power-domain-
> > > > cells = <0>;
> > > > +						reg =
> > > > <IMX8MP_POWER_DOMAIN_USB1_PHY>;
> > > > +					};
> > > > +
> > > > +					pgc_usb2_phy: power-
> > > > domain@3 {
> > > > +						#power-domain-
> > > > cells = <0>;
> > > > +						reg =
> > > > <IMX8MP_POWER_DOMAIN_USB2_PHY>;
> > > > +					};
> > > > +
> > > > +					pgc_hsiomix:
> > > > power-domains@17 {
> > > > +						#power-domain-
> > > > cells = <0>;
> > > > +						reg =
> > > > <IMX8MP_POWER_DOMAIN_HSIOMIX>;
> > > > +						clocks = <&clk
> > > > IMX8MP_CLK_HSIO_AXI>,
> > > > +							 <&clk
> > > > IMX8MP_CLK_HSIO_ROOT>;
> > > > +						assigned-
> > > > clocks = <&clk
> > IMX8MP_CLK_HSIO_AXI>;
> > > > +						assigned-
> > > > clock-parents = <&clk
> > IMX8MP_SYS_PLL2_500M>;
> > > > +						assigned-
> > > > clock-rates = <500000000>;
> > > > +					};
> > > > +				};
> > > > +			};
> > > >  		};
> > > > 
> > > >  		aips2: bus@30400000 {
> > > > @@ -892,6 +931,28 @@ eqos: ethernet@30bf0000 {
> > > >  			};
> > > >  		};
> > > > 
> > > > +		aips4 {
> > > 
> > > I think this should be
> > > 
> > > 		aips4: bus@32c00000 {
> > > 
> > > to match the other buses. Apart from that, the patch looks good,
> > > my Rb
> > > tag still applies.
> > 
> > Urgh, apparently one shouldn't do those reworks too late in the
> > evening. :/
> > 
> > Shawn, would you be willing to fix this up while applying, or
> > should I resend
> > the series?
> > 
> > Regards,
> > Lucas
> > 
> > > 
> > > > +			compatible = "fsl,aips-bus", "simple-
> > > > bus";
> > > > +			reg = <0x32c00000 0x400000>;
> > > > +			#address-cells = <1>;
> > > > +			#size-cells = <1>;
> > > > +			ranges;
> > > > +
> > > > +			hsio_blk_ctrl: blk-ctrl@32f10000 {
> > > > +				compatible = "fsl,imx8mp-hsio-
> > > > blk-ctrl", "syscon";
> > > > +				reg = <0x32f10000 0x24>;
> > > > +				clocks = <&clk
> > > > IMX8MP_CLK_USB_ROOT>,
> > > > +					 <&clk
> > > > IMX8MP_CLK_PCIE_ROOT>;
> > > > +				clock-names = "usb", "pcie";
> > > > +				power-domains =
> > > > <&pgc_hsiomix>, <&pgc_hsiomix>,
> > > > +						<&pgc_usb1_phy
> > > > >, <&pgc_usb2_phy>,
> > > > +						<&pgc_hsiomix>
> > > > , <&pgc_pcie_phy>;
> > > > +				power-domain-names = "bus",
> > > > "usb", "usb-phy1",
> > > > +						     "usb-
> > > > phy2", "pcie", "pcie-phy";
> > > > +				#power-domain-cells = <1>;
> > > > +			};
> > > > +		};
> > > > +
> > > >  		gic: interrupt-controller@38800000 {
> > > >  			compatible = "arm,gic-v3";
> > > >  			reg = <0x38800000 0x10000>,
> > > > @@ -915,6 +976,7 @@ usb3_phy0: usb-phy@381f0040 {
> > > >  			clock-names = "phy";
> > > >  			assigned-clocks = <&clk
> > > > IMX8MP_CLK_USB_PHY_REF>;
> > > >  			assigned-clock-parents = <&clk
> > > > IMX8MP_CLK_24M>;
> > > > +			power-domains = <&hsio_blk_ctrl
> > IMX8MP_HSIOBLK_PD_USB_PHY1>;
> > > >  			#phy-cells = <0>;
> > > >  			status = "disabled";
> > > >  		};
> > > > @@ -926,6 +988,7 @@ usb3_0: usb@32f10100 {
> > > >  				 <&clk IMX8MP_CLK_USB_ROOT>;
> > > >  			clock-names = "hsio", "suspend";
> > > >  			interrupts = <GIC_SPI 148
> > > > IRQ_TYPE_LEVEL_HIGH>;
> > > > +			power-domains = <&hsio_blk_ctrl
> > > > IMX8MP_HSIOBLK_PD_USB>;
> > > >  			#address-cells = <1>;
> > > >  			#size-cells = <1>;
> > > >  			dma-ranges = <0x40000000 0x40000000
> > > > 0xc0000000>;
> > @@ -939,9
> > > > +1002,6 @@ usb_dwc3_0: usb@38100000 {
> > > >  					 <&clk
> > > > IMX8MP_CLK_USB_CORE_REF>,
> > > >  					 <&clk
> > > > IMX8MP_CLK_USB_ROOT>;
> > > >  				clock-names = "bus_early",
> > > > "ref", "suspend";
> > > > -				assigned-clocks = <&clk
> > > > IMX8MP_CLK_HSIO_AXI>;
> > > > -				assigned-clock-parents = <&clk
> > IMX8MP_SYS_PLL2_500M>;
> > > > -				assigned-clock-rates =
> > > > <500000000>;
> > > >  				interrupts = <GIC_SPI 40
> > > > IRQ_TYPE_LEVEL_HIGH>;
> > > >  				phys = <&usb3_phy0>,
> > > > <&usb3_phy0>;
> > > >  				phy-names = "usb2-phy", "usb3-
> > > > phy"; @@ -957,6
> > +1017,7 @@
> > > > usb3_phy1: usb-phy@382f0040 {
> > > >  			clock-names = "phy";
> > > >  			assigned-clocks = <&clk
> > > > IMX8MP_CLK_USB_PHY_REF>;
> > > >  			assigned-clock-parents = <&clk
> > > > IMX8MP_CLK_24M>;
> > > > +			power-domains = <&hsio_blk_ctrl
> > IMX8MP_HSIOBLK_PD_USB_PHY2>;
> > > >  			#phy-cells = <0>;
> > > >  		};
> > > > 
> > > > @@ -967,6 +1028,7 @@ usb3_1: usb@32f10108 {
> > > >  				 <&clk IMX8MP_CLK_USB_ROOT>;
> > > >  			clock-names = "hsio", "suspend";
> > > >  			interrupts = <GIC_SPI 149
> > > > IRQ_TYPE_LEVEL_HIGH>;
> > > > +			power-domains = <&hsio_blk_ctrl
> > > > IMX8MP_HSIOBLK_PD_USB>;
> > > >  			#address-cells = <1>;
> > > >  			#size-cells = <1>;
> > > >  			dma-ranges = <0x40000000 0x40000000
> > > > 0xc0000000>;
> > @@ -980,9
> > > > +1042,6 @@ usb_dwc3_1: usb@38200000 {
> > > >  					 <&clk
> > > > IMX8MP_CLK_USB_CORE_REF>,
> > > >  					 <&clk
> > > > IMX8MP_CLK_USB_ROOT>;
> > > >  				clock-names = "bus_early",
> > > > "ref", "suspend";
> > > > -				assigned-clocks = <&clk
> > > > IMX8MP_CLK_HSIO_AXI>;
> > > > -				assigned-clock-parents = <&clk
> > IMX8MP_SYS_PLL2_500M>;
> > > > -				assigned-clock-rates =
> > > > <500000000>;
> > > >  				interrupts = <GIC_SPI 41
> > > > IRQ_TYPE_LEVEL_HIGH>;
> > > >  				phys = <&usb3_phy1>,
> > > > <&usb3_phy1>;
> > > >  				phy-names = "usb2-phy", "usb3-
> > > > phy";
> > > 
> > 
> 


