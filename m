Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED50D598118
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 11:51:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243699AbiHRJty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 05:49:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239604AbiHRJtx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 05:49:53 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B767B07C9
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 02:49:51 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id v2so1442225lfi.6
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 02:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=IC28L0SEmQpUQw1BSp35+epaTRW/I87zO9lDt3XuhbQ=;
        b=OduUFD9HL6RNqtG0OIHBeyhBllKaGV8LmKNh/LpvVSc3Kx/grvxwIUNdLkuvyQfa+9
         qpz3xRgWvRgfECrRY9USz4kh60X/hTjUyGUwAZPm6y0bYpSMVuHAKyw5TQP7TeOggtDZ
         sdKw6xiXAmwCp1tMPejWHgdKSZEYj1xuaE6/CvRKSYEXkEFYmVuWQTvWPp/UFZTA9cBL
         8jsTQxrqhho742aEzV/wTucc/j+c1KK/eJeagmFFZdkO1eq9nXllepgjbgH/WNUMtfp4
         Rv2CCaHqy0S0f0NogFoUd4EJOJPheJKhBK6ZLEQDe+5hgHoe1DDOzTzTewbxc9gt0q42
         yhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=IC28L0SEmQpUQw1BSp35+epaTRW/I87zO9lDt3XuhbQ=;
        b=v96ac54e4zPJyglCcYLezXIw59u42PqWgmqVehKJLIGh/Qkni2Oimvv9/jEhR8EJg2
         3gMS/NshQ+Hhyl8RB67z1++MeFKRVDkhTnExlu5Ar0BWvE99VEJbmnoqA0cWnkpmHacw
         ulvG+j1+ORnsg10uAPxP3Yl9pW2z8KBWayd9g3kS9EB4pV9Ix8F8eEZ2nNG6MXrDv3me
         gRefoPV/j1rfGIA7oN6UNI4JJu+RQBkf7IACXt7jw65pEQ23Vft3z02FVixXO6Aevm9i
         eeXR9ub5HLzR5tHibqx01OYRTSvQP7MAIFt6fRfEkf4XAK4GOup/AuZl7wszpHw3o/X8
         QS7A==
X-Gm-Message-State: ACgBeo2UPpvWW6wqdeiVNduQjx7ofFyVNyKeBgW+mP9PuZcrWAVEzufg
        /lLo6HaFWufRit5PrgI6C5Ep0JqSSHIYXr44odw=
X-Google-Smtp-Source: AA6agR5shgg900nkcZVM36smhKIuo7VrcidOQazCnzLBaEEb2dxqt1GcFFPIbgSR34tRXAgbllD3pYtf3+EmDu74OCQ=
X-Received: by 2002:a05:6512:2389:b0:492:ba6a:ef43 with SMTP id
 c9-20020a056512238900b00492ba6aef43mr728220lfv.394.1660816189231; Thu, 18 Aug
 2022 02:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220817204954.28135-1-macroalpha82@gmail.com> <20220817204954.28135-4-macroalpha82@gmail.com>
In-Reply-To: <20220817204954.28135-4-macroalpha82@gmail.com>
From:   Maya Matuszczyk <maccraft123mc@gmail.com>
Date:   Thu, 18 Aug 2022 11:49:12 +0200
Message-ID: <CAO_Mup+NS=qEumBKX0Kb=gf0-S21+MJVEbWxhOYrMyqULb23=A@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Anbernic RG353 and RG503
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for the patch,
but I see some things that could be improved.

=C5=9Br., 17 sie 2022 o 22:50 Chris Morgan <macroalpha82@gmail.com> napisa=
=C5=82(a):
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Anbernic RG353 and RG503 are both RK3566 based handheld gaming devices
> from Anbernic.
>
> Both devices have:
>  - 2 SDMMC slots
>  - A Realtek rtl8821cs WiFi/Bluetooth adapter
>  - A mini HDMI port
>  - A USB C host port and a USB C otg port (currently only working as
>    device).
IIRC if you force that dual role port to work as a host it will work fine.

>  - Multiple GPIO buttons and a single ADC button.
>  - Dual analog joysticks controlled via a GPIO mux.
>  - A headphone jack with amplified stereo speakers.
A PWM-controller vbibration motor too.

>
> The RG353 has:
>  - 2GB LPDDR4 RAM
>  - A 32GB eMMC
>  - A 3.5 inch 640x480 4-lane DSI panel of unknown origin with an i2c
>    controlled touchscreen.
I wasn't able to find the part number of the panel, nor the manufacturer.
It might be a custom made part.
On the flex PCB there are markings:
"YLM-355604-B-A1", underneath it in smaller font is "2201",
and on the other side, much less visible, "WL-355604-A1".
I tried disassembling the panle itself, and there were
still no markings. :/

The touchscreen is a Hynitron CST340.
This device also has a SGM4865 audio amplifier,


>
> The RG503 has:
>  - 1GB LPDDR4 RAM
>  - A 5 inch 960x544 AMOLED 2-lane DSI/DBI panel manufactured by Samsung
>    with part number ams495qa04. Data for this panel is provided via the
>    DSI interface, however commands are sent via a 9-bit 3-wire SPI
>    interface. The MISO pin of SPI3 of the SOC is wired to the input of
>    the panel, so it must be bitbanged.
>
> This devicetree enables the following hardware:
>  - HDMI (plus audio)
>  - Analog audio, including speakers.
>  - All buttons
>  - All SDMMC/eMMC/SDIO controllers
>  - The ADC joysticks (note a pending patch is required to use them)
>
> The following hardware is not enabled:
>  - The display panels (drivers are being written and there are issues
>    with the upstream DSI and VOP2 subsystems).
>  - Battery (driver pending).
>  - WiFi/Bluetooth (the drivers are not mainline, however they can be
>    built and probed out-of-tree).
Maybe we could still include dose in dts file, as it's supposed to
describe the hardware?

>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-anbernic-rg353.dts    | 103 +++
>  .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
>  .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 807 ++++++++++++++++++
>  4 files changed, 1005 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dt=
s
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dt=
s
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dt=
si
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index ef79a672804a..228b4ec4b773 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -57,6 +57,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399pro-rock-pi-n10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-anbernic-rg353.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-anbernic-rg503.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-quartz64-a.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts
> new file mode 100644
> index 000000000000..8c6252b63774
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts
> @@ -0,0 +1,103 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566-anbernic-rgxx3.dtsi"
> +
> +/ {
> +       model =3D "RG353";
> +       compatible =3D "anbernic,rg353", "rockchip,rk3566";
> +
> +       aliases {
> +               mmc0 =3D &sdhci;
> +               mmc1 =3D &sdmmc0;
> +               mmc2 =3D &sdmmc1;
> +               mmc3 =3D &sdmmc2;
> +       };
> +
> +       backlight: backlight {
> +               compatible =3D "pwm-backlight";
> +               power-supply =3D <&vcc_sys>;
> +               pwms =3D <&pwm4 0 25000 0>;
> +       };
> +};
> +
> +&gpio_keys {
> +       button-5 {
Maybe it could be named in a way that would
be more in-line with what the button actually is, instead
of a random number?

> +               gpios =3D <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> +               label =3D "DPAD-LEFT";
> +               linux,code =3D <BTN_DPAD_RIGHT>;
> +       };
> +
> +       button-6 {
> +               gpios =3D <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> +               label =3D "DPAD-RIGHT";
> +               linux,code =3D <BTN_DPAD_LEFT>;
> +       };
> +
> +       button-11 {
> +               gpios =3D <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> +               label =3D "TR";
> +               linux,code =3D <BTN_TR2>;
> +       };
> +
> +       button-12 {
> +               gpios =3D <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> +               label =3D "TR2";
> +               linux,code =3D <BTN_TR>;
> +       };
> +
> +       button-16 {
> +               gpios =3D <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> +               label =3D "WEST";
> +               linux,code =3D <BTN_WEST>;
> +       };
> +
> +       button-17 {
> +               gpios =3D <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> +               label =3D "EAST";
> +               linux,code =3D <BTN_EAST>;
> +       };
> +};
> +
> +&i2c0 {
> +       /* This hardware is physically present but unused. */
> +       cw2015@62 {
> +               compatible =3D "cellwise,cw2015";
> +               reg =3D <0x62>;
> +               status =3D "disabled";
> +       };
> +};
> +
> +&i2c2 {
> +       pintctrl-names =3D "default";
> +       pinctrl-0 =3D <&i2c2m1_xfer>;
> +       status =3D "okay";
> +};
> +
> +&pinctrl {
> +       gpio-lcd {
> +               lcd_rst: lcd-rst {
> +                       rockchip,pins =3D
> +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +};
> +
> +&pwm4 {
> +       status =3D "okay";
> +};
> +
> +&sdhci {
> +       pinctrl-0 =3D <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>, <&emmc_data=
strobe>, <&emmc_rstnout>;
> +       pinctrl-names =3D "default";
> +       bus-width =3D <8>;
> +       mmc-hs200-1_8v;
> +       non-removable;
> +       vmmc-supply =3D <&vcc_3v3>;
> +       vqmmc-supply =3D <&vcc_1v8>;
> +       status =3D "okay";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> new file mode 100644
> index 000000000000..c5941d405d14
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> @@ -0,0 +1,93 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566-anbernic-rgxx3.dtsi"
> +
> +/ {
> +       model =3D "RG503";
> +       compatible =3D "anbernic,rg503", "rockchip,rk3566";
> +
> +       aliases {
> +               mmc0 =3D &sdmmc0;
> +               mmc1 =3D &sdmmc1;
> +               mmc2 =3D &sdmmc2;
> +       };
> +
> +       gpio_spi: spi {
> +               compatible =3D "spi-gpio";
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&spi_pins>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +
> +               sck-gpios =3D <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
> +               mosi-gpios =3D <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> +               cs-gpios =3D <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
> +               num-chipselects =3D <0>;
> +       };
> +};
> +
> +&gpio_keys {
> +       button-5 {
> +               gpios =3D <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> +               label =3D "DPAD-LEFT";
> +               linux,code =3D <BTN_DPAD_LEFT>;
> +       };
> +
> +       button-6 {
> +               gpios =3D <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> +               label =3D "DPAD-RIGHT";
> +               linux,code =3D <BTN_DPAD_RIGHT>;
> +       };
> +
> +       button-11 {
> +               gpios =3D <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> +               label =3D "TR";
> +               linux,code =3D <BTN_TR>;
> +       };
> +
> +       button-12 {
> +               gpios =3D <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> +               label =3D "TR2";
> +               linux,code =3D <BTN_TR2>;
> +       };
> +
> +       button-16 {
> +               gpios =3D <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> +               label =3D "EAST";
> +               linux,code =3D <BTN_EAST>;
> +       };
> +
> +       button-17 {
> +               gpios =3D <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> +               label =3D "WEST";
> +               linux,code =3D <BTN_WEST>;
> +       };
> +};
> +
> +&pinctrl {
> +       gpio-spi {
> +               spi_pins: spi-pins {
> +                       rockchip,pins =3D
> +                               <4 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>,
> +                               <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>,
> +                               <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       gpio-lcd {
> +               lcd_enable: lcd-enable {
> +                       rockchip,pins =3D
> +                               <4 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +
> +               lcd_reset: lcd-reset {
> +                       rockchip,pins =3D
> +                               <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> new file mode 100644
> index 000000000000..4b03a677f6dc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> @@ -0,0 +1,807 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +       chosen: chosen {
> +               stdout-path =3D "serial2:1500000n8";
> +       };
> +
> +       adc-joystick {
> +               compatible =3D "adc-joystick";
> +               io-channels =3D <&adc_mux 0>,
> +                             <&adc_mux 1>,
> +                             <&adc_mux 2>,
> +                             <&adc_mux 3>;
> +               pinctrl-0 =3D <&joy_mux_en>;
> +               pinctrl-names =3D "default";
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +
> +               axis@0 {
> +                       reg =3D <0>;
> +                       abs-flat =3D <32>;
> +                       abs-fuzz =3D <32>;
> +                       abs-range =3D <1023 15>;
> +                       linux,code =3D <ABS_X>;
> +               };
> +
> +               axis@1 {
> +                       reg =3D <1>;
> +                       abs-flat =3D <32>;
> +                       abs-fuzz =3D <32>;
> +                       abs-range =3D <15 1023>;
> +                       linux,code =3D <ABS_RX>;
> +               };
> +
> +               axis@2 {
> +                       reg =3D <2>;
> +                       abs-flat =3D <32>;
> +                       abs-fuzz =3D <32>;
> +                       abs-range =3D <15 1023>;
> +                       linux,code =3D <ABS_Y>;
> +               };
> +
> +               axis@3 {
> +                       reg =3D <3>;
> +                       abs-flat =3D <32>;
> +                       abs-fuzz =3D <32>;
> +                       abs-range =3D <1023 15>;
> +                       linux,code =3D <ABS_RY>;
> +               };
> +       };
> +
> +       adc_keys: adc-keys {
> +               compatible =3D "adc-keys";
> +               io-channels =3D <&saradc 0>;
> +               io-channel-names =3D "buttons";
> +               keyup-threshold-microvolt =3D <1800000>;
> +               poll-interval =3D <60>;
> +
> +               button-mode {
> +                       label =3D "MODE";
> +                       linux,code =3D <BTN_MODE>;
> +                       press-threshold-microvolt =3D <1750>;
> +               };
> +       };
> +
> +       adc_mux: adc-mux {
> +               compatible =3D "io-channel-mux";
> +               channels =3D "left_x", "right_x", "left_y", "right_y";
> +               io-channels =3D <&saradc 3>;
> +               io-channel-names =3D "parent";
> +               mux-controls =3D <&gpio_mux>;
> +               settle-time-us =3D <100>;
> +               #io-channel-cells =3D <1>;
> +       };
> +
> +       gpio_keys: gpio-keys {
> +               compatible =3D "gpio-keys";
> +               pinctrl-0 =3D <&btn_pins>;
> +               pinctrl-names =3D "default";
> +
> +               button-1 {
> +                       gpios =3D <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
> +                       label =3D "THUMBL";
> +                       linux,code =3D <BTN_THUMBL>;
> +               };
> +
> +               button-2 {
> +                       gpios =3D <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
> +                       label =3D "THUMBR";
> +                       linux,code =3D <BTN_THUMBR>;
> +               };
> +
> +               button-3 {
> +                       gpios =3D <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
> +                       label =3D "DPAD-UP";
> +                       linux,code =3D <BTN_DPAD_UP>;
> +               };
> +
> +               button-4 {
> +                       gpios =3D <&gpio3 RK_PA4 GPIO_ACTIVE_LOW>;
> +                       label =3D "DPAD-DOWN";
> +                       linux,code =3D <BTN_DPAD_DOWN>;
> +               };
> +
> +               button-7 {
> +                       gpios =3D <&gpio3 RK_PA7 GPIO_ACTIVE_LOW>;
> +                       label =3D "VOLUMEUP";
> +                       linux,code =3D <KEY_VOLUMEUP>;
> +               };
> +
> +               button-8 {
> +                       gpios =3D <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> +                       label =3D "VOLUMEDOWN";
> +                       linux,code =3D <KEY_VOLUMEDOWN>;
> +               };
> +
> +               button-9 {
> +                       gpios =3D <&gpio3 RK_PB1 GPIO_ACTIVE_LOW>;
> +                       label =3D "TL";
> +                       linux,code =3D <BTN_TL>;
> +               };
> +
> +               button-10 {
> +                       gpios =3D <&gpio3 RK_PB2 GPIO_ACTIVE_LOW>;
> +                       label =3D "TL2";
> +                       linux,code =3D <BTN_TL2>;
> +               };
> +
> +               button-13 {
> +                       gpios =3D <&gpio3 RK_PB5 GPIO_ACTIVE_LOW>;
> +                       label =3D "START";
> +                       linux,code =3D <BTN_START>;
> +               };
> +
> +               button-14 {
> +                       gpios =3D <&gpio3 RK_PB6 GPIO_ACTIVE_LOW>;
> +                       label =3D "SELECT";
> +                       linux,code =3D <BTN_SELECT>;
> +               };
> +
> +               button-15 {
> +                       gpios =3D <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
> +                       label =3D "NORTH";
> +                       linux,code =3D <BTN_NORTH>;
> +               };
> +
> +               button-18 {
> +                       gpios =3D <&gpio3 RK_PC3 GPIO_ACTIVE_LOW>;
> +                       label =3D "SOUTH";
> +                       linux,code =3D <BTN_SOUTH>;
> +               };
> +       };
> +
> +       gpio_mux: mux-controller {
> +               compatible =3D "gpio-mux";
> +               mux-gpios =3D <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>,
> +                           <&gpio0 RK_PB7 GPIO_ACTIVE_LOW>;
> +               #mux-control-cells =3D <0>;
> +       };
> +
> +       hdmi-con {
> +               compatible =3D "hdmi-connector";
> +               type =3D "c";
> +
> +               port {
> +                       hdmi_con_in: endpoint {
> +                               remote-endpoint =3D <&hdmi_out_con>;
> +                       };
> +               };
> +       };
> +
> +       leds: gpio-leds {
> +               compatible =3D "gpio-leds";
> +               pinctrl-0 =3D <&led_pins>;
> +               pinctrl-names =3D "default";
> +
> +               green_led: led-0 {
> +                       color =3D <LED_COLOR_ID_GREEN>;
> +                       default-state =3D "on";
> +                       function =3D LED_FUNCTION_POWER;
> +                       gpios =3D <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +               };
> +
> +               amber_led: led-1 {
> +                       color =3D <LED_COLOR_ID_AMBER>;
> +                       function =3D LED_FUNCTION_CHARGING;
> +                       gpios =3D <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
> +                       retain-state-suspended;
> +               };
> +
> +               red_led: led-2 {
> +                       color =3D <LED_COLOR_ID_RED>;
> +                       default-state =3D "off";
> +                       function =3D LED_FUNCTION_STATUS;
> +                       gpios =3D <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
> +               };
> +       };
> +
> +       rk817-sound {
> +               compatible =3D "simple-audio-card";
> +               simple-audio-card,name =3D "anbernic_rk817";
> +               simple-audio-card,aux-devs =3D <&spk_amp>;
> +               simple-audio-card,format =3D "i2s";
> +               simple-audio-card,hp-det-gpio =3D <&gpio4 RK_PC6 GPIO_ACT=
IVE_HIGH>;
> +               simple-audio-card,mclk-fs =3D <256>;
> +               simple-audio-card,widgets =3D
> +                       "Microphone", "Mic Jack",
> +                       "Headphone", "Headphones",
> +                       "Speaker", "Internal Speakers";
> +               simple-audio-card,routing =3D
> +                       "MICL", "Mic Jack",
> +                       "Headphones", "HPOL",
> +                       "Headphones", "HPOR",
> +                       "Internal Speakers", "Speaker Amp OUTL",
> +                       "Internal Speakers", "Speaker Amp OUTR",
> +                       "Speaker Amp INL", "HPOL",
> +                       "Speaker Amp INR", "HPOR";
> +               simple-audio-card,pin-switches =3D "Internal Speakers";
> +
> +               simple-audio-card,codec {
> +                       sound-dai =3D <&rk817>;
> +               };
> +
> +               simple-audio-card,cpu {
> +                       sound-dai =3D <&i2s1_8ch>;
> +               };
> +       };
> +
> +       sdio_pwrseq: sdio-pwrseq {
> +               compatible =3D "mmc-pwrseq-simple";
> +               clocks =3D <&rk817 1>;
> +               clock-names =3D "ext_clock";
> +               pinctrl-0 =3D <&wifi_enable_h>;
> +               pinctrl-names =3D "default";
> +               post-power-on-delay-ms =3D <200>;
> +               reset-gpios =3D <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
> +       };
> +
> +       spk_amp: audio-amplifier {
> +               compatible =3D "simple-audio-amplifier";
> +               enable-gpios =3D <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> +               pinctrl-0 =3D <&spk_amp_enable_h>;
> +               pinctrl-names =3D "default";
> +               sound-name-prefix =3D "Speaker Amp";
> +       };
> +
> +       vcc3v3_lcd0_n: vcc3v3-lcd0-n {
> +               compatible =3D "regulator-fixed";
> +               gpio =3D <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +               pinctrl-0 =3D <&vcc_lcd_h>;
> +               pinctrl-names =3D "default";
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               regulator-name =3D "vcc3v3_lcd0_n";
> +               vin-supply =3D <&vcc_3v3>;
> +               regulator-state-mem {
> +                       regulator-off-in-suspend;
> +               };
> +       };
> +
> +       vcc_sys: vcc_sys {
> +               compatible =3D "regulator-fixed";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <3800000>;
> +               regulator-max-microvolt =3D <3800000>;
> +               regulator-name =3D "vcc_sys";
> +       };
> +
> +       vcc_wifi: vcc-wifi {
> +               compatible =3D "regulator-fixed";
> +               enable-active-high;
> +               gpio =3D <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> +               pinctrl-0 =3D <&vcc_wifi_h>;
> +               pinctrl-names =3D "default";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               regulator-name =3D "vcc_wifi";
> +       };
> +
> +       vibrator: pwm-vibrator {
> +               compatible =3D "pwm-vibrator";
> +               pwm-names =3D "enable";
> +               pwms =3D <&pwm5 0 1000000000 0>;
> +       };
> +};
> +
> +&combphy1 {
> +       status =3D "okay";
> +};
> +
> +&cpu0 {
> +       cpu-supply =3D <&vdd_cpu>;
> +};
> +
> +&cpu1 {
> +       cpu-supply =3D <&vdd_cpu>;
> +};
> +
> +&cpu2 {
> +       cpu-supply =3D <&vdd_cpu>;
> +};
> +
> +&cpu3 {
> +       cpu-supply =3D <&vdd_cpu>;
> +};
> +
> +&gpu {
> +       mali-supply =3D <&vdd_gpu>;
> +       status =3D "okay";
> +};
> +
> +&hdmi {
> +       status =3D "okay";
> +};
> +
> +&hdmi_in {
> +       hdmi_in_vp0: endpoint {
> +               remote-endpoint =3D <&vp0_out_hdmi>;
> +       };
> +};
> +
> +&hdmi_out {
> +       hdmi_out_con: endpoint {
> +               remote-endpoint =3D <&hdmi_con_in>;
> +       };
> +};
> +
> +&hdmi_sound {
> +       status =3D "okay";
> +};
> +
> +&i2c0 {
> +       status =3D "okay";
> +
> +       rk817: pmic@20 {
> +               compatible =3D "rockchip,rk817";
> +               reg =3D <0x20>;
> +               interrupt-parent =3D <&gpio0>;
> +               interrupts =3D <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> +               clock-output-names =3D "rk808-clkout1", "rk808-clkout2";
> +               clock-names =3D "mclk";
> +               clocks =3D <&cru I2S1_MCLKOUT_TX>;
> +               assigned-clocks =3D <&cru I2S1_MCLKOUT_TX>;
> +               assigned-clock-parents =3D <&cru CLK_I2S1_8CH_TX>;
> +               #clock-cells =3D <1>;
> +               #sound-dai-cells =3D <0>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&i2s1m0_mclk>, <&pmic_int_l>;
> +               wakeup-source;
> +
> +               vcc1-supply =3D <&vcc_sys>;
> +               vcc2-supply =3D <&vcc_sys>;
> +               vcc3-supply =3D <&vcc_sys>;
> +               vcc4-supply =3D <&vcc_sys>;
> +               vcc5-supply =3D <&vcc_sys>;
> +               vcc6-supply =3D <&vcc_sys>;
> +               vcc7-supply =3D <&vcc_sys>;
> +               vcc8-supply =3D <&vcc_sys>;
> +               vcc9-supply =3D <&dcdc_boost>;
> +
> +               regulators {
> +                       vdd_logic: DCDC_REG1 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1350000>;
> +                               regulator-init-microvolt =3D <900000>;
> +                               regulator-ramp-delay =3D <6001>;
> +                               regulator-initial-mode =3D <0x2>;
> +                               regulator-name =3D "vdd_logic";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
900000>;
> +                               };
> +                       };
> +
> +                       vdd_gpu: DCDC_REG2 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <500000>;
> +                               regulator-max-microvolt =3D <1350000>;
> +                               regulator-init-microvolt =3D <900000>;
> +                               regulator-ramp-delay =3D <6001>;
> +                               regulator-initial-mode =3D <0x2>;
> +                               regulator-name =3D "vdd_gpu";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc_ddr: DCDC_REG3 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-initial-mode =3D <0x2>;
> +                               regulator-name =3D "vcc_ddr";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc_3v3: DCDC_REG4 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <3300000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-initial-mode =3D <0x2>;
> +                               regulator-name =3D "vcc_3v3";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
3300000>;
> +                               };
> +                       };
> +
> +                       vcca1v8_pmu: LDO_REG1 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-name =3D "vcca1v8_pmu";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
1800000>;
> +                               };
> +                       };
> +
> +                       vdda_0v9: LDO_REG2 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <900000>;
> +                               regulator-max-microvolt =3D <900000>;
> +                               regulator-name =3D "vdda_0v9";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vdda0v9_pmu: LDO_REG3 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <900000>;
> +                               regulator-max-microvolt =3D <900000>;
> +                               regulator-name =3D "vdda0v9_pmu";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
900000>;
> +                               };
> +                       };
> +
> +                       vccio_acodec: LDO_REG4 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <3300000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-name =3D "vccio_acodec";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vccio_sd: LDO_REG5 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-name =3D "vccio_sd";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc3v3_pmu: LDO_REG6 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <3300000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-name =3D "vcc3v3_pmu";
> +                               regulator-state-mem {
> +                                       regulator-on-in-suspend;
> +                                       regulator-suspend-microvolt =3D <=
3300000>;
> +                               };
> +                       };
> +
> +                       vcc_1v8: LDO_REG7 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <1800000>;
> +                               regulator-name =3D "vcc_1v8";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc1v8_dvp: LDO_REG8 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <1800000>;
> +                               regulator-max-microvolt =3D <3300000>;
> +                               regulator-name =3D "vcc1v8_dvp";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       vcc2v8_dvp: LDO_REG9 {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <2800000>;
> +                               regulator-max-microvolt =3D <2800000>;
> +                               regulator-name =3D "vcc2v8_dvp";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       dcdc_boost: BOOST {
> +                               regulator-always-on;
> +                               regulator-boot-on;
> +                               regulator-min-microvolt =3D <4700000>;
> +                               regulator-max-microvolt =3D <5400000>;
> +                               regulator-name =3D "boost";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +
> +                       otg_switch: OTG_SWITCH {
> +                               regulator-name =3D "otg_switch";
> +                               regulator-state-mem {
> +                                       regulator-off-in-suspend;
> +                               };
> +                       };
> +               };
> +       };
> +
> +       vdd_cpu: regulator@40 {
> +               compatible =3D "fcs,fan53555";
> +               reg =3D <0x40>;
> +               fcs,suspend-voltage-selector =3D <1>;
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt =3D <712500>;
> +               regulator-max-microvolt =3D <1390000>;
> +               regulator-init-microvolt =3D <900000>;
> +               regulator-name =3D "vdd_cpu";
> +               regulator-ramp-delay =3D <2300>;
> +               vin-supply =3D <&vcc_sys>;
> +               regulator-state-mem {
> +                       regulator-off-in-suspend;
> +               };
> +       };
> +};
> +
> +&i2c1 {
> +       /* Unknown/unused device at 0x3c */
I can try poking around my RG353P and RG503
motherboards to see what that device actually is.

> +       status =3D "disabled";
> +};
> +
> +&i2s0_8ch {
> +       status =3D "okay";
> +};
> +
> +&i2s1_8ch {
> +       pinctrl-0 =3D <&i2s1m0_sclktx
> +                    &i2s1m0_lrcktx
> +                    &i2s1m0_sdi0
> +                    &i2s1m0_sdo0>;
> +       pinctrl-names =3D "default";
> +       rockchip,trcm-sync-tx-only;
> +       status =3D "okay";
> +};
> +
> +&pinctrl {
> +
> +       audio-amplifier {
> +               spk_amp_enable_h: spk-amp-enable-h {
> +                       rockchip,pins =3D
> +                               <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       gpio-btns {
> +               btn_pins: btn-pins {
> +                       rockchip,pins =3D
> +                               <3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB6 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PC0 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>,
> +                               <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_up>;
> +               };
> +       };
> +
> +       gpio-led {
> +               led_pins: led-pins {
> +                       rockchip,pins =3D
> +                               <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>,
> +                               <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>,
> +                               <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       joy-mux {
> +               joy_mux_en: joy-mux-en {
> +                       rockchip,pins =3D
> +                               <0 RK_PB5 RK_FUNC_GPIO &pcfg_output_low>;
> +               };
> +       };
> +
> +       pmic {
> +               pmic_int_l: pmic-int-l {
> +                       rockchip,pins =3D
> +                               <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +               };
> +       };
> +
> +       sdio-pwrseq {
> +               wifi_enable_h: wifi-enable-h {
> +                       rockchip,pins =3D
> +                               <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       vcc3v3_lcd {
> +               vcc_lcd_h: vcc_lcd_h {
> +                       rockchip,pins =3D
> +                               <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       vcc-wifi {
> +               vcc_wifi_h: vcc_wifi_h {
> +                       rockchip,pins =3D
> +                               <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +};
> +
> +&pmu_io_domains {
> +       status =3D "okay";
> +       pmuio1-supply =3D <&vcc3v3_pmu>;
> +       pmuio2-supply =3D <&vcc3v3_pmu>;
> +       vccio1-supply =3D <&vccio_acodec>;
> +       vccio3-supply =3D <&vccio_sd>;
> +       vccio4-supply =3D <&vcc_1v8>;
> +       vccio5-supply =3D <&vcc_3v3>;
> +       vccio6-supply =3D <&vcc1v8_dvp>;
> +       vccio7-supply =3D <&vcc_3v3>;
> +};
> +
> +&pwm5 {
> +       status =3D "okay";
> +};
> +
> +&saradc {
> +       vref-supply =3D <&vcc_1v8>;
> +       status =3D "okay";
> +};
> +
> +&sdmmc0 {
> +       bus-width =3D <4>;
> +       cap-sd-highspeed;
> +       cd-gpios =3D <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +       disable-wp;
> +       pinctrl-0 =3D <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +       pinctrl-names =3D "default";
> +       sd-uhs-sdr104;
> +       vmmc-supply =3D <&vcc_3v3>;
> +       vqmmc-supply =3D <&vccio_sd>;
> +       status =3D "okay";
> +};
> +
> +&sdmmc1 {
> +       bus-width =3D <4>;
> +       cap-sd-highspeed;
> +       cd-gpios =3D <&gpio2 RK_PB2 GPIO_ACTIVE_LOW>;
> +       disable-wp;
> +       pinctrl-0 =3D <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk &sdmmc1_det>;
> +       pinctrl-names =3D "default";
> +       sd-uhs-sdr104;
> +       vmmc-supply =3D <&vcc_3v3>;
> +       vqmmc-supply =3D <&vcc1v8_dvp>;
> +       status =3D "okay";
> +};
> +
> +&sdmmc2 {
> +       bus-width =3D <4>;
> +       cap-sd-highspeed;
> +       cap-sdio-irq;
> +       keep-power-in-suspend;
> +       mmc-pwrseq =3D <&sdio_pwrseq>;
> +       non-removable;
> +       pinctrl-0 =3D <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
> +       pinctrl-names =3D "default";
> +       vmmc-supply =3D <&vcc_wifi>;
> +       vqmmc-supply =3D <&vcca1v8_pmu>;
> +       status =3D "okay";
> +};
> +
> +&tsadc {
> +       rockchip,hw-tshut-mode =3D <1>;
> +       rockchip,hw-tshut-polarity =3D <0>;
> +       status =3D "okay";
> +};
> +
> +&uart1 {
> +       pinctrl-0 =3D <&uart1m1_xfer &uart1m1_ctsn &uart1m1_rtsn>;
> +       pinctrl-names =3D "default";
> +       uart-has-rtscts;
> +       status =3D "okay";
> +
> +       bluetooth {
> +               compatible =3D "realtek,rtl8821cs-bt";
> +               device-wake-gpios =3D <&gpio4 4 GPIO_ACTIVE_HIGH>;
> +               enable-gpios =3D <&gpio4 3 GPIO_ACTIVE_HIGH>;
> +               host-wake-gpios =3D <&gpio4 5 GPIO_ACTIVE_HIGH>;
> +       };
> +};
> +
> +&uart2 {
> +       status =3D "okay";
> +};
> +
> +/*
> + * Lack the schematics to verify, but port works as a peripheral
> + * (and not a host or OTG port).
> + */
Maybe it's just missing a usb-c-connector node?
It would be useful to have in this devicetree.

> +&usb_host0_xhci {
> +       dr_mode =3D "peripheral";
> +       phys =3D <&usb2phy0_otg>;
> +       phy-names =3D "usb2-phy";
> +       status =3D "okay";
> +};

Best Regards,
Maya Matuszczyk
