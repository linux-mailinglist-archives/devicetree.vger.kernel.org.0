Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0847E60D0F0
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 17:45:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232167AbiJYPox convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 25 Oct 2022 11:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232376AbiJYPow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 11:44:52 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 81E0E50700
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 08:44:50 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 851CAD6E;
        Tue, 25 Oct 2022 08:44:56 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CED2D3F71A;
        Tue, 25 Oct 2022 08:44:48 -0700 (PDT)
Date:   Tue, 25 Oct 2022 16:44:45 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Icenowy Zheng <uwu@icenowy.me>
Cc:     Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, soc@kernel.org,
        =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: suniv: Add Lctech Pi F1C200s devicetree
Message-ID: <20221025164445.12f5f89c@donnerap.cambridge.arm.com>
In-Reply-To: <73ea157f7e0c75f8bda16b3ac464be58fe7fb3ab.camel@icenowy.me>
References: <20221025145909.2837939-1-andre.przywara@arm.com>
        <20221025145909.2837939-4-andre.przywara@arm.com>
        <73ea157f7e0c75f8bda16b3ac464be58fe7fb3ab.camel@icenowy.me>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Oct 2022 23:30:26 +0800
Icenowy Zheng <uwu@icenowy.me> wrote:

Hi Icenowy,

thanks for having a look!
And btw, forgot to mention in the cover letter: this relies on the USB bits
in your series. Which works nicely, even in host mode.

> 在 2022-10-25星期二的 15:59 +0100，Andre Przywara写道：
> > The Lctech Pi F1C200s (also previously known under the Cherry Pi
> > brand)  
> 
> Oh? Are they the same hardware?

My board looks identical to this one:
https://www.cnx-software.com/2022/02/03/more-allwinner-f1c200s-arm9-boards-mangopi-r3-and-cherrypi-f1c200s/#cherrypi-f1c200s

The only difference is the silkscreen, there is no cherry logo on mine,
but the (no longer working) URL is the same, so it's the same board from
the same company. I guess legal troubles?

> > is a small development board with the Allwinner F1C200s SoC. This is
> > the
> > same as the F1C100s, but with 64MB instead of 32MB co-packaged DRAM.
> > 
> > Alongside the obligatory micro-SD card slot, the board features a
> > SPI-NAND flash chip, LCD and touch connectors, and unpopulated
> > expansion header pins.
> > There are two USB Type-C ports on the board: One supplies the power,
> > also
> > connects to the USB MUSB OTG controller port. The other one is
> > connected
> > to an CH340 USB serial chip, which in turn is connected to UART1.
> > 
> > Add a devicetree file, so that the board can be used easily.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arch/arm/boot/dts/Makefile                    |  1 +
> >  arch/arm/boot/dts/suniv-f1c100s.dtsi          |  5 ++
> >  arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts | 80
> > +++++++++++++++++++
> >  3 files changed, 86 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts
> > 
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 6abf6434eb372..f99c5c20bf7ef 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -1394,6 +1394,7 @@ dtb-$(CONFIG_MACH_SUN9I) += \
> >         sun9i-a80-cubieboard4.dtb
> >  dtb-$(CONFIG_MACH_SUNIV) += \
> >         suniv-f1c100s-licheepi-nano.dtb \
> > +       suniv-f1c200s-lctech-pi.dtb \
> >         suniv-f1c200s-popstick-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_TEGRA_2x_SOC) += \
> >         tegra20-acer-a500-picasso.dtb \
> > diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi
> > b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> > index 0f24c766c9fc5..2ec022e92eea8 100644
> > --- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
> > +++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> > @@ -201,6 +201,11 @@ uart0_pe_pins: uart0-pe-pins {
> >                                 pins = "PE0", "PE1";
> >                                 function = "uart0";
> >                         };
> > +
> > +                       uart1_pa_pins: uart1-pa-pins {
> > +                               pins = "PA2", "PA3";
> > +                               function = "uart1";
> > +                       };  
> 
> Should this be in a splitted commit?

I don't know if this is really necessary, but am of course happy to spin
this one out, if needed.

> >                 };
> >  
> >                 timer@1c20c00 {
> > diff --git a/arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts
> > b/arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts
> > new file mode 100644
> > index 0000000000000..a9d1778395438
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/suniv-f1c200s-lctech-pi.dts
> > @@ -0,0 +1,80 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright 2022 Arm Ltd,
> > + * based on work:
> > + *   Copyright 2022 Icenowy Zheng <uwu@icenowy.me>
> > + */
> > +
> > +/dts-v1/;
> > +#include "suniv-f1c100s.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +       model = "Lctech Pi F1C200s";
> > +       compatible = "lctech,pi-f1c200s", "allwinner,suniv-f1c200s",
> > +                    "allwinner,suniv-f1c100s";
> > +
> > +       aliases {
> > +               mmc0 = &mmc0;
> > +               serial0 = &uart1;
> > +               spi0 = &spi0;
> > +       };
> > +
> > +       chosen {
> > +               stdout-path = "serial0:115200n8";
> > +       };
> > +
> > +       reg_vcc3v3: regulator-3v3 {
> > +               compatible = "regulator-fixed";
> > +               regulator-name = "vcc3v3";
> > +               regulator-min-microvolt = <3300000>;
> > +               regulator-max-microvolt = <3300000>;
> > +       };
> > +};
> > +
> > +&mmc0 {
> > +       broken-cd;
> > +       bus-width = <4>;
> > +       disable-wp;
> > +       vmmc-supply = <&reg_vcc3v3>;
> > +       status = "okay";
> > +};
> > +
> > +&otg_sram {
> > +       status = "okay";
> > +};
> > +
> > +&spi0 {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&spi0_pc_pins>;
> > +       status = "okay";
> > +
> > +       flash@0 {
> > +               compatible = "spi-nand";
> > +               reg = <0>;
> > +               #address-cells = <1>;
> > +               #size-cells = <1>;
> > +               spi-max-frequency = <40000000>;
> > +       };
> > +};
> > +
> > +&uart1 {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&uart1_pa_pins>;
> > +       status = "okay";
> > +};
> > +
> > +/*
> > + * This is a Type-C socket, but CC1/2 are not connected, and VBUS is
> > connected
> > + * to Vin, which supplies the board. Host mode works (if the board
> > is powered
> > + * otherwise), but peripheral is probably the intention.
> > + */
> > +&usb_otg {
> > +       dr_mode = "peripheral";
> > +       status = "okay";
> > +};  
> 
> Finally we should get able to override dr_mode just by HW.

Do you mean by software? Yeah, that would be useful. Otherwise one could
dedicate a GPIO to a fake ID_DET pin, I guess. Or use a DT overlay.

Cheers,
Andre

> > +
> > +&usbphy {
> > +       status = "okay";
> > +};  
> 

