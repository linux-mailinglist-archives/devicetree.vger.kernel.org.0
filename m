Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C1C2677572
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:13:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230493AbjAWHNn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:13:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbjAWHNm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:13:42 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2114.outbound.protection.outlook.com [40.107.20.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13D4119685
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:13:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0Yhd18WrT1peSO4nSP9L97w7+Fa3zxicZGNIZMg9+4FVExbk1P8MkveTcoMbj9PvxRmkc4P4ipN6gBx4GG1hLP3pZoRqgTMua24VwL+o1+nwS5utrfpjr7V6XGiDtnIqdIsCop6S8WrTr8HVR36zND8FzpnHzwOGWTo9Zu4AXoaNBjQc/xojT02eYJhT/S62eyQ92o+C8LmFOIIJQ5L7HA0YigM1HOWS3qdLjLmoHNNj/zjBkmI02e5h0X/McAK+oG9n2jW8Lc5aG/XNB6KnLG+apGPclRFVfCtpQ9j/nJmEQxDyBvVleyL0KOYjO0TeGTAnQpdgLmCPA4mwrey6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IHKrdoixi2Hfq2r9EnI5dMdTWimB1/X9B0TNpG3TqtU=;
 b=RFFieLEqS0qPrhDG/GDYW7q1JApfGm/dq4fzYK1TMj6mlSkJNzDjBLIj3QoItfpktQbSSysMdjKQwm0ywAngJldKIhuY/SIdWNMA8+uzSV99iWjAyNl384dfiAsciUC57POBJZWYRoUganz8PdhnYt4KP3aekxIMaNREu/2o3naubGgz9M9jUZ+3/zjXzznyuU8HJx1pEcZ3krBhwF2ekbe2660UJuGVzJu112FjRHI9iMbgATSHkXloI1V3yEqLUz3oltu8rZPXdQlf3TJzN+lBPgZC93HQK6HEhnXvVtvnke+doD708Q+VRNqrk5UMPDV9klKebPd4adocxFbMCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IHKrdoixi2Hfq2r9EnI5dMdTWimB1/X9B0TNpG3TqtU=;
 b=Jh8pRp3gLXCXGnuuoxXsc30DfValt2CRLW0NMQyzAzLdOuKBX5eSRRwTfo/ajZ9ak/aH1Yi4R4+Ly5hxX4LHwJggiOvG2y1v2TiVOSyY3ITMOg4WHPX3CxVqIAv6KQlLAQvkufEAa6bMZAqGd+wWw3fS92APfVQuXlWsm8n5v2A=
Received: from AS9PR05CA0117.eurprd05.prod.outlook.com (2603:10a6:20b:498::33)
 by VI1PR0601MB2093.eurprd06.prod.outlook.com (2603:10a6:800:2c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 07:13:34 +0000
Received: from AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:498:cafe::d5) by AS9PR05CA0117.outlook.office365.com
 (2603:10a6:20b:498::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33 via Frontend
 Transport; Mon, 23 Jan 2023 07:13:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT021.mail.protection.outlook.com (10.13.54.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 23 Jan 2023 07:13:33 +0000
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
Subject: [PATCH v8 2/3] arm64: dts: imx8mm-evkb: add support for i.MX8MM-EVKB
Date:   Mon, 23 Jan 2023 08:13:11 +0100
Message-Id: <20230123071312.3297210-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
References: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT021:EE_|VI1PR0601MB2093:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 6d6a36cb-054c-4240-d1b6-08dafd1156cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gikPur8vli0uSmxDrBIJ6yhl8nOOdBvGSZpQBmgurGt57HrDkV3WsYz++jAzTr8hDRbE67EMBtjNXxuhg6F+Us+Onmt1J3oKl+BBFVvIa+1Z9ztfCzk2S829zRQBWPHzMCI2S6L/HUEzMxsRHb2DbWXPP0s2tZIPKkh88JRhxxbsiN/bOeqqbOQDIfi7+7gpzPx3/JDyG+n1W9lRhW6JjKq1/TA5KlVSYOlQF89y9YR+V4GaqcRW/7bGTpg/29HBdlrgAdx8ISJXR5YkCMu7ubqUpVNh078/3oiy8j6icNhbGzDDzBiW+VRGW42/FeVgRPbiKiTffAM+vXqZmFt7E1LO7x+kv9MxcTG/aB26R8Delml83wYAQkzXiNcERRxkPfd/BW3p332jxOFczmJPyovb/NzKqczs8sW3WGfDnNxMWxVS6i5Rl928k2Yh1hjkQqy5wV6/i37E1nMywiR3Noh7QXbjsr3yHkO+Ge9MsMmfD5EioypvFrBOrGSNd7agzNT/t/VDqmc/ZICRMj8lbLWczyC1XKaLdVCYq1a4ghNK4OrXx4PD4l81vyynhigIGnKna++wTamM+2fb1EbPNpkp7Mne0jkDKrhawx3nylhTbs0YKxbmzpKw304b+D9sCZk35173P1qJktYLmRlsiLMbAdJ8NuOGmNxWl6xdFm4N5XGB0nrUD0nm4RwznW5rX2wy22KOFVYohI3/a1cD8k3qhRgZSVR6dwW57LyTigQ=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(376002)(39860400002)(346002)(451199015)(46966006)(40470700004)(36840700001)(6666004)(86362001)(9316004)(107886003)(26005)(6512007)(186003)(478600001)(6506007)(1076003)(6486002)(82310400005)(356005)(2906002)(36756003)(40480700001)(36860700001)(316002)(54906003)(36736006)(110136005)(81166007)(956004)(2616005)(336012)(70586007)(82740400003)(4326008)(47076005)(8676002)(44832011)(70206006)(41300700001)(118246002)(40460700003)(5660300002)(8936002)(7416002)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 07:13:33.5691
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d6a36cb-054c-4240-d1b6-08dafd1156cb
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT021.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0601MB2093
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

