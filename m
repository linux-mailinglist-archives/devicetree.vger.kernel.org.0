Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0150831297A
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 04:40:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbhBHDkf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 22:40:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbhBHDke (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 22:40:34 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89446C061756
        for <devicetree@vger.kernel.org>; Sun,  7 Feb 2021 19:40:18 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id c12so15477422wrc.7
        for <devicetree@vger.kernel.org>; Sun, 07 Feb 2021 19:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N6ZyHUTmCEmT+XCoKg7SofUeA5MMG7jkHar2R6egTWg=;
        b=RFF19kUD0mlCtbUfFfu8kcu5YAJD9KqGvIFn3BJRqamzi/O6iv25px8jENxNRS7jas
         LCKMmpSmcGNAUiurBwcri/xuFHwoE+pH0pbwd7CKyk7nEq0GfFLSgKsH1A+VaGFH0ouT
         2RWE+ur/tT3BOJW932NuRmBDNvHjF510am3UgksS/Vl1wY96AzBqvSNT+k2jtSy7IKAh
         crMifX9NGA/dWL4cFgrgHdsSZDmy6E7HOZumEzZQr7+yu21/CXdPJUsNwsBdJgXaT9ck
         gjWk+De+JWid4fxpBOBtEO2wtdDIJvRvnYiH7bqv6rn+kgCaBVdXykvNScbnOJuVEUCw
         4BDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N6ZyHUTmCEmT+XCoKg7SofUeA5MMG7jkHar2R6egTWg=;
        b=t3jgiLcy1OGvMFIQYrlUTV/VqPQsfB1pQr8rQIjqmmMVO6T2Bu9/pbCfaq2ALTmwQJ
         eSv+th+qIROqgdVvbQnKt8LGLZ2Mc2zET/MtVKR7vHp+1UQy/NSgLi7Rne5XTyDsgbrf
         pGwT23S2rOvl/P9ys8bxan65SZAStBmzP+laDyL2i1FWw/HqwpZpBz+WnkK5LP8joSwm
         rfrsr+RCxOC2vycfvKrY1nFYLa4BpJrsP+ELXkbAxokRYm605PT15B2gx0BKYTQp+EvK
         ezsSxr8sznSRHq3a5xmkx4VFsfFAvhIXIKC8WzxIZ+J1JvWQT8rKnfjWFV4AMwmMBAcV
         TuyQ==
X-Gm-Message-State: AOAM533AXw8m9ADWBS49yvkrY+AF8KHQ3Bs6qZGOM1inUdBh/wk4LP+S
        oUX7FaZ+rByjwfNgo/RbbiMAc6LRFmocaG93atST1w==
X-Google-Smtp-Source: ABdhPJw76T+V82EquJv9MrJvkZCs9YCs/jyTy5SWiIDXZcqpEbe3lU15nbF0G5tVjbitqcmnZZC3MnPmPeHU4FErtU8=
X-Received: by 2002:a5d:6541:: with SMTP id z1mr17249649wrv.128.1612755617227;
 Sun, 07 Feb 2021 19:40:17 -0800 (PST)
MIME-Version: 1.0
References: <20210207231256.115130-1-damien.lemoal@wdc.com> <20210207231256.115130-13-damien.lemoal@wdc.com>
In-Reply-To: <20210207231256.115130-13-damien.lemoal@wdc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 8 Feb 2021 09:10:06 +0530
Message-ID: <CAAhSdy0=Lxm8WWkEQBtW7WdJ-fpXyvOoaoqoeGux7wnkNuRhyA@mail.gmail.com>
Subject: Re: [PATCH v17 12/16] riscv: Add SiPeed MAIX GO board device tree
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
> Add the device tree sipeed_maix_go.dts for the SiPeed MAIX GO board.
> This device tree enables buttons, LEDs, gpio, i2c and spi/mmc SD card
> devices.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/boot/dts/canaan/sipeed_maix_go.dts | 244 ++++++++++++++++++
>  1 file changed, 244 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
>
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> new file mode 100644
> index 000000000000..373fbaa3ab94
> --- /dev/null
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> @@ -0,0 +1,244 @@
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
> +       model = "SiPeed MAIX GO";
> +       compatible = "sipeed,maix-go", "canaan,kendryte-k210";
> +
> +       chosen {
> +               bootargs = "earlycon console=ttySIF0";
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       gpio-leds {
> +               compatible = "gpio-leds";
> +
> +               led0 {
> +                       color = <LED_COLOR_ID_GREEN>;
> +                       label = "green";
> +                       gpios = <&gpio1_0 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               led1 {
> +                       color = <LED_COLOR_ID_RED>;
> +                       label = "red";
> +                       gpios = <&gpio1_0 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               led2 {
> +                       color = <LED_COLOR_ID_BLUE>;
> +                       label = "blue";
> +                       gpios = <&gpio1_0 6 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       gpio-keys {
> +               compatible = "gpio-keys";
> +
> +               up {
> +                       label = "UP";
> +                       linux,code = <BTN_1>;
> +                       gpios = <&gpio1_0 7 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               press {
> +                       label = "PRESS";
> +                       linux,code = <BTN_0>;
> +                       gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               down {
> +                       label = "DOWN";
> +                       linux,code = <BTN_2>;
> +                       gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
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
> +                        <K210_FPIOA(9, K210_PCF_GPIO1)>,
> +                        <K210_FPIOA(10, K210_PCF_GPIO2)>,
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
> +               pinmux = <K210_FPIOA(30, K210_PCF_I2C1_SCLK)>,
> +                        <K210_FPIOA(31, K210_PCF_I2C1_SDA)>;
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
> +               dc-gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
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
