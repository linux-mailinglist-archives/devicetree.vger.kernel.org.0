Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A0267B122F
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 17:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733086AbfILPc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 11:32:26 -0400
Received: from inva020.nxp.com ([92.121.34.13]:40532 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1733077AbfILPc0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Sep 2019 11:32:26 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6437C1A013D;
        Thu, 12 Sep 2019 17:32:22 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E1E21A02F1;
        Thu, 12 Sep 2019 17:32:16 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7DA19402AE;
        Thu, 12 Sep 2019 23:32:09 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        oliver.graute@gmail.com, Dong Aisheng <aisheng.dong@nxp.com>
Subject: [PATCH V3 11/15] arm64: dts: imx8: split adma ss into dma and audio ss
Date:   Thu, 12 Sep 2019 23:30:48 +0800
Message-Id: <1568302252-28066-12-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

amda ss is consisted of dma and audio ss in qxp which are
also used in qm.
Let's split them into two ss for better code reuse.

Tested-by: Oliver Graute <oliver.graute@kococonnector.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * use new clock-indices IDs
 * remove ss prefix for adma
v1->v2:
 * change to the new two cell scu clk binding
---
 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi    | 251 +--------------------
 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi   |  67 ++++++
 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi     | 209 +++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts    |  16 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts      |   8 +-
 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi |  16 +-
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi         |   8 +-
 7 files changed, 302 insertions(+), 273 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
index 8e1077f..22b6dfe 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
@@ -4,252 +4,5 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
-#include <dt-bindings/firmware/imx/rsrc.h>
-
-adma_subsys: bus@59000000 {
-	compatible = "simple-bus";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0x59000000 0x0 0x59000000 0x2000000>;
-
-	dma_ipg_clk: clock-dma-ipg {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <120000000>;
-		clock-output-names = "dma_ipg_clk";
-	};
-
-	dsp_lpcg: clock-controller@59580000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x59580000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&dma_ipg_clk>,
-			 <&dma_ipg_clk>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
-				<IMX_LPCG_CLK_7>;
-		clock-output-names = "dsp_lpcg_adb_clk",
-				     "dsp_lpcg_ipg_clk",
-				     "dsp_lpcg_core_clk";
-		power-domains = <&pd IMX_SC_R_DSP>;
-	};
-
-	dsp_ram_lpcg: clock-controller@59590000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x59590000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_4>;
-		clock-output-names = "dsp_ram_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_DSP_RAM>;
-	};
-
-	adma_dsp: dsp@596e8000 {
-		compatible = "fsl,imx8qxp-dsp";
-		reg = <0x596e8000 0x88000>;
-		clocks = <&dsp_lpcg IMX_LPCG_CLK_5>,
-			 <&dsp_ram_lpcg IMX_LPCG_CLK_4>,
-			 <&dsp_lpcg IMX_LPCG_CLK_7>;
-		clock-names = "ipg", "ocram", "core";
-		power-domains = <&pd IMX_SC_R_MU_13A>,
-			<&pd IMX_SC_R_MU_13B>,
-			<&pd IMX_SC_R_DSP>,
-			<&pd IMX_SC_R_DSP_RAM>;
-		mbox-names = "txdb0", "txdb1",
-			"rxdb0", "rxdb1";
-		mboxes = <&lsio_mu13 2 0>,
-			<&lsio_mu13 2 1>,
-			<&lsio_mu13 3 0>,
-			<&lsio_mu13 3 1>;
-		memory-region = <&dsp_reserved>;
-		status = "disabled";
-	};
-
-	adma_lpuart0: serial@5a060000 {
-		reg = <0x5a060000 0x1000>;
-		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart0_lpcg IMX_LPCG_CLK_4>,
-			 <&uart0_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_0>;
-		status = "disabled";
-	};
-
-	adma_lpuart1: serial@5a070000 {
-		reg = <0x5a070000 0x1000>;
-		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart1_lpcg IMX_LPCG_CLK_4>,
-			 <&uart1_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_1>;
-		status = "disabled";
-	};
-
-	adma_lpuart2: serial@5a080000 {
-		reg = <0x5a080000 0x1000>;
-		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart2_lpcg IMX_LPCG_CLK_4>,
-			 <&uart2_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_2>;
-		status = "disabled";
-	};
-
-	adma_lpuart3: serial@5a090000 {
-		reg = <0x5a090000 0x1000>;
-		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&uart3_lpcg IMX_LPCG_CLK_4>,
-			 <&uart3_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "baud";
-		power-domains = <&pd IMX_SC_R_UART_3>;
-		status = "disabled";
-	};
-
-	uart0_lpcg: clock-controller@5a460000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a460000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart0_lpcg_baud_clk",
-				     "uart0_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_0>;
-	};
-
-	uart1_lpcg: clock-controller@5a470000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a470000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart1_lpcg_baud_clk",
-				     "uart1_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_1>;
-	};
-
-	uart2_lpcg: clock-controller@5a480000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a480000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart2_lpcg_baud_clk",
-				     "uart2_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_2>;
-	};
-
-	uart3_lpcg: clock-controller@5a490000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5a490000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "uart3_lpcg_baud_clk",
-				     "uart3_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_UART_3>;
-	};
-
-	adma_i2c0: i2c@5a800000 {
-		reg = <0x5a800000 0x4000>;
-		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c0_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_0>;
-		status = "disabled";
-	};
-
-	adma_i2c1: i2c@5a810000 {
-		reg = <0x5a810000 0x4000>;
-		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c1_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_1>;
-		status = "disabled";
-	};
-
-	adma_i2c2: i2c@5a820000 {
-		reg = <0x5a820000 0x4000>;
-		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c2_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_2>;
-		status = "disabled";
-	};
-
-	adma_i2c3: i2c@5a830000 {
-		reg = <0x5a830000 0x4000>;
-		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-parent = <&gic>;
-		clocks = <&i2c3_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "per";
-		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
-		assigned-clock-rates = <24000000>;
-		power-domains = <&pd IMX_SC_R_I2C_3>;
-		status = "disabled";
-	};
-
-	i2c0_lpcg: clock-controller@5ac00000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac00000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c0_lpcg_clk",
-				     "i2c0_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_0>;
-	};
-
-	i2c1_lpcg: clock-controller@5ac10000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac10000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c1_lpcg_clk",
-				     "i2c1_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_1>;
-	};
-
-	i2c2_lpcg: clock-controller@5ac20000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac20000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c2_lpcg_clk",
-				     "i2c2_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_2>;
-	};
-
-	i2c3_lpcg: clock-controller@5ac30000 {
-		compatible = "fsl,imx8qxp-lpcg";
-		reg = <0x5ac30000 0x10000>;
-		#clock-cells = <1>;
-		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
-			 <&dma_ipg_clk>;
-		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
-		clock-output-names = "i2c3_lpcg_clk",
-				     "i2c3_lpcg_ipg_clk";
-		power-domains = <&pd IMX_SC_R_I2C_3>;
-	};
-};
+#include "imx8-ss-audio.dtsi"
+#include "imx8-ss-dma.dtsi"
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
new file mode 100644
index 0000000..76e9b31
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <dt-bindings/firmware/imx/rsrc.h>
+
+audio_subsys: bus@59000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x59000000 0x0 0x59000000 0x1000000>;
+
+	audio_ipg_clk: clock-audio-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <120000000>;
+		clock-output-names = "audio_ipg_clk";
+	};
+
+	dsp_lpcg: clock-controller@59580000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59580000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&audio_ipg_clk>,
+			 <&audio_ipg_clk>,
+			 <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
+				<IMX_LPCG_CLK_7>;
+		clock-output-names = "dsp_lpcg_adb_clk",
+				     "dsp_lpcg_ipg_clk",
+				     "dsp_lpcg_core_clk";
+		power-domains = <&pd IMX_SC_R_DSP>;
+	};
+
+	dsp_ram_lpcg: clock-controller@59590000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x59590000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&audio_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_4>;
+		clock-output-names = "dsp_ram_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_DSP_RAM>;
+	};
+
+	dsp: dsp@596e8000 {
+		compatible = "fsl,imx8qxp-dsp";
+		reg = <0x596e8000 0x88000>;
+		clocks = <&dsp_lpcg IMX_LPCG_CLK_5>,
+			 <&dsp_ram_lpcg IMX_LPCG_CLK_4>,
+			 <&dsp_lpcg IMX_LPCG_CLK_7>;
+		clock-names = "ipg", "ocram", "core";
+		power-domains = <&pd IMX_SC_R_MU_13A>,
+			<&pd IMX_SC_R_MU_13B>,
+			<&pd IMX_SC_R_DSP>,
+			<&pd IMX_SC_R_DSP_RAM>;
+		mbox-names = "txdb0", "txdb1",
+			"rxdb0", "rxdb1";
+		mboxes = <&lsio_mu13 2 0>,
+			<&lsio_mu13 2 1>,
+			<&lsio_mu13 3 0>,
+			<&lsio_mu13 3 1>;
+		memory-region = <&dsp_reserved>;
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
new file mode 100644
index 0000000..f06e753
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <dt-bindings/firmware/imx/rsrc.h>
+
+dma_subsys: bus@5a000000 {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	ranges = <0x5a000000 0x0 0x5a000000 0x1000000>;
+
+	dma_ipg_clk: clock-dma-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <120000000>;
+		clock-output-names = "dma_ipg_clk";
+	};
+
+	lpuart0: serial@5a060000 {
+		reg = <0x5a060000 0x1000>;
+		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart0_lpcg IMX_LPCG_CLK_4>,
+			 <&uart0_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+		status = "disabled";
+	};
+
+	lpuart1: serial@5a070000 {
+		reg = <0x5a070000 0x1000>;
+		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart1_lpcg IMX_LPCG_CLK_4>,
+			 <&uart1_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+		status = "disabled";
+	};
+
+	lpuart2: serial@5a080000 {
+		reg = <0x5a080000 0x1000>;
+		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart2_lpcg IMX_LPCG_CLK_4>,
+			 <&uart2_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+		status = "disabled";
+	};
+
+	lpuart3: serial@5a090000 {
+		reg = <0x5a090000 0x1000>;
+		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&uart3_lpcg IMX_LPCG_CLK_4>,
+			 <&uart3_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "ipg", "baud";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+		status = "disabled";
+	};
+
+	uart0_lpcg: clock-controller@5a460000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a460000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart0_lpcg_baud_clk",
+				     "uart0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_0>;
+	};
+
+	uart1_lpcg: clock-controller@5a470000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a470000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_1 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart1_lpcg_baud_clk",
+				     "uart1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_1>;
+	};
+
+	uart2_lpcg: clock-controller@5a480000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a480000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_2 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart2_lpcg_baud_clk",
+				     "uart2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_2>;
+	};
+
+	uart3_lpcg: clock-controller@5a490000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a490000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_3 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart3_lpcg_baud_clk",
+				     "uart3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_3>;
+	};
+
+	i2c0: i2c@5a800000 {
+		reg = <0x5a800000 0x4000>;
+		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c0_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+		status = "disabled";
+	};
+
+	i2c1: i2c@5a810000 {
+		reg = <0x5a810000 0x4000>;
+		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c1_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+		status = "disabled";
+	};
+
+	i2c2: i2c@5a820000 {
+		reg = <0x5a820000 0x4000>;
+		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c2_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+		status = "disabled";
+	};
+
+	i2c3: i2c@5a830000 {
+		reg = <0x5a830000 0x4000>;
+		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&i2c3_lpcg IMX_LPCG_CLK_0>;
+		clock-names = "per";
+		assigned-clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <24000000>;
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+		status = "disabled";
+	};
+
+	i2c0_lpcg: clock-controller@5ac00000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac00000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_0 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c0_lpcg_clk",
+				     "i2c0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_0>;
+	};
+
+	i2c1_lpcg: clock-controller@5ac10000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac10000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_1 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c1_lpcg_clk",
+				     "i2c1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_1>;
+	};
+
+	i2c2_lpcg: clock-controller@5ac20000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac20000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_2 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c2_lpcg_clk",
+				     "i2c2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_2>;
+	};
+
+	i2c3_lpcg: clock-controller@5ac30000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5ac30000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_I2C_3 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "i2c3_lpcg_clk",
+				     "i2c3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_I2C_3>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
index 91eef97..ee1610b 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dts
@@ -13,13 +13,13 @@
 	compatible = "einfochips,imx8qxp-ai_ml", "fsl,imx8qxp";
 
 	aliases {
-		serial1 = &adma_lpuart1;
-		serial2 = &adma_lpuart2;
-		serial3 = &adma_lpuart3;
+		serial1 = &lpuart1;
+		serial2 = &lpuart2;
+		serial3 = &lpuart3;
 	};
 
 	chosen {
-		stdout-path = &adma_lpuart2;
+		stdout-path = &lpuart2;
 	};
 
 	memory@80000000 {
@@ -82,7 +82,7 @@
 };
 
 /* BT */
-&adma_lpuart0 {
+&lpuart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
 	uart-has-rtscts;
@@ -90,21 +90,21 @@
 };
 
 /* LS-UART0 */
-&adma_lpuart1 {
+&lpuart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart1>;
 	status = "okay";
 };
 
 /* Debug */
-&adma_lpuart2 {
+&lpuart2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart2>;
 	status = "okay";
 };
 
 /* PCI-E UART */
-&adma_lpuart3 {
+&lpuart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart3>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 1946805..4ea2dc9 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -12,7 +12,7 @@
 	compatible = "fsl,imx8qxp-mek", "fsl,imx8qxp";
 
 	chosen {
-		stdout-path = &adma_lpuart0;
+		stdout-path = &lpuart0;
 	};
 
 	memory@80000000 {
@@ -30,7 +30,7 @@
 	};
 };
 
-&adma_lpuart0 {
+&lpuart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lpuart0>;
 	status = "okay";
@@ -60,7 +60,7 @@
 	};
 };
 
-&adma_i2c1 {
+&i2c1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 	clock-frequency = <100000>;
@@ -231,6 +231,6 @@
 	};
 };
 
-&adma_dsp {
+&dsp {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
index c80303d..f0264f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
@@ -4,34 +4,34 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
-&adma_lpuart0 {
+&lpuart0 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_lpuart1 {
+&lpuart1 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_lpuart2 {
+&lpuart2 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_lpuart3 {
+&lpuart3 {
 	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
 };
 
-&adma_i2c0 {
+&i2c0 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
 
-&adma_i2c1 {
+&i2c1 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
 
-&adma_i2c2 {
+&i2c2 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
 
-&adma_i2c3 {
+&i2c3 {
 	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index e3963d0..c992fb5 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -30,10 +30,10 @@
 		mmc1 = &usdhc2;
 		mmc2 = &usdhc3;
 		mu1 = &lsio_mu1;
-		serial0 = &adma_lpuart0;
-		serial1 = &adma_lpuart1;
-		serial2 = &adma_lpuart2;
-		serial3 = &adma_lpuart3;
+		serial0 = &lpuart0;
+		serial1 = &lpuart1;
+		serial2 = &lpuart2;
+		serial3 = &lpuart3;
 	};
 
 	cpus {
-- 
2.7.4

