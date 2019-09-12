Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88DC8B1227
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 17:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733076AbfILPcT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 11:32:19 -0400
Received: from inva020.nxp.com ([92.121.34.13]:40454 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1733072AbfILPcS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 12 Sep 2019 11:32:18 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 30A011A0301;
        Thu, 12 Sep 2019 17:32:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 20C811A013D;
        Thu, 12 Sep 2019 17:32:10 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 399524032B;
        Thu, 12 Sep 2019 23:32:02 +0800 (SGT)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        fabio.estevam@nxp.com, robh+dt@kernel.org, catalin.marinas@arm.com,
        will.deacon@arm.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
        oliver.graute@gmail.com, Dong Aisheng <aisheng.dong@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH V3 05/15] arm64: dts: imx8: add conn lpcg clocks
Date:   Thu, 12 Sep 2019 23:30:42 +0800
Message-Id: <1568302252-28066-6-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add conn lpcg clocks

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Tested-by: Oliver Graute <oliver.graute@kococonnector.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * update to use clock-indices property instead of bit-offset property
v1->v2:
 * Use old SCU clock binding temporarily to avoid build warning due to SCU
   clock cell will be changed to 2.
 * add power domain propertyv1->v2:
---
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi | 103 +++++++++++++++++++++++-
 1 file changed, 100 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index e5f6041..0a0e479 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -4,15 +4,33 @@
  *	Dong Aisheng <aisheng.dong@nxp.com>
  */
 
+#include <dt-bindings/firmware/imx/rsrc.h>
+
 conn_subsys: bus@5b000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x5b000000 0x0 0x5b000000 0x1000000>;
 
-	conn_lpcg: clock-controller@5b200000 {
-		reg = <0x5b200000 0xb0000>;
-		#clock-cells = <1>;
+	conn_axi_clk: clock-conn-axi {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <333333333>;
+		clock-output-names = "conn_axi_clk";
+	};
+
+	conn_ahb_clk: clock-conn-ahb {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <166666666>;
+		clock-output-names = "conn_ahb_clk";
+	};
+
+	conn_ipg_clk: clock-conn-ipg {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <83333333>;
+		clock-output-names = "conn_ipg_clk";
 	};
 
 	usdhc1: mmc@5b010000 {
@@ -92,4 +110,83 @@ conn_subsys: bus@5b000000 {
 		power-domains = <&pd IMX_SC_R_ENET_1>;
 		status = "disabled";
 	};
+
+	/* LPCG clocks */
+	conn_lpcg: clock-controller-legacy@5b200000 {
+		reg = <0x5b200000 0xb0000>;
+		#clock-cells = <1>;
+	};
+
+	sdhc0_lpcg: clock-controller@5b200000 {
+		reg = <0x5b200000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC0_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "sdhc0_lpcg_per_clk",
+				     "sdhc0_lpcg_ipg_clk",
+				     "sdhc0_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_0>;
+	};
+
+	sdhc1_lpcg: clock-controller@5b210000 {
+		reg = <0x5b210000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC1_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "sdhc1_lpcg_per_clk",
+				     "sdhc1_lpcg_ipg_clk",
+				     "sdhc1_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_1>;
+	};
+
+	sdhc2_lpcg: clock-controller@5b220000 {
+		reg = <0x5b220000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_SDHC2_CLK>,
+			 <&conn_ipg_clk>, <&conn_axi_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "sdhc2_lpcg_per_clk",
+				     "sdhc2_lpcg_ipg_clk",
+				     "sdhc2_lpcg_ahb_clk";
+		power-domains = <&pd IMX_SC_R_SDHC_2>;
+	};
+
+	enet0_lpcg: clock-controller@5b230000 {
+		reg = <0x5b230000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_ENET0_ROOT_CLK>,
+			 <&clk IMX_CONN_ENET0_ROOT_CLK>,
+			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
+				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "enet0_ipg_root_clk",
+				     "enet0_tx_clk",
+				     "enet0_ahb_clk",
+				     "enet0_ipg_clk",
+				     "enet0_ipg_s_clk";
+		power-domains = <&pd IMX_SC_R_ENET_0>;
+	};
+
+	enet1_lpcg: clock-controller@5b240000 {
+		reg = <0x5b240000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_CONN_ENET1_ROOT_CLK>,
+			 <&clk IMX_CONN_ENET1_ROOT_CLK>,
+			 <&conn_axi_clk>, <&conn_ipg_clk>, <&conn_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_1>,
+				<IMX_LPCG_CLK_2>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "enet1_ipg_root_clk",
+				     "enet1_tx_clk",
+				     "enet1_ahb_clk",
+				     "enet1_ipg_clk",
+				     "enet1_ipg_s_clk";
+		power-domains = <&pd IMX_SC_R_ENET_1>;
+	};
 };
-- 
2.7.4

