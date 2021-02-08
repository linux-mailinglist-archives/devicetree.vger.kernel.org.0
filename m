Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84760312979
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 04:40:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbhBHDkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 22:40:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229581AbhBHDkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 22:40:04 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF72AC06174A
        for <devicetree@vger.kernel.org>; Sun,  7 Feb 2021 19:39:23 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id o24so4361420wmh.5
        for <devicetree@vger.kernel.org>; Sun, 07 Feb 2021 19:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RpTCh4zPWil1E9eVPUn25eGZ20sG4ggktcUM75YaYS0=;
        b=EOZ66Icn4zv6aGJ6bjM2dcTA+fAHAuJ8NL5JOSE/G9G9N2caRgLPhcj/4XKUY67it/
         uCfvhYVw7rnrjevKEYo0Ceg3mvXQF+lYyY+AG2jiE3ShKQltn9DDQrurE2ac+zn+ZVAr
         lY7NFlZ2rXJhP+jnX4x1MB0CVMREMknX45JhyBRzr+vE07TsDM6lmwcyMpSXrp9rsOOr
         8M3uukK6IinVkjVa59e/KC7APPyjxqm2FGH9caiTemFJpsstPPcQDiH8ueqtYuLijKv+
         6xGKnjz4JledxoBFECtxUb0qS78MCsXiKVKm1rbRNa0tXosqI5G3zB6TMysVzzTyZpTX
         1qUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RpTCh4zPWil1E9eVPUn25eGZ20sG4ggktcUM75YaYS0=;
        b=asXNS74ZbW7D0Tmh8pVoF8rTiUIHHbXgqPt/iPNNU4leIX+AfXAO75I+NT5EL4N4F8
         Rc9C300Wr8PjTLlUfT4esHwYHznFg8C+pWsHN7bRhxeT6ATnZ/djDvASa4+lPY/jnldS
         3jx5G/mLnqGkc3Nj5Rx80/GS48dc0Elqwg20wIPaiVLRaI5l8o1kwNUZcOsT6w6v1zAG
         Yf+XcY9jb8N32PTnyLSkX1wP6Eoe1U29rrIcM4hDlQRxxwDuAFKwyIs6vm2zcKcW2gD7
         +3kHv64U4RXe04TpCpzUA7KcC9XNcAFhMP4QLsHU3Hwg5+q6PVaRud8+EoDOTwl9qddm
         TDCw==
X-Gm-Message-State: AOAM533vSv30ezsL6jye5sC5aQsSrbzYerxGueEEftoCiw3AWDCQwZ7X
        fqS/KBBPl0uBkW1abQPmwaf0ZhnmDWOtdiVlBS6vTQZcuEM=
X-Google-Smtp-Source: ABdhPJxYqRLpBvi+uOOWBbn7WDbODLgRGu1aQCWaU/aJiEUADCfQnuF9RWN0316FhmWZmMbWL6PaiQGSgU9v0NxRB1c=
X-Received: by 2002:a05:600c:3545:: with SMTP id i5mr13045345wmq.134.1612755562558;
 Sun, 07 Feb 2021 19:39:22 -0800 (PST)
MIME-Version: 1.0
References: <20210207231256.115130-1-damien.lemoal@wdc.com> <20210207231256.115130-12-damien.lemoal@wdc.com>
In-Reply-To: <20210207231256.115130-12-damien.lemoal@wdc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 8 Feb 2021 09:09:10 +0530
Message-ID: <CAAhSdy0-qLiFQ2XSDxFeDCicd1RH1V6RX=HhRw1ROEc5nG_jcQ@mail.gmail.com>
Subject: Re: [PATCH v17 11/16] riscv: Add SiPeed MAIX DOCK board device tree
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Atish Patra <atish.patra@wdc.com>, devicetree@vger.kernel.org,
        Anup Patel <anup.patel@wdc.com>, Rob Herring <robh@kernel.org>,
        Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 8, 2021 at 4:43 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Add the device tree sipeed_maix_dock.dts for the SiPeed MAIX DOCK m1
> and m1w boards. This device tree enables LEDs, gpio, i2c and spi/mmc
> SD card devices.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  .../boot/dts/canaan/sipeed_maix_dock.dts      | 236 ++++++++++++++++++
>  1 file changed, 236 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
>
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> new file mode 100644
> index 000000000000..fae0149a8740
> --- /dev/null
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> @@ -0,0 +1,236 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +/dts-v1/;
> +
> +#include "k210.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +       model = "SiPeed MAIX Dock";
> +       compatible = "sipeed,maix-dock-m1", "sipeed,maix-dock-m1w",
> +                    "canaan,kendryte-k210";
> +
> +       chosen {
> +               bootargs = "earlycon console=ttySIF0";
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       gpio-leds {
> +               compatible = "gpio-leds";
> +
> +               /*
> +                * Note: the board wiring drawing documents green on
> +                * gpio #4, red on gpio #5 and blue on gpio #6. However,
> +                * the board is actually wired differently as defined here.
> +                */
> +               led0 {
> +                       color = <LED_COLOR_ID_BLUE>;
> +                       label = "blue";
> +                       gpios = <&gpio1_0 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               led1 {
> +                       color = <LED_COLOR_ID_GREEN>;
> +                       label = "green";
> +                       gpios = <&gpio1_0 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               led2 {
> +                       color = <LED_COLOR_ID_RED>;
> +                       label = "red";
> +                       gpios = <&gpio1_0 6 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       gpio-keys {
> +               compatible = "gpio-keys";
> +
> +               boot {
> +                       label = "BOOT";
> +                       linux,code = <BTN_0>;
> +                       gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       sound {
> +               compatible = "simple-audio-card";
> +               simple-audio-card,format = "i2s";
> +               status = "disabled";
> +
> +               simple-audio-card,cpu {
> +                       sound-dai = <&i2s0 0>;
> +               };
> +
> +               simple-audio-card,codec {
> +                       sound-dai = <&mic>;
> +               };
> +       };
> +
> +       mic: mic {
> +               #sound-dai-cells = <0>;
> +               compatible = "memsensing,msm261s4030h0";
> +               status = "disabled";
> +       };
> +};
> +
> +&fpioa {
> +       pinctrl-0 = <&jtag_pinctrl>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +
> +       jtag_pinctrl: jtag-pinmux {
> +               pinmux = <K210_FPIOA(0, K210_PCF_JTAG_TCLK)>,
> +                        <K210_FPIOA(1, K210_PCF_JTAG_TDI)>,
> +                        <K210_FPIOA(2, K210_PCF_JTAG_TMS)>,
> +                        <K210_FPIOA(3, K210_PCF_JTAG_TDO)>;
> +       };
> +
> +       uarths_pinctrl: uarths-pinmux {
> +               pinmux = <K210_FPIOA(4, K210_PCF_UARTHS_RX)>,
> +                        <K210_FPIOA(5, K210_PCF_UARTHS_TX)>;
> +       };
> +
> +       gpio_pinctrl: gpio-pinmux {
> +               pinmux = <K210_FPIOA(8, K210_PCF_GPIO0)>,
> +                        <K210_FPIOA(11, K210_PCF_GPIO3)>,
> +                        <K210_FPIOA(12, K210_PCF_GPIO4)>,
> +                        <K210_FPIOA(13, K210_PCF_GPIO5)>,
> +                        <K210_FPIOA(14, K210_PCF_GPIO6)>,
> +                        <K210_FPIOA(15, K210_PCF_GPIO7)>;
> +       };
> +
> +       gpiohs_pinctrl: gpiohs-pinmux {
> +               pinmux = <K210_FPIOA(16, K210_PCF_GPIOHS0)>,
> +                        <K210_FPIOA(17, K210_PCF_GPIOHS1)>,
> +                        <K210_FPIOA(21, K210_PCF_GPIOHS5)>,
> +                        <K210_FPIOA(22, K210_PCF_GPIOHS6)>,
> +                        <K210_FPIOA(23, K210_PCF_GPIOHS7)>,
> +                        <K210_FPIOA(24, K210_PCF_GPIOHS8)>,
> +                        <K210_FPIOA(25, K210_PCF_GPIOHS9)>,
> +                        <K210_FPIOA(32, K210_PCF_GPIOHS16)>,
> +                        <K210_FPIOA(33, K210_PCF_GPIOHS17)>,
> +                        <K210_FPIOA(34, K210_PCF_GPIOHS18)>,
> +                        <K210_FPIOA(35, K210_PCF_GPIOHS19)>;
> +       };
> +
> +       i2s0_pinctrl: i2s0-pinmux {
> +               pinmux = <K210_FPIOA(18, K210_PCF_I2S0_SCLK)>,
> +                        <K210_FPIOA(19, K210_PCF_I2S0_WS)>,
> +                        <K210_FPIOA(20, K210_PCF_I2S0_IN_D0)>;
> +       };
> +
> +       dvp_pinctrl: dvp-pinmux {
> +               pinmux = <K210_FPIOA(40, K210_PCF_SCCB_SDA)>,
> +                        <K210_FPIOA(41, K210_PCF_SCCB_SCLK)>,
> +                        <K210_FPIOA(42, K210_PCF_DVP_RST)>,
> +                        <K210_FPIOA(43, K210_PCF_DVP_VSYNC)>,
> +                        <K210_FPIOA(44, K210_PCF_DVP_PWDN)>,
> +                        <K210_FPIOA(45, K210_PCF_DVP_HSYNC)>,
> +                        <K210_FPIOA(46, K210_PCF_DVP_XCLK)>,
> +                        <K210_FPIOA(47, K210_PCF_DVP_PCLK)>;
> +       };
> +
> +       spi0_pinctrl: spi0-pinmux {
> +               pinmux = <K210_FPIOA(36, K210_PCF_GPIOHS20)>,  /* cs */
> +                        <K210_FPIOA(37, K210_PCF_GPIOHS21)>,  /* rst */
> +                        <K210_FPIOA(38, K210_PCF_GPIOHS22)>,  /* dc */
> +                        <K210_FPIOA(39, K210_PCF_SPI0_SCLK)>; /* wr */
> +       };
> +
> +       spi1_pinctrl: spi1-pinmux {
> +               pinmux = <K210_FPIOA(26, K210_PCF_SPI1_D1)>,
> +                        <K210_FPIOA(27, K210_PCF_SPI1_SCLK)>,
> +                        <K210_FPIOA(28, K210_PCF_SPI1_D0)>,
> +                        <K210_FPIOA(29, K210_PCF_GPIOHS13)>; /* cs */
> +       };
> +
> +       i2c1_pinctrl: i2c1-pinmux {
> +               pinmux = <K210_FPIOA(9, K210_PCF_I2C1_SCLK)>,
> +                        <K210_FPIOA(10, K210_PCF_I2C1_SDA)>;
> +       };
> +};
> +
> +&uarths0 {
> +       pinctrl-0 = <&uarths_pinctrl>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +};
> +
> +&gpio0 {
> +       pinctrl-0 = <&gpiohs_pinctrl>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +};
> +
> +&gpio1 {
> +       pinctrl-0 = <&gpio_pinctrl>;
> +       pinctrl-names = "default";
> +       status = "okay";
> +};
> +
> +&i2s0 {
> +       #sound-dai-cells = <1>;
> +       pinctrl-0 = <&i2s0_pinctrl>;
> +       pinctrl-names = "default";
> +};
> +
> +&i2c1 {
> +       pinctrl-0 = <&i2c1_pinctrl>;
> +       pinctrl-names = "default";
> +       clock-frequency = <400000>;
> +       status = "okay";
> +};
> +
> +&dvp0 {
> +       pinctrl-0 = <&dvp_pinctrl>;
> +       pinctrl-names = "default";
> +};
> +
> +&spi0 {
> +       pinctrl-0 = <&spi0_pinctrl>;
> +       pinctrl-names = "default";
> +       num-cs = <1>;
> +       cs-gpios = <&gpio0 20 GPIO_ACTIVE_HIGH>;
> +
> +       panel@0 {
> +               compatible = "sitronix,st7789v";
> +               reg = <0>;
> +               reset-gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
> +               dc-gpios = <&gpio0 22 0>;
> +               spi-max-frequency = <15000000>;
> +               status = "disabled";
> +       };
> +};
> +
> +&spi1 {
> +       pinctrl-0 = <&spi1_pinctrl>;
> +       pinctrl-names = "default";
> +       num-cs = <1>;
> +       cs-gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
> +       status = "okay";
> +
> +       slot@0 {
> +               compatible = "mmc-spi-slot";
> +               reg = <0>;
> +               voltage-ranges = <3300 3300>;
> +               spi-max-frequency = <25000000>;
> +               broken-cd;
> +       };
> +};
> +
> +&spi3 {
> +       spi-flash@0 {
> +               compatible = "jedec,spi-nor";
> +               reg = <0>;
> +               spi-max-frequency = <50000000>;
> +               m25p,fast-read;
> +               broken-flash-reset;
> +       };
> +};
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
