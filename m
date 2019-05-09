Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A65E18D81
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726765AbfEIP6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:48 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:57131 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726631AbfEIP6s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:48 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRS-00076T-2j; Thu, 09 May 2019 17:58:42 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-00062V-39; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH 04/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SDIO interface
Date:   Thu,  9 May 2019 17:58:21 +0200
Message-Id: <20190509155834.22838-5-m.felsch@pengutronix.de>
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

[1] https://sget.org/standards/smarc

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index a92f6e31fd71..b96684ff92e8 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -364,6 +364,21 @@
 		>;
 	};
 
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX6QDL_PAD_SD3_CLK__SD3_CLK 0x17059
+			MX6QDL_PAD_SD3_CMD__SD3_CMD 0x17059
+			MX6QDL_PAD_SD3_DAT0__SD3_DATA0 0x17059
+			MX6QDL_PAD_SD3_DAT1__SD3_DATA1 0x17059
+			MX6QDL_PAD_SD3_DAT2__SD3_DATA2 0x17059
+			MX6QDL_PAD_SD3_DAT3__SD3_DATA3 0x17059
+
+			MX6QDL_PAD_NANDF_CS1__GPIO6_IO14 0x1b0b0 /* CD */
+			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26 0x1b0b0 /* WP */
+			MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x1b0b0 /* PWR_EN */
+		>;
+	};
+
 	pinctrl_usdhc4: usdhc4grp {
 		fsl,pins = <
 			MX6QDL_PAD_SD4_CLK__SD4_CLK 0x17059
@@ -428,6 +443,15 @@
 	vbus-supply = <&reg_5p0v_s0>;
 };
 
+/* SDIO */
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	cd-gpios = <&gpio6 14 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio1 26 GPIO_ACTIVE_HIGH>;
+	no-1-8-v;
+};
+
 /* SDMMC */
 &usdhc4 {
 	/* Internal eMMC, optional on some boards */
-- 
2.20.1

