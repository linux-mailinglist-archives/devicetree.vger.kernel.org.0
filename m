Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0DAB3EFEA7
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 10:06:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239479AbhHRIHG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 04:07:06 -0400
Received: from inva020.nxp.com ([92.121.34.13]:41880 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239196AbhHRIHF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 04:07:05 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CA6BF1A4BDE;
        Wed, 18 Aug 2021 10:06:30 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 912E61A4BD9;
        Wed, 18 Aug 2021 10:06:30 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 3CF20183AD05;
        Wed, 18 Aug 2021 16:06:29 +0800 (+08)
From:   haibo.chen@nxp.com
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aisheng.dong@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8qm: minor fix for schema dts check
Date:   Wed, 18 Aug 2021 15:44:35 +0800
Message-Id: <1629272675-7142-1-git-send-email-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Haibo Chen <haibo.chen@nxp.com>

Add minor fix to pass schema dts check.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 .../arm64/boot/dts/freescale/imx8-ss-conn.dtsi | 18 +++++++++---------
 .../boot/dts/freescale/imx8qm-ss-conn.dtsi     |  4 ++--
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index a79f42a9618e..639220dbff00 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -38,9 +38,9 @@ conn_subsys: bus@5b000000 {
 		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0x5b010000 0x10000>;
 		clocks = <&sdhc0_lpcg IMX_LPCG_CLK_4>,
-			 <&sdhc0_lpcg IMX_LPCG_CLK_5>,
-			 <&sdhc0_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "per", "ahb";
+			 <&sdhc0_lpcg IMX_LPCG_CLK_0>,
+			 <&sdhc0_lpcg IMX_LPCG_CLK_5>;
+		clock-names = "ipg", "ahb", "per";
 		power-domains = <&pd IMX_SC_R_SDHC_0>;
 		status = "disabled";
 	};
@@ -49,9 +49,9 @@ conn_subsys: bus@5b000000 {
 		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0x5b020000 0x10000>;
 		clocks = <&sdhc1_lpcg IMX_LPCG_CLK_4>,
-			 <&sdhc1_lpcg IMX_LPCG_CLK_5>,
-			 <&sdhc1_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "per", "ahb";
+			 <&sdhc1_lpcg IMX_LPCG_CLK_0>,
+			 <&sdhc1_lpcg IMX_LPCG_CLK_5>;
+		clock-names = "ipg", "ahb", "per";
 		power-domains = <&pd IMX_SC_R_SDHC_1>;
 		fsl,tuning-start-tap = <20>;
 		fsl,tuning-step= <2>;
@@ -62,9 +62,9 @@ conn_subsys: bus@5b000000 {
 		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
 		reg = <0x5b030000 0x10000>;
 		clocks = <&sdhc2_lpcg IMX_LPCG_CLK_4>,
-			 <&sdhc2_lpcg IMX_LPCG_CLK_5>,
-			 <&sdhc2_lpcg IMX_LPCG_CLK_0>;
-		clock-names = "ipg", "per", "ahb";
+			 <&sdhc2_lpcg IMX_LPCG_CLK_0>,
+			 <&sdhc2_lpcg IMX_LPCG_CLK_5>;
+		clock-names = "ipg", "ahb", "per";
 		power-domains = <&pd IMX_SC_R_SDHC_2>;
 		status = "disabled";
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
index 42637a45701c..17bbe2e16126 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
@@ -13,9 +13,9 @@
 };
 
 &usdhc1 {
-	compatible = "fsl,imx8qm-usdhc", "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
 };
 
 &usdhc2 {
-	compatible = "fsl,imx8qm-usdhc", "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+	compatible = "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
 };
-- 
2.17.1

