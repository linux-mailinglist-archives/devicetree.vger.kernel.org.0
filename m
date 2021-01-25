Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2429C3031B4
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 03:22:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726884AbhAYSt1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 13:49:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730716AbhAYSsY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 13:48:24 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2754CC06178C
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:47:41 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1l46tn-0007Cg-3Y; Mon, 25 Jan 2021 19:47:39 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH 06/10] arm64: dts: zii-ultra: add sound support
Date:   Mon, 25 Jan 2021 19:47:32 +0100
Message-Id: <20210125184736.1226435-6-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125184736.1226435-1-l.stach@pengutronix.de>
References: <20210125184736.1226435-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds all the necessary nodes to get audio support on both the
RMB3 and Zest boards.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../dts/freescale/imx8mq-zii-ultra-rmb3.dts   | 91 +++++++++++++++++
 .../dts/freescale/imx8mq-zii-ultra-zest.dts   | 30 ++++++
 .../boot/dts/freescale/imx8mq-zii-ultra.dtsi  | 98 +++++++++++++++++++
 3 files changed, 219 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
index bfad4b885905..b3743f96f899 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dts
@@ -10,6 +10,56 @@
 / {
 	model = "ZII Ultra RMB3 Board";
 	compatible = "zii,imx8mq-ultra-rmb3", "zii,imx8mq-ultra", "fsl,imx8mq";
+
+	sound1 {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "front";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound1_codec>;
+		simple-audio-card,frame-master = <&sound1_codec>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack Front";
+		simple-audio-card,routing =
+			"Headphone Jack Front", "HPA1 HPLEFT",
+			"Headphone Jack Front", "HPA1 HPRIGHT",
+			"HPA1 LEFTIN", "HPL",
+			"HPA1 RIGHTIN", "HPR";
+		simple-audio-card,aux-devs = <&hpa1>;
+
+		sound1_cpu: simple-audio-card,cpu {
+			sound-dai = <&sai2>;
+		};
+
+		sound1_codec: simple-audio-card,codec {
+			sound-dai = <&codec1>;
+			clocks = <&cs2000>;
+		};
+	};
+
+	sound2 {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "periph";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound2_codec>;
+		simple-audio-card,frame-master = <&sound2_codec>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack Back";
+		simple-audio-card,routing =
+			"Headphone Jack Back", "HPA1 HPLEFT",
+			"Headphone Jack Back", "HPA1 HPRIGHT",
+			"HPA1 LEFTIN", "HPL",
+			"HPA1 RIGHTIN", "HPR";
+		simple-audio-card,aux-devs = <&hpa2>;
+
+		sound2_cpu: simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+
+		sound2_codec: simple-audio-card,codec {
+			sound-dai = <&codec2>;
+			clocks = <&cs2000>;
+		};
+	};
 };
 
 &ecspi1 {
@@ -27,6 +77,27 @@
 	};
 };
 
+&hpa2 {
+	sound-name-prefix = "HPA1";
+};
+
+&i2c1 {
+	codec2: codec@18 {
+		compatible = "ti,tlv320dac3100";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_codec2>;
+		reg = <0x18>;
+		#sound-dai-cells = <0>;
+		HPVDD-supply = <&reg_3p3v>;
+		SPRVDD-supply = <&reg_3p3v>;
+		SPLVDD-supply = <&reg_3p3v>;
+		AVDD-supply = <&reg_3p3v>;
+		IOVDD-supply = <&reg_3p3v>;
+		DVDD-supply = <&vgen4_reg>;
+		reset-gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>;
+	};
+};
+
 &i2c2 {
 	temp-sense@48 {
 		compatible = "national,lm75";
@@ -79,11 +150,23 @@
 	};
 };
 
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	status = "okay";
+};
+
 &usbhub {
 	swap-dx-lanes = <0>;
 };
 
 &iomuxc {
+	pinctrl_codec2: dac2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CE3_B_GPIO3_IO4		0x41
+		>;
+	};
+
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_ECSPI1_SS0_GPIO5_IO9	0x19
@@ -92,4 +175,12 @@
 			MX8MQ_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI	0x82
 		>;
 	};
+
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC		0xd6
+			MX8MQ_IOMUXC_SAI3_TXC_SAI3_TX_BCLK		0xd6
+			MX8MQ_IOMUXC_SAI3_TXD_SAI3_TX_DATA0		0xd6
+		>;
+	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts
index 173b9e9b2bbd..f6130167a1c7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dts
@@ -10,6 +10,36 @@
 / {
 	model = "ZII Ultra Zest Board";
 	compatible = "zii,imx8mq-ultra-zest", "zii,imx8mq-ultra", "fsl,imx8mq";
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "front";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound_codec>;
+		simple-audio-card,frame-master = <&sound_codec>;
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack Front",
+			"Headphone", "Headphone Jack Back";
+		simple-audio-card,routing =
+			"Headphone Jack Front", "HPA1 HPLEFT",
+			"Headphone Jack Front", "HPA1 HPRIGHT",
+			"Headphone Jack Back", "HPA2 HPLEFT",
+			"Headphone Jack Back", "HPA2 HPRIGHT",
+			"HPA1 LEFTIN", "HPL",
+			"HPA1 RIGHTIN", "HPR",
+			"HPA2 LEFTIN", "HPL",
+			"HPA2 RIGHTIN", "HPR";
+		simple-audio-card,aux-devs = <&hpa1>, <&hpa2>;
+
+		sound_cpu: simple-audio-card,cpu {
+			sound-dai = <&sai2>;
+		};
+
+		sound_codec: simple-audio-card,codec {
+			sound-dai = <&codec1>;
+			clocks = <&cs2000>;
+		};
+	};
 };
 
 &i2c4 {
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index fa7a041ffcfd..e6469e15bcbd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -77,6 +77,15 @@
 		regulator-always-on;
 	};
 
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		vin-supply = <&reg_3p3_main>;
+		regulator-name = "GEN_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
 	reg_usdhc2_vmmc: regulator-vsd-3v3 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_reg_usdhc2>;
@@ -102,6 +111,18 @@
 		           900000 0x0>;
 		regulator-always-on;
 	};
+
+	cs2000_ref: cs2000-ref {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24576000>;
+	};
+
+	cs2000_in_dummy: cs2000-in-dummy {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <0>;
+	};
 };
 
 &A53_0 {
@@ -286,6 +307,16 @@
 		             <18 IRQ_TYPE_EDGE_BOTH>;
 		interrupt-names = "a_det", "alert";
 	};
+
+	hpa2: amp@60 {
+		compatible = "ti,tpa6130a2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tpa2>;
+		reg = <0x60>;
+		power-gpio = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		Vdd-supply = <&reg_5p0_main>;
+		sound-name-prefix = "HPA2";
+	};
 };
 
 &i2c2 {
@@ -378,11 +409,36 @@
 		};
 	};
 
+	codec1: codec@18 {
+		compatible = "ti,tlv320dac3100";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_codec1>;
+		reg = <0x18>;
+		#sound-dai-cells = <0>;
+		HPVDD-supply = <&reg_3p3v>;
+		SPRVDD-supply = <&reg_3p3v>;
+		SPLVDD-supply = <&reg_3p3v>;
+		AVDD-supply = <&reg_3p3v>;
+		IOVDD-supply = <&reg_3p3v>;
+		DVDD-supply = <&vgen4_reg>;
+		reset-gpios = <&gpio3 3 GPIO_ACTIVE_LOW>;
+	};
+
 	eeprom@54 {
 		compatible = "atmel,24c128";
 		reg = <0x54>;
 	};
 
+	hpa1: amp@60 {
+		compatible = "ti,tpa6130a2";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_tpa1>;
+		reg = <0x60>;
+		power-gpio = <&gpio4 10 GPIO_ACTIVE_HIGH>;
+		Vdd-supply = <&reg_5p0_main>;
+		sound-name-prefix = "HPA1";
+	};
+
 	ds1341: rtc@68 {
 		compatible = "dallas,ds1341";
 		reg = <0x68>;
@@ -407,6 +463,16 @@
 		compatible = "zii,rave-wdt";
 		reg = <0x38>;
 	};
+
+	cs2000: clkgen@4e {
+		compatible = "cirrus,cs2000-cp";
+		reg = <0x4e>;
+		#clock-cells = <0>;
+		clock-names = "clk_in", "ref_clk";
+		clocks = <&cs2000_in_dummy>, <&cs2000_ref>;
+		assigned-clocks = <&cs2000>;
+		assigned-clock-rates = <24000000>;
+	};
 };
 
 &i2c4 {
@@ -416,6 +482,12 @@
 	status = "okay";
 };
 
+&sai2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai2>;
+	status = "okay";
+};
+
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
@@ -551,6 +623,12 @@
 		>;
 	};
 
+	pinctrl_codec1: dac1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CE2_B_GPIO3_IO3		0x41
+		>;
+	};
+
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
@@ -642,12 +720,32 @@
 		>;
 	};
 
+	pinctrl_sai2: sai2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC		0xd6
+			MX8MQ_IOMUXC_SAI2_TXC_SAI2_TX_BCLK		0xd6
+			MX8MQ_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0		0xd6
+		>;
+	};
+
 	pinctrl_switch_irq: switchgrp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_GPIO1_IO15_GPIO1_IO15		0x41
 		>;
 	};
 
+	pinctrl_tpa1: tpa6130-1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI1_TXFS_GPIO4_IO10		0x41
+		>;
+	};
+
+	pinctrl_tpa2: tpa6130-2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_GPIO1_IO08_GPIO1_IO8		0x41
+		>;
+	};
+
 	pinctrl_ts: tsgrp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_GPIO1_IO11_GPIO1_IO11		0x96
-- 
2.20.1

