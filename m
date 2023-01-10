Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77F18663831
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 05:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbjAJEcR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 23:32:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjAJEcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 23:32:14 -0500
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2126.outbound.protection.outlook.com [40.107.247.126])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BBAD2D1
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 20:32:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=arB9lL4t7y4T4bPkIFliS07+/9Un3NDiE8Uh2cpp58HR1tQtqiII7h3L3/RnBGykN5RZVCeAHIh4zoSpZgWgsJmTwkBYDDPPH0JrLEdOGKsnsnH06IFElshh1RT1kdZSEcDty2VVs5t884pt5Z/f38U9LAtTMA4vpGbDVvLfgohH2wQ+zKd5pEH5hr9iU2RvYVEBjFxcsn9g/I8Up+Nq4Ckd4pwwMpERl+Z7n9td/8cnZ3pNS5kAe0WHfrQ3GQfF+yFYFXVdT4QzjlXH1RADrc7VEQGgTrYf7vtFngWDXME/DR/JUvdODyxHbWgTeaKqFIEEceDJ9B00R7Zue+7XkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/2Dg7NtEIDWY0a95DBY/Ee7AqhSTE1WkH/N8LCF8fBs=;
 b=UOnc/g1N5U9Mp9i1OJxcqSjIAAZbnqcwtuVhE++gcUmmuzMEWPupXqE8ZEb0eMVYzSlaP8XYyo4Yk8LIx7PTwm5T5NUs4ovmZc7RF47PLtllXCvh36YWAffnb3BihvoTU6uL6OpvIVvGDyml1/SkuZ4uzVGlRlSCqffhsfZGdMnSI6777Zd3cwGPliO1BZLxPwOb8TyBq5mCH7+Ch94jIKM7wN3jdCoEyUbiiHUq5A56cjXAQJ1iCwuDSqRK9MqEYXlPnU77UqYIeEghVEFIUdxT31i+WYhXWJ2rsDyMWGXRPV1eqezGbF57cmoi8pltIDyHM7Xd60XyxaHlKTFQew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/2Dg7NtEIDWY0a95DBY/Ee7AqhSTE1WkH/N8LCF8fBs=;
 b=Qi3Y9j0QjhOBQSsMGm5xLkRJ+TSgeo2QKvwsRsm9y49NniLC5/5Exx6QfMKJLDmrMh6xNuVo+kfZq5EqKe0SAL4qqXjdU0dpqP0o1EpDUyulHVAxE1OAwMtZglJ5e8YgzxtUsuCxCedmoOjg/ZDcGTqnexeW477Rx5LoEQC7NrE=
Received: from DB6PR07CA0006.eurprd07.prod.outlook.com (2603:10a6:6:2d::16) by
 PR1PR06MB5481.eurprd06.prod.outlook.com (2603:10a6:102:3::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Tue, 10 Jan 2023 04:32:09 +0000
Received: from DB5EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:2d:cafe::99) by DB6PR07CA0006.outlook.office365.com
 (2603:10a6:6:2d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.11 via Frontend
 Transport; Tue, 10 Jan 2023 04:32:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT060.mail.protection.outlook.com (10.13.59.229) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.12 via Frontend Transport; Tue, 10 Jan 2023 04:32:08 +0000
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
Subject: [PATCH 1/2] arm64: dts: imx8mm-evk: move PMIC setup of A53
Date:   Tue, 10 Jan 2023 05:31:59 +0100
Message-Id: <20230110043200.3636458-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110043200.3636458-1-johannes.schneider@leica-geosystems.com>
References: <20230110043200.3636458-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT060:EE_|PR1PR06MB5481:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 2ad41008-0aee-41da-955a-08daf2c3a2c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W5P6fjsSQV9zOSpJcNcZL19ifWx9Cs4PXnRWRPJhhQDX0M+SjuP9U/ze2RWePF1wxF8OkUjVhNpAbNjrNUnEAQ32UclWVI3i+qj8U5g8NnKZ3BTcy20w0Eg77sdd0PI25fz9K46m9fmhmhYdW8zP73zDOuGuvYHujnJyRV4vH0sh5e4gaNQvqWqaE8rjnC+RVAGNs811InUUefoUrPjopoM689lxOIfeNmbXLbJxa7Y/RQuf2UV29g50s8zJcT8zIGCr2cEdRau4bqwcdYDqKMeM6r9tauvtcbRdmOjVSw9hgHoRUP5BMizxo/sbKokrUrKKN4DM37O37ldNX9EtIIVa1oo7oEuD7fO80oWlhuDGgc/Vw1QkfxE2UIh3Xy+3POqxicF5rdS+NsGy5mVaoKlzmVZK+qhmDrTZwVmUVfttSMLh4qSl973lcSIwryrUnScgmYVf++/U15gvEhkFxrI8d4wOHOQ4K0tCIpKc6btNkP7waRl43MmXJL9w4ANh0K7TGKQ2cymTbrtbBr4LWRw25q8cZL62rICQxQneIbKwYc/uEFwvIZvOD0EFePHgJMPOkbJu28sqjbZi2e7bYV1SYbWS3TgTNtbDWKIQfjXvW31p9OzhJQS7xfsJRFjvNycDGCrrmy09/2qqhwseVdCCTL9cj4OIYjoV5h7/scd/SwUtneBHjBPVr2ngUySgBhmgVp5BazenrniLUokKHV/eVs7NpTEm+V7nKVBfoJzOD/zAx0xLiZEVkJy3/yAE
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(376002)(346002)(136003)(451199015)(36840700001)(46966006)(40470700004)(2906002)(6506007)(6486002)(478600001)(26005)(6512007)(186003)(6666004)(107886003)(316002)(36736006)(110136005)(2616005)(1076003)(8676002)(36756003)(70586007)(336012)(956004)(40460700003)(70206006)(4326008)(47076005)(41300700001)(5660300002)(83380400001)(44832011)(82740400003)(7416002)(36860700001)(9316004)(40480700001)(118246002)(82310400005)(86362001)(921005)(356005)(81166007)(8936002)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 04:32:08.4421
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad41008-0aee-41da-955a-08daf2c3a2c0
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT060.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1PR06MB5481
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

from the dtsi to the two dts's

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

