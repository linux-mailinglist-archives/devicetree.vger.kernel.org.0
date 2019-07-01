Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B86B719D1C
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 14:18:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727202AbfEJMS2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 08:18:28 -0400
Received: from inva020.nxp.com ([92.121.34.13]:39100 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727071AbfEJMS2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 10 May 2019 08:18:28 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BC7E71A0169;
        Fri, 10 May 2019 14:18:25 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AF61F1A003A;
        Fri, 10 May 2019 14:18:25 +0200 (CEST)
Received: from jana.ea.freescale.net (gw_auto.ea.freescale.net [10.171.94.100])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2E915205ED;
        Fri, 10 May 2019 14:18:25 +0200 (CEST)
From:   Leonard Crestez <leonard.crestez@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Robin Gong <yibin.gong@nxp.com>,
        Angus Ainslie <angus@akkea.ca>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] arm64: dts: imx8mm-evk: Add BD71847 PMIC
Date:   Fri, 10 May 2019 15:18:22 +0300
Message-Id: <04a79ff9811691cb365bfcaf3f0b250706bce295.1557490424.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The BUCK2 regulator is used for cpufreq voltage control, otherwise
configuration is mostly static.

This uses the newly-implemented rohm,reset-snvs-powered property to
properly handle the SNVS state of imx8mm.

Between BD71837 and BD71847 the BUCK3/4 regulators were removed but
datasheet and board schematics kept the names for BUCK5/6/7/8. The
driver however renumbered 5/6/7/8 to 3/4/5/6. Use the names from DT
bindings and add comments to signal this.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Reviewed-by: Rob Herring <robh@kernel.org>

---
I apologize for sending base64 in the past, it's caused by IT policy but I
found a workaround and hopefully this arrives in plain-text as intended.

Changes since v2:
 - Replace regulator-compatible with regulator-name (Shawn)
Link to v2: https://patchwork.kernel.org/patch/10913177/

Changes since v1:
 - Move compatible property first
 - Remove address/size numbering from regulators list
Link to v1: https://marc.info/?l=linux-clk&m=155530430429151&w=2

 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 131 +++++++++++++++++++++++++++
 1 file changed, 131 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index 2d5d89475b76..f8ff0a4b8961 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -37,10 +37,14 @@
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
 };
 
+&A53_0 {
+	cpu-supply = <&buck2_reg>;
+};
+
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec1>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy0>;
@@ -93,10 +97,124 @@
 	pinctrl-0 = <&pinctrl_wdog>;
 	fsl,ext-reset-output;
 	status = "okay";
 };
 
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@4b {
+		compatible = "rohm,bd71847";
+		reg = <0x4b>;
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 GPIO_ACTIVE_LOW>;
+		rohm,reset-snvs-powered;
+
+		regulators {
+			buck1_reg: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+				rohm,dvs-run-voltage = <1000000>;
+				rohm,dvs-idle-voltage = <900000>;
+			};
+
+			buck3_reg: BUCK3 {
+				// BUCK5 in datasheet
+				regulator-name = "BUCK3";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4_reg: BUCK4 {
+				// BUCK6 in datasheet
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5_reg: BUCK5 {
+				// BUCK7 in datasheet
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1605000>;
+				regulator-max-microvolt = <1995000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6_reg: BUCK6 {
+				// BUCK8 in datasheet
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo6_reg: LDO6 {
+				regulator-name = "LDO6";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 
 	pinctrl_fec1: fec1grp {
 		fsl,pins = <
@@ -122,10 +240,23 @@
 		fsl,pins = <
 			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
 		>;
 	};
 
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c3
+		>;
+	};
+
+	pinctrl_pmic: pmicirq {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x41
+		>;
+	};
+
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
 		fsl,pins = <
 			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
 		>;
 	};
-- 
2.7.4

