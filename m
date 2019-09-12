Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2390EB122A
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 17:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733075AbfILPcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 11:32:20 -0400
Received: from inva020.nxp.com ([92.121.34.13]:40490 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1733074AbfILPcU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Sep 2019 11:32:20 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E066D1A013D;
        Thu, 12 Sep 2019 17:32:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3AAAD1A06A6;
        Thu, 12 Sep 2019 17:32:11 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AD3E1402E3;
        Thu, 12 Sep 2019 23:32:04 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        oliver.graute@gmail.com, Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH V3 07/15] arm64: dts: imx8: switch to two cell scu clock binding
Date:   Thu, 12 Sep 2019 23:30:44 +0800
Message-Id: <1568302252-28066-8-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

switch to two cell scu clock binding

Tested-by: Oliver Graute <oliver.graute@kococonnector.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * no changes except rebase
v1->v2:
 * split from lpcg binding changes
---
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi | 24 +++++-----
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi | 20 ++++----
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi | 64 +++++++++++++++----------
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi      | 10 ++--
 4 files changed, 67 insertions(+), 51 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 39dfdcb..63ad3a8 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -116,7 +116,7 @@ adma_subsys: bus@59000000 {
 	uart0_lpcg: clock-controller@5a460000 {
 		reg = <0x5a460000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART0_CLK>,
+		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart0_lpcg_baud_clk",
@@ -127,7 +127,7 @@ adma_subsys: bus@59000000 {
 	uart1_lpcg: clock-controller@5a470000 {
 		reg = <0x5a470000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART1_CLK>,
+		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart1_lpcg_baud_clk",
@@ -138,7 +138,7 @@ adma_subsys: bus@59000000 {
 	uart2_lpcg: clock-controller@5a480000 {
 		reg = <0x5a480000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART2_CLK>,
+		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart2_lpcg_baud_clk",
@@ -149,7 +149,7 @@ adma_subsys: bus@59000000 {
 	uart3_lpcg: clock-controller@5a490000 {
 		reg = <0x5a490000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_UART3_CLK>,
+		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "uart3_lpcg_baud_clk",
@@ -163,7 +163,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C0_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_0>;
 		status = "disabled";
@@ -175,7 +175,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C1_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_1>;
 		status = "disabled";
@@ -187,7 +187,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C2_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_2>;
 		status = "disabled";
@@ -199,7 +199,7 @@ adma_subsys: bus@59000000 {
 		interrupt-parent = <&gic>;
 		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
 		clock-names = "per";
-		assigned-clocks = <&clk IMX_ADMA_I2C3_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		power-domains = <&pd IMX_SC_R_I2C_3>;
 		status = "disabled";
@@ -208,7 +208,7 @@ adma_subsys: bus@59000000 {
 	i2c0_lpcg: clock-controller@5ac00000 {
 		reg = <0x5ac00000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C0_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c0_lpcg_clk",
@@ -219,7 +219,7 @@ adma_subsys: bus@59000000 {
 	i2c1_lpcg: clock-controller@5ac10000 {
 		reg = <0x5ac10000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C1_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c1_lpcg_clk",
@@ -230,7 +230,7 @@ adma_subsys: bus@59000000 {
 	i2c2_lpcg: clock-controller@5ac20000 {
 		reg = <0x5ac20000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C2_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c2_lpcg_clk",
@@ -241,7 +241,7 @@ adma_subsys: bus@59000000 {
 	i2c3_lpcg: clock-controller@5ac30000 {
 		reg = <0x5ac30000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_ADMA_I2C3_CLK>,
+		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
 			 <&dma_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
 		clock-output-names = "i2c3_lpcg_clk",
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index 0a0e479..60f0cda 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -41,7 +41,7 @@ conn_subsys: bus@5b000000 {
 			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
 			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
 		clock-names = "ipg", "per", "ahb";
-		assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <200000000>;
 		power-domains = <&pd IMX_SC_R_SDHC_0>;
 		status = "disabled";
@@ -55,7 +55,7 @@ conn_subsys: bus@5b000000 {
 			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
 			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
 		clock-names = "ipg", "per", "ahb";
-		assigned-clocks = <&clk IMX_CONN_SDHC1_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <200000000>;
 		power-domains = <&pd IMX_SC_R_SDHC_1>;
 		fsl,tuning-start-tap = <20>;
@@ -71,7 +71,7 @@ conn_subsys: bus@5b000000 {
 			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
 			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
 		clock-names = "ipg", "per", "ahb";
-		assigned-clocks = <&clk IMX_CONN_SDHC2_CLK>;
+		assigned-clocks = <&clk IMX_SC_R_SDHC_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <200000000>;
 		power-domains = <&pd IMX_SC_R_SDHC_2>;
 		status = "disabled";
@@ -120,7 +120,7 @@ conn_subsys: bus@5b000000 {
 	sdhc0_lpcg: clock-controller@5b200000 {
 		reg = <0x5b200000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC0_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -133,7 +133,7 @@ conn_subsys: bus@5b000000 {
 	sdhc1_lpcg: clock-controller@5b210000 {
 		reg = <0x5b210000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC1_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -146,7 +146,7 @@ conn_subsys: bus@5b000000 {
 	sdhc2_lpcg: clock-controller@5b220000 {
 		reg = <0x5b220000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_SDHC2_CLK>,
+		clocks = <&clk IMX_SC_R_SDHC_2 IMX_SC_PM_CLK_PER>,
 			 <&conn_ipg_clk>, <&conn_axi_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
 				<IMX_LPCG_CLK_5>;
@@ -159,8 +159,8 @@ conn_subsys: bus@5b000000 {
 	enet0_lpcg: clock-controller@5b230000 {
 		reg = <0x5b230000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_ENET0_ROOT_CLK>,
-			 <&clk IMX_CONN_ENET0_ROOT_CLK>,
+		clocks = <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
 			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
@@ -176,8 +176,8 @@ conn_subsys: bus@5b000000 {
 	enet1_lpcg: clock-controller@5b240000 {
 		reg = <0x5b240000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_CONN_ENET1_ROOT_CLK>,
-			 <&clk IMX_CONN_ENET1_ROOT_CLK>,
+		clocks = <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
 			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index ff29e7f..2ffb9ee 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -156,9 +156,11 @@ lsio_subsys: bus@5d000000 {
 	pwm0_lpcg: clock-controller@5d400000 {
 		reg = <0x5d400000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM0_CLK>, <&clk IMX_LSIO_PWM0_CLK>,
-			 <&clk IMX_LSIO_PWM0_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM0_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -173,9 +175,11 @@ lsio_subsys: bus@5d000000 {
 	pwm1_lpcg: clock-controller@5d410000 {
 		reg = <0x5d410000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM1_CLK>, <&clk IMX_LSIO_PWM1_CLK>,
-			 <&clk IMX_LSIO_PWM1_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM1_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -190,9 +194,11 @@ lsio_subsys: bus@5d000000 {
 	pwm2_lpcg: clock-controller@5d420000 {
 		reg = <0x5d420000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM2_CLK>, <&clk IMX_LSIO_PWM2_CLK>,
-			 <&clk IMX_LSIO_PWM2_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM2_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -207,9 +213,11 @@ lsio_subsys: bus@5d000000 {
 	pwm3_lpcg: clock-controller@5d430000 {
 		reg = <0x5d430000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM3_CLK>, <&clk IMX_LSIO_PWM3_CLK>,
-			 <&clk IMX_LSIO_PWM3_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM3_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -224,9 +232,11 @@ lsio_subsys: bus@5d000000 {
 	pwm4_lpcg: clock-controller@5d440000 {
 		reg = <0x5d440000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM4_CLK>, <&clk IMX_LSIO_PWM4_CLK>,
-			 <&clk IMX_LSIO_PWM4_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM4_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -241,9 +251,11 @@ lsio_subsys: bus@5d000000 {
 	pwm5_lpcg: clock-controller@5d450000 {
 		reg = <0x5d450000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM5_CLK>, <&clk IMX_LSIO_PWM5_CLK>,
-			 <&clk IMX_LSIO_PWM5_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM5_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -258,9 +270,11 @@ lsio_subsys: bus@5d000000 {
 	pwm6_lpcg: clock-controller@5d460000 {
 		reg = <0x5d460000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM6_CLK>, <&clk IMX_LSIO_PWM6_CLK>,
-			 <&clk IMX_LSIO_PWM6_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM6_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
@@ -275,9 +289,11 @@ lsio_subsys: bus@5d000000 {
 	pwm7_lpcg: clock-controller@5d470000 {
 		reg = <0x5d470000 0x10000>;
 		#clock-cells = <1>;
-		clocks = <&clk IMX_LSIO_PWM7_CLK>, <&clk IMX_LSIO_PWM7_CLK>,
-			 <&clk IMX_LSIO_PWM7_CLK>, <&lsio_bus_clk>,
-			 <&clk IMX_LSIO_PWM7_CLK>;
+		clocks = <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
+			 <&lsio_bus_clk>,
+			 <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>;
 		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
 				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
 				<IMX_LPCG_CLK_6>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index e9f9466..15c1ce9 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -46,7 +46,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -57,7 +57,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -68,7 +68,7 @@
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -79,7 +79,7 @@
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			next-level-cache = <&A35_L2>;
-			clocks = <&clk IMX_A35_CLK>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
 			operating-points-v2 = <&a35_opp_table>;
 			#cooling-cells = <2>;
 		};
@@ -159,7 +159,7 @@
 
 		clk: clock-controller {
 			compatible = "fsl,imx8qxp-clk";
-			#clock-cells = <1>;
+			#clock-cells = <2>;
 			clocks = <&xtal32k &xtal24m>;
 			clock-names = "xtal_32KHz", "xtal_24Mhz";
 		};
-- 
2.7.4

