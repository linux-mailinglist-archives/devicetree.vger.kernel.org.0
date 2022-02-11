Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 140BE4B211A
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 10:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348173AbiBKJK3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 04:10:29 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236211AbiBKJK3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 04:10:29 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BC05101C
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 01:10:28 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D50ADB828BA
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 09:10:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49986C340ED;
        Fri, 11 Feb 2022 09:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644570625;
        bh=BTyHhUpn0rafxeyd+csruS8WlabNGmwL+QSdllzDTLU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qfA5kYiXV50IJsUcgmRDQmMVwzQ5cL0PYAIEuTA51x9haHJy+hpF9tob/RhJt2rPg
         k/w2mUCI+FBSaOdOZIe1T+yA13SFSww78Eiy7B2bxm5Bo4/AZRCkt7ggnfygRT08SJ
         hFiVwV7V1oNNPRb17ILJP4CBd5UZhfxQ3wfXzWK9+i12VT4+YsrW5STidMKEpPj/1w
         NCVI4N9WRZ490iMLQR8Tj8qqaVuLryrzoWBzwuOLMZOEnNImmvS7EqhobgMHSx+wFB
         oNDlpiNdDudtJbJXRt2IGLIl8MrxSv3nm6CLH65MeHIG872lF11a6/E1RzTG6vE0RO
         t7N2Wz+n+WXzg==
Date:   Fri, 11 Feb 2022 17:10:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Frank Rowand <frank.rowand@sony.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Use overlay target for
 simplicity
Message-ID: <20220211091019.GS4909@dragon>
References: <20220129070912.9836-1-shawnguo@kernel.org>
 <20220129070912.9836-3-shawnguo@kernel.org>
 <CAJ+vNU0CNFeEp0B92mUjV7RrwAHjk9iJ703zEYofkducfFzvGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU0CNFeEp0B92mUjV7RrwAHjk9iJ703zEYofkducfFzvGw@mail.gmail.com>
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

On Wed, Feb 09, 2022 at 02:10:11PM -0800, Tim Harvey wrote:
> On Fri, Jan 28, 2022 at 11:10 PM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> > With commit 15d16d6dadf6 ("kbuild: Add generic rule to apply
> > fdtoverlay"), overlay target can be used to simplify the build of DTB
> > overlays.  It also performs a cross check to ensure base DT and overlay
> > actually match.
> >
> > Signed-off-by: Shawn Guo <shawnguo@kernel.org>
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile | 29 +++++++++++++-------------
> >  1 file changed, 14 insertions(+), 15 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > index 6d8f0a532587..c521ac2b00ca 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -1,14 +1,5 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >
> > -# required for overlay support
> > -DTC_FLAGS_fsl-ls1028a-qds := -@
> > -DTC_FLAGS_fsl-ls1028a-qds-13bb := -@
> > -DTC_FLAGS_fsl-ls1028a-qds-65bb := -@
> > -DTC_FLAGS_fsl-ls1028a-qds-7777 := -@
> > -DTC_FLAGS_fsl-ls1028a-qds-85bb := -@
> > -DTC_FLAGS_fsl-ls1028a-qds-899b := -@
> > -DTC_FLAGS_fsl-ls1028a-qds-9999 := -@
> > -
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frdm.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frwy.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-oxalis.dtb
> > @@ -21,12 +12,6 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var2.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var3-ads2.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var4.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
> > -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-13bb.dtb
> > -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-65bb.dtb
> > -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-7777.dtb
> > -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
> > -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
> > -dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-rdb.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-qds.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-rdb.dtb
> > @@ -49,6 +34,20 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-qds.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
> >  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2162a-qds.dtb
> >
> > +fsl-ls1028a-qds-13bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-13bb.dtbo
> > +fsl-ls1028a-qds-65bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-65bb.dtbo
> > +fsl-ls1028a-qds-7777-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-7777.dtbo
> > +fsl-ls1028a-qds-85bb-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-85bb.dtbo
> > +fsl-ls1028a-qds-899b-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-899b.dtbo
> > +fsl-ls1028a-qds-9999-dtbs := fsl-ls1028a-qds.dtb fsl-ls1028a-qds-9999.dtbo
> > +
> > +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-13bb.dtb
> > +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-65bb.dtb
> > +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-7777.dtb
> > +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
> > +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
> > +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
> > +
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
> > --
> > 2.17.1
> 
> Shawn and Rob
> 
> I tried to adapt my patch 'arm64: dts: imx8mm-venice-gw73xx-0x: add dt
> overlays for serial modes' [1] and it results in a build failure:
> $ make dtbs W=1
>   UPD     include/config/kernel.release
>   DTC     arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
>   DTOVL   arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb
> 
> Overlay 'scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h' is
> incomplete (2048 / 1346656301 bytes read)
> scripts/Makefile.lib:360: recipe for target
> 'arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb'
> failed
> make[2]: *** [arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx-0x-rs232-rts.dtb]
> Error 1
> scripts/Makefile.build:550: recipe for target
> 'arch/arm64/boot/dts/freescale' failed
> make[1]: *** [arch/arm64/boot/dts/freescale] Error 2
> Makefile:1370: recipe for target 'dtbs' failed
> make: *** [dtbs] Error 2
> 
> It seems that it chokes on the include. The dts is:
> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> /*
>  * Copyright 2022 Gateworks Corporation
>  *
>  * GW73xx RS232 with RTS/CTS hardware flow control:
>  *  - GPIO4_0 rs485_en needs to be driven low (in-active)
>  *  - UART4_TX becomes RTS
>  *  - UART4_RX becomes CTS
>  */
> 
> #include <dt-bindings/gpio/gpio.h>
> 
> #include "imx8mm-pinfunc.h"
> 
> /dts-v1/;
> /plugin/;
> 
> &{/} {
>         compatible = "gw,imx8mm-gw73xx-0x";
> };
> 
> &gpio4 {
>         rs485_en {
>                 gpio-hog;
>                 gpios = <0 GPIO_ACTIVE_HIGH>;
>                 output-low;
>                 line-name = "rs485_en";
>         };
> };
> 
> &uart2 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_uart2>;
>         rts-gpios = <&gpio5 29 GPIO_ACTIVE_LOW>;
>         cts-gpios = <&gpio5 28 GPIO_ACTIVE_LOW>;
>         uart-has-rtscts;
>         status = "okay";
> };
> 
> &uart4 {
>         status = "disabled";
> };
> 
> &iomuxc {
>         pinctrl_uart2: uart2grp {
>                 fsl,pins = <
>                         MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX     0x140
>                         MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX     0x140
>                         MX8MM_IOMUXC_UART4_TXD_GPIO5_IO29       0x140
>                         MX8MM_IOMUXC_UART4_RXD_GPIO5_IO28       0x140
>                 >;
>         };
> };
> 
> Could you explain what is wrong here? It compiled fine before trying
> to adapt the Makefile to what is described in 15d16d6dadf6 ("kbuild:
> Add generic rule to applyfdt overlay"


With the following changes on top of your patch, I can build the dtbo
without error.

---8<-------
diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 4611f66096a7..d42a9e03f014 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -61,9 +61,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw71xx-0x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw72xx-0x.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x.dtb
-dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
-dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs422.dtbo
-dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtbo
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw7901.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw7902.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-beacon-kit.dtb
@@ -97,6 +94,14 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
 
+imx8mm-venice-gw73xx-0x-rs232-rts-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs232-rts.dtbo
+imx8mm-venice-gw73xx-0x-rs422-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs422.dtbo
+imx8mm-venice-gw73xx-0x-rs485-dtbs := imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-rs485.dtbo
+
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs232-rts.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs422.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw73xx-0x-rs485.dtb
+
 dtb-$(CONFIG_ARCH_S32) += s32g274a-evb.dtb
 dtb-$(CONFIG_ARCH_S32) += s32g274a-rdb2.dtb
 dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
