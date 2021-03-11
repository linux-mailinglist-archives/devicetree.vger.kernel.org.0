Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F8FD33729A
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 13:31:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232702AbhCKMbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 07:31:05 -0500
Received: from mail.cognitivepilot.com ([91.218.251.140]:1744 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232983AbhCKMbA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 07:31:00 -0500
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4Dx7b62SHNznJptr
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 15:30:58 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 5.346
X-Spam-Level: *****
X-Spam-Status: No, score=5.346 tagged_above=2 required=6.2
        tests=[FSL_HELO_NON_FQDN_1=0.001, HELO_NO_DOMAIN=3.099,
        RDNS_NONE=1.274, SPF_SOFTFAIL=0.972] autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id P4LDCn-JtqkA for <devicetree@vger.kernel.org>;
        Thu, 11 Mar 2021 15:30:56 +0300 (MSK)
Received: from NervousEnergy (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTPS id 4Dx7b45qNCznJB4f;
        Thu, 11 Mar 2021 15:30:56 +0300 (MSK)
Date:   Thu, 11 Mar 2021 15:30:56 +0300
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v1] ARM: dts: sun8i: r40: add dts for Forlinx FETA40i-C &
 OKA40i-C
Message-ID: <20210311153056.69337f0a@NervousEnergy>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the Forlinx FETA40i-C SoM and OKA40i-C devboard[1]
based on it. The DT is split into a .dtsi, which (hopefully) corresponds
to the functions of the SoM itself, and a .dts for the devboard.

[1]:https://linux-sunxi.org/Forlinx_OKA40i-C

Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
---

draft2 -> v1: 

* fix indentation from spaces to tabs;
* remove commented properties and other extraneous comments;
* enable uarts 2,4,5&7 and alias uart3;
* update the user-LED bindings;
* remove mmc1 & add mmc3 binding;
* bring together the max/min microvolts on three regulators;
    * The 2.5v in ALDO2 came from U-Boot, where apparently this is the
      KConfig default for this regulator. The correct voltage is 1.8v.
* remove extraneous `always-on`s from regulators dldo1 and eldo2/3;
* remove reg_dldo3 node entirely.

 arch/arm/boot/dts/Makefile               |   1 +
 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi |  68 +++++++
 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts | 245 +++++++++++++++++++++++
 arch/arm/boot/dts/sun8i-r40.dtsi         |  35 ++++
 4 files changed, 349 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 8e5d4ab4e7..88aae9de95 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1222,6 +1222,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-r16-nintendo-super-nes-classic.dtb \
 	sun8i-r16-parrot.dtb \
 	sun8i-r40-bananapi-m2-ultra.dtb \
+	sun8i-r40-oka40i-c.dtb \
 	sun8i-s3-elimo-initium.dtb \
 	sun8i-s3-lichee-zero-plus.dtb \
 	sun8i-s3-pinecube.dtb \
diff --git a/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi new file mode 100644
index 0000000000..4764661849
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
+// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is: 
+//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
+//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
+
+
+#include "sun8i-r40.dtsi"
+
+
+&i2c0 {
+	status = "okay";
+
+	axp22x: pmic@34 {
+		compatible = "x-powers,axp221";
+		reg = <0x34>;
+		interrupt-parent = <&nmi_intc>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+#include "axp22x.dtsi"
+
+&mmc2 {
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_aldo2>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+
+&pio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&clk_out_a_pin>;
+	vcc-pa-supply = <&reg_dcdc1>;
+	vcc-pc-supply = <&reg_aldo2>;
+	vcc-pd-supply = <&reg_dcdc1>;
+	vcc-pf-supply = <&reg_dldo4>;
+	vcc-pg-supply = <&reg_dldo1>;
+};
+
+&reg_aldo2 {
+	regulator-always-on;
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "vcc-pa";
+};
+
+&reg_dcdc1 {
+	regulator-always-on;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-3v3";
+};
+
+&reg_dldo1 {
+	regulator-always-on;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-wifi-io"; 
+};
+
+&reg_dldo4 {
+	regulator-always-on;
+	regulator-min-microvolt = <2500000>;
+	regulator-max-microvolt = <2500000>;
+	regulator-name = "vdd2v5-sata";
+};
diff --git a/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts new file mode 100644
index 0000000000..ae06dd72c9
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
@@ -0,0 +1,245 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
+// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is: 
+//	Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
+//	Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
+
+/dts-v1/;
+#include "sun8i-r40-feta40i.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Forlinx OKA40i-C";
+	compatible = "forlinx,oka40i-c", "allwinner,sun8i-r40";
+
+	aliases {
+		ethernet0 = &gmac;
+		serial0 = &uart0;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5; /* RS485 */
+		serial7 = &uart7;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-5 {
+			gpios = <&pio 7 26 GPIO_ACTIVE_LOW>; /* PH26 */
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
+		};
+
+		led-6 {
+			gpios = <&pio 8 15 GPIO_ACTIVE_LOW>; /* PI15 */
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
+		};
+	};
+
+	reg_vcc5v0: vcc5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&pio 1 10 GPIO_ACTIVE_LOW>; // PB10
WIFI_EN
+		clocks = <&ccu CLK_OUTA>;
+		clock-names = "ext_clock";
+	};
+};
+
+&ahci {
+	ahci-supply = <&reg_dldo4>;
+	phy-supply = <&reg_eldo2>;
+	status = "okay";
+};
+
+&de {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&ehci2 {
+	status = "okay";
+};
+
+&gmac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac_rgmii_pins>;
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii-id";
+	phy-supply = <&reg_dcdc1>;
+	status = "okay";
+};
+
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+
+&i2c2 {
+	status = "okay";
+};
+
+
+&mmc0 {
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_dcdc1>;
+	bus-width = <4>;
+	cd-gpios = <&pio 8 11 GPIO_ACTIVE_LOW>; // PI11
+	status = "okay";
+};
+
+&mmc3 {
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_dcdc1>;
+	bus-width = <4>;
+	cd-gpios = <&pio 8 10 GPIO_ACTIVE_LOW>; // PI10
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
+&ohci2 {
+	status = "okay";
+};
+
+&reg_aldo3 {
+	regulator-always-on;
+	regulator-min-microvolt = <3000000>;
+	regulator-max-microvolt = <3000000>;
+	regulator-name = "avcc";
+};
+
+&reg_dc1sw {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-lcd";
+};
+
+&reg_dcdc2 {
+	regulator-always-on;
+	regulator-min-microvolt = <1100000>;
+	regulator-max-microvolt = <1100000>;
+	regulator-name = "vdd-cpu";
+};
+
+&reg_dcdc3 {
+	regulator-always-on;
+	regulator-min-microvolt = <1100000>;
+	regulator-max-microvolt = <1100000>;
+	regulator-name = "vdd-sys";
+};
+
+&reg_dcdc5 {
+	regulator-always-on;
+	regulator-min-microvolt = <1500000>;
+	regulator-max-microvolt = <1500000>;
+	regulator-name = "vcc-dram";
+};
+
+&reg_dldo2 {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-wifi";
+};
+
+&reg_eldo2 {
+	regulator-min-microvolt = <1200000>;
+	regulator-max-microvolt = <1200000>;
+	regulator-name = "vdd1v2-sata";
+};
+
+&reg_eldo3 {
+	regulator-min-microvolt = <2800000>;
+	regulator-max-microvolt = <2800000>;
+	regulator-name = "vcc-pe";
+};
+
+&tcon_tv0 {
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pb_pins>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pi_pins>, <&uart2_rts_cts_pi_pins>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3_pg_pins>, <&uart3_rts_cts_pg_pins>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4_pg_pins>;
+	status = "okay";
+};
+
+&uart5 { /* RS485 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart5_ph_pins>;
+	status = "okay";
+};
+
+&uart7 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart7_pi_pins>;
+	status = "okay";
+};
+
+&usbphy {
+	usb1_vbus-supply = <&reg_vcc5v0>;
+	usb2_vbus-supply = <&reg_vcc5v0>;
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi
b/arch/arm/boot/dts/sun8i-r40.dtsi index d5ad3b9efd..0fe3a8fcd4 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -357,6 +357,8 @@ mmc3: mmc@1c12000 {
 			clock-names = "ahb", "mmc";
 			resets = <&ccu RST_BUS_MMC3>;
 			reset-names = "ahb";
+			pinctrl-0 = <&mmc3_pins>;
+			pinctrl-names = "default";
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 			#address-cells = <1>;
@@ -601,6 +603,14 @@ mmc2_pins: mmc2-pins {
 				bias-pull-up;
 			};
 
+			mmc3_pins: mmc3-pins {
+				pins = "PI4", "PI5", "PI6",
+				       "PI7", "PI8", "PI9";
+				function = "mmc3";
+				drive-strength = <30>;
+				bias-pull-up;
+			};
+
 			/omit-if-no-ref/
 			spi0_pc_pins: spi0-pc-pins {
 				pins = "PC0", "PC1", "PC2";
@@ -636,6 +646,16 @@ uart0_pb_pins: uart0-pb-pins {
 				function = "uart0";
 			};
 
+			uart2_pi_pins: uart2-pi-pins {
+				pins = "PI18", "PI19";
+				function = "uart2";
+			};
+
+			uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins{
+				pins = "PI16", "PI17";
+				function = "uart2";
+			};
+
 			uart3_pg_pins: uart3-pg-pins {
 				pins = "PG6", "PG7";
 				function = "uart3";
@@ -645,6 +665,21 @@ uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
 				pins = "PG8", "PG9";
 				function = "uart3";
 			};
+
+			uart4_pg_pins: uart4-pg-pins {
+				pins = "PG10", "PG11";
+				function = "uart4";
+			};
+
+			uart5_ph_pins: uart5-ph-pins {
+				pins = "PH6", "PH7";
+				function = "uart5";
+			};
+
+			uart7_pi_pins: uart7-pi-pins {
+				pins = "PI20", "PI21";
+				function = "uart7";
+			};
 		};
 
 		wdt: watchdog@1c20c90 {
-- 
2.25.1

