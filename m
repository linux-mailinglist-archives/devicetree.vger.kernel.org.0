Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1C6434D025
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 14:34:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbhC2MeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 08:34:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231178AbhC2MeN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 08:34:13 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1142FC061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 05:34:13 -0700 (PDT)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1lQr5v-0003Ij-4D; Mon, 29 Mar 2021 14:34:11 +0200
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1lQr5u-0004YI-Ci; Mon, 29 Mar 2021 14:34:10 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mp-evk: Add PMIC device
Date:   Mon, 29 Mar 2021 14:34:09 +0200
Message-Id: <20210329123409.26975-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The imx8mp-evk uses an PCA9450C as PMIC that supplies various
regulators.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
Hello,

this is formally v2 of https://lore.kernel.org/r/20210326142459.30679-1-u.kleine-koenig@pengutronix.de
where I claimed there was no binding for the PMIC but Fabio caught me
:-)

Best regards
Uwe

 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 99 ++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index 7db4273cc88b..3488d7dd14e5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -102,6 +102,92 @@ ethphy1: ethernet-phy@1 {
 	};
 };
 
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@25 {
+		compatible = "nxp,pca9450c";
+		reg = <0x25>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <720000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <720000>;
+				regulator-max-microvolt = <1025000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1650000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <1045000>;
+				regulator-max-microvolt = <1155000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1650000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1710000>;
+				regulator-max-microvolt = <1890000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
 &i2c3 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
@@ -227,6 +313,13 @@ MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16	0x19
 		>;
 	};
 
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x400001c3
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x400001c3
+		>;
+	};
+
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL		0x400001c3
@@ -234,6 +327,12 @@ MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA		0x400001c3
 		>;
 	};
 
+	pinctrl_pmic: pmicgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03	0x000001c0
+		>;
+	};
+
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x41
-- 
2.29.2

