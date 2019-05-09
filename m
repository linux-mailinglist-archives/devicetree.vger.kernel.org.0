Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8FC8018D8A
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726772AbfEIP6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:52 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:50943 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726769AbfEIP6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:49 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRS-00076S-2k; Thu, 09 May 2019 17:58:42 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-00062S-2O; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org,
        Michael Grzeschik <m.grzeschik@pengutronix.de>
Subject: [PATCH 03/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SPI0 interface
Date:   Thu,  9 May 2019 17:58:20 +0200
Message-Id: <20190509155834.22838-4-m.felsch@pengutronix.de>
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

From: Michael Grzeschik <m.grzeschik@pengutronix.de>

Add support according the SMARC Spec 1.1 [1] and provided schematics.
Due to the lack of hardware the interface can't be tested right now.

[1] https://sget.org/standards/smarc

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index e546d46365f5..a92f6e31fd71 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -113,6 +113,14 @@
 	pinctrl-0 = <&pinctrl_flexcan2>;
 };
 
+/* SPI0 */
+&ecspi4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi4>;
+	cs-gpios = <&gpio3 24 GPIO_ACTIVE_HIGH>,
+		   <&gpio3 29 GPIO_ACTIVE_HIGH>;
+};
+
 /* GBE */
 &fec {
 	pinctrl-names = "default";
@@ -244,6 +252,19 @@
 };
 
 &iomuxc {
+	pinctrl_ecspi4: ecspi4grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D21__ECSPI4_SCLK 0x100b1
+			MX6QDL_PAD_EIM_D28__ECSPI4_MOSI 0x100b1
+			MX6QDL_PAD_EIM_D22__ECSPI4_MISO 0x100b1
+
+			/* SPI_IMX_CS2# - connected to internal flash */
+			MX6QDL_PAD_EIM_D24__GPIO3_IO24 0x1b0b0
+			/* SPI_IMX_CS0# - connected to SMARC SPI0_CS0# */
+			MX6QDL_PAD_EIM_D29__GPIO3_IO29 0x1b0b0
+		>;
+	};
+
 	pinctrl_flexcan1: flexcan1grp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x1b0b0
-- 
2.20.1

