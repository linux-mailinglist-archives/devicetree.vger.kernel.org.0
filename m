Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9258018D88
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726775AbfEIP6v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:51 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:40369 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726773AbfEIP6u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:50 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRW-00076Y-Sa; Thu, 09 May 2019 17:58:46 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-00062k-5p; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH 09/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC CSI Camera interface
Date:   Thu,  9 May 2019 17:58:26 +0200
Message-Id: <20190509155834.22838-10-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190509155834.22838-1-m.felsch@pengutronix.de>
References: <20190509155834.22838-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support according the SMARC Spec 1.1 [1] and provided schematics.

As specified in [1] the data lanes are shared to cover the csi and the
parallel case. The case depends on the baseboard so we hide muxing the
data lanes. The csi data lanes are not muxable at all.

[1] https://sget.org/standards/smarc

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index e0372687d8f4..19f97ab26e83 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -168,6 +168,18 @@
 		#size-cells = <0>;
 		status = "disabld";
 	};
+
+	i2c_cam: i2c-gpio-cam {
+		compatible = "i2c-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_i2c_gpio_cam>;
+		sda-gpios = <&gpio4 10 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>; /* ~100 kHz */
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabld";
+	};
 };
 
 /* CAN0 */
@@ -397,6 +409,13 @@
 		>;
 	};
 
+	pinctrl_i2c_gpio_cam: i2c-gpiocamgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_6__GPIO1_IO06	0x1b0b0 /* SCL */
+			MX6QDL_PAD_KEY_COL2__GPIO4_IO10	0x1b0b0 /* SDA */
+		>;
+	};
+
 	pinctrl_i2c_gpio_intern: i2c-gpiointerngrp {
 		fsl,pins = <
 			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30  0x1b0b0 /* SCL */
@@ -471,6 +490,12 @@
 		>;
 	};
 
+	pinctrl_mipi_csi: mipi-csigrp {
+		fsl,pins = <
+			MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1	0x000b0	/* CSI0/1 MCLK */
+		>;
+	};
+
 	pinctrl_mgmt_gpios: mgmt-gpiosgrp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_WAIT__GPIO5_IO00		0x1b0b0	/* LID#           */
@@ -571,6 +596,11 @@
 	};
 };
 
+&mipi_csi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mipi_csi>;
+};
+
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pcie>;
-- 
2.20.1

