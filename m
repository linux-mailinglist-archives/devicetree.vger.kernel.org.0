Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A38C663CD9
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:29:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238025AbjAJJ3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:29:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238175AbjAJJ2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:28:49 -0500
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2097.outbound.protection.outlook.com [40.107.15.97])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE0F4F7A
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:28:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9ylKAs4J5KaNxPeUulOnjY2OeamrThitpBau5rVQ9tULGVxcPLhZ+jVDMDm1kuqanvXQlzWY7uTnN5Bys3uAA3378frf7Ldc8SUqvHHAL7awR659IIFD2ykuVssRrkz3nENrcxvyXpyJ5JU8KhA9Yia7zuFsQGJbWn4tq3D3toZP54Rw+cXVyHapyn65Iw9F/piKvbbJx4Yuxh7m0bJs5VZFyY1d9hRsHw/SMM//qAqkC2U08NVr69bFIwePbevIjc40URJHXkvem3+idLg0J+lQeqVXskv7hA/lp/b2iMmfkh3nlFXVdtLaQw7M5hjn2jYvIUN76UEEbekf6M6nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=19II3/JsfliqGKr0/jifRGcoRMFu1Rn1xJE28iYibYE=;
 b=eubbz66eY50+fTHfAR3FIeQ4RcC5WW79X+7QuvvP1W2krYuYD0dJnBXWDN4nvnK/M1iSNaz8vYB7EJ9cYVyCrpwEhJ8fovrywYYW7nx+86wI1xJpOsW5Xnj2wFxPeAoaHP1Tk70duuufINq0gGV1eS1jWr5qM87lGy/E5IfZ+eOysdQc3EZpOcJlfwibgmo+kUl3O4BbRdjVtFbM4fwmYXLJ8pEBOV9ugPT2BtUgUgvc02YrmJPtqg/8ELSHhIqSYbvlz0EouyU0KendBg0u8XTs1or/594Q5br+BEIIUyarocPORKLh/ZKirME/2AZtik+tRz77rtL0NzL9mdp0Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=19II3/JsfliqGKr0/jifRGcoRMFu1Rn1xJE28iYibYE=;
 b=KkhpoBMe5ffeCHUehANPSjQ+p38CCSb2GX8AFHXqDmn+eFCxWR+hahUeKKunwiUFHsl9k+HQKs3bAaMS5wbNc7lLoJ5tV9CQzX64o1dEDPESBrVGBa9iqEbXkH/DGi19Ej0DMKL0/u5zqMxdfoRgN0tx1on9sRSlPW6XubnRadE=
Received: from DB6PR07CA0198.eurprd07.prod.outlook.com (2603:10a6:6:42::28) by
 AM5PR0601MB2418.eurprd06.prod.outlook.com (2603:10a6:203:71::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 09:28:45 +0000
Received: from DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:42:cafe::21) by DB6PR07CA0198.outlook.office365.com
 (2603:10a6:6:42::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.10 via Frontend
 Transport; Tue, 10 Jan 2023 09:28:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT010.mail.protection.outlook.com (10.13.58.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 09:28:44 +0000
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
Subject: [PATCH 2/3][v5] arm64: dts: imx8mm-evk: add revision-B EVK
Date:   Tue, 10 Jan 2023 10:28:29 +0100
Message-Id: <20230110092830.3282561-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
References: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT010:EE_|AM5PR0601MB2418:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: da4bb348-48c8-4a96-26b8-08daf2ed1205
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 51eXTbtqH7YbzzqiXM1iQlZ9/Yey8pWHymedVOahECi31cLwvLAV1Rtr3gH8m7hTN0QAkwMNIxtudcJqtBa8/74qxNUj42jO0YrYVaLt/s89PzFR8Vf+YcE0dWnNvi3d0t0ubhkzB60M9Jc2xvwtC0PStFPON3e3TgbFaZQuzY3wmPPfaGdEryV4hLu2A6cJjsIcmBWM7+1SR+xNu56YmymNJdZ4x7z09xilbufwWlU/YLWt+nGDFXbNeA+hee3HBydYkH1aDVZI0NHcbIqUMSLwC+wqsz8npPAE10CCAULs5Ywg9FPpiqCOVqZqq66hCGdXmXiTFvuEKeMxkqUcjpbnKT2OMERASuS/5P3ofkaWA+58OqUrDweC2nTJhIQMQPUBlAmXvn8rXhWzLBgPjKSS5h0EZdBaBDvGL75NsatZbozOLjTfAf9DgY0pZorcrilbYyZgl2wchMVrLoNwvewljfyBrmnne0sSGKmfaD0sDLIONesZh5cyjjPQO7XHmNQV781dmb2VNw16/2TNvOhhkIhdqZP/Z5H8rBuIOXHWw2/5m823byrmP/lGHor2hF3uU3FpRjMJZ/QipeAfxRUNJqYh90oqVTlFiyIPvVQ8JEGICQfVEAuYhhRMTF5iG/H0vi/KzwlaIkVaNZMkDxzsD8IikUkGIM8FTyVGLRGjgNf0KV335A0sNDyQUvu45spPuqU2xf6mFcRinMou+5LF55FRjVjL6JIfOSIVi6ghkkJCOT7Ng7+AHNWeOzYr
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(376002)(39860400002)(346002)(451199015)(40470700004)(46966006)(36840700001)(40480700001)(356005)(86362001)(6512007)(36756003)(921005)(40460700003)(36736006)(316002)(110136005)(478600001)(6486002)(186003)(44832011)(36860700001)(5660300002)(2906002)(70586007)(70206006)(8936002)(8676002)(7416002)(6666004)(4326008)(41300700001)(118246002)(47076005)(81166007)(82740400003)(82310400005)(107886003)(6506007)(2616005)(9316004)(26005)(956004)(1076003)(336012)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 09:28:44.5001
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: da4bb348-48c8-4a96-26b8-08daf2ed1205
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2418
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

the current EVKB come with LPDDR4, and a different PMIC

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 132 ++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
new file mode 100644
index 000000000000..1978d5dbde0e
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019-2020 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8mm-evk.dtsi"
+
+/ {
+	model = "FSL i.MX8MM EVKB"; // with LPDDR4 and PCA9450 PMIC
+	compatible = "fsl,imx8mm-evkb", "fsl,imx8mm";
+};
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
+	pmic: pmic@25 {
+		compatible = "nxp,pca9450a";
+		reg = <0x25>;
+		pinctrl-0 = <&pinctrl_pmic>;
+		pinctrl-names = "default";
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			buck1_reg: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <820000>;
+				nxp,dvs-standby-voltage = <800000>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck3_reg: BUCK3 {
+				regulator-name = "BUCK3";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4_reg: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5_reg: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6_reg: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo5_reg: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+};
-- 
2.25.1

