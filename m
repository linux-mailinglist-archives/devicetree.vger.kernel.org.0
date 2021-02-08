Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3AE731297C
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 04:41:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbhBHDlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 22:41:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbhBHDlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 22:41:31 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A4F8C061756
        for <devicetree@vger.kernel.org>; Sun,  7 Feb 2021 19:40:51 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id y134so3730614wmd.3
        for <devicetree@vger.kernel.org>; Sun, 07 Feb 2021 19:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/gdsK4caOIpGMr0l4XNyqn2pLROX1/cb+NwSd9lkTQg=;
        b=sbfi7TrID2NQ/aDDfWK5ss7UwjrS1SJqZVXZB3rraLqnmSw/5Ro4CsY/uJA6WyvpzJ
         Fa3XvDkkzrnA8x1+oWIKCNkaOPNYo8SCMcgP7dS75AVGmHzfGaH9lW6eOhXz8jPxk9fM
         9JSkom3BAyWvEZmkHWyVce8BFhXfYkYZtBtaCLNxsnSG2M9N5KUvgg89PVue44X3e9qz
         vp7jLLbq1rjKnmLqXGShotmT3/W6uGgLYVKgX1vBYl/1Ey1/7ODluRF4ZeDjcOnF+D4v
         2Hw05hZpQ97ozK+sKUHYTzVlNmG000jJ2zZnsiZ9Ml19Puvn2kWvQi1Z3H0+7P7Royvr
         6bzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/gdsK4caOIpGMr0l4XNyqn2pLROX1/cb+NwSd9lkTQg=;
        b=sXfzD+DjrYeC44e30Xio7O2BHWEMLDTuEu6Nb7BKyi/WHHwPvtopcEZxuupBU1PV4j
         xPH3IalFxJNmcSFlNuUhrRRyazJT+s8T+/sikk/V3u5m5Leimnz2/fJWq6NCS3Lu85aG
         P7KP5mn6Up80KHA9qNJs3Y2mD7VZok6fBYjQgEDqB+EA8b/uy3WaffTtghGYynSZZx+4
         l0OJCuHI2vC2BudDCRiZ5xGbXJHHSR41jHZx0FsCEaXq1bFFgRCVmCUdG+Ll4uzQnYeX
         UZY2SsbrKPm9rwhj8lRbUHDIBfWBdhVqmR47C0NHVNOopANyJguObWDxo9rufhfyMaKE
         AYJA==
X-Gm-Message-State: AOAM531trTt/VwwRUFnJd7tH0MLwTjht2TzFVKWDPFc5MnW71TcfVAd7
        6jGZXvR0znvAKt0a42SQxedJvu7P/iTb9UP6vqPLiA==
X-Google-Smtp-Source: ABdhPJzK+XtnqEe/ufd3x3qnz9TDgC8GTTKTHtosm1Gjs+jE8++Hal+BZZG+NJay2ML3rs6QyDmqBa09zAtmi8hdYr4=
X-Received: by 2002:a1c:f60b:: with SMTP id w11mr7104209wmc.3.1612755649933;
 Sun, 07 Feb 2021 19:40:49 -0800 (PST)
MIME-Version: 1.0
References: <20210207231256.115130-1-damien.lemoal@wdc.com> <20210207231256.115130-14-damien.lemoal@wdc.com>
In-Reply-To: <20210207231256.115130-14-damien.lemoal@wdc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 8 Feb 2021 09:10:38 +0530
Message-ID: <CAAhSdy27t=f9zUMGDs9DdbxEi=COOnLq7Mqd402yZyg6Z1JvcA@mail.gmail.com>
Subject: Re: [PATCH v17 13/16] riscv: Add SiPeed MAIXDUINO board device tree
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
> Add the device tree sipeed_maixduino.dts for the SiPeed MAIXDUINO board.
> This device tree enables LEDs and spi/mmc SD card device. Additionally,
> gpios and i2c are also enabled and mapped to the board header pins as
> indicated on the board itself.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  .../boot/dts/canaan/sipeed_maixduino.dts      | 209 ++++++++++++++++++
>  1 file changed, 209 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
>
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> new file mode 100644
> index 000000000000..804edc45eeeb
> --- /dev/null
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> @@ -0,0 +1,209 @@
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
> +
> +/ {
> +       model = "SiPeed MAIXDUINO";
> +       compatible = "sipeed,maixduino", "canaan,kendryte-k210";
> +
> +       chosen {
> +               bootargs = "earlycon console=ttySIF0";
> +               stdout-path = "serial0:115200n8";
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
> +
> +       vcc_3v3: regulator-3v3 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "3v3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +       };
> +};
> +
> +&fpioa {
> +       status = "okay";
> +
> +       uarths_pinctrl: uarths-pinmux {
> +               pinmux = <K210_FPIOA(4, K210_PCF_UARTHS_RX)>, /* Header "0" */
> +                        <K210_FPIOA(5, K210_PCF_UARTHS_TX)>; /* Header "1" */
> +       };
> +
> +       gpio_pinctrl: gpio-pinmux {
> +               pinmux = <K210_FPIOA(8, K210_PCF_GPIO0)>,
> +                        <K210_FPIOA(9, K210_PCF_GPIO1)>;
> +       };
> +
> +       gpiohs_pinctrl: gpiohs-pinmux {
> +               pinmux = <K210_FPIOA(16, K210_PCF_GPIOHS0)>,  /* BOOT */
> +                        <K210_FPIOA(21, K210_PCF_GPIOHS2)>,  /* Header "2" */
> +                        <K210_FPIOA(22, K210_PCF_GPIOHS3)>,  /* Header "3" */
> +                        <K210_FPIOA(23, K210_PCF_GPIOHS4)>,  /* Header "4" */
> +                        <K210_FPIOA(24, K210_PCF_GPIOHS5)>,  /* Header "5" */
> +                        <K210_FPIOA(32, K210_PCF_GPIOHS6)>,  /* Header "6" */
> +                        <K210_FPIOA(15, K210_PCF_GPIOHS7)>,  /* Header "7" */
> +                        <K210_FPIOA(14, K210_PCF_GPIOHS8)>,  /* Header "8" */
> +                        <K210_FPIOA(13, K210_PCF_GPIOHS9)>,  /* Header "9" */
> +                        <K210_FPIOA(12, K210_PCF_GPIOHS10)>, /* Header "10" */
> +                        <K210_FPIOA(11, K210_PCF_GPIOHS11)>, /* Header "11" */
> +                        <K210_FPIOA(10, K210_PCF_GPIOHS12)>, /* Header "12" */
> +                        <K210_FPIOA(3,  K210_PCF_GPIOHS13)>; /* Header "13" */
> +       };
> +
> +       i2s0_pinctrl: i2s0-pinmux {
> +               pinmux = <K210_FPIOA(18, K210_PCF_I2S0_SCLK)>,
> +                        <K210_FPIOA(19, K210_PCF_I2S0_WS)>,
> +                        <K210_FPIOA(20, K210_PCF_I2S0_IN_D0)>;
> +       };
> +
> +       spi1_pinctrl: spi1-pinmux {
> +               pinmux = <K210_FPIOA(26, K210_PCF_SPI1_D1)>,
> +                        <K210_FPIOA(27, K210_PCF_SPI1_SCLK)>,
> +                        <K210_FPIOA(28, K210_PCF_SPI1_D0)>,
> +                        <K210_FPIOA(29, K210_PCF_GPIO2)>; /* cs */
> +       };
> +
> +       i2c1_pinctrl: i2c1-pinmux {
> +               pinmux = <K210_FPIOA(30, K210_PCF_I2C1_SCLK)>, /* Header "scl" */
> +                        <K210_FPIOA(31, K210_PCF_I2C1_SDA)>;  /* Header "sda" */
> +       };
> +
> +       i2s1_pinctrl: i2s1-pinmux {
> +               pinmux = <K210_FPIOA(33, K210_PCF_I2S1_WS)>,
> +                        <K210_FPIOA(34, K210_PCF_I2S1_IN_D0)>,
> +                        <K210_FPIOA(35, K210_PCF_I2S1_SCLK)>;
> +       };
> +
> +       spi0_pinctrl: spi0-pinmux {
> +               pinmux = <K210_FPIOA(36, K210_PCF_GPIOHS20)>,  /* cs */
> +                        <K210_FPIOA(37, K210_PCF_GPIOHS21)>,  /* rst */
> +                        <K210_FPIOA(38, K210_PCF_GPIOHS22)>,  /* dc */
> +                        <K210_FPIOA(39, K210_PCF_SPI0_SCLK)>; /* wr */
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
> +               power-supply = <&vcc_3v3>;
> +       };
> +};
> +
> +&spi1 {
> +       pinctrl-0 = <&spi1_pinctrl>;
> +       pinctrl-names = "default";
> +       num-cs = <1>;
> +       cs-gpios = <&gpio1_0 2 GPIO_ACTIVE_LOW>;
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
