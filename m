Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8A49298B8C
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 12:13:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1771109AbgJZLNa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 07:13:30 -0400
Received: from mail-il1-f194.google.com ([209.85.166.194]:33672 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1771086AbgJZLNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 07:13:30 -0400
Received: by mail-il1-f194.google.com with SMTP id f16so299973ilr.0
        for <devicetree@vger.kernel.org>; Mon, 26 Oct 2020 04:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uiv1RseKvWKiMKu4SeX0kQmU4Sy41ZKPmWsA/6whB8g=;
        b=OIR2/8kqG9VZNQ16Kz5iVrcJdMNvoyocLFIFChsKqPQ9ZaAgiURiN0j9/qbvCGiX2m
         xtXyIN0h0m7wdTHdOTuGm8UUb/5VeoxbMOrA3kadg3mJ+Uhv8T5RHv6qpECEtnBpC1/y
         taBmk4TD1BxR/TCUuM47bfZop7uJFSls8lpWWI9NITeE0MkWbCQi1tiBdRhJ8OuSOB4f
         +aGmKJ6wdN1pQUr0enh7ObhOjVEufZsE/hwSjNWikWjN1pAeIv1sZ10cK9NPNt5OWf7G
         Z94Ab2zuqHOwllW580fI9HXeaUlMFaelm1yYV2eQrckFY6UVvY/O4UCnb8mO4teoGH/C
         ksSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uiv1RseKvWKiMKu4SeX0kQmU4Sy41ZKPmWsA/6whB8g=;
        b=UDYpOtrHeVFGEe1Hhw1ONLMWePizkd/ssaFOqu53+0AMMkKpIoDCtl+V0ootr4uULg
         I2JhOzOTBH8BbvphNGqDJy/c9sFdhfW16czx4sHBP8GbHQgQHVoDn4T9VGNHXpBowy2h
         3IbxQs7y9sip2JR2Uxi+Skht/IdfSMQ0jEx/Z4ymrf1uzv+jFi6BlVWvOQHItuvkfgFR
         g3siR5Sh3AGJ88+iU3piul2jkeC9dlSusHBtnJVDufLdEILnBy93QPCDeSCUimY6IBSo
         Ec5DFlNo1h7wQRgTYre2IkOyIORzHjyrbJzWXK2B/N+4RCEVcvNkY82AOP6bul6KN+nD
         r/Sw==
X-Gm-Message-State: AOAM5336jmjJ8la/8pbKr/P+UWkRw/wa5r8EupyouCx1zkJaZYXCsi7X
        SowpNHM5qZF6QjO+T996sS++rn9mIzPy35LnLX4=
X-Google-Smtp-Source: ABdhPJx5hTeUc12JZVeZ+TI+Vs9ernX01hweUZzj9FzPjCA3/WZcz/i3P6tkuTiWo0Ax4Wd/lXOMWe/ik+8mDTiwtrU=
X-Received: by 2002:a92:b04:: with SMTP id b4mr2686984ilf.65.1603710808831;
 Mon, 26 Oct 2020 04:13:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-11-l.stach@pengutronix.de> <20201026105622.iqt6cej3iqog57jd@fsr-ub1664-175>
 <20201026110140.2m7it3atlgrp5qrt@fsr-ub1664-175>
In-Reply-To: <20201026110140.2m7it3atlgrp5qrt@fsr-ub1664-175>
From:   Adam Ford <aford173@gmail.com>
Date:   Mon, 26 Oct 2020 06:13:17 -0500
Message-ID: <CAHCN7xJG3m_n_PhJpi-Fdkh98PRtjyF+7QFFYoBbbB2=3Bti6g@mail.gmail.com>
Subject: Re: [PATCH 10/11] arm64: dts: imx8mm: add GPC node and power domains
To:     Abel Vesa <abel.vesa@nxp.com>
Cc:     Lucas Stach <l.stach@pengutronix.de>, Marek Vasut <marex@denx.de>,
        devicetree <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 26, 2020 at 6:07 AM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> On 20-10-26 12:56:22, Abel Vesa wrote:
> > On 20-09-30 17:50:05, Lucas Stach wrote:
> > > This adds the DT nodes to describe the power domains available on the
> > > i.MX8MM. Things are a bit more complex compared to other GPCv2 power
> > > domain setups, as there is now a hierarchy of domains where complete
> > > subsystems (HSIO, GPU, DISPLAY) can be gated as a whole, but also
> > > fine granular gating within those subsystems is possible.
> > >
> > > Note that this is still incomplete, as both VPU and DISP domains are
> > > missing their reset clocks. Those aren't directly sourced from the CCM,
> > > but have another level of clock gating in the BLKCTL of those domains,
> > > which needs a separate driver.
> > >
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 57 +++++++++++++++++++++++
> > >  1 file changed, 57 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > index 76f040e4be5e..a841fb2d0458 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > > @@ -4,6 +4,8 @@
> > >   */
> > >
> > >  #include <dt-bindings/clock/imx8mm-clock.h>
> > > +#include <dt-bindings/power/imx8mm-power.h>
> > > +#include <dt-bindings/reset/imx8mq-reset.h>
> >
> > Needs to be imx8mm-reset.h, as in 8MM, not 8MQ.
> >
>
> Actually, now I see what you've done here. You want to use the IMX8MQ_RESET_GPU_RESET.
>
> But I think we should avoid having reset IDs shared between i.MX8M platforms.
>
> I'll try to find another way around this myself.

The nano does the same thing as the mini as both appear to be subsets
of the i.MX8MQ.  I spent a fair amount of time reviewing the SRC
driver yesterday.

>
> > >  #include <dt-bindings/gpio/gpio.h>
> > >  #include <dt-bindings/input/input.h>
> > >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > @@ -547,6 +549,61 @@
> > >                             interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > >                             #reset-cells = <1>;
> > >                     };
> > > +
> > > +                   gpc: gpc@303a0000 {
> > > +                           compatible = "fsl,imx8mm-gpc";
> > > +                           reg = <0x303a0000 0x10000>;
> > > +                           interrupt-parent = <&gic>;
> > > +                           interrupt-controller;
> > > +                           #interrupt-cells = <3>;
> > > +
> > > +                           pgc {
> > > +                                   #address-cells = <1>;
> > > +                                   #size-cells = <0>;
> > > +
> > > +                                   pgc_hsiomix: power-domain@0 {
> > > +                                           #power-domain-cells = <0>;
> > > +                                           reg = <IMX8MM_POWER_DOMAIN_HSIOMIX>;
> > > +                                           clocks = <&clk IMX8MM_CLK_USB_BUS>;
> > > +                                   };
> > > +
> > > +                                   pgc_pcie: power-domain@1 {
> > > +                                           #power-domain-cells = <0>;
> > > +                                           reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> > > +                                           power-domains = <&pgc_hsiomix>;
> > > +                                   };
> > > +
> > > +                                   pgc_otg1: power-domain@2 {
> > > +                                           #power-domain-cells = <0>;
> > > +                                           reg = <IMX8MM_POWER_DOMAIN_OTG1>;
> > > +                                           power-domains = <&pgc_hsiomix>;
> > > +                                   };
> > > +
> > > +                                   pgc_otg2: power-domain@3 {
> > > +                                           #power-domain-cells = <0>;
> > > +                                           reg = <IMX8MM_POWER_DOMAIN_OTG2>;
> > > +                                           power-domains = <&pgc_hsiomix>;
> > > +                                   };
> > > +
> > > +                                   pgc_gpumix: power-domain@4 {
> > > +                                           #power-domain-cells = <0>;
> > > +                                           reg = <IMX8MM_POWER_DOMAIN_GPUMIX>;
> > > +                                           clocks = <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > > +                                                    <&clk IMX8MM_CLK_GPU_AHB>;
> > > +                                   };
> > > +
> > > +                                   pgc_gpu: power-domain@5 {
> > > +                                           #power-domain-cells = <0>;
> > > +                                           reg = <IMX8MM_POWER_DOMAIN_GPU>;
> > > +                                           clocks = <&clk IMX8MM_CLK_GPU_AHB>,
> > > +                                                    <&clk IMX8MM_CLK_GPU_BUS_ROOT>,
> > > +                                                    <&clk IMX8MM_CLK_GPU2D_ROOT>,
> > > +                                                    <&clk IMX8MM_CLK_GPU3D_ROOT>;
> > > +                                           resets = <&src IMX8MQ_RESET_GPU_RESET>;
> > > +                                           power-domains = <&pgc_gpumix>;
> > > +                                   };
> > > +                           };
> > > +                   };
> > >             };
> > >
> > >             aips2: bus@30400000 {
> > > --
> > > 2.20.1
> > >
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
