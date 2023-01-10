Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E863E663F5E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 12:40:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237624AbjAJLko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 06:40:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232977AbjAJLkl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 06:40:41 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2102.outbound.protection.outlook.com [40.107.22.102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3770B50F59
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:40:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQITy/yh30Q0FHnctj3mP6CzqS6h8O8mihApc+wweqnGvfiifbFAbL5IIeT9nf4svmDvaYaw6J5INQXtMomQhmgCDNwiNYi0WLSyzkb3l9cgbRldJ1HC1WOdjqS2Qm/Q6Ym6RZueg42vrP9PteTBWzduxbfzJQtYdHtCA6IO+35LhWKkwXoCiuWeenNHN3RAs7K197mGZ60u5T4lKnk9+gqZqU8ntGfBCP7tRquPrKgGLaDjkYJ+O8P4Jlr3dBuN7ottIl1HLy1cV5qx+Is54x8jcdTapvM2XHo9tJJdi+UfstXovpLAFoycmpeMYOLLEuLRkxQj2OJ8RyzjAMfFbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hNQ3ELyGLPyl6eR1Lkxm/EEgSOhrRnOS/ucJR5Chk4A=;
 b=HadsmWfqJ9mlorMnrHKFqsgO3cZX8tSw5MrItTaBEfVgv50iAkZGAKWsyvQEJ5c1rMG6/0idLfHVKqvLrIKEQ+USQ/r4fBHLCiRkAoZTH3rU5FghTxovwiNGuzVKF7+iz9wTZY9WB1XDhVTwnFYYF6iSFpH8du3rK6pmz3/CX4nwQQXb4lQTwTcXlqMg5AVOjCQlelgB36BSme7OxoisfXaJjDf0X1kbHg+DHHueX9BYt7j9smNi3XUsQpoL37nCr6SJsA28fhx+GM2/8bxl/5VDTnk/D4Bb86ubWqRS5OSoGkDvb6D4/S4KorbueHtlGQ91gQkpBcvF1JJqFSI3pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hNQ3ELyGLPyl6eR1Lkxm/EEgSOhrRnOS/ucJR5Chk4A=;
 b=QjoEnDeBNYNXLFg+ckhkdsDcmqCQD4Jghs5NmSnUYe2vvygt4Y2j1OYfBjVlhYAbr55i0yZbpzfwAQTI6jWJJUZX28MN4eN0NBYodT1/Cprx1QbzhtdrEzcJhqSV/ZiTBLJ8vj9Ex+KsTfb99lpaQ4JANXx3hNfG5L/otaDlEA8=
Received: from AS8PR04CA0195.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::20)
 by VI1PR06MB3022.eurprd06.prod.outlook.com (2603:10a6:802:c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 11:40:35 +0000
Received: from AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:2f3:cafe::d0) by AS8PR04CA0195.outlook.office365.com
 (2603:10a6:20b:2f3::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 11:40:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT045.mail.protection.outlook.com (10.13.54.112) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.11 via Frontend Transport; Tue, 10 Jan 2023 11:40:35 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v6 1/3] arm64: dts: imx8mm-evk: move PMIC configuration
Date:   Tue, 10 Jan 2023 12:40:25 +0100
Message-Id: <20230110114027.634719-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
References: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT045:EE_|VI1PR06MB3022:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 636c6ba8-0100-46a5-fa34-08daf2ff7d0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: POSyMm8hCBu+ngnPemdUJyUiEbxLAglODyh2ADgiJOumJp7PUNF7jbHy53gpurEFIDfhWFqRl/pTi1fkjlpS4LlrFzkfdfc/fO6FK9qzUCnXTlycun1HN6FtFDdBYtmtzxDFFhCtpPW/CFU2mLgKtfXj+k4Ngp/pmPCXn/eIlXI6VWbS+Fxq8P/zEY9MZapM5RqeidjzBi32k2YXY2X1zEpCQFC1OFB1E+jj4FT5mE5B25daNRf2ybfHmt7sP7GW7RxYE0CXUerN9krMDW6Gdu8ZjZ4Xe8J1HZWjP35QLysDX3rsc1h97LCzo89FilUOyaTuyTOFLwTHP132oDoLdACNbfuqOM79+fh1jziRC6DSkonKb3/Uh0UFQ6Os4q4XfEXwQVdtuge+3YS4uZhrbqJk7mUG6VlxxXmS84K+WiJRas+kYe63unViw6m+Qi9ynN/bXRK9in87w1nwD95mURFyieLR7pvumpGBWknwOEBNygyo3Qx30wHDcwc8KgcglfKTwJUvmA/twmrbFpMtf21kn2VeS/iduH3W8b5vB/yo6N0cEnZzws5FFpHBgjfYTkVRgFq8zRlOAW3cpZZuHfoNn6gvsLgNvoZ2nWnRL/q4iLM09ZyIphdsZe5Yup52edE2W/41UbtxqPoSJm0Lz1mYlXx0dARwKhNkLTC9qFtbYjxl8om2MQF1KO01KhILdN6nrIR2AOz68/M7/ykEuCHP/KX0CjNuSUyMb9b/fdQ=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(346002)(136003)(376002)(451199015)(40470700004)(46966006)(36840700001)(2906002)(6506007)(478600001)(186003)(26005)(107886003)(6512007)(6666004)(6486002)(83380400001)(110136005)(70206006)(2616005)(36736006)(4326008)(1076003)(336012)(70586007)(36756003)(54906003)(316002)(956004)(8676002)(47076005)(40460700003)(41300700001)(40480700001)(8936002)(5660300002)(82740400003)(44832011)(7416002)(36860700001)(82310400005)(9316004)(86362001)(118246002)(81166007)(356005)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 11:40:35.1962
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 636c6ba8-0100-46a5-fa34-08daf2ff7d0c
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB3022
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the PMIC configuration out of imx8mm-evk.dtsi into a separate
file; to accommodate devicetrees for the rev-b EVK, which comes with a
different PMIC.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    |   1 +
 .../dts/freescale/imx8mm-evk-rohm-pmic.dtsi   | 118 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |   1 +
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 112 -----------------
 4 files changed, 120 insertions(+), 112 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
index 6c079c0a3a48..f39182ce65b4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "imx8mm-evk.dtsi"
+#include "imx8mm-evk-rohm-pmic.dtsi"
 
 / {
 	model = "FSL i.MX8MM DDR4 EVK with CYW43455 WIFI/BT board";
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
new file mode 100644
index 000000000000..0b056996a27b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2020 NXP
+ */
+
+&i2c1 {
+	pmic@4b {
+		compatible = "rohm,bd71847";
+		reg = <0x4b>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+		rohm,reset-snvs-powered;
+
+		#clock-cells = <0>;
+		clocks = <&osc_32k 0>;
+		clock-output-names = "clk-32k-out";
+
+		regulators {
+			buck1_reg: BUCK1 {
+				regulator-name = "buck1";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "buck2";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+				rohm,dvs-run-voltage = <1000000>;
+				rohm,dvs-idle-voltage = <900000>;
+			};
+
+			buck3_reg: BUCK3 {
+				// BUCK5 in datasheet
+				regulator-name = "buck3";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4_reg: BUCK4 {
+				// BUCK6 in datasheet
+				regulator-name = "buck4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5_reg: BUCK5 {
+				// BUCK7 in datasheet
+				regulator-name = "buck5";
+				regulator-min-microvolt = <1605000>;
+				regulator-max-microvolt = <1995000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6_reg: BUCK6 {
+				// BUCK8 in datasheet
+				regulator-name = "buck6";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: LDO1 {
+				regulator-name = "ldo1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "ldo2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "ldo3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "ldo4";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo6_reg: LDO6 {
+				regulator-name = "ldo6";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index a2b24d4d4e3e..d2b6d7de7e53 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/usb/pd.h>
 #include "imx8mm-evk.dtsi"
+#include "imx8mm-evk-rohm-pmic.dtsi"
 
 / {
 	model = "FSL i.MX8MM EVK board";
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 7d6317d95b13..21d0614af44c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -182,118 +182,6 @@ &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
-
-	pmic@4b {
-		compatible = "rohm,bd71847";
-		reg = <0x4b>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_pmic>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
-		rohm,reset-snvs-powered;
-
-		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
-		clock-output-names = "clk-32k-out";
-
-		regulators {
-			buck1_reg: BUCK1 {
-				regulator-name = "buck1";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <1250>;
-			};
-
-			buck2_reg: BUCK2 {
-				regulator-name = "buck2";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <1250>;
-				rohm,dvs-run-voltage = <1000000>;
-				rohm,dvs-idle-voltage = <900000>;
-			};
-
-			buck3_reg: BUCK3 {
-				// BUCK5 in datasheet
-				regulator-name = "buck3";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck4_reg: BUCK4 {
-				// BUCK6 in datasheet
-				regulator-name = "buck4";
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck5_reg: BUCK5 {
-				// BUCK7 in datasheet
-				regulator-name = "buck5";
-				regulator-min-microvolt = <1605000>;
-				regulator-max-microvolt = <1995000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck6_reg: BUCK6 {
-				// BUCK8 in datasheet
-				regulator-name = "buck6";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo1_reg: LDO1 {
-				regulator-name = "ldo1";
-				regulator-min-microvolt = <1600000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo2_reg: LDO2 {
-				regulator-name = "ldo2";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <900000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo3_reg: LDO3 {
-				regulator-name = "ldo3";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo4_reg: LDO4 {
-				regulator-name = "ldo4";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo6_reg: LDO6 {
-				regulator-name = "ldo6";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-		};
-	};
 };
 
 &i2c2 {
-- 
2.25.1

