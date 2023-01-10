Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7611664487
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 16:24:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234532AbjAJPXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 10:23:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239019AbjAJPXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 10:23:34 -0500
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2099.outbound.protection.outlook.com [40.107.241.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D82A05D404
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 07:23:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XVOCndfxo7RH2C2aRjnrJou5TgVIeAFPXXByDM0ZMk5DN0lrET/Bz0QRn1I1L8tupCNJtd3WMBVfxtjxPeym8o7XRWBlT9Xy4e+7CS4x+TlIfRTehHEfpUytwYjuhesjHyJG4SjoWQSHWWdO2ilrMn11l34/LpNFWKVMG5Mpni1KRtywUgLuK2LhcnCHo0puMZmHqJj3fF2iuYNZ+F+YXb15tVOgkJC1tjBDy+P2PTSAIeXxRYLEsL6+2lpGmsTsPUo2MQN+txwspNGNvttSOUjX7T3txN/UWBat0DjKb4+FzeJRKggmSw+NsAjKVecn1gz7MdndBhgo0H9CQF7Tjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hNQ3ELyGLPyl6eR1Lkxm/EEgSOhrRnOS/ucJR5Chk4A=;
 b=Tof5osXN4S8/msrI+3IZCMzsetkmlVWYpRyNKcZ64zLPlfbiY/ieGZ+BwEchsN2z+URfh93tD82d7t/w+Mn6wyYLeOfZ6BdhVEmI3lSR1ynkEQHKB/UdN+Mbx25jIugDzDGWqD13/vO3M4VBUwkh+cLlEAJ/H2BbMEkV+USfqekQK3QuEKvMdsPZr5rnzk96Hkadzs50i777g1CY3hPIniK1mFmex6SHndbcNq0gQcBz/C+CEjjQUVNo/zex3HKih7tlw+Dfrg2H/yLBHCegZiuFmwioygtlVJZHNeCeYbcgz0ItBWtUea0bM0suK9b4PGNLUyYrBRcWhEPEfRJnbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hNQ3ELyGLPyl6eR1Lkxm/EEgSOhrRnOS/ucJR5Chk4A=;
 b=WYVbDn+U6HrB/IbwVAGx0J2Hk5CT7mU/RiT6DJTO6RBQ9EZPHRBeQHb1JbP8YNyWsr8JVpz6tQr2Mw/E8ur0e3Ug0rg0aHseiOBHahm4aLFeb5HKYtqpYKmP5/3uNyiuXGvZIWYVrMu7E1IWFFhh6tcZMeyurpK1tRmFTXPzWoM=
Received: from AM6P191CA0030.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8b::43)
 by PR1PR06MB5596.eurprd06.prod.outlook.com (2603:10a6:102:a::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 15:23:23 +0000
Received: from VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:8b:cafe::7a) by AM6P191CA0030.outlook.office365.com
 (2603:10a6:209:8b::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 15:23:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 VI1EUR02FT065.mail.protection.outlook.com (10.13.60.105) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 15:23:23 +0000
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
Subject: [PATCH v7 1/3] arm64: dts: imx8mm-evk: move PMIC configuration
Date:   Tue, 10 Jan 2023 16:23:14 +0100
Message-Id: <20230110152316.1149940-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
References: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT065:EE_|PR1PR06MB5596:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 95bc93dc-63cc-46fa-b867-08daf31e9cf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PUuKz38Zz/X1Vudl+37ofkKyr1rKxxIxymSb82zUAw78IMJyNJ2ENNxV62MI4q9AQRyrBq+CkNo001yYQ3bTGYu5tmcHYq8toPuN9JQMV1MjD+aJL6AQZtvRFD6la2pwfSkyx4Mkn2A6PLTLz3x4iNSKQicKYoeG+0hiahlNBXgjW/FUjxCsosGD+e0FmGvD1GtZoR/Dfm7Dseq7P7WgLpELbizlxAmHwkpsYiu8W6vap8U+svziewcSmoHZ3w/2UbC/3AMLKawF+yLeyQxdHR9H2a4wqDfLedA8M9zTZ/gjFoqzuDt5h6VaGtvP0VnZnaAP089oKuKvKILZm1k3O0Y295Q0Wwks7x9fr8RsLJkji9QTHu86wk2qe5creSo4izjbYwgs8oNB5vd9bzVaafbi2SOiyIpY7kecinmqQYYZ6imqKEjkA5Tszlm9Ta9Ua3ZsPqWlo/TxQdXs3OtsrWH1dcV+j8bOYZlfjDId1NOX9O7GPzMjM79Z8l7cTftuRC4FPtf7r+1fo9arZt0cQG4rKtOecRue+naTG38/bKeYLSen098FLV7iEXHRyjCS29ACWhtknkh2RNBL/oeYZF0pzFWX5tmd83Aku7TX2x6L/MFfMj2rlGO1kwiNcedTDzmo+X5lz2wgqA0tqZp5RBNg1Upp9Kx/pNhPfFWsrwjVW8l5CsS54qLJYWnKiQqz6SS0ReQjYXQPL2vz7J4psJvxA+mM9/1dE5NHssz4FuE=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(396003)(136003)(376002)(451199015)(40470700004)(36840700001)(46966006)(36756003)(186003)(118246002)(26005)(107886003)(6666004)(8936002)(6512007)(6506007)(2616005)(1076003)(81166007)(5660300002)(40480700001)(7416002)(316002)(40460700003)(4326008)(356005)(36736006)(86362001)(82740400003)(478600001)(6486002)(54906003)(70206006)(41300700001)(8676002)(110136005)(70586007)(956004)(82310400005)(83380400001)(47076005)(9316004)(44832011)(2906002)(336012)(36860700001)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 15:23:23.1895
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 95bc93dc-63cc-46fa-b867-08daf31e9cf7
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1PR06MB5596
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

