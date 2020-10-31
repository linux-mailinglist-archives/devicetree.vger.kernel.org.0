Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81EAF2A1420
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 09:24:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbgJaIYf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 04:24:35 -0400
Received: from mail.kernel.org ([198.145.29.99]:54762 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726355AbgJaIYe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Oct 2020 04:24:34 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id F27E62074F;
        Sat, 31 Oct 2020 08:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604132672;
        bh=D39vMTjPTkym81VM95/WcqzS0PKWGWlH+C/1pm8IlTE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oIl85/I1AUFteA0KgPR1MTSuOJ3LlWO4bAvjtPcLXesXiUOnWuOsO6nmUdJA59WHJ
         cA8C/Fs4eRd/C30POtsfsbpP8HdaU0lt6k3v63TQxOGuerfoFy40dduBDbWyBU+Sn4
         YL8UXjcVegVViztqSr7z/GH3S4AIvLY0/lVzalTI=
Date:   Sat, 31 Oct 2020 16:24:27 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, festevam@gmail.com, linux-imx@nxp.com,
        m.podolszki@phytec.de, c.hemp@phytec.de, j.remmet@phytec.de,
        devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH v2 2/2] ARM: dts: imx6: Add support for phyBOARD-Nunki
Message-ID: <20201031082424.GU28755@dragon>
References: <20201014162724.4041-1-m.felsch@pengutronix.de>
 <20201014162724.4041-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201014162724.4041-2-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 14, 2020 at 06:27:24PM +0200, Marco Felsch wrote:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
> 
> This patch adds support for the PHYTEC phyBOARD-Nunki which is a
> baseboard for the phyCORE-i.MX 6 especially designed for image
> processing purposes. At this point it only supports the phyCORE-i.MX
> 6Quad and 6QuadPlus.
> 
> Features are:
>  - phyCORE-i.MX 6Quad/QuadPlus
>  - LVDS display
>  - HDMI
>  - GBit Ethernet
>  - USB Host
>  - USB OTG
>  - SATA
>  - PCIe
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> [m.felsch@pengutronix.de: squashed downstream commits:
>     ARM: dts: imx6: nunki: Add support for phytec cameras
>     ARM: dts: imx6qdl: nunki: Fix wrong pin settings
>     ARM: dts: imx6qdl: nunki: Enable pcie regulator active low
>     ARM: dts: imx6qdl: nunki: Remove enable-active-low property
>     ARM: dts: imx6qdl: nunki: Add muxing for camera strobe and trigger
>     ARM: dts: imx6qdl: nunki: fix rtc compatible
>     ARM: dts: imx6: nunki: Move optional camera bindings to separate dtsi]
> [m.felsch@pengutronix.de:
>     - remove downstream camera and display .dtsi files
>     - reorder phandles
>     - adapt commit message to reflect new state
>     - move stdout-path to nunki.dtsi since it is the only possible debug
>       uart
>     - fix pwm-cells for backlight (new default is 3)
>     - remove not upstream available ti,scan921226h deserializers
>     - fix a few style issues (compatible first and so on)
>     - drop unecessary status lines
>     - keep ldb disabled
>     - move iomux node to the end]
> [m.felsch@pengutronix.de:
>     - add support for phyCORE-i.MX 6QuadPlus]
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
> Changelog:
> 
> v2:
> - added reviewed-by tag
> 
>  arch/arm/boot/dts/Makefile                    |   2 +
>  .../boot/dts/imx6q-phytec-nunki-rdk-nand.dts  |  72 ++++
>  arch/arm/boot/dts/imx6qdl-phytec-nunki.dtsi   | 362 ++++++++++++++++++
>  .../boot/dts/imx6qp-phytec-nunki-rdk-nand.dts |  71 ++++
>  4 files changed, 507 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6q-phytec-nunki-rdk-nand.dts
>  create mode 100644 arch/arm/boot/dts/imx6qdl-phytec-nunki.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6qp-phytec-nunki-rdk-nand.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 4572db3fa5ae..f55a043c0063 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -539,6 +539,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
>  	imx6q-novena.dtb \
>  	imx6q-phytec-mira-rdk-emmc.dtb \
>  	imx6q-phytec-mira-rdk-nand.dtb \
> +	imx6q-phytec-nunki-rdk-nand.dtb \
>  	imx6q-phytec-pbab01.dtb \
>  	imx6q-pico-dwarf.dtb \
>  	imx6q-pico-hobbit.dtb \
> @@ -575,6 +576,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
>  	imx6qp-nitrogen6_max.dtb \
>  	imx6qp-nitrogen6_som2.dtb \
>  	imx6qp-phytec-mira-rdk-nand.dtb \
> +	imx6qp-phytec-nunki-rdk-nand.dtb \
>  	imx6qp-sabreauto.dtb \
>  	imx6qp-sabresd.dtb \
>  	imx6qp-tx6qp-8037.dtb \
> diff --git a/arch/arm/boot/dts/imx6q-phytec-nunki-rdk-nand.dts b/arch/arm/boot/dts/imx6q-phytec-nunki-rdk-nand.dts
> new file mode 100644
> index 000000000000..edb5419d4f86
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6q-phytec-nunki-rdk-nand.dts
> @@ -0,0 +1,72 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +/*
> + * Copyright (C) 2018 PHYTEC Messtechnik GmbH
> + * Author: Martin Podolszki <m.podolszki@phytec.de>
> + */
> +
> +/dts-v1/;
> +#include "imx6q.dtsi"
> +#include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-nunki.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyBOARD-Nunki Quad Carrier-Board with NAND";
> +	compatible = "phytec,imx6q-pbac11-nand", "phytec,imx6q-pbac11", 
> +		     "phytec,imx6qdl-pcm058", "fsl,imx6q";
> +};
> +
> +&can1 {
> +	status = "okay";
> +};
> +
> +&fec {
> +	status = "okay";
> +};
> +
> +&gpmi {
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +};
> +
> +&m25p80 {
> +	status = "okay";
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +};
> +
> +&sata {
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-nunki.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-nunki.dtsi
> new file mode 100644
> index 000000000000..7e84db718259
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-nunki.dtsi
> @@ -0,0 +1,362 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2018 PHYTEC Messtechnik GmbH
> + * Author: Martin Podolszki <m.podolszki@phytec.de>
> + */
> +
> +#include <dt-bindings/leds/leds-pca9532.h>
> +
> +/ {
> +	aliases {
> +		rtc0 = &i2c_rtc;
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		brightness-levels = <0 4 8 16 32 64 128 255>;
> +		default-brightness-level = <7>;
> +		power-supply = <&reg_lcd_3v3>;
> +		pwms = <&pwm1 0 5000000 0>;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	panel {
> +		compatible = "auo,g104sn02";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_panel_en>;
> +		power-supply = <&reg_panel>;
> +		enable-gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
> +		backlight = <&backlight>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&lvds0_out>;
> +			};
> +		};
> +	};
> +
> +	reg_flexcan1: regulator-flexcan1 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_flexcan1_en>;
> +		compatible = "regulator-fixed";
> +		regulator-name = "flexcan1";
> +		regulator-min-microvolt = <1500000>;
> +		regulator-max-microvolt = <1500000>;
> +		gpio = <&gpio1 27 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_lcd_3v3: regulator-lcd-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "lcd_3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		enable-active-high;

The property is meaningless when there is no 'gpio' control.

> +	};
> +
> +	reg_en_switch: regulator-en-switch {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_en_switch>;
> +		compatible = "regulator-fixed";
> +		regulator-name = "Enable Switch";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio3 4 GPIO_ACTIVE_HIGH>;
> +		regulator-always-on;
> +		enable-active-high;
> +	};
> +
> +	reg_panel: regulator-panel {
> +		compatible = "regulator-fixed";
> +		regulator-name = "panel-power-supply";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		regulator-always-on;

The property is meaningful only for a regulator that has an on/off
switch.

> +	};
> +
> +	reg_pcie: regulator-pcie {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pcie_reg>;
> +		compatible = "regulator-fixed";
> +		regulator-name = "mPCIe_1V5";
> +		regulator-min-microvolt = <1500000>;
> +		regulator-max-microvolt = <1500000>;
> +		gpio = <&gpio1 26 GPIO_ACTIVE_HIGH>;

Missing enable-active-high?

> +	};
> +
> +	reg_usbotg_vbus: regulator-usbotg-vbus {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usbotg_vbus>;
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_otg_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio4 15 GPIO_ACTIVE_HIGH>;

Ditto

> +	};
> +};
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	xceiver-supply = <&reg_flexcan1>;
> +};
> +
> +&hdmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hdmicec>;
> +	ddc-i2c-bus = <&i2c2>;
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	clock-frequency = <100000>;
> +
> +	stmpe: touchctrl@44 {

s/touchctrl/touchscreen?

> +		compatible = "st,stmpe811";
> +		reg = <0x44>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_stmpe>;
> +		interrupts = <12 IRQ_TYPE_NONE>;
> +		interrupt-parent = <&gpio7>;
> +
> +		stmpe_touchscreen {
> +			compatible = "st,stmpe-ts";
> +			st,sample-time = <4>;
> +			st,mod-12b = <1>;
> +			st,ref-sel = <0>;
> +			st,adc-freq = <1>;
> +			st,ave-ctrl = <1>;
> +			st,touch-det-delay = <2>;
> +			st,settling = <2>;
> +			st,fraction-z = <7>;
> +			st,i-drive = <1>;
> +		};
> +	};
> +
> +	pca9533: leddimmer@62 {

led-controller?

> +		compatible = "nxp,pca9533";
> +		reg = <0x62>;
> +
> +		led-red {
> +			label = "red:user1";
> +			type = <PCA9532_TYPE_LED>;
> +			linux,default-trigger = "none";
> +		};
> +
> +		led-green {
> +			label = "green:user2";
> +			type = <PCA9532_TYPE_LED>;
> +			linux,default-trigger = "none";
> +		};
> +
> +		led-blue {
> +			label = "blue:user3";
> +			type = <PCA9532_TYPE_LED>;
> +			linux,default-trigger = "mmc0";
> +			default-state = "on";
> +		};
> +        };
> +
> +	i2c_rtc: rtc@68 {
> +		compatible = "microcrystal,rv4162";
> +		reg = <0x68>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_rtc_int>;
> +		interrupt-parent = <&gpio7>;
> +		interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	clock-frequency = <100000>;
> +};
> +
> +&ldb {
> +	lvds-channel@0 {
> +		fsl,data-mapping = "spwg";
> +		fsl,data-width = <18>;
> +
> +		port@4 {
> +			reg = <4>;
> +
> +			lvds0_out: endpoint {
> +				remote-endpoint = <&panel_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie>;
> +	reset-gpio = <&gpio2 25 GPIO_ACTIVE_HIGH>;
> +	vpcie-supply = <&reg_pcie>;
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +};
> +
> +

One newline is good enough.

> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	fsl,uart-has-rtscts;

uart-has-rtscts

Shawn

> +};
> +
> +&usbh1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbh1>;
> +	disable-over-current;
> +};
> +
> +&usbotg {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbotg>;
> +	vbus-supply = <&reg_usbotg_vbus>;
> +	disable-over-current;
> +	dr_mode = "otg";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	cd-gpios = <&gpio6 31 GPIO_ACTIVE_LOW>;
> +	no-1-8-v;
> +};
> +
> +&iomuxc {
> +	pinctrl_en_switch: enswitchgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_DA4__GPIO3_IO04		0xb0b1
> +		>;
> +	};
> +
> +	pinctrl_flexcan1: flexcan1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX		0x1b008
> +			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_flexcan1_en: flexcan1engrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_RXD0__GPIO1_IO27	0xb0b1
> +		>;
> +	};
> +
> +	pinctrl_hdmicec: hdmicecgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_ROW2__HDMI_TX_CEC_LINE	0x1f8b0
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
> +			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
> +			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_panel_en: panelengrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0xb0b1
> +		>;
> +	};
> +
> +	pinctrl_pcie: pciegrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_OE__GPIO2_IO25		0xb0b1
> +		>;
> +	};
> +
> +	pinctrl_pcie_reg: pcievgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0xb0b1
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_9__PWM1_OUT		0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_rtc_int: rtcintgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD3_RST__GPIO7_IO08		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_stmpe: stmpe {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b088
> +			MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_EB3__UART3_CTS_B		0x1b0b1
> +			MX6QDL_PAD_EIM_D23__UART3_RTS_B		0x1b0b1
> +			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usbh1: usbh1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_EB1__GPIO2_IO29		0xb0b1
> +		>;
> +	};
> +
> +	pinctrl_usbotg: usbotggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
> +		>;
> +	};
> +
> +	pinctrl_usbotg_vbus: usbotg-vbusgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x1b010
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x1b011
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x1b008
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x1b008
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x1b008
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x1b008
> +			MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0xb0b1 /* CD */
> +		>;
> +	};
> +};
> diff --git a/arch/arm/boot/dts/imx6qp-phytec-nunki-rdk-nand.dts b/arch/arm/boot/dts/imx6qp-phytec-nunki-rdk-nand.dts
> new file mode 100644
> index 000000000000..fdca59807cb0
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6qp-phytec-nunki-rdk-nand.dts
> @@ -0,0 +1,71 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +/*
> + * Copyright (C) 2020 Pengutronix, Marco Felsch <kernel@pengutronix.de>
> + */
> +
> +/dts-v1/;
> +#include "imx6qp.dtsi"
> +#include "imx6qdl-phytec-phycore-som.dtsi"
> +#include "imx6qdl-phytec-nunki.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyBOARD-Nunki QuadPlus Carrier-Board with NAND";
> +	compatible = "phytec,imx6qp-pbac11-nand", "phytec,imx6qp-pbac11",
> +		     "phytec,imx6qdl-pcm058", "fsl,imx6qp";
> +};
> +
> +&can1 {
> +	status = "okay";
> +};
> +
> +&fec {
> +	status = "okay";
> +};
> +
> +&gpmi {
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +};
> +
> +&m25p80 {
> +	status = "okay";
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	status = "okay";
> +};
> +
> +&sata {
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	status = "okay";
> +};
> -- 
> 2.20.1
> 
