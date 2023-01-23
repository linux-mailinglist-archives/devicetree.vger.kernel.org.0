Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15CC0677570
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:13:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbjAWHNj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:13:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjAWHNi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:13:38 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2116.outbound.protection.outlook.com [40.107.22.116])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8FAE10267
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:13:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SsuKRwbXMNOY/39vnDkvZZ5MjmRM3qK6pJFavQ51kgQ4RZFzsHU7nGPhh1t9EwRPGWda2yiR100ry1N4kBfRYlgb95kMevDYW7QwLZQnVxxsEiuJd7l4LtdHufDJSS30hrD7S7kjCygA2TgRNXpcXgDEJiYu8iBmrBVMvGpOFVByLzqUGzBSkYKk2y1p46pIeVFXO9bFSk0W559xWFnd+kWaIYOxjccp3P7yTHBDkLPiw/Fl4CsAKmQ3dfCT4GmZbuKluwHkL6iG/tsyzMi/19xO4pCtnJX+tOZ/feRefryVXFdY/fyKoydcJJ9y+P2avequeXUoNJrlGRmKbMJFdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hNQ3ELyGLPyl6eR1Lkxm/EEgSOhrRnOS/ucJR5Chk4A=;
 b=flDWHw2FjVEYpu1DD0o82gDSyfdTLP04WEroaxO5hgZm/lwHo8j3GEvpVEFi2trphQ1F72R2k79Kzf0+CcLwZiS4IbHAHIugllwgquBQDCuB+igQvHqMMn7+Vt3TZjkIzQIDd4Q2kKH80xNq8aSka2Nb3QKtZDLOk4ZC+sqnvgEf35UoqyTCYdRqbXL60Tzsqz2I1o/kTRYnA1ekQb26giHfZqwDKl9mBdnxR1dx4NBCusaqICKT9STyInwSToPpXOMYngWKggA0PH8iS3BDG92lpSYtqlKjnrfxFa6buF2FGEcb1F5n3R539ktBCvZvlzTmmzCKL6dbTPFxP7oIFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hNQ3ELyGLPyl6eR1Lkxm/EEgSOhrRnOS/ucJR5Chk4A=;
 b=nBx1IpRS75X5QK1Y3VK3V4F6y6XwvjZ1+J2ANDIKz19I3LPRtXG3Du8x61eew/HTrcQ+rG8RGBIEGy2nKfxyAiDHJCV0xrJ46YCR2Q/jzBQwJMOK/eOnANjOWgRko96QxFWi4z8DDo8bF1f358wKXKQRNZrCHGCBmBeY8lHKT5I=
Received: from AS9PR05CA0094.eurprd05.prod.outlook.com (2603:10a6:20b:498::9)
 by AM6PR06MB4824.eurprd06.prod.outlook.com (2603:10a6:20b:63::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 07:13:33 +0000
Received: from AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:498:cafe::9) by AS9PR05CA0094.outlook.office365.com
 (2603:10a6:20b:498::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33 via Frontend
 Transport; Mon, 23 Jan 2023 07:13:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT021.mail.protection.outlook.com (10.13.54.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 23 Jan 2023 07:13:32 +0000
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
Subject: [PATCH v8 1/3] arm64: dts: imx8mm-evk: move PMIC configuration
Date:   Mon, 23 Jan 2023 08:13:10 +0100
Message-Id: <20230123071312.3297210-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
References: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT021:EE_|AM6PR06MB4824:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 5d76647d-782a-4951-2bb5-08dafd115620
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IvF1XNLv4zz30UlAg4uhFROEAva84VI/fP/7TXJhQLinjK8g3nd7+n0ai7EKk5KVHn7r4qjThi7OgSBPas6JUwK8lPxkrfqv0jvpA+9b3hCV2Q7NzKDPo9MP4SDxP5u4Vd/YnPyl1+z4McCQT6/tMzt20uhbUxU+9hUy13BKPB8CXmV37rRmxBZL0WTfjEOA+P40OLHaIVZck6eDXD6C5SmOFsi5+HRIY3/dT+xeNw2lmjw+nsZ8ROYIB8562mtMYw9EjE2uxRxydAUwk6Yh+mUpRPMa5h3WH3nibGHrc7jYJ4jiNgn7FvZ8Ucqy2NbkR1PwSNicssq2uu/3uCATnWfPlOmC+6BtsPE4/N/IH38/6UxYiBqDuDcTi2i52EHjn9uDV5VSsHdXwJSvrlXCq/moXGdq1juJ2RunCAf5oKGHul/4ZM9s6UqEjti6rZTjvfwoBvdPYhu1lTLbIKS6xSk9D8QTB/1lxa3oVo6ZaYA6DLLlnakIETPYULEmiUrMg+eshyogTVjkruMKzNqv/FWS12trJSR2SmlzKAjUHYxeAjMSgDpVEJgQPKB3qxXUyEPVOknLuRrU9G+ykTuREXvJGGPR+xAn6zddak4qST/xlDbx0aka/NDDjUXf0huF4VkwphIEO2ixIdzPLLkmsTqqpAdh783OSbqJNa2mzK1eoB+15IHztQzZedUQgBOGtDytUraGbQp0MagDmR3UF2W6prmitCGGX1gC6v9SOG4=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(396003)(39860400002)(346002)(451199015)(36840700001)(40470700004)(46966006)(82310400005)(9316004)(36756003)(6512007)(1076003)(4326008)(478600001)(8676002)(2616005)(70586007)(47076005)(956004)(336012)(70206006)(186003)(26005)(86362001)(118246002)(44832011)(40480700001)(2906002)(83380400001)(36860700001)(41300700001)(110136005)(40460700003)(6506007)(6666004)(107886003)(36736006)(316002)(6486002)(82740400003)(54906003)(356005)(8936002)(7416002)(81166007)(5660300002)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 07:13:32.4285
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d76647d-782a-4951-2bb5-08dafd115620
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR06MB4824
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

