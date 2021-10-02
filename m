Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8D4041F873
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 02:06:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230436AbhJBAIN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 20:08:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232226AbhJBAIK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 20:08:10 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39B4AC061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 17:06:25 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id t4so7319289plo.0
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 17:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v7gQexkjeuMIjJIQg/vTFqWunVCfa39NsJKms5dMF+I=;
        b=kGzneBS4tuxyVNOFgw4W7se/sudQp0sfX2nXDmQq05ATKvRPz+aVA72WoD4akGtfMR
         vpHPoDJTGi7QjXuRdEVEW2XCf5UYRUH8ZrbjNweohSbXbvppNYUDcD1kSZu+oldPgQc0
         fcz2UNxa+QEDY6hXJCAfNGReySqN+lxEXoOlzlUpAerZfHF/dyq3zGnkZX2YtlTVjOHn
         Q7CNJxwKXxYLzXRdwt33VtWwQGytvXq6Km8ljj3xmXconojIep7PlHCHREAO2AHmyC9I
         ExBipgZCBuxzMWmuduA08aA3bnDenkA1fCl/cxPxKu6ERS5fs2DuStRWIFtvHlSM1wbx
         kWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v7gQexkjeuMIjJIQg/vTFqWunVCfa39NsJKms5dMF+I=;
        b=oMqPh5AQmSknUv/RS+KOBZzpuHRKEFNI/7lgllrJ8TXt07CBV7xp5Jwl6NKEK8pEvk
         w/1TWeq7QL2/B3I8oD3fKdHatfoP3IO2OxY+775Bdwfgd8m9kcfhwO2bPFIquMmnrTR+
         m6tU5sxlDmD8RI0P5bXo68bgn6cJ47J0H0kcBDPAXxPCDTvJppVw4L9KU1yku3SqC4cb
         5vwYXv0bwUVrEBkhEAIlSZW0LBx8Li9rbMt2Cu7/642aCE5RZmn05UNe5niTCY1X98NJ
         1luC7p0BuH0kWSUb3mQqQqV8/uakizcBhySSPZBMwESJ9igLDsrTQZOml0oqNFZMfiSP
         1CUg==
X-Gm-Message-State: AOAM530Eauy+dgHEOeyVykcEN/dKSwSLhmNmHzUfwDzO7eogy+vP34AT
        OMPt5+ajzVWcz5F7v/Q/Q4OXtwLpB7uLElnevl0Hew==
X-Google-Smtp-Source: ABdhPJxj+R4mhU2zpnqkLnj9XfJJIAwheF2sgFFY5AovAVMev6ADqegMI7fNtFlpLa1MyzGnXT7qkftDjH6enFVLhio=
X-Received: by 2002:a17:903:228b:b0:13c:94f8:d723 with SMTP id
 b11-20020a170903228b00b0013c94f8d723mr12027773plh.12.1633133184461; Fri, 01
 Oct 2021 17:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210910202640.980366-1-l.stach@pengutronix.de>
 <20210910202640.980366-15-l.stach@pengutronix.de> <CAJ+vNU2F6RLK3mT5mws0X+EOgsF_+N0JC20ZNWEQtdj_cY9KHg@mail.gmail.com>
 <b4c51d93b2837666f44ea4a0e2b1fdb60ceaae15.camel@pengutronix.de>
In-Reply-To: <b4c51d93b2837666f44ea4a0e2b1fdb60ceaae15.camel@pengutronix.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 1 Oct 2021 17:06:11 -0700
Message-ID: <CAJ+vNU3rK=4y3wj_WCSdBozUZK1P=vmhowtgBZcW9OW-+N-LGA@mail.gmail.com>
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

On Fri, Oct 1, 2021 at 4:20 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Tim,
>
> Am Freitag, dem 01.10.2021 um 16:07 -0700 schrieb Tim Harvey:
> > On Fri, Sep 10, 2021 at 1:26 PM Lucas Stach <l.stach@pengutronix.de> wrote:
> > >
> > > Add the DT node for the GPC, including all the PGC power domains,
> > > some of them are not fully functional yet, as they require interaction
> > > with the blk-ctrls to properly power up/down the peripherals.
> > >
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 107 ++++++++++++++++++++++
> > >  1 file changed, 107 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > index e7648c3b8390..3922f26f8fd4 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > @@ -7,6 +7,8 @@
> > >  #include <dt-bindings/gpio/gpio.h>
> > >  #include <dt-bindings/input/input.h>
> > >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +#include <dt-bindings/power/imx8mm-power.h>
> > > +#include <dt-bindings/reset/imx8mq-reset.h>
> > >  #include <dt-bindings/thermal/thermal.h>
> > >
> > >  #include "imx8mm-pinfunc.h"
> > > @@ -609,6 +611,111 @@ src: reset-controller@30390000 {
> > >                                 interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > >                                 #reset-cells = <1>;
> > >                         };
> > > +
> > > +                       gpc: gpc@303a0000 {
> > > +                               compatible = "fsl,imx8mm-gpc";
> > > +                               reg = <0x303a0000 0x10000>;
> > > +                               interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> > > +                               interrupt-parent = <&gic>;
> > > +                               interrupt-controller;
> > > +                               #interrupt-cells = <3>;
> > > +
> > > +                               pgc {
> > > +                                       #address-cells = <1>;
> > > +                                       #size-cells = <0>;
> > > +
> > > +                                       pgc_hsiomix: power-domain@0 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> > > +                                               clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > > +                                               assigned-clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_500M>;
> > > +                                       };
> > > +
> > > +                                       pgc_pcie: power-domain@1 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> > > +                                               power-domains = <&pgc_hsiomix>;
> > > +                                               clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>;
> > > +                                       };
> > > +
> > > +                                       pgc_otg1: power-domain@2 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> > > +                                               power-domains = <&pgc_hsiomix>;
> > > +                                       };
> > > +
> > > +                                       pgc_otg2: power-domain@3 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> > > +                                               power-domains = <&pgc_hsiomix>;
> > > +                                       };
> > > +
> > > +                                       pgc_gpumix: power-domain@4 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
> > > +                                               clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > > +                                                        <&clk IMX8MM_CLK_GPU_AHB>;
> > > +                                               assigned-clocks = <&clk IMX8MM_CLK_GPU_AXI>,
> > > +                                                                 <&clk IMX8MM_CLK_GPU_AHB>;
> > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
> > > +                                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> > > +                                               assigned-clock-rates = <800000000>, <400000000>;
> > > +                                       };
> > > +
> > > +                                       pgc_gpu: power-domain@5 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_GPU>;
> > > +                                               clocks = <&clk IMX8MM_CLK_GPU_AHB>,
> > > +                                                        <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > > +                                                        <&clk IMX8MM_CLK_GPU2D_ROOT>,
> > > +                                                        <&clk IMX8MM_CLK_GPU3D_ROOT>;
> > > +                                               resets = <&src IMX8MQ_RESET_GPU_RESET>;
> > > +                                               power-domains = <&pgc_gpumix>;
> > > +                                       };
> > > +
> > > +                                       pgc_vpumix: power-domain@6 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUMIX>;
> > > +                                               clocks = <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
> > > +                                               assigned-clocks = <&clk IMX8MM_CLK_VPU_BUS>;
> > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>;
> > > +                                               resets = <&src IMX8MQ_RESET_VPU_RESET>;
> > > +                                       };
> > > +
> > > +                                       pgc_vpu_g1: power-domain@7 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUG1>;
> > > +                                       };
> > > +
> > > +                                       pgc_vpu_g2: power-domain@8 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUG2>;
> > > +                                       };
> > > +
> > > +                                       pgc_vpu_h1: power-domain@9 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_VPUH1>;
> > > +                                       };
> > > +
> > > +                                       pgc_dispmix: power-domain@10 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_DISPMIX>;
> > > +                                               clocks = <&clk IMX8MM_CLK_DISP_APB_ROOT>,
> > > +                                                        <&clk IMX8MM_CLK_DISP_AXI_ROOT>;
> > > +                                               assigned-clocks = <&clk IMX8MM_CLK_DISP_AXI>,
> > > +                                                                 <&clk IMX8MM_CLK_DISP_APB>;
> > > +                                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_1000M>,
> > > +                                                                        <&clk IMX8MM_SYS_PLL1_800M>;
> > > +                                               assigned-clock-rates = <500000000>, <200000000>;
> > > +                                       };
> > > +
> > > +                                       pgc_mipi: power-domain@11 {
> > > +                                               #power-domain-cells = <0>;
> > > +                                               reg = <IMX8MM_POWER_DOMAIN_MIPI>;
> > > +                                       };
> > > +                               };
> > > +                       };
> > >                 };
> > >
> > >                 aips2: bus@30400000 {
> > > --
> > > 2.30.2
> > >
> >
> > Lucas,
> >
> > I've been using your 'i.MX8MM GPC improvements and BLK_CTRL driver'
> > series for imx8mm-venice* and imx8mn-venice* boards. Thank you for
> > this work and I hope to see it merged soon!
> >
> > I have found that on the imx8mm-venice-gw7901 board which does not use
> > MIPI and thus does not connect VDD_MIPI_1P8, VDD_MIPI_1P2,
> > VDD_MIPI_0P9, MIPI_VREG_CAP pins on the IMX8MM hangs with this
> > particular patch. If I comment out the pgc_mipi domain and subsequent
> > disp_blk_ctrl node from a later patch it resolves the hang. Is this
> > behavior expected and what would your recommendation be to work around
> > it?
>
> No, this isn't expected. If there are no active devices in the MIPI
> domain, the power domain should not be touched, as we treat all of them
> as disabled initially. If we don't touch the domain I would expect that
> the power supply not being present shouldn't be an issue.
>
> Can you check if something in your system causes this power domain to
> be powered up? Easiest way is probably to sprinkle a
> printk("%s\n, genpd->name) in both imx8m_blk_ctrl_power_on() and
> imx_gpc_power_on().
>

Lucas,

Here's what I see before I hang (debug print on both power on/off
followed by a msleep(1000) to make sure I see it before I hang):
[    0.518319] imx_pgc_power_up hsiomix
[    0.624031] imx_pgc_power_down hsiomix
[    0.731879] imx_pgc_power_up hsiomix
[    0.839906] imx_pgc_power_down hsiomix
[    0.947875] imx_pgc_power_up hsiomix
[    1.055859] imx_pgc_power_down hsiomix
[    1.057296] imx_pgc_power_up gpumix
[    1.167884] imx_pgc_power_down gpumix
[    0.518513] imx_pgc_power_up hsiomix
[    0.519933] imx_pgc_power_up gpumix

Tim
