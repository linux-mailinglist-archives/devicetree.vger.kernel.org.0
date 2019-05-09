Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2598818D8F
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726558AbfEIP6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:54 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:59249 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726753AbfEIP6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:49 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRS-00076X-2g; Thu, 09 May 2019 17:58:42 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-00062h-5O; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH 08/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC HDMI interface
Date:   Thu,  9 May 2019 17:58:25 +0200
Message-Id: <20190509155834.22838-9-m.felsch@pengutronix.de>
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
Due to the lack of hardware the interface can't be tested right now.

Since the imx6 HDMI signals are not muxable we only have to add the
dedicated i2c-hdmi signals.

[1] https://sget.org/standards/smarc

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index 9b8a1d99d967..e0372687d8f4 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -313,6 +313,13 @@
 	};
 };
 
+/* HDMI_CTRL */
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+};
+
 /* I2C_PM */
 &i2c3 {
 	clock-frequency = <100000>;
@@ -404,6 +411,13 @@
 		>;
 	};
 
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
+			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
+		>;
+	};
+
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
-- 
2.20.1

