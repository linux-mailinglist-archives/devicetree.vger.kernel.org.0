Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25E1C479652
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 22:36:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229600AbhLQVgW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 16:36:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbhLQVgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 16:36:22 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA77FC06173E
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 13:36:21 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1myKtn-00064s-95; Fri, 17 Dec 2021 22:36:19 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v2 2/2] arm64: dts: imx: add Protonic PRT8MM board
Date:   Fri, 17 Dec 2021 22:36:17 +0100
Message-Id: <20211217213617.3793534-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217213617.3793534-1-l.stach@pengutronix.de>
References: <20211217213617.3793534-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: David Jander <david@protonic.nl>

The Protonic PRT8MM is a low-cost agricultural Virtual Terminal. This
commit adds most of the board functionality sans the display output,
as the i.MX8MM display support isn't ready yet.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../boot/dts/freescale/imx8mm-prt8mm.dts      | 304 ++++++++++++++++++
 1 file changed, 304 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-prt8mm.dts

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-prt8mm.dts b/arch/arm64/boot/dts/freescale/imx8mm-prt8mm.dts
new file mode 100644
index 000000000000..13330ad67760
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-prt8mm.dts
@@ -0,0 +1,304 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2020 Protonic Holland
+ * Copyright 2019 NXP
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/usb/pd.h>
+#include "imx8mm.dtsi"
+
+/ {
+	model = "Protonic PRT8MM";
+	compatible = "prt,prt8mm", "fsl,imx8mm";
+
+	chosen {
+		stdout-path = &uart4;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x40000000 0 0x40000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_leds>;
+
+		debug-led0 {
+			label = "DEBUG_LED0";
+			gpios = <&gpio3 0 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		debug-led1 {
+			label = "DEBUG_LED1";
+			gpios = <&gpio3 1 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "cpu";
+		};
+	};
+
+	sound-ssm2518 {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "ssm2518-audio";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&cpudai>;
+		simple-audio-card,bitclock-master = <&cpudai>;
+
+		cpudai: simple-audio-card,cpu {
+			sound-dai = <&sai3>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&ssm2518>;
+			clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	ssm2518: audio-codec@34 {
+		compatible = "adi,ssm2518";
+		reg = <0x34>;
+		#sound-dai-cells = <0>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	regulator@60 {
+		compatible = "fcs,fan53555";
+		reg = <0x60>;
+		regulator-name = "0V9_CORE";
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <980000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	rtc@51 {
+		compatible = "nxp,pcf85363";
+		reg = <0x51>;
+	};
+
+	temp-sense@70 {
+		compatible = "ti,tmp103";
+		reg = <0x70>;
+	};
+
+	touchscreeen@5d {
+		compatible = "goodix,gt911";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touchscreen>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <8 IRQ_TYPE_NONE>;
+		irq-gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&sai3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai3>;
+	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
+	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <12288000>;
+	fsl,sai-mclk-direction-output;
+	fsl,sai-asynchronous;
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1>;
+	dr_mode = "host";
+	disable-over-current;
+	power-active-high;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	assigned-clocks = <&clk IMX8MM_CLK_USDHC2>;
+	assigned-clock-rates = <100000000>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
+	assigned-clock-rates = <400000000>;
+	bus-width = <8>;
+	non-removable;
+	no-sdio;
+	no-sd;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_gpio_leds: ledsgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_ALE_GPIO3_IO0			0x00
+			MX8MM_IOMUXC_NAND_CE0_B_GPIO3_IO1		0x00
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400000c3
+			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400000c3
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL			0x400000c3
+			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA			0x400000c3
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL			0x400000c3
+			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400000c3
+		>;
+	};
+
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI3_TXFS_SAI3_TX_SYNC		0xd6
+			MX8MM_IOMUXC_SAI3_TXC_SAI3_TX_BCLK		0xd6
+			MX8MM_IOMUXC_SAI3_MCLK_SAI3_MCLK		0xd6
+			MX8MM_IOMUXC_SAI3_TXD_SAI3_TX_DATA0		0xd6
+		>;
+	};
+
+	pinctrl_touchscreen: tsgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO08_GPIO1_IO8		0x80
+			MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x80
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART4_RXD_UART4_DCE_RX		0x040
+			MX8MM_IOMUXC_UART4_TXD_UART4_DCE_TX		0x040
+		>;
+	};
+
+	pinctrl_usbotg1: usbotg1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO12_USB1_OTG_PWR		0x000
+			MX8MM_IOMUXC_GPIO1_IO13_USB1_OTG_OC		0x000
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x190
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d0
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d0
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d0
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d0
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d0
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x0d4
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x190
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x194
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x196
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
+		>;
+	};
+};
-- 
2.30.2

