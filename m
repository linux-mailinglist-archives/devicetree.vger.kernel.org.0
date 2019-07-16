Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 33AD76ABF2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 17:37:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388013AbfGPPhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 11:37:00 -0400
Received: from inva020.nxp.com ([92.121.34.13]:59170 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387966AbfGPPhA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jul 2019 11:37:00 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B7F1A1A000D;
        Tue, 16 Jul 2019 17:36:58 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 200231A0120;
        Tue, 16 Jul 2019 17:36:52 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 831434029F;
        Tue, 16 Jul 2019 23:36:43 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 12/15] arm64: dts: imx8qm: add dma ss support
Date:   Tue, 16 Jul 2019 23:14:46 +0800
Message-Id: <1563290089-11085-13-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DMA SS of MX8QM is mostly the same as the DMA part in MX8QXP ADMA SS
while it has one more instance for each of LPUART, ADC and LPI2C. And unlike
MX8QXP that flexcan clocks are shared between multiple CAN instances,
MX8QM has separate flexcan clock slice.

So we reuse the most part of common imx8-ss-dma.dtsi and add new things
based on it.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v1->v2:
 * change to the new two cell scu clk binding
---
 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
new file mode 100644
index 0000000..c75edad
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&dma_subsys {
+	uart4_lpcg: clock-controller@5a4a0000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a4a0000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_4 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		bit-offset = <0 16>;
+		clock-output-names = "uart4_lpcg_baud_clk",
+				     "uart4_lpcg_ipg_clk";
+	};
+};
+
+&lpuart0 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&lpuart1 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&lpuart2 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&lpuart3 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx7ulp-lpuart";
+};
+
+&i2c0 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&i2c1 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&i2c2 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&i2c3 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
-- 
2.7.4

