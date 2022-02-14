Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD1634B5E0E
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 00:09:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbiBNXJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 18:09:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbiBNXJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 18:09:38 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 545661AE714
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 15:09:29 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id d17so3681641pfl.0
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 15:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QP2bxQRRAcQup23pRbFvtqCHa8yVe+EISW3QBIBn3tY=;
        b=13TUSr7H8yCY9Jqv6SNXjtVvY4PjtA4PnfovQgaLpkHZ0BzsUlEXkUY0zPYcZnzFWP
         QzrVW42tu6RV2cTukHAxHX2yi21ufc4zwU+GMBpPx00bnZkVFmJQvLkhyizyTIrIq4UP
         3VkffGNLVHYqd6qP5yrG6rMc5CMZnhkYrXobP4JGIq8s0i8e0mhPG6+IhR8z5InvZNv8
         9RDdCvw6bt6RGzTkCd6L4Mdt06Qc61PLDqPc/YKDsHgwDUaRVlqi1EbI0pVi+CcqCFNX
         qwfN2Vzghs2MUG+RMIgY8RrQEpSZUY1OkQ52OsapnLFaWervshlsahkbVDyw2VJgFYEK
         yYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QP2bxQRRAcQup23pRbFvtqCHa8yVe+EISW3QBIBn3tY=;
        b=Xmrsm3jAhowu8uA7M9/1YSjzOTA4PIOYbUz9YMof6vL2+jmM7cBySoZi6wjqpdX5YL
         IPsyPojceM8/w3IZYicGfHoaLQZK6kH+P1KFBCvWN+JzMDloLg7WVxrcAx9lP8ijOQWj
         9O5fjNX5aycKxK2Cad5WUqikvthbTilnuiOvvsuEw1scpeTsI06ciVE8F/JRJ3YVvkJR
         4X3DGtbMuWNA8z760hhh+VvtHhnt94eYKGjCmrXvzsj2lGVo04qIaY4l3jWcESQczGap
         s40rwsrkG3TAvzmtMBSk4I4P0+ijLD7TUepEn46b8uZT40Qpcnpw8/NATJQW+8p/JiBN
         0Bpg==
X-Gm-Message-State: AOAM533V/AVTsyG+U1JIrO1B2wR2rIH68Zp+zqfwDmKgowdVqhczFked
        cPB7NSv3+Lu9Ad+0I8l0N4tDY4dHetKAc8XguGRlcw==
X-Google-Smtp-Source: ABdhPJy3nfWbx77EW+uameUOoWMZYyp2m66yZPrSwJgrn3ReAAKRbq9lxNFY3JP1+IrnVjtqSR64U8vKAvvAUTiol60=
X-Received: by 2002:a63:5b62:: with SMTP id l34mr1148806pgm.440.1644880168706;
 Mon, 14 Feb 2022 15:09:28 -0800 (PST)
MIME-Version: 1.0
References: <20220129070912.9836-1-shawnguo@kernel.org> <20220129070912.9836-3-shawnguo@kernel.org>
 <CAJ+vNU0CNFeEp0B92mUjV7RrwAHjk9iJ703zEYofkducfFzvGw@mail.gmail.com>
 <20220211091019.GS4909@dragon> <CAJ+vNU3JJ8NbOskttMsnDc+Po=Lqo2wkAO9qWyiDReksp26qPA@mail.gmail.com>
 <20220212040056.GX4909@dragon>
In-Reply-To: <20220212040056.GX4909@dragon>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 14 Feb 2022 15:09:17 -0800
Message-ID: <CAJ+vNU1_EOYSLCo3KaZ4epn-BdU4k=VkX=eXSaJYPk15B6-9qw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Use overlay target for simplicity
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Masahiro Yamada <masahiroy@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Frank Rowand <frank.rowand@sony.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 11, 2022 at 8:01 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Fri, Feb 11, 2022 at 03:23:20PM -0800, Tim Harvey wrote:
> > > > I tried to adapt my patch 'arm64: dts: imx8mm-venice-gw73xx-0x: add dt
> > > > overlays for serial modes' [1] and it results in a build failure:
> > > > $ make dtbs W=1
> > > >   UPD     include/config/kernel.release
> > > >   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
> > > >   DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb
> > > >
> > > > Overlay 'scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h' is
> > > > incomplete (2048 / 1346656301 bytes read)
> > > > scripts/Makefile.lib:360: recipe for target
> > > > 'arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb'
> > > > failed
> > > > make[2]: *** [arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb]
> > > > Error 1
> > > > scripts/Makefile.build:550: recipe for target
> > > > 'arch/arm64/boot/dts/freescale' failed
> > > > make[1]: *** [arch/arm64/boot/dts/freescale] Error 2
> > > > Makefile:1370: recipe for target 'dtbs' failed
> > > > make: *** [dtbs] Error 2
> > > >
> > > > It seems that it chokes on the include. The dts is:
> > > > // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > /*
> > > >  * Copyright 2022 Gateworks Corporation
> > > >  *
> > > >  * GW73xx RS232 with RTS/CTS hardware flow control:
> > > >  *  - GPIO4_0 rs485_en needs to be driven low (in-active)
> > > >  *  - UART4_TX becomes RTS
> > > >  *  - UART4_RX becomes CTS
> > > >  */
> > > >
> > > > #include <dt-bindings/gpio/gpio.h>
> > > >
> > > > #include "imx8mm-pinfunc.h"
> > > >
> > > > /dts-v1/;
> > > > /plugin/;
> > > >
> > > > &{/} {
> > > >         compatible = "gw,imx8mm-gw73xx-0x";
> > > > };
> > > >
> > > > &gpio4 {
> > > >         rs485_en {
> > > >                 gpio-hog;
> > > >                 gpios = <0 GPIO_ACTIVE_HIGH>;
> > > >                 output-low;
> > > >                 line-name = "rs485_en";
> > > >         };
> > > > };
> > > >
> > > > &uart2 {
> > > >         pinctrl-names = "default";
> > > >         pinctrl-0 = <&pinctrl_uart2>;
> > > >         rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
> > > >         cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
> > > >         uart-has-rtscts;
> > > >         status = "okay";
> > > > };
> > > >
> > > > &uart4 {
> > > >         status = "disabled";
> > > > };
> > > >
> > > > &iomuxc {
> > > >         pinctrl_uart2: uart2grp {
> > > >                 fsl,pins = <
> > > >                         MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX     0x140
> > > >                         MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX     0x140
> > > >                         MX8MM_IOMUXC_UART4_TXD_GPIO5_IO29       0x140
> > > >                         MX8MM_IOMUXC_UART4_RXD_GPIO5_IO28       0x140
> > > >                 >;
> > > >         };
> > > > };
> > > >
> > > > Could you explain what is wrong here? It compiled fine before trying
> > > > to adapt the Makefile to what is described in 15d16d6dadf6 ("kbuild:
> > > > Add generic rule to applyfdt overlay"
> > >
> > >
> > > With the following changes on top of your patch, I can build the dtbo
> > > without error.
> > >
> > > ---8<-------
> > > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > > index 4611f66096a7..d42a9e03f014 100644
> > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > @@ -61,9 +61,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw71xx-0x.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw72xx-0x.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x.dtb
> > > -dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
> > > -dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs422.dtbo
> > > -dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtbo
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw7901.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw7902.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-beacon-kit.dtb
> > > @@ -97,6 +94,14 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
> > >
> > > +imx8mm-venice-gw73xx-0x-rs232-rts-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
> > > +imx8mm-venice-gw73xx-0x-rs422-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs422.dtbo
> > > +imx8mm-venice-gw73xx-0x-rs485-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs485.dtbo
> > > +
> > > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs232-rts.dtb
> > > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs422.dtb
> > > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtb
> > > +
> > >  dtb-$(CONFIG_ARCH_S32) += s32g274a-evb.dtb
> > >  dtb-$(CONFIG_ARCH_S32) += s32g274a-rdb2.dtb
> > >  dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
> >
> > Shawn,
> >
> > On top of what branch and with what commands? I've rebased this on top
> > of your imx/dt64 branch and can not build once I apply this over my
> > patch using 'make dtbs W=1'.
>
> Tim,
>
> For your reference, I pushed the changes as below.
>
> https://git.linaro.org/people/shawn.guo/linux-2.6.git/log/?h=test/gw73xx-dtbo
>
> The build command is:
>
> $ make W=1 ARCH=arm64 dtbs
>   UPD     include/config/kernel.release
>   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
>   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs422.dtbo
>   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs485.dtbo
>   DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb
>   DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs422.dtb
>   DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs485.dtb
>
> Maybe you forgot to set up 'ARCH' variable?
>

Shawn,

I saw the same issue with your branch but found a 'make distclean'
saved the day.

I'll resubmit my patch.

Thanks,

Tim
