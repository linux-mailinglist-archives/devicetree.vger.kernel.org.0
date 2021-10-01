Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3912E41F824
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 01:20:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231207AbhJAXWZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 19:22:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231178AbhJAXWY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 19:22:24 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DE9C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 16:20:39 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mWRpP-0005dU-Ac; Sat, 02 Oct 2021 01:20:31 +0200
Message-ID: <b4c51d93b2837666f44ea4a0e2b1fdb60ceaae15.camel@pengutronix.de>
Subject: Re: [PATCH v4 14/18] arm64: dts: imx8mm: add GPC node
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Date:   Sat, 02 Oct 2021 01:20:29 +0200
In-Reply-To: <CAJ+vNU2F6RLK3mT5mws0X+EOgsF_+N0JC20ZNWEQtdj_cY9KHg@mail.gmail.com>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
         <20210910202640.980366-15-l.stach@pengutronix.de>
         <CAJ+vNU2F6RLK3mT5mws0X+EOgsF_+N0JC20ZNWEQtdj_cY9KHg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tim,

Am Freitag, dem 01.10.2021 um 16:07 -0700 schrieb Tim Harvey:
> On Fri, Sep 10, 2021 at 1:26 PM Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > Add the DT node for the GPC, including all the PGC power domains,
> > some of them are not fully functional yet, as they require interaction
> > with the blk-ctrls to properly power up/down the peripherals.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 107 ++++++++++++++++++++++
> >  1 file changed, 107 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index e7648c3b8390..3922f26f8fd4 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -7,6 +7,8 @@
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/input/input.h>
> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/power/imx8mm-power.h>
> > +#include <dt-bindings/reset/imx8mq-reset.h>
> >  #include <dt-bindings/thermal/thermal.h>
> > 
> >  #include "imx8mm-pinfunc.h"
> > @@ -609,6 +611,111 @@ src: reset-controller@30390000 {
> >                                 interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> >                                 #reset-cells = <1>;
> >                         };
> > +
> > +                       gpc: gpc@303a0000 {
> > +                               compatible = "fsl,imx8mm-gpc";
> > +                               reg = <0x303a0000 0x10000>;
> > +                               interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> > +                               interrupt-parent = <&gic>;
> > +                               interrupt-controller;
> > +                               #interrupt-cells = <3>;
> > +
> > +                               pgc {
> > +                                       #address-cells = <1>;
> > +                                       #size-cells = <0>;
> > +
> > +                                       pgc_hsiomix: power-domain@0 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> > +                                               clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > +                                               assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
> > +                                       };
> > +
> > +                                       pgc_pcie: power-domain@1 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> > +                                               power-domains = <&pgc_hsiomix>;
> > +                                               clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>;
> > +                                       };
> > +
> > +                                       pgc_otg1: power-domain@2 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> > +                                               power-domains = <&pgc_hsiomix>;
> > +                                       };
> > +
> > +                                       pgc_otg2: power-domain@3 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> > +                                               power-domains = <&pgc_hsiomix>;
> > +                                       };
> > +
> > +                                       pgc_gpumix: power-domain@4 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
> > +                                               clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > +                                                        <&clk IMX8MM_CLK_GPU_AHB>;
> > +                                               assigned-clocks = <&clk IMX8MM_CLK_GPU_AXI>,
> > +                                                                 <&clk IMX8MM_CLK_GPU_AHB>;
> > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
> > +                                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> > +                                               assigned-clock-rates = <800000000>, <400000000>;
> > +                                       };
> > +
> > +                                       pgc_gpu: power-domain@5 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_GPU>;
> > +                                               clocks = <&clk IMX8MM_CLK_GPU_AHB>,
> > +                                                        <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > +                                                        <&clk IMX8MM_CLK_GPU2D_ROOT>,
> > +                                                        <&clk IMX8MM_CLK_GPU3D_ROOT>;
> > +                                               resets = <&src IMX8MQ_RESET_GPU_RESET>;
> > +                                               power-domains = <&pgc_gpumix>;
> > +                                       };
> > +
> > +                                       pgc_vpumix: power-domain@6 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUMIX>;
> > +                                               clocks = <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
> > +                                               assigned-clocks = <&clk IMX8MM_CLK_VPU_BUS>;
> > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>;
> > +                                               resets = <&src IMX8MQ_RESET_VPU_RESET>;
> > +                                       };
> > +
> > +                                       pgc_vpu_g1: power-domain@7 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUG1>;
> > +                                       };
> > +
> > +                                       pgc_vpu_g2: power-domain@8 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUG2>;
> > +                                       };
> > +
> > +                                       pgc_vpu_h1: power-domain@9 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUH1>;
> > +                                       };
> > +
> > +                                       pgc_dispmix: power-domain@10 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_DISPMIX>;
> > +                                               clocks = <&clk IMX8MM_CLK_DISP_APB_ROOT>,
> > +                                                        <&clk IMX8MM_CLK_DISP_AXI_ROOT>;
> > +                                               assigned-clocks = <&clk IMX8MM_CLK_DISP_AXI>,
> > +                                                                 <&clk IMX8MM_CLK_DISP_APB>;
> > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_1000M>,
> > +                                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> > +                                               assigned-clock-rates = <500000000>, <200000000>;
> > +                                       };
> > +
> > +                                       pgc_mipi: power-domain@11 {
> > +                                               #power-domain-cells = <0>;
> > +                                               reg = <IMX8MM_POWER_DOMAIN_MIPI>;
> > +                                       };
> > +                               };
> > +                       };
> >                 };
> > 
> >                 aips2: bus@30400000 {
> > --
> > 2.30.2
> > 
> 
> Lucas,
> 
> I've been using your 'i.MX8MM GPC improvements and BLK_CTRL driver'
> series for imx8mm-venice* and imx8mn-venice* boards. Thank you for
> this work and I hope to see it merged soon!
> 
> I have found that on the imx8mm-venice-gw7901 board which does not use
> MIPI and thus does not connect VDD_MIPI_1P8, VDD_MIPI_1P2,
> VDD_MIPI_0P9, MIPI_VREG_CAP pins on the IMX8MM hangs with this
> particular patch. If I comment out the pgc_mipi domain and subsequent
> disp_blk_ctrl node from a later patch it resolves the hang. Is this
> behavior expected and what would your recommendation be to work around
> it?

No, this isn't expected. If there are no active devices in the MIPI
domain, the power domain should not be touched, as we treat all of them
as disabled initially. If we don't touch the domain I would expect that
the power supply not being present shouldn't be an issue.

Can you check if something in your system causes this power domain to
be powered up? Easiest way is probably to sprinkle a
printk("%s\n, genpd->name) in both imx8m_blk_ctrl_power_on() and
imx_gpc_power_on().

Regards,
Lucas

