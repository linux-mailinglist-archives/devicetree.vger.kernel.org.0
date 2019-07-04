Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD2925F65F
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 12:13:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727298AbfGDKNr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 06:13:47 -0400
Received: from inva020.nxp.com ([92.121.34.13]:35852 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727249AbfGDKNq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Jul 2019 06:13:46 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CD8581A0594;
        Thu,  4 Jul 2019 12:13:44 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5887A1A0157;
        Thu,  4 Jul 2019 12:13:41 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BE758402E1;
        Thu,  4 Jul 2019 18:13:36 +0800 (SGT)
From:   fugang.duan@nxp.com
To:     festevam@gmail.com, shawnguo@kernel.org
Cc:     daniel.baluta@gmail.com, fugang.duan@nxp.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart baud clock
Date:   Thu,  4 Jul 2019 18:04:43 +0800
Message-Id: <20190704100443.10957-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fugang Duan <fugang.duan@nxp.com>

Add imx8qxp lpuart baud clock.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 05fa0b7..4402b2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -30,6 +30,9 @@
 		mmc2 = &usdhc3;
 		mu1 = &lsio_mu1;
 		serial0 = &adma_lpuart0;
+		serial1 = &adma_lpuart1;
+		serial2 = &adma_lpuart2;
+		serial3 = &adma_lpuart3;
 	};
 
 	cpus {
@@ -209,8 +212,9 @@
 			reg = <0x5a060000 0x1000>;
 			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_0>;
 			status = "disabled";
 		};
@@ -220,8 +224,9 @@
 			reg = <0x5a070000 0x1000>;
 			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_1>;
 			status = "disabled";
 		};
@@ -231,8 +236,9 @@
 			reg = <0x5a080000 0x1000>;
 			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_2>;
 			status = "disabled";
 		};
@@ -242,8 +248,9 @@
 			reg = <0x5a090000 0x1000>;
 			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-parent = <&gic>;
-			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
-			clock-names = "ipg";
+			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
+				 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
+			clock-names = "ipg", "baud";
 			power-domains = <&pd IMX_SC_R_UART_3>;
 			status = "disabled";
 		};
-- 
2.7.4

