Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57DA4298B47
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 12:02:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1773043AbgJZLBm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 07:01:42 -0400
Received: from inva020.nxp.com ([92.121.34.13]:48050 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1772894AbgJZLBl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Oct 2020 07:01:41 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A0DEE1A0C41;
        Mon, 26 Oct 2020 12:01:40 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 934611A0C33;
        Mon, 26 Oct 2020 12:01:40 +0100 (CET)
Received: from localhost (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7DF2720308;
        Mon, 26 Oct 2020 12:01:40 +0100 (CET)
Date:   Mon, 26 Oct 2020 13:01:40 +0200
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH 10/11] arm64: dts: imx8mm: add GPC node and power domains
Message-ID: <20201026110140.2m7it3atlgrp5qrt@fsr-ub1664-175>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-11-l.stach@pengutronix.de>
 <20201026105622.iqt6cej3iqog57jd@fsr-ub1664-175>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026105622.iqt6cej3iqog57jd@fsr-ub1664-175>
User-Agent: NeoMutt/20180622
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-10-26 12:56:22, Abel Vesa wrote:
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
> 

Actually, now I see what you've done here. You want to use the IMX8MQ_RESET_GPU_RESET.

But I think we should avoid having reset IDs shared between i.MX8M platforms.

I'll try to find another way around this myself.

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
