Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACFB34B32EC
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 05:01:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231349AbiBLEBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 23:01:15 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:43580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbiBLEBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 23:01:15 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B31E927CE1
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 20:01:08 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2B4E460916
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 04:01:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4314AC340EE;
        Sat, 12 Feb 2022 04:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644638463;
        bh=TWizPpb6uvdT0NGWaEh3KFdTpngKG6kfh4U/K8/qKfc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=eIRKIMkVJYnRMGuUKnco/uQn4YpL0d7mYWjS0H1+HDPZyACtGfQSwWzPt1r7n+mKV
         +pxq5blkUyehvismnDAwUZEXqP3CwvgzdfD9ztEKfk4JSU9sOOysO20mxyi+ygIUoD
         OLWwiPbGefInjfHjcax+cvOYKuBjQ4qmC2d1dFDZPCFEo0EHPS3PkLsapw90JHqnnh
         wUi899Tnqj7rLvlbciIAE8CVoxCueiBKuYhdS5YUYaV2WnDcAg4H7gnbZPsFZUnREV
         hRBqAXGpPFxSaXQzMaAsz9RbM6E7If9Y9jzlH44gfoHYOyWUMt0n6MBm5Lb4ednDaD
         PvvuX+VwDbxdQ==
Date:   Sat, 12 Feb 2022 12:00:57 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Frank Rowand <frank.rowand@sony.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Use overlay target for
 simplicity
Message-ID: <20220212040056.GX4909@dragon>
References: <20220129070912.9836-1-shawnguo@kernel.org>
 <20220129070912.9836-3-shawnguo@kernel.org>
 <CAJ+vNU0CNFeEp0B92mUjV7RrwAHjk9iJ703zEYofkducfFzvGw@mail.gmail.com>
 <20220211091019.GS4909@dragon>
 <CAJ+vNU3JJ8NbOskttMsnDc+Po=Lqo2wkAO9qWyiDReksp26qPA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU3JJ8NbOskttMsnDc+Po=Lqo2wkAO9qWyiDReksp26qPA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 11, 2022 at 03:23:20PM -0800, Tim Harvey wrote:
> > > I tried to adapt my patch 'arm64: dts: imx8mm-venice-gw73xx-0x: add dt
> > > overlays for serial modes' [1] and it results in a build failure:
> > > $ make dtbs W=1
> > >   UPD     include/config/kernel.release
> > >   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
> > >   DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb
> > >
> > > Overlay 'scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h' is
> > > incomplete (2048 / 1346656301 bytes read)
> > > scripts/Makefile.lib:360: recipe for target
> > > 'arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb'
> > > failed
> > > make[2]: *** [arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb]
> > > Error 1
> > > scripts/Makefile.build:550: recipe for target
> > > 'arch/arm64/boot/dts/freescale' failed
> > > make[1]: *** [arch/arm64/boot/dts/freescale] Error 2
> > > Makefile:1370: recipe for target 'dtbs' failed
> > > make: *** [dtbs] Error 2
> > >
> > > It seems that it chokes on the include. The dts is:
> > > // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > /*
> > >  * Copyright 2022 Gateworks Corporation
> > >  *
> > >  * GW73xx RS232 with RTS/CTS hardware flow control:
> > >  *  - GPIO4_0 rs485_en needs to be driven low (in-active)
> > >  *  - UART4_TX becomes RTS
> > >  *  - UART4_RX becomes CTS
> > >  */
> > >
> > > #include <dt-bindings/gpio/gpio.h>
> > >
> > > #include "imx8mm-pinfunc.h"
> > >
> > > /dts-v1/;
> > > /plugin/;
> > >
> > > &{/} {
> > >         compatible = "gw,imx8mm-gw73xx-0x";
> > > };
> > >
> > > &gpio4 {
> > >         rs485_en {
> > >                 gpio-hog;
> > >                 gpios = <0 GPIO_ACTIVE_HIGH>;
> > >                 output-low;
> > >                 line-name = "rs485_en";
> > >         };
> > > };
> > >
> > > &uart2 {
> > >         pinctrl-names = "default";
> > >         pinctrl-0 = <&pinctrl_uart2>;
> > >         rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
> > >         cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
> > >         uart-has-rtscts;
> > >         status = "okay";
> > > };
> > >
> > > &uart4 {
> > >         status = "disabled";
> > > };
> > >
> > > &iomuxc {
> > >         pinctrl_uart2: uart2grp {
> > >                 fsl,pins = <
> > >                         MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX     0x140
> > >                         MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX     0x140
> > >                         MX8MM_IOMUXC_UART4_TXD_GPIO5_IO29       0x140
> > >                         MX8MM_IOMUXC_UART4_RXD_GPIO5_IO28       0x140
> > >                 >;
> > >         };
> > > };
> > >
> > > Could you explain what is wrong here? It compiled fine before trying
> > > to adapt the Makefile to what is described in 15d16d6dadf6 ("kbuild:
> > > Add generic rule to applyfdt overlay"
> >
> >
> > With the following changes on top of your patch, I can build the dtbo
> > without error.
> >
> > ---8<-------
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > index 4611f66096a7..d42a9e03f014 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -61,9 +61,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw71xx-0x.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw72xx-0x.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x.dtb
> > -dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
> > -dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs422.dtbo
> > -dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtbo
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw7901.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw7902.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mn-beacon-kit.dtb
> > @@ -97,6 +94,14 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
> >
> > +imx8mm-venice-gw73xx-0x-rs232-rts-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
> > +imx8mm-venice-gw73xx-0x-rs422-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs422.dtbo
> > +imx8mm-venice-gw73xx-0x-rs485-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs485.dtbo
> > +
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs232-rts.dtb
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs422.dtb
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtb
> > +
> >  dtb-$(CONFIG_ARCH_S32) += s32g274a-evb.dtb
> >  dtb-$(CONFIG_ARCH_S32) += s32g274a-rdb2.dtb
> >  dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
> 
> Shawn,
> 
> On top of what branch and with what commands? I've rebased this on top
> of your imx/dt64 branch and can not build once I apply this over my
> patch using 'make dtbs W=1'.

Tim,

For your reference, I pushed the changes as below.

https://git.linaro.org/people/shawn.guo/linux-2.6.git/log/?h=test/gw73xx-dtbo

The build command is:

$ make W=1 ARCH=arm64 dtbs
  UPD     include/config/kernel.release
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs422.dtbo
  DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs485.dtbo
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs422.dtb
  DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs485.dtb

Maybe you forgot to set up 'ARCH' variable?

Shawn
