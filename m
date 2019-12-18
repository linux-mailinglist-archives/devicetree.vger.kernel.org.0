Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9B8112524B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2019 20:49:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727534AbfLRTtz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Dec 2019 14:49:55 -0500
Received: from mail-il1-f194.google.com ([209.85.166.194]:36093 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726960AbfLRTtz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Dec 2019 14:49:55 -0500
Received: by mail-il1-f194.google.com with SMTP id b15so2738313iln.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2019 11:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D9XwghzJGJClOKGtXmrV+GeppqrxrwsjgYwMEk21AdA=;
        b=Qb7QzufSW6yFp2/WPvKEXu37/g4K6DSsjdmhZkDc02nZH89rhMohYcZuBvEDa0zzmf
         VLZHbn5ck1a6YFt6PPclAR/XxkSd6o7SXDQNWuz8INspjNSW8W1/FUtuCRU3kX6KlIXq
         oWSDqkBG1IeJ32T5Kox7Xayi1guwGJzFlytgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D9XwghzJGJClOKGtXmrV+GeppqrxrwsjgYwMEk21AdA=;
        b=GMcGG0AbLPKo+xJCSp+34fXFVlOsnTgltgrUzRMoKxjiQQ0Ijtl9XNgYHUcc8rh/SP
         V+nKMoQf2+1CI6VzBQvzZp6/n1zIH903C1tf9vTCqAEDwPg4aSRxl+x6Q6qjDR70RbCa
         dWIdIjPFxpnyqaMJYl/ofC/9Dw7617H/ULD8ssW1secxjD7Nv8riXcVOT2UYRECZ6NDz
         FXPo8r7Way3kyAaMQupsZmzXyWdRC9DlD1q3rNitYYUfSHrleUo9q7lG0csumSRKWpTr
         iDtLjWmemuLn4Ngn5Nid/vhutUS7otqqx+T2sBgIh0LBnIbec7Nd2MXc8YJvkagDJges
         dy9Q==
X-Gm-Message-State: APjAAAWiwd64x2NDNwbbimR3nf/IHItcx9OrQPLsVohB/d+O7587C5L3
        1b30Yse0NiOT8ZZZ6Gqi3VrG9ciFrHN+0snMXNMgIQ==
X-Google-Smtp-Source: APXvYqxQciXY7zyuQqL2A13B86oOHS27uDnGdlJJMbZNIbK6SfDRvKWok7eA1VjcoE4HHXpvRoehkPkp23yVvCSkKkk=
X-Received: by 2002:a92:3cd4:: with SMTP id j81mr3671622ilf.77.1576698593613;
 Wed, 18 Dec 2019 11:49:53 -0800 (PST)
MIME-Version: 1.0
References: <20191217080014.11756-1-akash@openedev.com>
In-Reply-To: <20191217080014.11756-1-akash@openedev.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 19 Dec 2019 01:19:42 +0530
Message-ID: <CAMty3ZC_Hk7=NeWJsCLwx5q2efkSDj3gBCBaT5_jGq8_aW43xA@mail.gmail.com>
Subject: Re: [V2 1/1 PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
To:     Akash Gajjar <akash@openedev.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Tom Cubie <tom@radxa.com>, Robin Murphy <robin.murphy@arm.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Douglas Anderson <dianders@chromium.org>,
        Markus Reichl <m.reichl@fivetechno.de>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, Nick Xie <nick@khadas.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Jagan Teki <jagan@openedev.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Vivek Unune <npcomplete13@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 17, 2019 at 2:23 PM Akash Gajjar <akash@openedev.com> wrote:
>
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
>
> This patch enables
> - Console
> - NAND Flash
> - SD Card
> - USB2.0
>
> Signed-off-by: Akash Gajjar <akash@openedev.com>
> ---
> Changes for v2
> - Use pwm-supply for vdd_core node instead of vi-supply
> - Add USB2.0 node support
>
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3308-rock-pi-S.dts    | 237 ++++++++++++++++++
>  3 files changed, 243 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d9847b306b83..48d40c928d45 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -422,6 +422,11 @@ properties:
>            - const: radxa,rockpi4
>            - const: rockchip,rk3399
>
> +      - description: Radxa ROCK Pi S
> +        items:
> +          - const: radxa,rockpis
> +          - const: rockchip,rk3308
> +
>        - description: Radxa Rock2 Square
>          items:
>            - const: radxa,rock2-square
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 48fb631d5451..cc9e8c824980 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -2,6 +2,7 @@
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-S.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
> new file mode 100644
> index 000000000000..0afb24ec1cdf
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
> @@ -0,0 +1,237 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Akash Gajjar <akash@openedev.com>
> + * Copyright (c) 2019 Jagan Teki <jagan@openedev.com>
> + */
> +
> +/dts-v1/;
> +#include "rk3308.dtsi"
> +
> +/ {
> +       model = "Radxa ROCK Pi S";
> +       compatible = "radxa,rockpis", "rockchip,rk3308";
> +
> +       chosen {
> +               stdout-path = "serial0:1500000n8";
> +       };
> +
> +       leds {
> +               compatible = "gpio-leds";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&green_led_gio>, <&heartbeat_led_gpio>;
> +
> +               green-led {
> +                       label = "rockpis:green:power";
> +                       gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
> +                       linux,default-trigger = "default-on";
> +                       default-state = "on";
> +               };
> +
> +               blue-led {
> +                       label = "rockpis:blue:user";
> +                       gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> +                       default-state = "on";
> +                       linux,default-trigger = "heartbeat";
> +               };
> +       };
> +
> +       sdio_pwrseq: sdio-pwrseq {
> +               compatible = "mmc-pwrseq-simple";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&wifi_enable_h>;
> +               reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
> +       };
> +
> +       vcc5v0_sys: vcc5v0-sys {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc5v0_sys";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <5000000>;
> +               regulator-max-microvolt = <5000000>;
> +       };
> +
> +       vdd_core: vdd-core {
> +               compatible = "pwm-regulator";
> +               pwms = <&pwm0 0 5000 1>;
> +               regulator-name = "vdd_core";
> +               regulator-min-microvolt = <827000>;
> +               regulator-max-microvolt = <1340000>;
> +               regulator-init-microvolt = <1015000>;
> +               regulator-settling-time-up-us = <250>;
> +               regulator-always-on;
> +               regulator-boot-on;
> +               pwm-supply = <&vcc5v0_sys>

Missing semi colon.

> +       };
> +
> +       vdd_log: vdd-log {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vdd_log";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <1050000>;
> +               regulator-max-microvolt = <1050000>;
> +               vin-supply = <&vcc5v0_sys>;
> +       };
> +
> +       vcc_ddr: vcc-ddr {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc_ddr";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <1500000>;
> +               regulator-max-microvolt = <1500000>;
> +               vin-supply = <&vcc5v0_sys>;
> +       };
> +
> +       vcc_1v8: vcc-1v8 {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc_1v8";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               vin-supply = <&vcc_io>;
> +       };
> +
> +       vcc_io: vcc-io {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc_io";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               vin-supply = <&vcc5v0_sys>;
> +       };
> +
> +       vcc5v0_otg: vcc5v0-otg {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc5v0_otg";
> +               regulator-always-on;
> +               gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&otg_vbus_drv>;
> +               vin-supply = <&vcc5v0_sys>;
> +       };
> +};
> +
> +&cpu0 {
> +       cpu-supply = <&vdd_core>;
> +};
> +
> +&emmc {
> +       bus-width = <4>;
> +       cap-mmc-highspeed;
> +       mmc-hs200-1_8v;
> +       supports-sd;
> +       disable-wp;
> +       non-removable;
> +       num-slots = <1>;
> +       vin-supply = <&vcc_io>;
> +       status = "okay";
> +};
> +
> +&i2c1 {
> +       status = "okay";
> +};
> +
> +&sdmmc {
> +       bus-width = <4>;
> +       cap-mmc-highspeed;
> +       cap-sd-highspeed;
> +       max-frequeency = <150000000>;
> +       supports-sd;
> +       disable-wp;
> +       num-slots = <1>;
> +       pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
> +       card-detect-delay = <800>;
> +       status = "okay";
> +};
> +
> +&spi2 {
> +       status = "okay";
> +       max-freq = <10000000>;
> +};
> +
> +&pinctrl {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&rtc_32k>;
> +
> +       leds {
> +               green_led_gio: green-led-gpio {
> +                       rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +
> +               heartbeat_led_gpio: heartbeat-led-gpio {
> +                       rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       usb {
> +               otg_vbus_drv: otg-vbus-drv {
> +                       rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
> +       sdio-pwrseq {
> +               wifi_enable_h: wifi-enable-h {
> +                       rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +
> +               wifi_host_wake: wifi-host-wake {
> +                       rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
> +               };
> +       };
> +};
> +
> +&pwm0 {
> +       status = "okay";
> +       pinctrl-0 = <&pwm0_pin_pull_down>;
> +};
> +
> +&saradc {
> +       vref-supply = <&vcc_1v8>;
> +       status = "okay";
> +};
> +
> +&sdio {
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       bus-width = <4>;
> +       max-frequency = <1000000>;
> +       cap-sd-highspeed;
> +       cap-sdio-irq;
> +       supports-sdio;
> +       keep-power-in-suspend;
> +       mmc-pwrseq = <&sdio_pwrseq>;
> +       non-removable;
> +       sd-uhs-sdr104;
> +       status = "okay";
> +};
> +
> +&u2phy {
> +       status = "okay";
> +
> +       u2phy_host: host-port {
> +               status = "okay";
> +       };
> +};
> +
> +&uart0 {
> +       status = "okay";
> +};
> +
> +&uart4 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&uart4_xfer &uart4_rts &uart4_cts>;
> +       status = "okay";
> +};
> +
> +&usb_host_ehci {
> +       status = "okay";
> +};
> +
> +&usb_host_ohci {
> +       status = "okay";
> +};

Drop these usb nodes for initial support since these are still not
available in dsti.

Also use small S on dts file name.
