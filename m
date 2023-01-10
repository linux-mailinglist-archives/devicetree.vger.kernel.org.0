Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C658866448C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 16:24:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231479AbjAJPYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 10:24:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239020AbjAJPXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 10:23:34 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2118.outbound.protection.outlook.com [40.107.8.118])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 838DC69517
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 07:23:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJX1UQfzs4rFrPQJ+JF3lC2kenST4adYbv9F1BZrUkY3NmXjWZcM9KQa4q72nOBC/S7YBDQzb9XfYsShpdajfsQSc+003VjpnC1AYQOb0TsfJgphe1NOxuDwhWgRrf/cZwF1jluOWA1dsWhHkTEiraCwRXEuuHPmkU9v5caTR+kCk4V+Fotwd2GiwnS9FiQhEtyn/JuF9mdUeA0UxoNwLnCS/WMxvCBs098PIO8WSRKK12wKWmFoB2FOqrlwGhUDhsQeq+PCoAImhOokH7svadKoZAehu+lDLc8EryHe/36KlZBkY5rINrga6dfPkYkv2CXpdBipdWAo4UVJrdrZYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IHKrdoixi2Hfq2r9EnI5dMdTWimB1/X9B0TNpG3TqtU=;
 b=FCKpE3eF6/7bvadDpAT/Y5NjCVJ5n9yZo9vbh8vY6eBI1Il8eJ7vY7OnLrVY+R03NJdUVKg9aesyTIYWlJ8XjJEq8Oq6AMeawBPr3T/M8lB3uG6Xf/xP4oUffsLjyfeb8zqmdgIYoovJX5JFAHEZrc5C2ozaQLg8u1ahUG4QNBGZvNL+IBuvexD8UQNmPRjRq/bgNfKOHnzKmvuSirdtxG4Cxbzmju6M8Tgb9sXu6c0i87eCqIE6+oz++lDCWiqRC0FcWzKahn9xYN5WZXdps8v9UZ9E3tYDYrNs1K5T/teLLuhcGkBhGtG2PVCEyLJWXUJcNMUsaTCplbLnrax/EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IHKrdoixi2Hfq2r9EnI5dMdTWimB1/X9B0TNpG3TqtU=;
 b=DIJpJGH8NeujR5iFR9v7WRgqsp5LOs6Uy7ASMC3KV9zl7pNO5UPuWRkHQr7gz3XPfwcTGEE5mbgzxPW9SHi0H83tlV6b4xsbiig1nrm5O7Z4IbLArqy/EO3pfcW1wPpU8SG5lkImkmx2ExdNhoPWFIA4NY7PFHz28StLyQZAfi0=
Received: from AM6P191CA0013.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8b::26)
 by DB6PR0601MB2391.eurprd06.prod.outlook.com (2603:10a6:4:1f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 10 Jan
 2023 15:23:24 +0000
Received: from VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:8b:cafe::9a) by AM6P191CA0013.outlook.office365.com
 (2603:10a6:209:8b::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 15:23:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 VI1EUR02FT065.mail.protection.outlook.com (10.13.60.105) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 15:23:24 +0000
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
Subject: [PATCH v7 2/3] arm64: dts: imx8mm-evk: add revision-B EVK
Date:   Tue, 10 Jan 2023 16:23:15 +0100
Message-Id: <20230110152316.1149940-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
References: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT065:EE_|DB6PR0601MB2391:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ceedd69c-7815-49e0-1322-08daf31e9d76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NkR34lH3eQxY5WnefOVKLFK9dBB68vahZ6eZVcJ088XA3+Ne2fi8RevzebvIqEwx6F8w6d9K7orgyzBTwOVQe9qEGhxBmhwhnOxhYRn43anJpj4bLYTPhKRxm6eE3t5QNu1DVWdiem8514nriJFAlpwH8mYP6/CCdpa6S+OaQNhi+YMWia+zscjINFOjEHxDXgdXdIh3Kx1xwTTMyZDDFLL9la/sys5QGnSpqsXMoX/6uJ1QXox9gRQ45vVl8NRFVGm/XGMgXi6Hv0vWewhT+Bb++Wmje//OGfyN+2stS4NZITpJEMwI5/eQx8CnhMvtaGgbV+G04uOVc3z1yey/ioG71m/+JH+tD248r7My77diQlRhyaOmH+Je9FVPomApC5TfJlDyNcC+BN4j6z9219RgpatZdygkMu0X04UHnbYbFkuBgnXF+D+rmg3DoHjxGLz4JmOblkNKRlqF3dkO06GRufW1L3HBLYz3bXf+Q+SwSBVrBZlcc6VNZTG3nXtDUVUNhOPcc7SGrMohEF9J031qNQHEbmL0OQqyrN5OAoIZdWEVk2FUNR/hoiqRKaMfPfWbGdrf90m06f3QhL2/J+4DHVXvYrx0WtKDEsvcHQEki8AEQUcz3BMUyHlXW2yXFaaJYJ05PWbsasjv8gZlIlDsJbHiEncv0xU76ylWPFrbxA5G+NMmlxkfY8s138bZFytEiaps9WSqrym5hUpq6exb2YFNIjKwV6TySmZj+DY=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(346002)(376002)(396003)(451199015)(46966006)(40470700004)(36840700001)(70206006)(47076005)(4326008)(81166007)(8676002)(40460700003)(336012)(36756003)(41300700001)(54906003)(2616005)(36736006)(82740400003)(956004)(316002)(1076003)(70586007)(118246002)(110136005)(9316004)(5660300002)(86362001)(2906002)(356005)(82310400005)(36860700001)(478600001)(6486002)(44832011)(8936002)(6666004)(186003)(7416002)(107886003)(6512007)(40480700001)(26005)(6506007)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 15:23:24.0176
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ceedd69c-7815-49e0-1322-08daf31e9d76
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0601MB2391
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

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 116 ++++++++++++++++++
 2 files changed, 117 insertions(+)
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
index 000000000000..b2d724ad43b2
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
@@ -0,0 +1,116 @@
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

