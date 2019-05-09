Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A68A18D8B
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726560AbfEIP6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:53 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:47419 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726764AbfEIP6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:49 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRS-00076g-2v; Thu, 09 May 2019 17:58:42 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-000638-9s; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH 17/17] ARCH: arm: dts: imx6dl-kontron-samx6i: add Kontron SMARC Dual-Lite/Solo SoM
Date:   Thu,  9 May 2019 17:58:34 +0200
Message-Id: <20190509155834.22838-18-m.felsch@pengutronix.de>
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

Add dtsi for iMX6 Dual-Lite/Solo based SMARC SoM's from Kontron.

The differences between the quad/dual and the dual-lite/solo are:
* dual-lite/solo has no 2nd IPU and maps those signals as GPIOs
* dual-lite/solo has only two chip select signals for the SMARC SPI0
  interface
* dual-lite/solo has no pcie_wake# signal

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi

diff --git a/arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi
new file mode 100644
index 000000000000..a864fdbd5f16
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+/*
+ * Copyright 2019 (C) Pengutronix, Marco Felsch <kernel@pengutronix.de>
+ */
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-kontron-samx6i.dtsi"
+
+/ {
+	model = "Kontron SMARC sAMX6i Dual-Lite/Solo";
+	compatible = "kontron,imx6dl-samx6i", "fsl,imx6dl";
+};
-- 
2.20.1

