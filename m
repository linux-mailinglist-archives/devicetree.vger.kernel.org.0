Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB7D718D93
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:59:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726769AbfEIP6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:54 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:54749 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726761AbfEIP6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:49 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRS-00076f-2t; Thu, 09 May 2019 17:58:42 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-000635-9Q; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH 16/17] ARCH: arm: dts: imx6q-kontron-samx6i: add Kontron SMARC Quad/Dual SoM
Date:   Thu,  9 May 2019 17:58:33 +0200
Message-Id: <20190509155834.22838-17-m.felsch@pengutronix.de>
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

Add dtsi for iMX6 Quad/Dual based SMARC SoM's from Kontron.

The differences between the quad/dual and the dual-lite/solo are:
 * quad/dual has a 2nd IPU
 * quad/dual has three chip selects for SMARC SPI0 interface
 * quad/dual has a pcie_wake# signal

Only the 3th spi-cs signal is added by this commit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi | 36 +++++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi

diff --git a/arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi
new file mode 100644
index 000000000000..2618eccfe50d
--- /dev/null
+++ b/arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+/*
+ * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
+ */
+
+#include "imx6q.dtsi"
+#include "imx6qdl-kontron-samx6i.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Kontron SMARC sAMX6i Quad/Dual";
+	compatible = "kontron,imx6q-samx6i", "fsl,imx6q";
+};
+
+/* Quad/Dual SoMs have 3 chip-select signals */
+&ecspi4 {
+	fsl,spi-num-chipselects = <3>;
+	cs-gpios = <&gpio3 24 GPIO_ACTIVE_HIGH>,
+		   <&gpio3 29 GPIO_ACTIVE_HIGH>,
+		   <&gpio3 25 GPIO_ACTIVE_HIGH>;
+};
+
+&pinctrl_ecspi4 {
+	fsl,pins = <
+		MX6QDL_PAD_EIM_D21__ECSPI4_SCLK 0x100b1
+		MX6QDL_PAD_EIM_D28__ECSPI4_MOSI 0x100b1
+		MX6QDL_PAD_EIM_D22__ECSPI4_MISO 0x100b1
+
+		/* SPI4_IMX_CS2# - connected to internal flash */
+		MX6QDL_PAD_EIM_D24__GPIO3_IO24 0x1b0b0
+		/* SPI4_IMX_CS0# - connected to SMARC SPI0_CS0# */
+		MX6QDL_PAD_EIM_D29__GPIO3_IO29 0x1b0b0
+		/* SPI4_CS3# - connected to  SMARC SPI0_CS1# */
+		MX6QDL_PAD_EIM_D25__GPIO3_IO25 0x1b0b0
+	>;
+};
-- 
2.20.1

