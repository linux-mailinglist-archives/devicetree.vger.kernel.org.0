Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0A7168178A
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 18:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235545AbjA3R0I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 12:26:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235917AbjA3R0I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 12:26:08 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2133.outbound.protection.outlook.com [40.107.8.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19EEE3EC66
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 09:26:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IEvh8Xlwym4XRm06EkAZ0/km+IR2i5R1Ot4IcCfqvR1HGZg/81nY2B2dcTRpUXiRsML2GpuOpYno/xoDsob/69mlrX5yF2Ogk0bA0xR89Qkej3F4Qn9jg8Qvr3Cc+viNdUPifm90THLA1OarYi1zcJgkpoxzP3+Ov9aKJwCkarnwSscEeiBpcBAd4Uct1ozpP+LXJOtUpI1WwW66licJpEdSRroLGvqpSrfj7J4YIyGnF1xc9tVDGXcWZE4h7ufgSqZ+L5OEAgF0EJnP1z1CBJ4zogMB327xxVcnr19SBg8Zhyg2fWdw14VP++XF47qciY7HkDNSBn7rcf1+7Sc7NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bC0M4VXZg+VCZsGU+cR+mGbmhv2GrX60pG/Qus4IXuk=;
 b=oKZuYKNy7JPAOyjrrytahO3wjj6lZe7BqX1HT38l7BehijRnStvxvOu9fmVmGBy6RPg/7jlbD+0eZXsAGMrd284BrVXfbnaWRB8AE2Nmum56ZUZtsO4/4NDCwDbvhxjwjio0nuv7nz0Kklydi0jb/JB2DJwWP33QT7gLQrzEOyIjt/GdsZ2DFsGcuPeyI7oARLDTls52xDvdicmSBY8j853wTY3y53YCxM1c1GRkfH45YrmY4OO4TPFHMV78tXFbXHBc015g7+SfwF8WBmiaQtwTL6GMFEcNFfTcFBQKlwWZLKj703qV+onaZKUqPU+qNnLKDWFr9u3LXfTqvjpfAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bC0M4VXZg+VCZsGU+cR+mGbmhv2GrX60pG/Qus4IXuk=;
 b=CEboCzCCMA3Cz5EyWiuaV9jEZJgXWXzME1tTRvWFJr0wQx4iB/lcWd6eXegjRegTtsvyeC/LAP3O8LTtKRyAYcZPSj2JbF4CoCzYUfYrIwliJRlcSfoViV3ps+doUf8C3kHRn4qBi8fwVCuGDX7YoXZBLLdAcFqueL5fmFircSM=
Received: from AS9PR05CA0234.eurprd05.prod.outlook.com (2603:10a6:20b:494::14)
 by DB6PR0602MB3239.eurprd06.prod.outlook.com (2603:10a6:6:6::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.25; Mon, 30 Jan
 2023 17:26:00 +0000
Received: from AM0EUR02FT005.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:494:cafe::fc) by AS9PR05CA0234.outlook.office365.com
 (2603:10a6:20b:494::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 17:26:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT005.mail.protection.outlook.com (10.13.54.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.30 via Frontend Transport; Mon, 30 Jan 2023 17:25:59 +0000
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
Subject: [PATCH v11 1/2] arm64: dts: imx8mm-evkb: add support for i.MX8MM-EVKB
Date:   Mon, 30 Jan 2023 18:25:52 +0100
Message-Id: <20230130172553.2738182-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
References: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT005:EE_|DB6PR0602MB3239:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e6c9eac8-2904-4350-f00d-08db02e70e1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LxTVYKCPhryJn1/5239J0ie6nGGKoQ1jXsULmi/WDahinf3jLZehI9b0KINBMPuuU7ssnmMlUBoJhdwtWFrzR91qZlkHJJdqiUsf8fFVzGwrbNXYWo0a2m6VzJnsMDG6m0FCE7w85aWifuFxwIW3A4LaaPCNANzwrw54VQt8BgpdUd6OEVsj9ljunwQ0JurR5LlZnAdvmfDQJkKqs97GJehe+Q2HSn5LSawoY9MyOO+VOMTEabFzaG+gt0ESl6VLZ5h+A4mDI5f6xPT0A0h/qV4mVxUOSwz2P6D07tPGUo7wEPhKGOm6OGc2XCUeg9OeUPTRQ7DzcKvPksPqyHh8PMG/usZ6v7ou+/wjD6pI0agpHmMedFwol/RNbedoCrildyItvW0u7Wxe9JQBgqiudkaI1WZltp1JTdt7Qd7jpL2DLP1Ebw1yVRNHxLCofAmsY6N0mETqK8CxPHZdx7tuweJVir7HQJht4fdcWdaek64v260LchfO2fonXpeVE5wV5FAle0/I2h0VtbkF4rAJC5l1FHG0r9zOAXBxT/DgnxEIO9zmYefp1EZ9auCSAowPLyicvoNYsJ6PzzG/BZCo5u8xIngqb//r+PsDDB9B4FR/UgvNpzJjMtuh5tKALFso1Eg6OiI7B+RLwD6XTu0A4vwPVEAgtbO9pDq1G4MlS9AIaAi/kN3JihTWEYPgt3te34sRpqXdcatgUisqEa+YGTFYnkrb1PdbLkyRBUTZbjU=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(346002)(39860400002)(396003)(451199018)(46966006)(36840700001)(40470700004)(70206006)(70586007)(41300700001)(8676002)(316002)(36736006)(8936002)(2906002)(5660300002)(54906003)(4326008)(44832011)(6666004)(478600001)(107886003)(6486002)(118246002)(6512007)(26005)(186003)(6506007)(1076003)(2616005)(336012)(956004)(82740400003)(47076005)(83380400001)(110136005)(7416002)(36860700001)(36756003)(40480700001)(356005)(40460700003)(86362001)(82310400005)(9316004)(81166007)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:25:59.7451
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e6c9eac8-2904-4350-f00d-08db02e70e1f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT005.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0602MB3239
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree for the EVKB, which comes with LPDDR4 and a different
PMIC.

The regulator min/max values are taken from the evk's schematic:
8MMINILPD4-CPU  SPF-31399_C2.pdf

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 134 ++++++++++++++++++
 2 files changed, 135 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 3ea9edc87909..3bccc4d10928 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-evkb.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
new file mode 100644
index 000000000000..2c3947d68982
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019-2022 NXP
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
+&i2c1 {
+	/*
+	 * replace "rohm,bd71847" pmic found on previous evks
+	 * with "nxp,pca9450a"
+	 */
+	/delete-node/ pmic@4b
+
+	pmic: pmic@25 {
+		compatible = "nxp,pca9450a";
+		reg = <0x25>;
+		pinctrl-0 = <&pinctrl_pmic>;
+		pinctrl-names = "default";
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			// VDD_SOC_0V8
+			buck1_reg: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <780000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			// VDD_ARM_0V9
+			buck2_reg: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <805000>;
+				regulator-max-microvolt = <1050000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			// VDD_DRAM&PU_0V9 (BUCK5 in datasheet)
+			buck3_reg: BUCK3 {
+				regulator-name = "BUCK3";
+				regulator-min-microvolt = <805000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// VDD_3V3/NVCC_3V3 (BUCK6 in datasheet)
+			buck4_reg: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// VDD_1V8/NVCC_1V8 (BUCK7 in datasheet)
+			buck5_reg: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1650000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// NVCC_DRAM_1V1 (BUCK8 in datasheet)
+			buck6_reg: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <1060000>;
+				regulator-max-microvolt = <1140000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// NVCC_SNVS_1V8
+			ldo1_reg: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1620000>;
+				regulator-max-microvolt = <19800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// VDD_SNVS_0V8
+			ldo2_reg: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <760000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// VDDA_1V8
+			ldo3_reg: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1710000>;
+				regulator-max-microvolt = <1890000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// VDD_PHY_0V9
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <855000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			// VDD_PHY_1V2 (LDO6 in datasheet)
+			ldo5_reg: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <1140000>;
+				regulator-max-microvolt = <1260000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
-- 
2.25.1

