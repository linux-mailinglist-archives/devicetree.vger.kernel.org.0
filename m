Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C85F663CD7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:29:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238161AbjAJJ3F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:29:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238173AbjAJJ2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:28:48 -0500
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2093.outbound.protection.outlook.com [40.107.247.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A794CEB
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:28:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPdlRKfJomNP5bNdsHNOqt08PgZiHuj8E7p04wpLuTeD8kaaH3hraTfOnwcIE05kQc2CVl4/tx7XbM3G+N1+/oZ5qn4u+GqEc3St6x+yZyNAUt+SgB7emVspxtzFU/r6FQSF1fyx+DL5Kn8dqeXS0CvhKf1651ym7SjOnQ1qOUvLmOIToQ5a5DbbF4Ok3RF6vzxeN87hCHHCsKYbuaPI4FlUs4EGo4MzGiK76YBrbb52ECtngsEBNUtkC8Qe7cFqHjZeW0N+lPzHccfYfZGUSTYXCtAOvxXEU57kSvGqag7jdHYN1B8xWA9Wic2Mg3cceOLJqDvIaMT8a9zpoSym7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R5CZkTkghFmQSNrmqG5xLkZq0+D9UxbZyU6U12lx73A=;
 b=E0k0MOVlsugMjAUAFZFGlOm+rPe5cP7VLNtonznyvFiB66+rQsNJtQz6XpjxYTfIExVlM6sRseQYRnKDKajjmn/O/SnkC5PbIzNLajfW98TOGy/1/dV1zpNsjMlR17ocDLXCh+xSncm/77GHjJbkWWjZKwybzFldB8iTxZ03Zm9UJH97uRIa8VxPusv7l5RI/mQodZVMgAZi6by7yD4eayfVKJqWY0drqEID1Nsw9KYLAPC4g3NyIisuOvw6vzPn75TJ6r/tgmXWfFn4K8qs1LnOvpXfg9NycizNmUfHsleWdkA+Nix87f/bD35Hd3C2H+sm7HuWJww4vlDvZELooQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R5CZkTkghFmQSNrmqG5xLkZq0+D9UxbZyU6U12lx73A=;
 b=PXrCKDpDHrq3t5X/aYwwmZ5+b+uRwfXLVHqrgqM6g/BwtXsEFgx5P6aLVpiH7PtnuW1+L1ByDFufYjfff6G2hU8Ln0WIufPdJPs9i3qQc6c8sEFjsLAtgdpET1eaVPdQaZqhUju+eABRUHvkuutFYOz4hjhySdoAxIpQQDNWOcM=
Received: from DB6PR07CA0199.eurprd07.prod.outlook.com (2603:10a6:6:42::29) by
 HE1PR06MB3945.eurprd06.prod.outlook.com (2603:10a6:7:96::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Tue, 10 Jan 2023 09:28:43 +0000
Received: from DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:42:cafe::24) by DB6PR07CA0199.outlook.office365.com
 (2603:10a6:6:42::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.10 via Frontend
 Transport; Tue, 10 Jan 2023 09:28:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT010.mail.protection.outlook.com (10.13.58.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 09:28:42 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 1/3][v5] arm64: dts: imx8mm-evk: move PMIC setup of A53
Date:   Tue, 10 Jan 2023 10:28:28 +0100
Message-Id: <20230110092830.3282561-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
References: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT010:EE_|HE1PR06MB3945:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e53b1009-e86d-4fbd-da86-08daf2ed10ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kZZdzQShVi0Z/ovbdH9rBL2XyLVCKpDe6fjmCPOwEq0qosswrdc+UE2LnfyTvlwnOMUjfI6ijcDbuRn3ZfhSqa3YGCQ+BNGoFmct9RujvC59TyBawrc4NaRVJhZuC2MSvclJ39HC2kcpfu8oCyZALaBkeDD5jnXm5Rz3VNGJrrmLxuKHacTRPwo45ipFfdE7MWoquVOvnfAmkSrSU7qufdsxMwOYUtyRfxQSMHZ1UwJLhk6yGwbO+eIHzn5km9Et5w10b6gUVI4qebyK+UImz+xxryEL5riLCev/8ISemSESY4U5x9WBboO1mB5l6SVsPFd5EY05P/0CnDilY0jJgK9ZEKQa91jSeAINj/kzhWkXvb2Vm22u+3h6u4Ib1fWUDTM/eWfzJ5eAXrfM2CP/56WqTWVYjsTVOBeK7eAEdduXSmz9VnD6sPd8ViIMTDSk3/hku+UfcKGY10rf9QFpJXXyXwZ/PFX1oXAu6x5mJ4KSQ6YW6hPIX4mWGa/zRaEHduYKsBv0ukT2N4KxoGCGEETfUSpuGoTGpERp50mBIGBt4GgxaoHFDGPiJHnIthFgtCiYEDgCxBYlRNCUAB8YJhv78RZcCRIAO2Ds/OBt6dNAhgXIhE3aAiSLdvz1RkJvpKVw/+nTfgozOPg1DpzkcySmMEKVQV1EyWAVZs4a0wD0BJNzN56dGtxU7x16O6WUzFC/x8usMTO8Wku60meB1JsLSGqNTUVs0Yf/UZVC/z+EFFs8A5fiPRXJBaia5imo
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(136003)(396003)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(36756003)(86362001)(8676002)(40460700003)(70586007)(110136005)(41300700001)(70206006)(83380400001)(4326008)(81166007)(356005)(82740400003)(921005)(9316004)(47076005)(107886003)(6666004)(6486002)(6506007)(186003)(26005)(478600001)(36860700001)(316002)(8936002)(2906002)(7416002)(36736006)(118246002)(44832011)(5660300002)(956004)(6512007)(1076003)(2616005)(82310400005)(40480700001)(336012)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 09:28:42.2659
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e53b1009-e86d-4fbd-da86-08daf2ed10ad
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR06MB3945
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

moving the common pmic configuration for rev-a EVKs out of the common
imx8mm-evk.dtsi to accommondate devicetrees for the rev-b, which come
with a different PMIC

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    |   1 +
 .../dts/freescale/imx8mm-evk-rohm-pmic.dtsi   | 136 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |   1 +
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 128 -----------------
 4 files changed, 138 insertions(+), 128 deletions(-)
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
index 000000000000..10d7adcb9b91
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2020 NXP
+ */
+
+/dts-v1/;
+
+&A53_0 {
+	cpu-supply = <&buck2_reg>;
+};
+
+&A53_1 {
+	cpu-supply = <&buck2_reg>;
+};
+
+&A53_2 {
+	cpu-supply = <&buck2_reg>;
+};
+
+&A53_3 {
+	cpu-supply = <&buck2_reg>;
+};
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
index 7d6317d95b13..b26460586f68 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -133,22 +133,6 @@ simple-audio-card,codec {
 	};
 };
 
-&A53_0 {
-	cpu-supply = <&buck2_reg>;
-};
-
-&A53_1 {
-	cpu-supply = <&buck2_reg>;
-};
-
-&A53_2 {
-	cpu-supply = <&buck2_reg>;
-};
-
-&A53_3 {
-	cpu-supply = <&buck2_reg>;
-};
-
 &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec1>;
@@ -182,118 +166,6 @@ &i2c1 {
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

