Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49DC341F892
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 02:15:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbhJBARd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 20:17:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230009AbhJBARd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 20:17:33 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CEB4C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 17:15:48 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id y8so9311779pfa.7
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 17:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YWUP/SNz6JHde4I2QTOn0SfSiWxkecFisqjaHemxQM0=;
        b=uKbNDlYCV1q6r57oaL6QmcmGGjjDd7BK0WZBkCFxZox6G7fbAKM1kMASRZfP2B0kec
         BBqPV++baSrtL7wQnjw+KFgapmhThv3WI2H1D42kJG4mKeybzJl6n307S3hTAgezu+jt
         cxAwjFAC2Wxm5BKNHzFgtd96L/K+g2nIiC6L47eJFTOj7qNsW6bwPyKMU/G5UbBxt4hY
         +RmNQSVPHc1rA76Bdl7cG+iJ4qj7hwjiXKsIGUNMKnZIsMrbTCKdxZDPD21rj4D5ajw2
         9VykzuY+u82Prjnif7zgL/DF1/8fXjQI/pzAfa0YThj7djFM99/LnGrbhNncqM/6K0VC
         OUcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YWUP/SNz6JHde4I2QTOn0SfSiWxkecFisqjaHemxQM0=;
        b=7DZx+TgJtb6tjSqp0I7ZsvtyNPOf7ekrHFILKRDf2z3ysOXWqQs8vflDMIPKoE2Nof
         mis2AgR10ztrBVPKnDySpJkCMpA2rk3L63WfijC8zzvd/q0WxqhmtpCvWBSCJdk/om2G
         etKVKAUTusC4Den4wCVG/Y3Z131YzMjHYhYEpWplBoaf7vGhFAmxHgcaGd2nZkC0BgCk
         XHWxEfGNMBxtO5DpYf4S6V0vcM49MhgGOmDxu00RgEHj537Gl3/3h9hIqdi62LWWxEUq
         Yt6hkjJvRA94K1PaGKTyyG1/WTDK0S3O40y7bSZ2sRCmdncnZOK6LrLd3/JGxzrCclO+
         jmdQ==
X-Gm-Message-State: AOAM5325napyTlYGJi7Av0SiulU5p+OWyEZwI5W7kg+hcd4AnNJvJY/2
        OCHF1/X9jzbjGDAUR4dPyI8o7KYPDLvCBfgmVZechQ==
X-Google-Smtp-Source: ABdhPJx5k4HgqkDe9S211qpHmHTV1ERj120i4c8VCZSFCbhIA+nlnz7oOv2j+x5AAJvzvpHuv9x58lK7bELI4X4D8AE=
X-Received: by 2002:a63:6f42:: with SMTP id k63mr735274pgc.358.1633133747807;
 Fri, 01 Oct 2021 17:15:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210910202640.980366-1-l.stach@pengutronix.de>
 <20210910202640.980366-15-l.stach@pengutronix.de> <CAJ+vNU2F6RLK3mT5mws0X+EOgsF_+N0JC20ZNWEQtdj_cY9KHg@mail.gmail.com>
 <b4c51d93b2837666f44ea4a0e2b1fdb60ceaae15.camel@pengutronix.de> <CAJ+vNU3rK=4y3wj_WCSdBozUZK1P=vmhowtgBZcW9OW-+N-LGA@mail.gmail.com>
In-Reply-To: <CAJ+vNU3rK=4y3wj_WCSdBozUZK1P=vmhowtgBZcW9OW-+N-LGA@mail.gmail.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 1 Oct 2021 17:15:35 -0700
Message-ID: <CAJ+vNU1VKyZzkyeah1QtxA1y_Oswmgs4qWE87ZRU9++DqQSveA@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] arm64: dts: imx8mm: add GPC node
To:     Lucas Stach <l.stach@pengutronix.de>
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
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 1, 2021 at 5:06 PM Tim Harvey <tharvey@gateworks.com> wrote:
>
> On Fri, Oct 1, 2021 at 4:20 PM Lucas Stach <l.stach@pengutronix.de> wrote:
> >
> > Hi Tim,
> >
> > Am Freitag, dem 01.10.2021 um 16:07 -0700 schrieb Tim Harvey:
> > > On Fri, Sep 10, 2021 at 1:26 PM Lucas Stach <l.stach@pengutronix.de> wrote:
> > > >
> > > > Add the DT node for the GPC, including all the PGC power domains,
> > > > some of them are not fully functional yet, as they require interaction
> > > > with the blk-ctrls to properly power up/down the peripherals.
> > > >
> > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > > ---
> > > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 107 ++++++++++++++++++++++
> > > >  1 file changed, 107 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > index e7648c3b8390..3922f26f8fd4 100644
> > > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > > @@ -7,6 +7,8 @@
> > > >  #include <dt-bindings/gpio/gpio.h>
> > > >  #include <dt-bindings/input/input.h>
> > > >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > > +#include <dt-bindings/power/imx8mm-power.h>
> > > > +#include <dt-bindings/reset/imx8mq-reset.h>
> > > >  #include <dt-bindings/thermal/thermal.h>
> > > >
> > > >  #include "imx8mm-pinfunc.h"
> > > > @@ -609,6 +611,111 @@ src: reset-controller@30390000 {
> > > >                                 interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > > >                                 #reset-cells = <1>;
> > > >                         };
> > > > +
> > > > +                       gpc: gpc@303a0000 {
> > > > +                               compatible = "fsl,imx8mm-gpc";
> > > > +                               reg = <0x303a0000 0x10000>;
> > > > +                               interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> > > > +                               interrupt-parent = <&gic>;
> > > > +                               interrupt-controller;
> > > > +                               #interrupt-cells = <3>;
> > > > +
> > > > +                               pgc {
> > > > +                                       #address-cells = <1>;
> > > > +                                       #size-cells = <0>;
> > > > +
> > > > +                                       pgc_hsiomix: power-domain@0 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> > > > +                                               clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > > > +                                               assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_pcie: power-domain@1 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> > > > +                                               power-domains = <&pgc_hsiomix>;
> > > > +                                               clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_otg1: power-domain@2 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> > > > +                                               power-domains = <&pgc_hsiomix>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_otg2: power-domain@3 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> > > > +                                               power-domains = <&pgc_hsiomix>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_gpumix: power-domain@4 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
> > > > +                                               clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > > > +                                                        <&clk IMX8MM_CLK_GPU_AHB>;
> > > > +                                               assigned-clocks = <&clk IMX8MM_CLK_GPU_AXI>,
> > > > +                                                                 <&clk IMX8MM_CLK_GPU_AHB>;
> > > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
> > > > +                                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> > > > +                                               assigned-clock-rates = <800000000>, <400000000>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_gpu: power-domain@5 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_GPU>;
> > > > +                                               clocks = <&clk IMX8MM_CLK_GPU_AHB>,
> > > > +                                                        <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > > > +                                                        <&clk IMX8MM_CLK_GPU2D_ROOT>,
> > > > +                                                        <&clk IMX8MM_CLK_GPU3D_ROOT>;
> > > > +                                               resets = <&src IMX8MQ_RESET_GPU_RESET>;
> > > > +                                               power-domains = <&pgc_gpumix>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_vpumix: power-domain@6 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUMIX>;
> > > > +                                               clocks = <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
> > > > +                                               assigned-clocks = <&clk IMX8MM_CLK_VPU_BUS>;
> > > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>;
> > > > +                                               resets = <&src IMX8MQ_RESET_VPU_RESET>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_vpu_g1: power-domain@7 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUG1>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_vpu_g2: power-domain@8 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUG2>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_vpu_h1: power-domain@9 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUH1>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_dispmix: power-domain@10 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_DISPMIX>;
> > > > +                                               clocks = <&clk IMX8MM_CLK_DISP_APB_ROOT>,
> > > > +                                                        <&clk IMX8MM_CLK_DISP_AXI_ROOT>;
> > > > +                                               assigned-clocks = <&clk IMX8MM_CLK_DISP_AXI>,
> > > > +                                                                 <&clk IMX8MM_CLK_DISP_APB>;
> > > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_1000M>,
> > > > +                                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> > > > +                                               assigned-clock-rates = <500000000>, <200000000>;
> > > > +                                       };
> > > > +
> > > > +                                       pgc_mipi: power-domain@11 {
> > > > +                                               #power-domain-cells = <0>;
> > > > +                                               reg = <IMX8MM_POWER_DOMAIN_MIPI>;
> > > > +                                       };
> > > > +                               };
> > > > +                       };
> > > >                 };
> > > >
> > > >                 aips2: bus@30400000 {
> > > > --
> > > > 2.30.2
> > > >
> > >
> > > Lucas,
> > >
> > > I've been using your 'i.MX8MM GPC improvements and BLK_CTRL driver'
> > > series for imx8mm-venice* and imx8mn-venice* boards. Thank you for
> > > this work and I hope to see it merged soon!
> > >
> > > I have found that on the imx8mm-venice-gw7901 board which does not use
> > > MIPI and thus does not connect VDD_MIPI_1P8, VDD_MIPI_1P2,
> > > VDD_MIPI_0P9, MIPI_VREG_CAP pins on the IMX8MM hangs with this
> > > particular patch. If I comment out the pgc_mipi domain and subsequent
> > > disp_blk_ctrl node from a later patch it resolves the hang. Is this
> > > behavior expected and what would your recommendation be to work around
> > > it?
> >
> > No, this isn't expected. If there are no active devices in the MIPI
> > domain, the power domain should not be touched, as we treat all of them
> > as disabled initially. If we don't touch the domain I would expect that
> > the power supply not being present shouldn't be an issue.
> >
> > Can you check if something in your system causes this power domain to
> > be powered up? Easiest way is probably to sprinkle a
> > printk("%s\n, genpd->name) in both imx8m_blk_ctrl_power_on() and
> > imx_gpc_power_on().
> >
>
> Lucas,
>
> Here's what I see before I hang (debug print on both power on/off
> followed by a msleep(1000) to make sure I see it before I hang):
> [    0.518319] imx_pgc_power_up hsiomix
> [    0.624031] imx_pgc_power_down hsiomix
> [    0.731879] imx_pgc_power_up hsiomix
> [    0.839906] imx_pgc_power_down hsiomix
> [    0.947875] imx_pgc_power_up hsiomix
> [    1.055859] imx_pgc_power_down hsiomix
> [    1.057296] imx_pgc_power_up gpumix
> [    1.167884] imx_pgc_power_down gpumix
> [    0.518513] imx_pgc_power_up hsiomix
> [    0.519933] imx_pgc_power_up gpumix
>

The board also has IMX8MM VDD_GPU pins not connected so it makes sense
that we hang here I suppose. Yet if I add the folloiwng to
imx8mm-venice-gw7901.dts it still tries to enable them and hangs:
&gpu_2d {
        status = "disabled";
};

&gpu_3d {
        status = "disabled";
};

&vpu_blk_ctrl {
        status = "disabled";
};

Tim
