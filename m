Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 685AF28F8C
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 05:21:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731809AbfEXDVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 23:21:40 -0400
Received: from inva021.nxp.com ([92.121.34.21]:53458 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729972AbfEXDVk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 23:21:40 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4E3C3200109;
        Fri, 24 May 2019 05:21:38 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5A65020013F;
        Fri, 24 May 2019 05:21:34 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6C4A9402DB;
        Fri, 24 May 2019 11:21:29 +0800 (SGT)
From:   Olivia Yin <olivia.yin@nxp.com>
To:     olivia.yin@nxp.com
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: firmware: imx-scu: new binding to parse clocks from device tree
Date:   Fri, 24 May 2019 11:23:25 +0800
Message-Id: <20190524032325.39688-1-olivia.yin@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dong Aisheng <aisheng.dong@nxp.com>

There's a few limitations on the original one cell clock binding
(#clock-cells = <1>) that we have to define all clock IDs for device
tree to reference. This may cause troubles if we want to use common
clock IDs for multi platforms support when the clock of those platforms
are mostly the same.
e.g. Current clock IDs name are defined with SS prefix.

However the device may reside in different SS across CPUs, that means the
SS prefix may not valid anymore for a new SoC. Furthermore, the device
availability of those clocks may also vary a bit.

For such situation, We formerly planned to add all new IDs for each SS
and dynamically check availability for different SoC in driver. That can
be done but that may involve a lot effort and may result in more changes
and duplicated code in driver, also make device tree upstreaming hard which
depends on Clock IDs.

To relief this situation, we want to move the clock definition into
device tree which can fully decouple the dependency of Clock ID definition
from device tree. This can make us write a full generic clock driver
for SCU based SoCs. No more frequent changes needed in clock driver
any more.

In the meanwhile, we can also use the existence of clock nodes in device
tree to address the device and clock availability differences across
different SoCs.

For SCU clocks, only two params required. The first one is resource id
which is encoded in reg property and the second is clock type index
which is encoded in generic clock-indices property they're not continuously.

And as we also want to support clock set parent function, 'clocks' property
is also used to pass all the possible input parents.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v1->v2:
 * changed to one cell binding inspired by arm,scpi.txt
   Documentation/devicetree/bindings/arm/arm,scpi.txt
   Resource ID is encoded in 'reg' property.
   Clock type is encoded in generic clock-indices property.
   Then we don't have to search all the DT nodes to fetch
   those two value to construct clocks which is relatively
   low efficiency.
 * Add required power-domain property as well.
---
 .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 45 ++++++++++++++++++----
 include/dt-bindings/firmware/imx/rsrc.h            | 17 ++++++++
 2 files changed, 54 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 5d7dbab..2f46e89 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -89,6 +89,27 @@ Required properties:
 			  "fsl,imx8qm-clock"
 			  "fsl,imx8qxp-clock"
 			followed by "fsl,scu-clk"
+- #address-cells:	Should be 1.
+- #size-cells:		Should be 0.
+
+Sub nodes are required to represent all available SCU clocks within this
+hardware subsystem and the following properties are needed:
+
+- reg:			Should contain the Resource ID of this SCU clock.
+- #clock-cells:		Should be 1.
+- clock-indices:	Index of all clock types supported by this SCU clock.
+			The order should match the clock-output-names array.
+			Refer to <include/dt-bindings/firmware/imx/rsrc.h> for
+			available clock types supported by SCU.
+- clock-output-names:	Shall be the corresponding names of the outputs.
+- power-domains:	Should contain the power domain used by this SCU clock.
+
+Optional properties:
+- clocks:		Shall be the input parent clock(s) phandle for the clock.
+			For multiplexed clocks, the list order must match the hardware
+			programming order.
+
+Legacy Clock binding (No sub-nodes which is DEPRECATED):
 - #clock-cells:		Should be 1. Contains the Clock ID value.
 - clocks:		List of clock specifiers, must contain an entry for
 			each required entry in clock-names
@@ -144,6 +165,21 @@ lsio_mu1: mailbox@5d1c0000 {
 	#mbox-cells = <2>;
 };
 
+conn-scu-clock-controller {
+	compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	uart0_clk: clock-scu@57 {
+		reg = <57>;
+		#clock-cells = <1>;
+		clock-indices = <IMX_SC_PM_CLK_PER>;
+		clock-output-names = "uart0_clk";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+	};
+	...
+}
+
 firmware {
 	scu {
 		compatible = "fsl,imx-scu";
@@ -160,11 +196,6 @@ firmware {
 			  &lsio_mu1 1 3
 			  &lsio_mu1 3 3>;
 
-		clk: clk {
-			compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
-			#clock-cells = <1>;
-		};
-
 		iomuxc {
 			compatible = "fsl,imx8qxp-iomuxc";
 
@@ -192,8 +223,6 @@ serial@5a060000 {
 	...
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
-	clocks = <&clk IMX8QXP_UART0_CLK>,
-		 <&clk IMX8QXP_UART0_IPG_CLK>;
-	clock-names = "per", "ipg";
+	clocks = <&uart0_clk IMX_SC_PM_CLK_PER>;
 	power-domains = <&pd IMX_SC_R_UART_0>;
 };
diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
index 4e61f64..fbeaca7 100644
--- a/include/dt-bindings/firmware/imx/rsrc.h
+++ b/include/dt-bindings/firmware/imx/rsrc.h
@@ -547,4 +547,21 @@
 #define IMX_SC_R_ATTESTATION		545
 #define IMX_SC_R_LAST			546
 
+/*
+ * Defines for SC PM CLK
+ */
+#define IMX_SC_PM_CLK_SLV_BUS		0	/* Slave bus clock */
+#define IMX_SC_PM_CLK_MST_BUS		1	/* Master bus clock */
+#define IMX_SC_PM_CLK_PER		2	/* Peripheral clock */
+#define IMX_SC_PM_CLK_PHY		3	/* Phy clock */
+#define IMX_SC_PM_CLK_MISC		4	/* Misc clock */
+#define IMX_SC_PM_CLK_MISC0		0	/* Misc 0 clock */
+#define IMX_SC_PM_CLK_MISC1		1	/* Misc 1 clock */
+#define IMX_SC_PM_CLK_MISC2		2	/* Misc 2 clock */
+#define IMX_SC_PM_CLK_MISC3		3	/* Misc 3 clock */
+#define IMX_SC_PM_CLK_MISC4		4	/* Misc 4 clock */
+#define IMX_SC_PM_CLK_CPU		2	/* CPU clock */
+#define IMX_SC_PM_CLK_PLL		4	/* PLL */
+#define IMX_SC_PM_CLK_BYPASS		4	/* Bypass clock */
+
 #endif /* __DT_BINDINGS_RSCRC_IMX_H */
-- 
2.7.4

