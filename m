Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C5606A8CD0
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 00:17:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjCBXRP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 18:17:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbjCBXRO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 18:17:14 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4410F580FF
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 15:16:53 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0A02685CAE;
        Fri,  3 Mar 2023 00:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677799010;
        bh=52CTweEe9TIdfQk6XiZrmSLbYZTO33ITAV1cUZ5RRn4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Yi/bHVs9PRIYER5+c3tZotwWyqqUQuTaMaGfBsN69gyYSXguaQU9Wawn0lY4HQkWb
         8yldUi/IKALJnxwsN04S652vIqOfdI5IIyBuE8gQCNBS2FkcEA4m10KljZdw2GQBnO
         JR0JpU0O+AhwEglBOzVpQFq+wFLb2YpR3QeCNibPUkBKXJm92z3C9esf9GzD5+86Kh
         GOCQ6TMPcYTe7/q6vsgRzHYhhGz+Z/WYYazoe/c4b3Sok3RoCYWCpTzoevPeiAmAO3
         ZDu6VQVpGwFWm7DCQdEcqdFNgoP4ztQp6MhVMT0QzawXftlUWx2kMNbKKeh/3RuRSx
         nH7ZQlTCqU6rA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mp: Add support for DH electronics i.MX8M Plus DHCOM and PDK3
Date:   Fri,  3 Mar 2023 00:16:26 +0100
Message-Id: <20230302231626.159984-2-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230302231626.159984-1-marex@denx.de>
References: <20230302231626.159984-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for DH electronics i.MX8M Plus DHCOM SoM on PDK3 carrier board.
Currently supported are serial console, EQoS and FEC ethernets, eMMC, SD,
SPI NOR, CAN, M.2 E-Key or M.2 M-Key PCIe, USB .

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Li Yang <leoyang.li@nxp.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Matthias Schiffer <matthias.schiffer@tq-group.com>
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mp-dhcom-pdk3.dts  | 321 ++++++++++++++++++
 2 files changed, 322 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 198fff3731ae4..f90b126afbaad 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -91,6 +91,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk2.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-msc-sm2s-ep1.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
new file mode 100644
index 0000000000000..c5f0607f43bcc
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
@@ -0,0 +1,321 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023 Marek Vasut <marex@denx.de>
+ *
+ * DHCOM iMX8MP variant:
+ * DHCM-iMX8ML8-C160-R409-F1638-SPI16-GE-CAN2-SD-RTC-WBTA-ADC-T-RGB-CSI2-HS-I-01D2
+ * DHCOM PCB number: 660-100 or newer
+ * PDK3 PCB number: 669-100 or newer
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+#include "imx8mp-dhcom-som.dtsi"
+
+/ {
+	model = "DH electronics i.MX8M Plus DHCOM Premium Developer Kit (3)";
+	compatible = "dh,imx8mp-dhcom-pdk3", "dh,imx8mp-dhcom-som",
+		     "fsl,imx8mp";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	clk_ext_audio_codec: clock-codec {
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		compatible = "fixed-clock";
+	};
+
+	clk_xtal25: clk-xtal25 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
+	connector {
+		compatible = "usb-c-connector";
+		label = "USB-C";
+		data-role = "dual";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb_c_0_hs_ep: endpoint {
+					remote-endpoint = <&dwc3_0_hs_ep>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				usb_c_0_ss_ep: endpoint {
+					remote-endpoint = <&ptn5150_in_ep>;
+				};
+			};
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		button-0 {
+			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>; /* GPIO A */
+			label = "TA1-GPIO-A";
+			linux,code = <KEY_A>;
+			pinctrl-0 = <&pinctrl_dhcom_a>;
+			pinctrl-names = "default";
+			wakeup-source;
+		};
+
+		button-1 {
+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>; /* GPIO B */
+			label = "TA2-GPIO-B";
+			linux,code = <KEY_B>;
+			pinctrl-0 = <&pinctrl_dhcom_b>;
+			pinctrl-names = "default";
+			wakeup-source;
+		};
+
+		button-2 {
+			gpios = <&gpio5 2 GPIO_ACTIVE_LOW>; /* GPIO C */
+			label = "TA3-GPIO-C";
+			linux,code = <KEY_C>;
+			pinctrl-0 = <&pinctrl_dhcom_c>;
+			pinctrl-names = "default";
+			wakeup-source;
+		};
+
+		button-3 {
+			gpios = <&gpio5 22 GPIO_ACTIVE_LOW>; /* GPIO E */
+			label = "TA4-GPIO-E";
+			linux,code = <KEY_E>;
+			pinctrl-0 = <&pinctrl_dhcom_e>;
+			pinctrl-names = "default";
+			wakeup-source;
+		};
+	};
+
+	led {
+		compatible = "gpio-leds";
+
+		led-0 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_INDICATOR;
+			function-enumerator = <0>;
+			gpios = <&gpio4 27 GPIO_ACTIVE_HIGH>; /* GPIO D */
+			pinctrl-0 = <&pinctrl_dhcom_d>;
+			pinctrl-names = "default";
+		};
+
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_INDICATOR;
+			function-enumerator = <1>;
+			gpios = <&gpio5 23 GPIO_ACTIVE_HIGH>; /* GPIO F */
+			pinctrl-0 = <&pinctrl_dhcom_f>;
+			pinctrl-names = "default";
+		};
+
+		led-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_INDICATOR;
+			function-enumerator = <2>;
+			gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>; /* GPIO G */
+			pinctrl-0 = <&pinctrl_dhcom_g>;
+			pinctrl-names = "default";
+		};
+
+		led-3 {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "off";
+			function = LED_FUNCTION_INDICATOR;
+			function-enumerator = <3>;
+			gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>; /* GPIO I */
+			pinctrl-0 = <&pinctrl_dhcom_i>;
+			pinctrl-names = "default";
+		};
+	};
+
+	reg_avdd: regulator-avdd {	/* AUDIO_VDD */
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "AUDIO_VDD";
+	};
+};
+
+&i2c5 {
+	i2cmux@70 {
+		compatible = "nxp,pca9540";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2cmuxed0: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			typec@3d {
+				compatible = "nxp,ptn5150";
+				reg = <0x3d>;
+				interrupt-parent = <&gpio4>;
+				interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_ptn5150>;
+				status = "okay";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						ptn5150_in_ep: endpoint {
+							remote-endpoint = <&usb_c_0_ss_ep>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						ptn5150_out_ep: endpoint {
+							remote-endpoint = <&dwc3_0_ss_ep>;
+						};
+					};
+				};
+			};
+
+			power-sensor@40 {
+			    compatible = "ti,ina238";
+			    reg = <0x40>;
+			    shunt-resistor = <20000>;	/* 0.02 R */
+			    ti,shunt-gain = <1>;	/* Drop cca. 40mV */
+			};
+
+			eeprom_board: eeprom@54 {
+				compatible = "atmel,24c04";
+				pagesize = <16>;
+				reg = <0x54>;
+			};
+
+			pcieclk: clk@6b {
+				compatible = "skyworks,si52144";
+				reg = <0x6b>;
+				clocks = <&clk_xtal25>;
+				#clock-cells = <1>;
+			};
+		};
+
+		i2cmuxed1: i2c@1 {	/* HDMI DDC I2C */
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+	};
+};
+
+&ethphy0g {
+	reg = <7>;
+};
+
+&fec {	/* Second ethernet */
+	pinctrl-0 = <&pinctrl_fec_rgmii>;
+	phy-handle = <&ethphypdk>;
+	phy-mode = "rgmii-id";
+
+	mdio {
+		ethphypdk: ethernet-phy@7 { /* Micrel KSZ9131RNXI */
+			compatible = "ethernet-phy-id0022.1642",
+				     "ethernet-phy-ieee802.3-c22";
+			interrupt-parent = <&gpio4>;
+			interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+			pinctrl-0 = <&pinctrl_ethphy1>;
+			pinctrl-names = "default";
+			reg = <7>;
+			reset-assert-us = <1000>;
+			/* RESET_N signal rise time ~100ms */
+			reset-deassert-us = <120000>;
+			reset-gpios = <&gpio4 2 GPIO_ACTIVE_LOW>;
+			status = "okay";
+		};
+	};
+};
+
+&flexcan1 {
+	status = "okay";
+};
+
+&pcie_phy {
+	clocks = <&pcieclk 1>;
+	clock-names = "ref";
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	status = "okay";
+};
+
+&pcie {
+	fsl,max-link-speed = <3>;
+	reset-gpio = <&gpio1 6 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	usb-role-switch;
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dwc3_0_hs_ep: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usb_c_0_hs_ep>;
+		};
+
+		dwc3_0_ss_ep: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&ptn5150_out_ep>;
+		};
+	};
+};
+
+&usb3_1 {
+	fsl,disable-port-power-control;
+	fsl,permanently-attached;
+};
+
+&usb_dwc3_1 {
+	/* This port has USB5734 Hub connected to it, PWR/OC pins are unused */
+	/delete-property/ pinctrl-names;
+	/delete-property/ pinctrl-0;
+};
+
+&iomuxc {
+	/*
+	 * GPIO_A,B,C,E are connected to buttons.
+	 * GPIO_D,F,G,I are connected to LEDs.
+	 * GPIO_H is connected to USB Hub RESET_N.
+	 * GPIO_M is connected to CLKOUT2.
+	 */
+	pinctrl-0 = <&pinctrl_hog_base
+		     &pinctrl_dhcom_h &pinctrl_dhcom_j &pinctrl_dhcom_k
+		     &pinctrl_dhcom_l
+		     &pinctrl_dhcom_int>;
+
+	pinctrl_ptn5150: ptn5150grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x40000000
+		>;
+	};
+};
-- 
2.39.2

