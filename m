Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 570D46ABEE
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 17:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387770AbfGPPg4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 11:36:56 -0400
Received: from inva021.nxp.com ([92.121.34.21]:49118 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387958AbfGPPg4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Jul 2019 11:36:56 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 968A4200060;
        Tue, 16 Jul 2019 17:36:53 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F5E520023D;
        Tue, 16 Jul 2019 17:36:47 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EBE9E402FF;
        Tue, 16 Jul 2019 23:36:38 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH v2 08/15] arm64: dts: imx8: switch to new lpcg clock binding
Date:   Tue, 16 Jul 2019 23:14:42 +0800
Message-Id: <1563290089-11085-9-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

switch to new lpcg clock binding

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
 v1->v2: split scu clock changes
---
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi    | 30 ++++++++-------
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi    | 44 +++++++++++-----------
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi    | 13 ++++---
 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi |  4 --
 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi |  4 --
 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi |  4 --
 6 files changed, 46 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 7dbc4db..d5374b3 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -19,17 +19,11 @@ adma_subsys: bus@59000000 {
 		clock-output-names = "dma_ipg_clk";
 	};
 
-	/* LPCG clocks */
-	adma_lpcg: clock-controller@59000000 {
-		reg = <0x59000000 0x2000000>;
-		#clock-cells = <1>;
-	};
-
 	adma_lpuart0: serial@5a060000 {
 		reg = <0x5a060000 0x1000>;
 		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
+		clocks = <&uart0_lpcg 0>;
 		clock-names = "ipg";
 		power-domains = <&pd IMX_SC_R_UART_0>;
 		status = "disabled";
@@ -39,7 +33,7 @@ adma_subsys: bus@59000000 {
 		reg = <0x5a070000 0x1000>;
 		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
+		clocks = <&uart1_lpcg 0>;
 		clock-names = "ipg";
 		power-domains = <&pd IMX_SC_R_UART_1>;
 		status = "disabled";
@@ -49,7 +43,7 @@ adma_subsys: bus@59000000 {
 		reg = <0x5a080000 0x1000>;
 		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
+		clocks = <&uart2_lpcg 0>;
 		clock-names = "ipg";
 		power-domains = <&pd IMX_SC_R_UART_2>;
 		status = "disabled";
@@ -59,13 +53,14 @@ adma_subsys: bus@59000000 {
 		reg = <0x5a090000 0x1000>;
 		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
+		clocks = <&uart3_lpcg 0>;
 		clock-names = "ipg";
 		power-domains = <&pd IMX_SC_R_UART_3>;
 		status = "disabled";
 	};
 
 	uart0_lpcg: clock-controller@5a460000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5a460000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
@@ -77,6 +72,7 @@ adma_subsys: bus@59000000 {
 	};
 
 	uart1_lpcg: clock-controller@5a470000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5a470000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
@@ -88,6 +84,7 @@ adma_subsys: bus@59000000 {
 	};
 
 	uart2_lpcg: clock-controller@5a480000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5a480000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
@@ -99,6 +96,7 @@ adma_subsys: bus@59000000 {
 	};
 
 	uart3_lpcg: clock-controller@5a490000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5a490000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
@@ -113,7 +111,7 @@ adma_subsys: bus@59000000 {
 		reg = <0x5a800000 0x4000>;
 		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C0_CLK>;
+		clocks = <&i2c0_lpcg 0>;
 		clock-names = "per";
 		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
@@ -125,7 +123,7 @@ adma_subsys: bus@59000000 {
 		reg = <0x5a810000 0x4000>;
 		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C1_CLK>;
+		clocks = <&i2c1_lpcg 0>;
 		clock-names = "per";
 		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
@@ -137,7 +135,7 @@ adma_subsys: bus@59000000 {
 		reg = <0x5a820000 0x4000>;
 		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C2_CLK>;
+		clocks = <&i2c2_lpcg 0>;
 		clock-names = "per";
 		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
@@ -149,7 +147,7 @@ adma_subsys: bus@59000000 {
 		reg = <0x5a830000 0x4000>;
 		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gic>;
-		clocks = <&adma_lpcg IMX_ADMA_LPCG_I2C3_CLK>;
+		clocks = <&i2c3_lpcg 0>;
 		clock-names = "per";
 		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
@@ -158,6 +156,7 @@ adma_subsys: bus@59000000 {
 	};
 
 	i2c0_lpcg: clock-controller@5ac00000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5ac00000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
@@ -169,6 +168,7 @@ adma_subsys: bus@59000000 {
 	};
 
 	i2c1_lpcg: clock-controller@5ac10000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5ac10000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
@@ -180,6 +180,7 @@ adma_subsys: bus@59000000 {
 	};
 
 	i2c2_lpcg: clock-controller@5ac20000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5ac20000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
@@ -191,6 +192,7 @@ adma_subsys: bus@59000000 {
 	};
 
 	i2c3_lpcg: clock-controller@5ac30000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5ac30000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index c6363de..a53e51b 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -37,9 +37,9 @@ conn_subsys: bus@5b000000 {
 		interrupt-parent = <&gic>;
 		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0x5b010000 0x10000>;
-		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC0_IPG_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_PER_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_SDHC0_HCLK>;
+		clocks = <&sdhc0_lpcg 1>,
+			 <&sdhc0_lpcg 0>,
+			 <&sdhc0_lpcg 2>;
 		clock-names = "ipg", "per", "ahb";
 		assigned-clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <200000000>;
@@ -51,9 +51,9 @@ conn_subsys: bus@5b000000 {
 		interrupt-parent = <&gic>;
 		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0x5b020000 0x10000>;
-		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC1_IPG_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_PER_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_SDHC1_HCLK>;
+		clocks = <&sdhc1_lpcg 1>,
+			 <&sdhc1_lpcg 0>,
+			 <&sdhc1_lpcg 2>;
 		clock-names = "ipg", "per", "ahb";
 		assigned-clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <200000000>;
@@ -67,9 +67,9 @@ conn_subsys: bus@5b000000 {
 		interrupt-parent = <&gic>;
 		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0x5b030000 0x10000>;
-		clocks = <&conn_lpcg IMX_CONN_LPCG_SDHC2_IPG_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_PER_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_SDHC2_HCLK>;
+		clocks = <&sdhc2_lpcg 1>,
+			 <&sdhc2_lpcg 0>,
+			 <&sdhc2_lpcg 2>;
 		clock-names = "ipg", "per", "ahb";
 		assigned-clocks = <&clk IMX_SC_R_SDHC_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <200000000>;
@@ -83,10 +83,10 @@ conn_subsys: bus@5b000000 {
 			     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&conn_lpcg IMX_CONN_LPCG_ENET0_IPG_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_ENET0_AHB_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_ENET0_TX_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_ENET0_ROOT_CLK>;
+		clocks = <&enet0_lpcg 3>,
+			 <&enet0_lpcg 2>,
+			 <&enet0_lpcg 1>,
+			 <&enet0_lpcg 0>;
 		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
 		fsl,num-tx-queues=<3>;
 		fsl,num-rx-queues=<3>;
@@ -100,10 +100,10 @@ conn_subsys: bus@5b000000 {
 				<GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&conn_lpcg IMX_CONN_LPCG_ENET1_IPG_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_ENET1_AHB_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_ENET1_TX_CLK>,
-			 <&conn_lpcg IMX_CONN_LPCG_ENET1_ROOT_CLK>;
+		clocks = <&enet1_lpcg 3>,
+			 <&enet1_lpcg 2>,
+			 <&enet1_lpcg 1>,
+			 <&enet1_lpcg 0>;
 		clock-names = "ipg", "ahb", "enet_clk_ref", "ptp";
 		fsl,num-tx-queues=<3>;
 		fsl,num-rx-queues=<3>;
@@ -112,12 +112,8 @@ conn_subsys: bus@5b000000 {
 	};
 
 	/* LPCG clocks */
-	conn_lpcg: clock-controller-legacy@5b200000 {
-		reg = <0x5b200000 0xb0000>;
-		#clock-cells = <1>;
-	};
-
 	sdhc0_lpcg: clock-controller@5b200000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5b200000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_SDHC_0 IMX_SC_PM_CLK_PER>,
@@ -130,6 +126,7 @@ conn_subsys: bus@5b000000 {
 	};
 
 	sdhc1_lpcg: clock-controller@5b210000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5b210000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_SDHC_1 IMX_SC_PM_CLK_PER>,
@@ -142,6 +139,7 @@ conn_subsys: bus@5b000000 {
 	};
 
 	sdhc2_lpcg: clock-controller@5b220000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5b220000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_SDHC_2 IMX_SC_PM_CLK_PER>,
@@ -154,6 +152,7 @@ conn_subsys: bus@5b000000 {
 	};
 
 	enet0_lpcg: clock-controller@5b230000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5b230000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_ENET_0 IMX_SC_PM_CLK_PER>,
@@ -169,6 +168,7 @@ conn_subsys: bus@5b000000 {
 	};
 
 	enet1_lpcg: clock-controller@5b240000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5b240000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index 464d233..51e18e0 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -148,12 +148,8 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	/* LPCG clocks */
-	lsio_lpcg: clock-controller-legacy@5d400000 {
-		reg = <0x5d400000 0x400000>;
-		#clock-cells = <1>;
-	};
-
 	pwm0_lpcg: clock-controller@5d400000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d400000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>,
@@ -171,6 +167,7 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	pwm1_lpcg: clock-controller@5d410000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d410000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>,
@@ -188,6 +185,7 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	pwm2_lpcg: clock-controller@5d420000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d420000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>,
@@ -205,6 +203,7 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	pwm3_lpcg: clock-controller@5d430000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d430000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>,
@@ -222,6 +221,7 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	pwm4_lpcg: clock-controller@5d440000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d440000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_4 IMX_SC_PM_CLK_PER>,
@@ -239,6 +239,7 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	pwm5_lpcg: clock-controller@5d450000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d450000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_5 IMX_SC_PM_CLK_PER>,
@@ -256,6 +257,7 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	pwm6_lpcg: clock-controller@5d460000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d460000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_6 IMX_SC_PM_CLK_PER>,
@@ -273,6 +275,7 @@ lsio_subsys: bus@5d000000 {
 	};
 
 	pwm7_lpcg: clock-controller@5d470000 {
+		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5d470000 0x10000>;
 		#clock-cells = <1>;
 		clocks = <&clk IMX_SC_R_PWM_7 IMX_SC_PM_CLK_PER>,
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
index 5809324..c80303d 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
@@ -4,10 +4,6 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
-&adma_lpcg {
-	compatible = "fsl,imx8qxp-lpcg-adma";
-};
-
 &adma_lpuart0 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
index ea0cd51..8dd22bd 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
@@ -4,10 +4,6 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
-&conn_lpcg {
-	compatible = "fsl,imx8qxp-lpcg-conn";
-};
-
 &usdhc1 {
 	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
index b02ae5d..1c3d117 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
@@ -59,7 +59,3 @@
 &lsio_mu13 {
 	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
 };
-
-&lsio_lpcg {
-	compatible = "fsl,imx8qxp-lpcg-lsio";
-};
-- 
2.7.4

