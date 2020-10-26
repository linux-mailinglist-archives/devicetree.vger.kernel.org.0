Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD60B298BA4
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 12:19:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1773318AbgJZLTI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 07:19:08 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:40209 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1773012AbgJZLTH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 07:19:07 -0400
X-Greylist: delayed 973 seconds by postgrey-1.27 at vger.kernel.org; Mon, 26 Oct 2020 07:19:07 EDT
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kX0H5-0006Iy-PE; Mon, 26 Oct 2020 12:02:51 +0100
Message-ID: <6edfd44f6283a919cb1b3f190b0475833f3c3a92.camel@pengutronix.de>
Subject: Re: [PATCH 10/11] arm64: dts: imx8mm: add GPC node and power domains
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Abel Vesa <abel.vesa@nxp.com>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Date:   Mon, 26 Oct 2020 12:02:50 +0100
In-Reply-To: <20201026105622.iqt6cej3iqog57jd@fsr-ub1664-175>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
         <20200930155006.535712-11-l.stach@pengutronix.de>
         <20201026105622.iqt6cej3iqog57jd@fsr-ub1664-175>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Abel,

Am Montag, den 26.10.2020, 12:56 +0200 schrieb Abel Vesa:
> On 20-09-30 17:50:05, Lucas Stach wrote:
> > This adds the DT nodes to describe the power domains available on the
> > i.MX8MM. Things are a bit more complex compared to other GPCv2 power
> > domain setups, as there is now a hierarchy of domains where complete
> > subsystems (HSIO, GPU, DISPLAY) can be gated as a whole, but also
> > fine granular gating within those subsystems is possible.
> > 
> > Note that this is still incomplete, as both VPU and DISP domains are
> > missing their reset clocks. Those aren't directly sourced from the CCM,
> > but have another level of clock gating in the BLKCTL of those domains,
> > which needs a separate driver.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 57 +++++++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index 76f040e4be5e..a841fb2d0458 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -4,6 +4,8 @@
> >   */
> >  
> >  #include <dt-bindings/clock/imx8mm-clock.h>
> > +#include <dt-bindings/power/imx8mm-power.h>
> > +#include <dt-bindings/reset/imx8mq-reset.h>
> 
> Needs to be imx8mm-reset.h, as in 8MM, not 8MQ.

It's confusing, but the reset driver uses the same defines for i.MX8MM.
Comments in the imx8mq-reset.h file even specify which resets aren't
supported on i.MX8MM.

Regards,
Lucas

> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/input/input.h>
> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > @@ -547,6 +549,61 @@
> >  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> >  				#reset-cells = <1>;
> >  			};
> > +
> > +			gpc: gpc@303a0000 {
> > +				compatible = "fsl,imx8mm-gpc";
> > +				reg = <0x303a0000 0x10000>;
> > +				interrupt-parent = <&gic>;
> > +				interrupt-controller;
> > +				#interrupt-cells = <3>;
> > +
> > +				pgc {
> > +					#address-cells = <1>;
> > +					#size-cells = <0>;
> > +
> > +					pgc_hsiomix: power-domain@0 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> > +						clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > +					};
> > +
> > +					pgc_pcie: power-domain@1 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> > +						power-domains = <&pgc_hsiomix>;
> > +					};
> > +
> > +					pgc_otg1: power-domain@2 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> > +						power-domains = <&pgc_hsiomix>;
> > +					};
> > +
> > +					pgc_otg2: power-domain@3 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> > +						power-domains = <&pgc_hsiomix>;
> > +					};
> > +
> > +					pgc_gpumix: power-domain@4 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
> > +						clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > +						         <&clk IMX8MM_CLK_GPU_AHB>;
> > +					};
> > +
> > +					pgc_gpu: power-domain@5 {
> > +						#power-domain-cells = <0>;
> > +						reg = <IMX8MM_POWER_DOMAIN_GPU>;
> > +						clocks = <&clk IMX8MM_CLK_GPU_AHB>,
> > +						         <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > +						         <&clk IMX8MM_CLK_GPU2D_ROOT>,
> > +						         <&clk IMX8MM_CLK_GPU3D_ROOT>;
> > +						resets = <&src IMX8MQ_RESET_GPU_RESET>;
> > +						power-domains = <&pgc_gpumix>;
> > +					};
> > +				};
> > +			};
> >  		};
> >  
> >  		aips2: bus@30400000 {
> > -- 
> > 2.20.1
> > 

