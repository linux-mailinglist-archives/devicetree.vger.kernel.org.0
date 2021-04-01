Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06B103517FB
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 19:48:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235755AbhDARnJ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 1 Apr 2021 13:43:09 -0400
Received: from foss.arm.com ([217.140.110.172]:44704 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234788AbhDARkI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Apr 2021 13:40:08 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2F6C15A1;
        Thu,  1 Apr 2021 07:03:05 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 645033F719;
        Thu,  1 Apr 2021 07:03:04 -0700 (PDT)
Date:   Thu, 1 Apr 2021 15:02:52 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 4/4] ARM: dts: sun8i: r40: add devicetree for Forlinx
 FETA40i-C & OKA40i-C
Message-ID: <20210401150252.15d1b39c@slackpad.fritz.box>
In-Reply-To: <20210331155616.793550-5-i.uvarov@cognitivepilot.com>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
        <20210331155616.793550-5-i.uvarov@cognitivepilot.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 Mar 2021 18:56:16 +0300
Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:

> The FETA40i-C is a SoM by Forlinx based on the Allwinner R40/A40i.
> 
> SoM specifications:
> 
> - SoC: R40 or A40i
> - PMIC: AXP221S
> - RAM: 1GiB/2GiB DDR3 (dual-rank)
> - eMMC: 8GB,
> - Mates with carrier board via four 80-pin connectors (AXK6F80337YG).
> 
> OKA40i-C is a carrier board by the same manufacturer for this SoM,
> whose main purpose is as a development board with a wide variety of
> peripherals:
> 
> - Power: DC5V barrel or USB OTG or 4.2V Lipo battery
> - Video out: HDMI, TV out, LVDS
> - WiFi+Bluetooth: RL-UM02WBS-8723BU-V1.2 (802.11 b/g/n, BT V2.1/3.0/4.0)
> - Ethernet: 10/100Mbps
> - Storage: µSD, fullsize SD, eMMC (on SoM), SATA
> - USB: 3 x USB2.0 Host (2 via hub, 1 native), 1 x USB2.0 OTG (micro-B)
> - UART: RS232, RS485, 4 3.3v uarts (of which 2 have RTS/CTS)
> - Other I/O: SPI x2, TWI, SDIO header, GPIO header, JTAG header
> - Mini PCIe slot with sim holder for WLAN modem
> - Smart card holder
> - RTC (RX8010SJ)
> - Two user LEDs
> - Three user buttons (via KeyADC).
> 
> This patch adds a devicetree for the aforementioned SoM and devboard.
> In order to reflect the modularity of this devboard and simplify adding
> support for future hardware based on the same SoM, the devicetree is split:
> Everything pertaining to the SoM itself is described in a separate .dtsi
> file, which is included by the devboard's .dts.
> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

Thanks for the changes, looks good to me now!

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

>  3 files changed, 310 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 8e5d4ab4e7..88aae9de95 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1222,6 +1222,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
>  	sun8i-r16-nintendo-super-nes-classic.dtb \
>  	sun8i-r16-parrot.dtb \
>  	sun8i-r40-bananapi-m2-ultra.dtb \
> +	sun8i-r40-oka40i-c.dtb \
>  	sun8i-s3-elimo-initium.dtb \
>  	sun8i-s3-lichee-zero-plus.dtb \
>  	sun8i-s3-pinecube.dtb \
> diff --git a/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
> new file mode 100644
> index 0000000000..265e0fa57a
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
> +//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
> +//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> +
> +#include "sun8i-r40.dtsi"
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	axp22x: pmic@34 {
> +		compatible = "x-powers,axp221";
> +		reg = <0x34>;
> +		interrupt-parent = <&nmi_intc>;
> +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +#include "axp22x.dtsi"
> +
> +&mmc2 {
> +	vmmc-supply = <&reg_dcdc1>;
> +	vqmmc-supply = <&reg_aldo2>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&pio {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&clk_out_a_pin>;
> +	vcc-pa-supply = <&reg_dcdc1>;
> +	vcc-pc-supply = <&reg_aldo2>;
> +	vcc-pd-supply = <&reg_dcdc1>;
> +	vcc-pf-supply = <&reg_dldo4>;
> +	vcc-pg-supply = <&reg_dldo1>;
> +};
> +
> +&reg_aldo2 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +	regulator-name = "vcc-pa";
> +};
> +
> +&reg_aldo3 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <3000000>;
> +	regulator-max-microvolt = <3000000>;
> +	regulator-name = "avcc";
> +};
> +
> +&reg_dcdc1 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-3v3";
> +};
> +
> +&reg_dcdc2 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1100000>;
> +	regulator-max-microvolt = <1100000>;
> +	regulator-name = "vdd-cpu";
> +};
> +
> +&reg_dcdc3 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1100000>;
> +	regulator-max-microvolt = <1100000>;
> +	regulator-name = "vdd-sys";
> +};
> +
> +&reg_dcdc5 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1500000>;
> +	regulator-max-microvolt = <1500000>;
> +	regulator-name = "vcc-dram";
> +};
> +
> +&reg_dldo1 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-wifi-io";
> +};
> +
> +&reg_dldo4 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <2500000>;
> +	regulator-max-microvolt = <2500000>;
> +	regulator-name = "vdd2v5-sata";
> +};
> +
> +&reg_eldo2 {
> +	regulator-min-microvolt = <1200000>;
> +	regulator-max-microvolt = <1200000>;
> +	regulator-name = "vdd1v2-sata";
> +};
> +
> +&reg_eldo3 {
> +	regulator-min-microvolt = <2800000>;
> +	regulator-max-microvolt = <2800000>;
> +	regulator-name = "vcc-pe";
> +};
> diff --git a/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> new file mode 100644
> index 0000000000..9305fda8d1
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
> @@ -0,0 +1,203 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
> +// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
> +//	Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
> +//	Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
> +
> +/dts-v1/;
> +#include "sun8i-r40-feta40i.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "Forlinx OKA40i-C";
> +	compatible = "forlinx,oka40i-c", "forlinx,feta40i-c", "allwinner,sun8i-r40";
> +
> +	aliases {
> +		ethernet0 = &gmac;
> +		serial0 = &uart0;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +		serial4 = &uart4;
> +		serial5 = &uart5; /* RS485 */
> +		serial7 = &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-5 {
> +			gpios = <&pio 7 26 GPIO_ACTIVE_LOW>; /* PH26 */
> +			color = <LED_COLOR_ID_GREEN>;
> +			function = LED_FUNCTION_STATUS;
> +		};
> +
> +		led-6 {
> +			gpios = <&pio 8 15 GPIO_ACTIVE_LOW>; /* PI15 */
> +			color = <LED_COLOR_ID_BLUE>;
> +			function = LED_FUNCTION_STATUS;
> +		};
> +	};
> +
> +	reg_vcc5v0: vcc5v0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +	};
> +
> +	wifi_pwrseq: wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&pio 1 10 GPIO_ACTIVE_LOW>; // PB10 WIFI_EN
> +		clocks = <&ccu CLK_OUTA>;
> +		clock-names = "ext_clock";
> +	};
> +};
> +
> +&ahci {
> +	ahci-supply = <&reg_dldo4>;
> +	phy-supply = <&reg_eldo2>;
> +	status = "okay";
> +};
> +
> +&de {
> +	status = "okay";
> +};
> +
> +&ehci1 {
> +	status = "okay";
> +};
> +
> +&ehci2 {
> +	status = "okay";
> +};
> +
> +&gmac {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&gmac_rgmii_pins>;
> +	phy-handle = <&phy1>;
> +	phy-mode = "rgmii-id";
> +	phy-supply = <&reg_dcdc1>;
> +	status = "okay";
> +};
> +
> +&gmac_mdio {
> +	phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +	};
> +};
> +
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	vmmc-supply = <&reg_dcdc1>;
> +	vqmmc-supply = <&reg_dcdc1>;
> +	bus-width = <4>;
> +	cd-gpios = <&pio 8 11 GPIO_ACTIVE_LOW>; // PI11
> +	status = "okay";
> +};
> +
> +&mmc3 {
> +	vmmc-supply = <&reg_dcdc1>;
> +	vqmmc-supply = <&reg_dcdc1>;
> +	bus-width = <4>;
> +	cd-gpios = <&pio 8 10 GPIO_ACTIVE_LOW>; // PI10
> +	status = "okay";
> +};
> +
> +&ohci1 {
> +	status = "okay";
> +};
> +
> +&ohci2 {
> +	status = "okay";
> +};
> +
> +&reg_dc1sw {
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-lcd";
> +};
> +
> +&reg_dldo2 {
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-wifi";
> +};
> +
> +&tcon_tv0 {
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pb_pins>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart2_pi_pins>, <&uart2_rts_cts_pi_pins>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart3_pg_pins>, <&uart3_rts_cts_pg_pins>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart4_pg_pins>;
> +	status = "okay";
> +};
> +
> +&uart5 { /* RS485 */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart5_ph_pins>;
> +	status = "okay";
> +};
> +
> +&uart7 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart7_pi_pins>;
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	usb1_vbus-supply = <&reg_vcc5v0>;
> +	usb2_vbus-supply = <&reg_vcc5v0>;
> +	status = "okay";
> +};

