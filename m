Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAAEF6FB6A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 10:37:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727753AbfGVIhs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 04:37:48 -0400
Received: from inva021.nxp.com ([92.121.34.21]:40166 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727310AbfGVIhs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 04:37:48 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 930F420023B;
        Mon, 22 Jul 2019 10:37:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2544F2000A8;
        Mon, 22 Jul 2019 10:37:43 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 85801402FC;
        Mon, 22 Jul 2019 16:37:38 +0800 (SGT)
From:   fugang.duan@nxp.com
To:     festevam@gmail.com, shawnguo@kernel.org
Cc:     daniel.baluta@gmail.com, fugang.duan@nxp.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH arm64/dts 1/2] arm64: dts: imx8qxp: add lpuart baud clock
Date:   Mon, 22 Jul 2019 16:28:23 +0800
Message-Id: <20190722082824.15022-2-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190722082824.15022-1-fugang.duan@nxp.com>
References: <20190722082824.15022-1-fugang.duan@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fugang Duan <fugang.duan@nxp.com>

Add imx8qxp lpuart baud clock.

V2:
- separate v1 patch to two patches, one is to add baud clock,
  the other is to add serial alias property.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 05fa0b7..21bdd4d 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -209,8 +209,9 @@
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
@@ -220,8 +221,9 @@
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
@@ -231,8 +233,9 @@
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
@@ -242,8 +245,9 @@
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

