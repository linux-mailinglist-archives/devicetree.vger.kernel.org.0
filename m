Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0FA7E18D7E
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726632AbfEIP6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:48 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:53347 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726749AbfEIP6s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:48 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRS-00076V-2j; Thu, 09 May 2019 17:58:42 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-00062b-4K; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH 06/17] ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC Management pins
Date:   Thu,  9 May 2019 17:58:23 +0200
Message-Id: <20190509155834.22838-7-m.felsch@pengutronix.de>
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

Kontron don't route all of these pins to the i.MX6, some are routed
to the SoM CPLD.

[1] https://sget.org/standards/smarc

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index 577048f96f22..7a32767c35f1 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -321,6 +321,9 @@
 };
 
 &iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_mgmt_gpios>;
+
 	pinctrl_ecspi4: ecspi4grp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D21__ECSPI4_SCLK 0x100b1
@@ -437,6 +440,20 @@
 		>;
 	};
 
+	pinctrl_mgmt_gpios: mgmt-gpiosgrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_WAIT__GPIO5_IO00		0x1b0b0	/* LID#           */
+			MX6QDL_PAD_SD3_DAT7__GPIO6_IO17		0x1b0b0	/* SLEEP#         */
+			MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x1b0b0	/* CHARGING#      */
+			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0	/* CHARGER_PRSNT# */
+			MX6QDL_PAD_SD1_CLK__GPIO1_IO20		0x1b0b0	/* CARRIER_STBY#  */
+			MX6QDL_PAD_DI0_PIN4__GPIO4_IO20		0x1b0b0	/* BATLOW#        */
+			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1b0b0	/* TEST#          */
+			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0	/* VDD_IO_SEL_D#  */
+			MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x1b0b0 /* POWER_BTN#     */
+		>;
+	};
+
 	pinctrl_pcie: pciegrp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D18__GPIO3_IO18	0x1b0b0 /* PCI_A_PRSNT# */
-- 
2.20.1

