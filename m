Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61A2F3A6CBD
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 19:07:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233843AbhFNRJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 13:09:29 -0400
Received: from ns.lynxeye.de ([87.118.118.114]:36328 "EHLO lynxeye.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234056AbhFNRJ3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Jun 2021 13:09:29 -0400
Received: by lynxeye.de (Postfix, from userid 501)
        id 0DD3AE74225; Mon, 14 Jun 2021 19:06:54 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on lynxeye.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=ham version=3.3.1
Received: from astat.fritz.box (a89-183-116-43.net-htp.de [89.183.116.43])
        by lynxeye.de (Postfix) with ESMTPA id 575CAE7422A;
        Mon, 14 Jun 2021 19:06:48 +0200 (CEST)
From:   Lucas Stach <dev@lynxeye.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH v4 5/5] arm64: dts: imx8mq: add support for MNT Reform2
Date:   Mon, 14 Jun 2021 19:06:33 +0200
Message-Id: <20210614170633.31638-5-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210614170633.31638-1-dev@lynxeye.de>
References: <20210614170633.31638-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a basic devicetree for the MNT Reform2 DIY laptop. Not all
of the board periperals are enabled yet, as some of them still require
kernel patches to work properly. The nodes for those peripherals will
be added as soon as the required patches are upstream.

The following has been tested to work:
- UART console
- SD card
- eMMC
- Gigabit Ethernet
- USB (internal Keyboard, Mouse, external ports)
- M.2 PCIe port

Co-developed-by: Lukas F. Hartmann <lukas@mntre.com>
Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
v2: Fix checkpatch complaints.
v3:
- split out binding
- move status to end of usb node property list
- rename RTC node name to generic name
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mq-mnt-reform2.dts | 164 ++++++++++++++++++
 2 files changed, 165 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 44890d56c194..e45c8f9c8912 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -54,6 +54,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-r2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-r3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-r4.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mq-mnt-reform2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-phanbell.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
new file mode 100644
index 000000000000..099b0472db5d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
@@ -0,0 +1,164 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/*
+ * Copyright 2019-2021 MNT Research GmbH
+ * Copyright 2021 Lucas Stach <dev@lynxeye.de>
+ */
+
+/dts-v1/;
+
+#include "imx8mq-nitrogen-som.dtsi"
+
+/ {
+	model = "MNT Reform 2";
+	compatible = "mntre,reform2", "boundary,imx8mq-nitrogen8m-som", "fsl,imx8mq";
+
+	pcie1_refclk: clock-pcie1-refclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
+	reg_main_5v: regulator-main-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	reg_main_3v3: regulator-main-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_main_usb: regulator-main-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "USB_PWR";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_main_5v>;
+	};
+};
+
+&fec1 {
+	status = "okay";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	rtc@68 {
+		compatible = "nxp,pcf8523";
+		reg = <0x68>;
+	};
+};
+
+&pcie1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie1>;
+	reset-gpio = <&gpio3 23 GPIO_ACTIVE_LOW>;
+	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
+		 <&clk IMX8MQ_CLK_PCIE2_AUX>,
+		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
+		 <&pcie1_refclk>;
+	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
+	status = "okay";
+};
+
+&reg_1p8v {
+	vin-supply = <&reg_main_5v>;
+};
+
+&reg_snvs {
+	vin-supply = <&reg_main_5v>;
+};
+
+&reg_arm_dram {
+	vin-supply = <&reg_main_5v>;
+};
+
+&reg_dram_1p1v {
+	vin-supply = <&reg_main_5v>;
+};
+
+&reg_soc_gpu_vpu {
+	vin-supply = <&reg_main_5v>;
+};
+
+&snvs_rtc {
+	status = "disabled";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usb3_phy0 {
+	vbus-supply = <&reg_main_usb>;
+	status = "okay";
+};
+
+&usb3_phy1 {
+	vbus-supply = <&reg_main_usb>;
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc2 {
+	assigned-clocks = <&clk IMX8MQ_CLK_USDHC2>;
+	assigned-clock-rates = <200000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	vqmmc-supply = <&reg_main_3v3>;
+	vmmc-supply = <&reg_main_3v3>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL			0x4000007f
+			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA			0x4000007f
+		>;
+	};
+
+	pinctrl_pcie1: pcie1grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI5_RXD2_GPIO3_IO23		0x16
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_UART2_RXD_UART2_DCE_RX		0x45
+			MX8MQ_IOMUXC_UART2_TXD_UART2_DCE_TX		0x45
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK			0x83
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD			0xc3
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0		0xc3
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1		0xc3
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2		0xc3
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3		0xc3
+		>;
+	};
+};
-- 
2.31.1

