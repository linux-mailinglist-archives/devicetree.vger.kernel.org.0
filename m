Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C4EE79ADAE
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 01:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237549AbjIKUxk convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 11 Sep 2023 16:53:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238041AbjIKNfn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 09:35:43 -0400
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB893106
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 06:35:37 -0700 (PDT)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-56b2e689968so3114818a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 06:35:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694439336; x=1695044136;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FFSzuCGy52KzjM99XInUlC5S7QkdlRbmWeLPzdzNuao=;
        b=xDwXzKk92MtBxIMUzy2FLU0NklU3LYmXTUTLR5yFzQ5JeGCzzzn0MrxriBFOiNYkSf
         9HyUaFnOLpm4M8N/weqHD8sqn/+AMk5ajbLVmogkw8H2YId1kIzyiHSg6KXW+bRe+Tdl
         kAMVTStrqu7ejz18yBMgxk2zja7HfqzpZ5q311RZZFgV+89lVRIBEThDi/R1bvb6axHm
         dL8AcdkqMHZcem0uiUbWH5I+eoReMofw0T03iv9vwZ6TRwYoPB3yoCcoPKj7JNPu4Eip
         sFpfXKZGgnPHUd2xJgKOEtLERlzGjQZYM8nnLjbypUfBP8fmV7xR0K8bUyNisiqn/Bvg
         Cv8A==
X-Gm-Message-State: AOJu0YyERWxonjHjqecxU/f+LGABmVumEiWmZ3PCHEVwn/2W7kr5sqOW
        F/mr9PINTAVIGSgAk1wOWQh+ngKIXj9Q+A==
X-Google-Smtp-Source: AGHT+IFYJwS3OL5ltL5OlAdSJr7QzNb8zkU5jq4LZ8GwIwT+va2Xc1/wixHDtwpfKQ9+V5JhmkhWZg==
X-Received: by 2002:a17:90a:e506:b0:274:12f3:d91f with SMTP id t6-20020a17090ae50600b0027412f3d91fmr1983748pjy.15.1694439336103;
        Mon, 11 Sep 2023 06:35:36 -0700 (PDT)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com. [209.85.210.177])
        by smtp.gmail.com with ESMTPSA id bx5-20020a17090af48500b002740e66851asm2273802pjb.35.2023.09.11.06.35.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 06:35:32 -0700 (PDT)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-68fb70fca9fso944245b3a.2
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 06:35:31 -0700 (PDT)
X-Received: by 2002:a05:6a20:f39d:b0:152:be08:b013 with SMTP id
 qr29-20020a056a20f39d00b00152be08b013mr6911988pzb.42.1694439330890; Mon, 11
 Sep 2023 06:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
 <20230828181941.1609894-9-macroalpha82@gmail.com> <20230911004909.6a40e1c0@slackpad.lan>
In-Reply-To: <20230911004909.6a40e1c0@slackpad.lan>
Reply-To: wens@csie.org
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 11 Sep 2023 21:35:19 +0800
X-Gmail-Original-Message-ID: <CAGb2v66qXS1Yn8fCd9kbgf9mrbpa8A4q=px+0jAX5Z567oYAsg@mail.gmail.com>
Message-ID: <CAGb2v66qXS1Yn8fCd9kbgf9mrbpa8A4q=px+0jAX5Z567oYAsg@mail.gmail.com>
Subject: Re: [PATCH V4 8/8] ARM: dts: sunxi: add support for Anbernic RG-Nano
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, airlied@gmail.com, conor+dt@kernel.org,
        daniel@ffwll.ch, heiko@sntech.de, jagan@edgeble.ai,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        mripard@kernel.org, neil.armstrong@linaro.org, noralf@tronnes.org,
        robh+dt@kernel.org, sam@ravnborg.org, samuel@sholland.org,
        uwu@icenowy.me, Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 11, 2023 at 8:07 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Mon, 28 Aug 2023 13:19:41 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:
>
> Hi Chris,
>
> thanks for the changes. As Samuel already pointed out, there is now a
> problem with the RTC...
>
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
> >
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  arch/arm/boot/dts/allwinner/Makefile          |   1 +
> >  .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 284 ++++++++++++++++++
> >  2 files changed, 285 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> >
> > diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/allwinner/Makefile
> > index 589a1ce1120a..2be83a1edcbb 100644
> > --- a/arch/arm/boot/dts/allwinner/Makefile
> > +++ b/arch/arm/boot/dts/allwinner/Makefile
> > @@ -237,6 +237,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
> >       sun8i-t113s-mangopi-mq-r-t113.dtb \
> >       sun8i-t3-cqa3t-bv3.dtb \
> >       sun8i-v3-sl631-imx179.dtb \
> > +     sun8i-v3s-anbernic-rg-nano.dtb \
> >       sun8i-v3s-licheepi-zero.dtb \
> >       sun8i-v3s-licheepi-zero-dock.dtb \
> >       sun8i-v40-bananapi-m2-berry.dtb
> > diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts b/arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts
> > new file mode 100644
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
> > +     model = "Anbernic RG Nano";
> > +     compatible = "anbernic,rg-nano", "allwinner,sun8i-v3s";
> > +
> > +     aliases {
> > +             serial0 = &uart0;
> > +     };
> > +
> > +     backlight: backlight {
> > +             compatible = "pwm-backlight";
> > +             brightness-levels = <0 1 2 3 8 14 21 32 46 60 80 100>;
> > +             default-brightness-level = <11>;
> > +             power-supply = <&reg_vcc5v0>;
> > +             pwms = <&pwm 0 40000 1>;
> > +     };
> > +
> > +     chosen {
> > +             stdout-path = "serial0:115200n8";
> > +     };
> > +
> > +     gpio_keys: gpio-keys {
> > +             compatible = "gpio-keys";
> > +
> > +             button-a {
> > +                     gpios = <&gpio_expander 12 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-A";
> > +                     linux,code = <BTN_EAST>;
> > +             };
> > +
> > +             button-b {
> > +                     gpios = <&gpio_expander 14 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-B";
> > +                     linux,code = <BTN_SOUTH>;
> > +             };
> > +
> > +             button-down {
> > +                     gpios = <&gpio_expander 1 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "DPAD-DOWN";
> > +                     linux,code = <BTN_DPAD_DOWN>;
> > +             };
> > +
> > +             button-left {
> > +                     gpios = <&gpio_expander 4 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "DPAD-LEFT";
> > +                     linux,code = <BTN_DPAD_LEFT>;
> > +             };
> > +
> > +             button-right {
> > +                     gpios = <&gpio_expander 0 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "DPAD-RIGHT";
> > +                     linux,code = <BTN_DPAD_RIGHT>;
> > +             };
> > +
> > +             button-se {
> > +                     gpios = <&gpio_expander 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-SELECT";
> > +                     linux,code = <BTN_SELECT>;
> > +             };
> > +
> > +             button-st {
> > +                     gpios = <&gpio_expander 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-START";
> > +                     linux,code = <BTN_START>;
> > +             };
> > +
> > +             button-tl {
> > +                     gpios = <&gpio_expander 2 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-L";
> > +                     linux,code = <BTN_TL>;
> > +             };
> > +
> > +             button-tr {
> > +                     gpios = <&gpio_expander 15 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-R";
> > +                     linux,code = <BTN_TR>;
> > +             };
> > +
> > +             button-up {
> > +                     gpios = <&gpio_expander 3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "DPAD-UP";
> > +                     linux,code = <BTN_DPAD_UP>;
> > +             };
> > +
> > +             button-x {
> > +                     gpios = <&gpio_expander 11 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-X";
> > +                     linux,code = <BTN_NORTH>;
> > +             };
> > +
> > +             button-y {
> > +                     gpios = <&gpio_expander 13 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> > +                     label = "BTN-Y";
> > +                     linux,code = <BTN_WEST>;
> > +             };
> > +     };
> > +};
> > +
> > +&ccu {
> > +     clocks = <&osc24M>, <&osc32k>;
>
> Samuel already pointed that out: please don't change that.
>
> > +};
> > +
> > +&codec {
> > +     allwinner,audio-routing = "Speaker", "HP",
> > +                               "MIC1", "Mic",
> > +                               "Mic", "HBIAS";
> > +     allwinner,pa-gpios = <&pio 5 6 (GPIO_ACTIVE_HIGH | GPIO_PULL_UP)>; /* PF6 */
> > +     status = "okay";
> > +};
> > +
> > +&ehci {
> > +     status = "okay";
> > +};
> > +
> > +&i2c0 {
> > +     status = "okay";
> > +
> > +     gpio_expander: gpio@20 {
> > +             compatible = "nxp,pcal6416";
> > +             reg = <0x20>;
> > +             gpio-controller;
> > +             #gpio-cells = <2>;
> > +             #interrupt-cells = <2>;
> > +             interrupt-controller;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <1 3 IRQ_TYPE_EDGE_BOTH>; /* PB3/EINT3 */
> > +             vcc-supply = <&reg_vcc3v3>;
> > +     };
> > +
> > +     axp209: pmic@34 {
> > +             reg = <0x34>;
> > +             interrupt-parent = <&pio>;
> > +             interrupts = <1 5 IRQ_TYPE_EDGE_FALLING>; /* PB5/EINT5 */
> > +     };
> > +
> > +     pcf8563: rtc@51 {
> > +             compatible = "nxp,pcf8563";
> > +             reg = <0x51>;
> > +     };
> > +};
> > +
> > +#include "axp209.dtsi"
> > +
> > +&battery_power_supply {
> > +     status = "okay";
> > +};
> > +
> > +&mmc0 {
> > +     broken-cd;
> > +     bus-width = <4>;
> > +     disable-wp;
> > +     vmmc-supply = <&reg_vcc3v3>;
> > +     vqmmc-supply = <&reg_vcc3v3>;
> > +     status = "okay";
> > +};
> > +
> > +&ohci {
> > +     status = "okay";
> > +};
> > +
> > +&pio {
> > +     clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
> > +     vcc-pb-supply = <&reg_vcc3v3>;
> > +     vcc-pc-supply = <&reg_vcc3v3>;
> > +     vcc-pf-supply = <&reg_vcc3v3>;
> > +     vcc-pg-supply = <&reg_vcc3v3>;
> > +
> > +     spi0_no_miso_pins: spi0-no-miso-pins {
> > +             pins = "PC1", "PC2", "PC3";
> > +             function = "spi0";
> > +     };
> > +};
> > +
> > +&pwm {
> > +     pinctrl-0 = <&pwm0_pin>;
> > +     pinctrl-names = "default";
> > +     status = "okay";
> > +};
> > +
> > +/* DCDC2 wired into vdd-cpu, vdd-sys, and vdd-ephy. */
> > +&reg_dcdc2 {
> > +     regulator-always-on;
> > +     regulator-max-microvolt = <1250000>;
> > +     regulator-min-microvolt = <1250000>;
> > +     regulator-name = "vdd-cpu";
> > +};
> > +
> > +/* DCDC3 wired into every 3.3v input that isn't the RTC. */
> > +&reg_dcdc3 {
> > +     regulator-always-on;
> > +     regulator-max-microvolt = <3300000>;
> > +     regulator-min-microvolt = <3300000>;
> > +     regulator-name = "vcc-io";
> > +};
> > +
> > +/*
> > + * LDO1 wired into RTC, voltage is hard-wired at 3.3v and cannot be
> > + * software modified. Note that setting voltage here to 3.3v for accuracy
> > + * sake causes an issue with the driver that causes it to fail to probe
> > + * because of a voltage constraint in the driver.
> > + */
> > +&reg_ldo1 {
> > +     regulator-always-on;
> > +     regulator-name = "vcc-rtc";
> > +};
> > +
> > +/* LDO2 wired into VCC-PLL and audio codec. */
> > +&reg_ldo2 {
> > +     regulator-always-on;
> > +     regulator-max-microvolt = <3000000>;
> > +     regulator-min-microvolt = <3000000>;
> > +     regulator-name = "vcc-pll";
> > +};
> > +
> > +/* LDO3, LDO4, and LDO5 unused. */
> > +&reg_ldo3 {
> > +     status = "disabled";
> > +};
> > +
> > +&reg_ldo4 {
> > +     status = "disabled";
> > +};
> > +
> > +/* External RTC used instead, internal RTC runs fast. */
> > +&rtc {
> > +     status = "disabled";
>
> So as Samuel mentioned, I don't think you should disable the RTC, even
> if you have another RTC which provides more accurate time reading.
> On most Allwinner chips the RTC provides more than just the actual
> timekeeping functionality, as it also provides various derived clocks.
>
> So when you say the "internal RTC runs fast", that sounds like the
> board does not actually connect an external 32K crystal to the
> X32KIN/X32KOUT pins?
> So what happens if you remove the clocks property from the RTC node?
> If I read the code correctly, that should make the driver aware of the
> lack of a crystal, which might improve things?
> The manual seems to somewhat suggest that an external oscillator is
> mandatory - and we modelled the sun8i-v3s.dtsi base after that. Though
> I believe the RTC supports using the internal RC oscillator, and
> omitting the "clocks" property should make the driver switch the RTC
> over.
>
> This is at least my naive and quick interpretation of the code. I am
> not an Allwinner RTC expert though, so happy to hear Samuel's opinion.
>
> Regarding multiple RTCs: I didn't find anything which assigns a
> priority level to multiple RTCs in the system. What you can do on the
> userland side is to have a udev rule that links the PCF device to
> /dev/rtc, so that most tools would use that as a time source.

You can add DT aliases to override the numbering, thus making an external
one rtc0 and the internal one rtc1. See
arch/arm/boot/dts/allwinner/sun6i-a31-hummingbird.dts for such an example.

ChenYu

> Cheers,
> Andre
>
> > +};
> > +
> > +&spi0 {
> > +     pinctrl-0 = <&spi0_no_miso_pins>;
> > +     pinctrl-names = "default";
> > +     status = "okay";
> > +
> > +     display@0 {
> > +             compatible = "saef,sftc154b", "panel-mipi-dbi-spi";
> > +             reg = <0>;
> > +             backlight = <&backlight>;
> > +             dc-gpios = <&pio 2 0 GPIO_ACTIVE_HIGH>; /* PC0 */
> > +             reset-gpios = <&pio 1 2 GPIO_ACTIVE_HIGH>; /* PB2 */
> > +             spi-max-frequency = <100000000>;
> > +
> > +             height-mm = <39>;
> > +             width-mm = <39>;
> > +
> > +             /* Set hb-porch to compensate for non-visible area */
> > +             panel-timing {
> > +                     hactive = <240>;
> > +                     vactive = <240>;
> > +                     hback-porch = <80>;
> > +                     vback-porch = <0>;
> > +                     clock-frequency = <0>;
> > +                     hfront-porch = <0>;
> > +                     hsync-len = <0>;
> > +                     vfront-porch = <0>;
> > +                     vsync-len = <0>;
> > +             };
> > +     };
> > +};
> > +
> > +&uart0 {
> > +     pinctrl-0 = <&uart0_pb_pins>;
> > +     pinctrl-names = "default";
> > +     status = "okay";
> > +};
> > +
> > +&usb_otg {
> > +     dr_mode = "otg";
> > +     status = "okay";
> > +};
> > +
> > +&usb_power_supply {
> > +     status = "okay";
> > +};
> > +
> > +&usbphy {
> > +     usb0_id_det-gpios = <&pio 6 5 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PG5 */
> > +     status = "okay";
> > +};
>
