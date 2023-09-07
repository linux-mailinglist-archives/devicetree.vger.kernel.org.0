Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 571B07975BA
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235789AbjIGPy2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:54:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240182AbjIGPtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:49:06 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A49FC4C23
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:40:10 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3a81154c570so677524b6e.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694101159; x=1694705959; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0XKI8kby3lqX1RwORc6CrT2nRwL0tbRNueoy8f83Xxk=;
        b=NqvwHO+eW46njca7yhXeStW53fKXCvFsOcNbqVc8u8IgN661z3nEm1vRaw1iyC+1oB
         C4KOusF4lpOprBWafonlTJOCVX/YEEAsX1uUv4VHswvjwvaHYUNkkMjyOw75OKXz55Tj
         I29ADhQg85uDGNRr8jHVwCuH6NIby6YRsYv8sljbuII1kYKt3eOJZ/JNIKuzyOcG/PMu
         NGXtILAa2iliVehgRjMrI05ehHNtxx5EuHwZHGvyd1OJFDuv3PgzALNT8xZLJ3y4IOg9
         i8KJEo5sxkjCeVtRRmi17gh27HrAlh215HmQjQbp9fZuXyUKIMXCfv4kZdR9aRAsGOrf
         dJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694101159; x=1694705959;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0XKI8kby3lqX1RwORc6CrT2nRwL0tbRNueoy8f83Xxk=;
        b=Vp50lY7CDUhiQ+69ZJABUA/A1mWIaouC5DXi9c1xm8yJMeNo5EhJ/dHlc+xEN3fKR7
         0RI4hhZnAr1B9p2itjNUqM2pxdBnhJYALFjbxdqHxciXjIKicTMK4J4A20IWNzGOUUPi
         CFH7nyjjHM7+JFFkjvj7BUbKUTNwgU4/soagnJt/BtPvcZJkCaMiU0atKfVzxFGvEMS0
         sR/illB2pvN2h4LY2srvKWzy32AIkrKD3eCo38tNRntUdaX4bvlKbqHXyjess6Gv/1yh
         l69YO+LAqOI5DEGXmIbuxAtoK8Kcd8x3CjC8QRTPr4cVQYNg4MQGb8y65PNhjItl5q43
         VP/w==
X-Gm-Message-State: AOJu0Yzq/Iqsr1hpLPPxJl3qAxvsxMJMg4DN/Wv0oqoW4vNYjr6l1Di5
        zmPaa3US3jYt4WL9yMdlBiM=
X-Google-Smtp-Source: AGHT+IEaeWv1+/mgq19ERRlXdPUvwFf9M9DRP8bzUHt1FuvXefzF7uaAEvTsWIAuun95lbGa6Nusug==
X-Received: by 2002:a05:6808:128e:b0:3a8:73a9:396f with SMTP id a14-20020a056808128e00b003a873a9396fmr22251360oiw.15.1694101159592;
        Thu, 07 Sep 2023 08:39:19 -0700 (PDT)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 24-20020aca0918000000b003a42923771esm8057794oij.6.2023.09.07.08.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:39:19 -0700 (PDT)
Message-ID: <64f9eea7.ca0a0220.bbe66.12c3@mx.google.com>
X-Google-Original-Message-ID: <ZPnupZ0Bx1iP6eTX@neuromancer.>
Date:   Thu, 7 Sep 2023 10:39:17 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        airlied@gmail.com, andre.przywara@arm.com, conor+dt@kernel.org,
        daniel@ffwll.ch, heiko@sntech.de, jagan@edgeble.ai,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 8/8] ARM: dts: sunxi: add support for Anbernic RG-Nano
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
 <20230828181941.1609894-9-macroalpha82@gmail.com>
 <5865585.MhkbZ0Pkbq@archlinux>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5865585.MhkbZ0Pkbq@archlinux>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 05, 2023 at 10:32:33PM +0200, Jernej Škrabec wrote:
> On Monday, August 28, 2023 8:19:41 PM CEST Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > The Anbernic RG-Nano is a small portable game device based on the
> > Allwinner V3s SoC. It has GPIO buttons on the face and side for
> > input, a single mono speaker, a 240x240 SPI controlled display, a USB-C
> > OTG port, an SD card slot for booting, and 64MB of RAM included in the
> > SoC.
> > 
> > Working/Tested:
> > - SDMMC
> > - UART (for debugging)
> > - Buttons
> > - Charging/battery/PMIC
> > - Speaker
> > - RTC
> > - USB Host and Gadget*
> > - Display (at 60hz)
> > 
> > *There is an issue with the usb_phy where it forces the device to host
> > mode. Until the phy driver is fixed this can be bypassed by either
> > removing the phy references from the ohci and ehci nodes or by setting
> > the usbphy on the ohci and ehci nodes to 1 (which is incorrect).
> 
> DT is HW description, so driver independent and above comment should be 
> removed from commit message.
> 
> Otherwise:
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> 
> Best regards,
> Jernej

Should I resubmit with the text removed, or can it be edited before
being sent upstream?

Thank you.

> 
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  arch/arm/boot/dts/allwinner/Makefile          |   1 +
> >  .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 284 ++++++++++++++++++
> >  2 files changed, 285 insertions(+)
> >  create mode 100644
> > arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> > 
> > diff --git a/arch/arm/boot/dts/allwinner/Makefile
> > b/arch/arm/boot/dts/allwinner/Makefile index 589a1ce1120a..2be83a1edcbb
> > 100644
> > --- a/arch/arm/boot/dts/allwinner/Makefile
> > +++ b/arch/arm/boot/dts/allwinner/Makefile
> > @@ -237,6 +237,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
> >  	sun8i-t113s-mangopi-mq-r-t113.dtb \
> >  	sun8i-t3-cqa3t-bv3.dtb \
> >  	sun8i-v3-sl631-imx179.dtb \
> > +	sun8i-v3s-anbernic-rg-nano.dtb \
> >  	sun8i-v3s-licheepi-zero.dtb \
> >  	sun8i-v3s-licheepi-zero-dock.dtb \
> >  	sun8i-v40-bananapi-m2-berry.dtb
> > diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> > b/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts new file mode
> > 100644
> > index 000000000000..bcccb0d3f9ce
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> > @@ -0,0 +1,284 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include "sun8i-v3s.dtsi"
> > +#include "sunxi-common-regulators.dtsi"
> > +
> > +/ {
> > +	model = "Anbernic RG Nano";
> > +	compatible = "anbernic,rg-nano", "allwinner,sun8i-v3s";
> > +
> > +	aliases {
> > +		serial0 = &uart0;
> > +	};
> > +
> > +	backlight: backlight {
> > +		compatible = "pwm-backlight";
> > +		brightness-levels = <0 1 2 3 8 14 21 32 46 60 80 100>;
> > +		default-brightness-level = <11>;
> > +		power-supply = <&reg_vcc5v0>;
> > +		pwms = <&pwm 0 40000 1>;
> > +	};
> > +
> > +	chosen {
> > +		stdout-path = "serial0:115200n8";
> > +	};
> > +
> > +	gpio_keys: gpio-keys {
> > +		compatible = "gpio-keys";
> > +
> > +		button-a {
> > +			gpios = <&gpio_expander 12 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-A";
> > +			linux,code = <BTN_EAST>;
> > +		};
> > +
> > +		button-b {
> > +			gpios = <&gpio_expander 14 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-B";
> > +			linux,code = <BTN_SOUTH>;
> > +		};
> > +
> > +		button-down {
> > +			gpios = <&gpio_expander 1 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "DPAD-DOWN";
> > +			linux,code = <BTN_DPAD_DOWN>;
> > +		};
> > +
> > +		button-left {
> > +			gpios = <&gpio_expander 4 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "DPAD-LEFT";
> > +			linux,code = <BTN_DPAD_LEFT>;
> > +		};
> > +
> > +		button-right {
> > +			gpios = <&gpio_expander 0 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "DPAD-RIGHT";
> > +			linux,code = <BTN_DPAD_RIGHT>;
> > +		};
> > +
> > +		button-se {
> > +			gpios = <&gpio_expander 7 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-SELECT";
> > +			linux,code = <BTN_SELECT>;
> > +		};
> > +
> > +		button-st {
> > +			gpios = <&gpio_expander 6 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-START";
> > +			linux,code = <BTN_START>;
> > +		};
> > +
> > +		button-tl {
> > +			gpios = <&gpio_expander 2 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-L";
> > +			linux,code = <BTN_TL>;
> > +		};
> > +
> > +		button-tr {
> > +			gpios = <&gpio_expander 15 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-R";
> > +			linux,code = <BTN_TR>;
> > +		};
> > +
> > +		button-up {
> > +			gpios = <&gpio_expander 3 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "DPAD-UP";
> > +			linux,code = <BTN_DPAD_UP>;
> > +		};
> > +
> > +		button-x {
> > +			gpios = <&gpio_expander 11 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-X";
> > +			linux,code = <BTN_NORTH>;
> > +		};
> > +
> > +		button-y {
> > +			gpios = <&gpio_expander 13 (GPIO_ACTIVE_LOW | 
> GPIO_PULL_UP)>;
> > +			label = "BTN-Y";
> > +			linux,code = <BTN_WEST>;
> > +		};
> > +	};
> > +};
> > +
> > +&ccu {
> > +	clocks = <&osc24M>, <&osc32k>;
> > +};
> > +
> > +&codec {
> > +	allwinner,audio-routing = "Speaker", "HP",
> > +				  "MIC1", "Mic",
> > +				  "Mic", "HBIAS";
> > +	allwinner,pa-gpios = <&pio 5 6 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; 
> /* PF6
> > */ +	status = "okay";
> > +};
> > +
> > +&ehci {
> > +	status = "okay";
> > +};
> > +
> > +&i2c0 {
> > +	status = "okay";
> > +
> > +	gpio_expander: gpio@20 {
> > +		compatible = "nxp,pcal6416";
> > +		reg = <0x20>;
> > +		gpio-controller;
> > +		#gpio-cells = <2>;
> > +		#interrupt-cells = <2>;
> > +		interrupt-controller;
> > +		interrupt-parent = <&pio>;
> > +		interrupts = <1 3 IRQ_TYPE_EDGE_BOTH>; /* PB3/EINT3 */
> > +		vcc-supply = <&reg_vcc3v3>;
> > +	};
> > +
> > +	axp209: pmic@34 {
> > +		reg = <0x34>;
> > +		interrupt-parent = <&pio>;
> > +		interrupts = <1 5 IRQ_TYPE_EDGE_FALLING>; /* PB5/EINT5 
> */
> > +	};
> > +
> > +	pcf8563: rtc@51 {
> > +		compatible = "nxp,pcf8563";
> > +		reg = <0x51>;
> > +	};
> > +};
> > +
> > +#include "axp209.dtsi"
> > +
> > +&battery_power_supply {
> > +	status = "okay";
> > +};
> > +
> > +&mmc0 {
> > +	broken-cd;
> > +	bus-width = <4>;
> > +	disable-wp;
> > +	vmmc-supply = <&reg_vcc3v3>;
> > +	vqmmc-supply = <&reg_vcc3v3>;
> > +	status = "okay";
> > +};
> > +
> > +&ohci {
> > +	status = "okay";
> > +};
> > +
> > +&pio {
> > +	clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
> > +	vcc-pb-supply = <&reg_vcc3v3>;
> > +	vcc-pc-supply = <&reg_vcc3v3>;
> > +	vcc-pf-supply = <&reg_vcc3v3>;
> > +	vcc-pg-supply = <&reg_vcc3v3>;
> > +
> > +	spi0_no_miso_pins: spi0-no-miso-pins {
> > +		pins = "PC1", "PC2", "PC3";
> > +		function = "spi0";
> > +	};
> > +};
> > +
> > +&pwm {
> > +	pinctrl-0 = <&pwm0_pin>;
> > +	pinctrl-names = "default";
> > +	status = "okay";
> > +};
> > +
> > +/* DCDC2 wired into vdd-cpu, vdd-sys, and vdd-ephy. */
> > +&reg_dcdc2 {
> > +	regulator-always-on;
> > +	regulator-max-microvolt = <1250000>;
> > +	regulator-min-microvolt = <1250000>;
> > +	regulator-name = "vdd-cpu";
> > +};
> > +
> > +/* DCDC3 wired into every 3.3v input that isn't the RTC. */
> > +&reg_dcdc3 {
> > +	regulator-always-on;
> > +	regulator-max-microvolt = <3300000>;
> > +	regulator-min-microvolt = <3300000>;
> > +	regulator-name = "vcc-io";
> > +};
> > +
> > +/*
> > + * LDO1 wired into RTC, voltage is hard-wired at 3.3v and cannot be
> > + * software modified. Note that setting voltage here to 3.3v for accuracy
> > + * sake causes an issue with the driver that causes it to fail to probe
> > + * because of a voltage constraint in the driver.
> > + */
> > +&reg_ldo1 {
> > +	regulator-always-on;
> > +	regulator-name = "vcc-rtc";
> > +};
> > +
> > +/* LDO2 wired into VCC-PLL and audio codec. */
> > +&reg_ldo2 {
> > +	regulator-always-on;
> > +	regulator-max-microvolt = <3000000>;
> > +	regulator-min-microvolt = <3000000>;
> > +	regulator-name = "vcc-pll";
> > +};
> > +
> > +/* LDO3, LDO4, and LDO5 unused. */
> > +&reg_ldo3 {
> > +	status = "disabled";
> > +};
> > +
> > +&reg_ldo4 {
> > +	status = "disabled";
> > +};
> > +
> > +/* External RTC used instead, internal RTC runs fast. */
> > +&rtc {
> > +	status = "disabled";
> > +};
> > +
> > +&spi0 {
> > +	pinctrl-0 = <&spi0_no_miso_pins>;
> > +	pinctrl-names = "default";
> > +	status = "okay";
> > +
> > +	display@0 {
> > +		compatible = "saef,sftc154b", "panel-mipi-dbi-spi";
> > +		reg = <0>;
> > +		backlight = <&backlight>;
> > +		dc-gpios = <&pio 2 0 GPIO_ACTIVE_HIGH>; /* PC0 */
> > +		reset-gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>; /* PB2 */
> > +		spi-max-frequency = <100000000>;
> > +
> > +		height-mm = <39>;
> > +		width-mm = <39>;
> > +
> > +		/* Set hb-porch to compensate for non-visible area */
> > +		panel-timing {
> > +			hactive = <240>;
> > +			vactive = <240>;
> > +			hback-porch = <80>;
> > +			vback-porch = <0>;
> > +			clock-frequency = <0>;
> > +			hfront-porch = <0>;
> > +			hsync-len = <0>;
> > +			vfront-porch = <0>;
> > +			vsync-len = <0>;
> > +		};
> > +	};
> > +};
> > +
> > +&uart0 {
> > +	pinctrl-0 = <&uart0_pb_pins>;
> > +	pinctrl-names = "default";
> > +	status = "okay";
> > +};
> > +
> > +&usb_otg {
> > +	dr_mode = "otg";
> > +	status = "okay";
> > +};
> > +
> > +&usb_power_supply {
> > +	status = "okay";
> > +};
> > +
> > +&usbphy {
> > +	usb0_id_det-gpios = <&pio 6 5 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* 
> PG5 */
> > +	status = "okay";
> > +};
> 
> 
> 
> 
