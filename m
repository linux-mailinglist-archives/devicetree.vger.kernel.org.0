Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E02E865D3CA
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 14:08:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234813AbjADNHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 08:07:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239314AbjADNGv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 08:06:51 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2106.outbound.protection.outlook.com [40.107.6.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 117ED5F67
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 05:06:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=asnaIJfpmQJw88eo+8L7jZt4diHv3L7f+u1zsH7kWCF5hL1xGcFTKtutgf2/oFBjPC3uw4P49y/ghtR6CacGF8mBGDkTtPapHRvH9GoeMcmZVKWD+47l+vzyuTG9rQBSyXA0u8HI6EPfPpFHzWSvQco287VLulKQ3HHqaZLZ3fdFxaIzV0uNiNWufrzkceGlrOS4DFFmrHWpl27L1u2YZ9aNBN6cktOznUAlmxHaREJSawZLUvCWqlUPcEpMnt4cVJrZ7MLvgjlBVmpJBO8zZd6guvuruWkUiLP352M6ree5mWByL4WIr9KxJCgcYqbECnaEgWZrW41Od6J9MgYLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vgXQiu5MptkjXCbcZzgJL9OT8NVIs3lHNtEglKoJHUM=;
 b=KJ5AiCKw6a+tEzEIOpa9HUIO/VbBtxO0az1p1qL69n3KF24rLhdlgNkiQPLt37ghmeFqQ88pc9nBzNYhzZJn3gnWuns/9Pxja3FAdKP8+goqgnJlIZCDd1SW8DqKEtdJ+ZpJNmWctp38OuJbJlM1DvqJ4xbuMZsBuz5FH+B/i7nbrpt/KANXJKmHLVAmrxfXiIQQIlK7qN5/YDf0MSFJ67BY54fDa4V/dVakpZmsO5vDdCrvbH/KhZLtREL7sg6uLFJ4GuUvLVUtnF3I38F9ETJyyDuAX1Q55voj7X9kH3WurRiRTULLKHQF1tgfbDKmyp5eibsJfSXEQhHx8ruxyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vgXQiu5MptkjXCbcZzgJL9OT8NVIs3lHNtEglKoJHUM=;
 b=KB0ZpJN2kCdJVPYMGiKjYkhIFuhgfSkrqLhPORtAQMyVJGOd1GV3ad7y0A1cmKe6TF20TZgpf+9gs79N65hy5Wqv6oFFqH6/yKpRyM2/P+C4YGu8RFaBmoCoSgOG+cxKJRFihdSKZUFnFHcnVhLhoV6Mp1JhGWdlxKkdFF5Pwaw=
Received: from FR0P281CA0042.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:48::9) by
 DB7PR06MB4726.eurprd06.prod.outlook.com (2603:10a6:10:2b::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Wed, 4 Jan 2023 13:06:28 +0000
Received: from VI1EUR02FT040.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:d10:48:cafe::75) by FR0P281CA0042.outlook.office365.com
 (2603:10a6:d10:48::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14 via Frontend
 Transport; Wed, 4 Jan 2023 13:06:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 VI1EUR02FT040.mail.protection.outlook.com (10.13.60.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.14 via Frontend Transport; Wed, 4 Jan 2023 13:06:27 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, ob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 2/2][v3] arm64: dts: imx8mm-evk: add revision-B EVK
Date:   Wed,  4 Jan 2023 14:05:12 +0100
Message-Id: <20230104130511.1560237-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230104130511.1560237-1-johannes.schneider@leica-geosystems.com>
References: <20230104130511.1560237-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT040:EE_|DB7PR06MB4726:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: fbac11b0-0d65-4768-4b8e-08daee547d44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PelOJGOCZKtIFpXsicaxHdwDlV8SRsdTTPjJ+fp8ghIIslcO07fItGAX9/MjOxtLQ3vl4vaybRhNgU8nY7hiMqCbcEdPKiAH2N1tVsKsxQeVeNIcA4QHr16p9QNH3LRvXqbvKU9p/EaCJRWgao19cZi5GrCIzYWorM5x5RjmfnV1SJFkvkF0qBiQS0xZn+nG1gbzy3uwcXN8xyiVGPIC/NBMCn3Modd2B2EmRePkUuSIFK1+Ww8jaTzROjF+UUpJErwpnd4vmFozuag/p1WXmH9IrGBcYG4g9s8LVFiwG6h1hcAKliE6SkXTU2vEHvhVjKL9bBzk87PIsRmGSxm40d1OAFglk2+b3gJ7+aVMFmBiJbMD7XuEPB/VthTGoJ8O7gUvm0vtp4M2BZLAdTKU3DmzA36ToHR895qkvyvzzdJ81CMeDOFZNoK4/9wLcOd3fsk0E520BDkMYuq+AnkiD9ig1x66yIkO0FKFaM7C6ampmsghfeK0NnC9sOQu+EuYX9VX3+cvzLLQoErh8CgWDvmmYXIlcgQTEcnHPJfgq2ve1+sJqmgzs3eXg9mRLqwI11EYmnHLdVZ4ohH8kLYao9RsLQKaOMYckqo64QaG7iET6d7653QEhvuH5lml1X6lfYPXDHDyTlSaY8ZtRJPsW25iNSQA6QH0+wSXcQqGbSwTEgjqfHOM8wgtjLnanPIAMRPhuNgBSF37kpiHscn/UjVkIOBfHnnTt84xmo4OTCM=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(376002)(136003)(346002)(396003)(451199015)(46966006)(36840700001)(40470700004)(70206006)(8676002)(70586007)(956004)(81166007)(4326008)(1076003)(36756003)(2616005)(41300700001)(47076005)(336012)(40460700003)(36736006)(316002)(110136005)(2906002)(356005)(118246002)(9316004)(86362001)(36860700001)(82310400005)(82740400003)(5660300002)(44832011)(40480700001)(6486002)(8936002)(6506007)(478600001)(186003)(6512007)(26005)(6666004)(107886003)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 13:06:27.0919
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fbac11b0-0d65-4768-4b8e-08daee547d44
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT040.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR06MB4726
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
 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 132 ++++++++++++++++++
 2 files changed, 133 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbfc4f99c01e..9c3a02c19847 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -818,6 +818,7 @@ properties:
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
+              - fsl,imx8mm-evkb           # i.MX8MM EVK Board, rev-B
               - gateworks,imx8mm-gw7904
               - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
               - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
new file mode 100644
index 000000000000..5907e739d9f6
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
+	model = "FSL i.MX8MM EVK board with LPDDR4";
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

