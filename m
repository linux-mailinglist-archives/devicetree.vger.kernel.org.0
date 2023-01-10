Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C339B663834
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 05:33:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbjAJEdN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 23:33:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbjAJEdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 23:33:11 -0500
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2110.outbound.protection.outlook.com [40.107.14.110])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1231111454
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 20:33:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dJheqaeGpzHpQoOGORidzE8c4M4Nkh8JZfcY8EA9GvdxFKeLeu4YjkHiNqbA57drPkthfcC8+OCDrgBWHj5hH/BhlGaHuiTqbCyj5VfbC6G8kAqQVfGXWV0eanU8dXq6Ual8xyJ1w/lF7cAkTvIt9Jpx2MOu/HRLj0zmtvDWwjp1r7EOI6k8h1cqE5INFzJrX+TxrV6GI9UGZRdbkGwu77rBoFFFrSjSkjeLJq4TDM898DGk8iSs4XIMrJDPZB+4st2GoOHmGt5k0O3ivDdiYwgGMRrOjIMHbTGwH5zL1g+uDmbex4EdUhj+xcNpGoi6CPPM9okVizlvdG1272Ym3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lM+WZIQ7LFdKMYnB+dyMXjDo/zxn73psuJUEixDhc3M=;
 b=jDZ7Bql5+O9jDkS7aGoaWXbOczWiDKd4DvqfdwSpjZCvmtFaQkrAv6Z7S3iDbPCgk+5000mne00xn/+GvJTw81TAmPGOZDiH2mr/Gm8LCY92aA3o28ojP9KP9mxirG0DkSdPpgPfJsp22npIO/dl9LS9xS4VNS3jOrc4ACpsfYAwveCYXGG/VQHLMO3MJ8PIIjdmcboDAlXrIgv8KRo3HoH5UM6JcSE/Yl5yuoln2HQTjgtbe4/yaw8khrQKc71dlm5KsXiMz8TrHsuFWb6a33mZbHc/c6pSsHLhqkSgIvPk/5vIUy3PG2CI8T7dkRruz0uIBfPBjy//KhdvWVwxTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lM+WZIQ7LFdKMYnB+dyMXjDo/zxn73psuJUEixDhc3M=;
 b=hkLpWTeigWH9ZddGZSG1IPCrmpczAEWN0fnTlKBO5vA4tOGNYIO5owc1QcqRvtmkjzsALR+p8JA7E8/Mp7oE1F2ucUwTWWncFtX2ANvOxqyTGY5xNG98NJahzJt1TseEbshDFXcEOPL1w36I7pvu2WU79+6B6ynL89WRNbfqYEo=
Received: from DB7PR05CA0042.eurprd05.prod.outlook.com (2603:10a6:10:2e::19)
 by AS8PR06MB8257.eurprd06.prod.outlook.com (2603:10a6:20b:340::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 04:33:07 +0000
Received: from DB5EUR02FT032.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:10:2e:cafe::2d) by DB7PR05CA0042.outlook.office365.com
 (2603:10a6:10:2e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 04:33:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT032.mail.protection.outlook.com (10.13.58.110) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 04:33:07 +0000
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
Subject: [PATCH 2/2][v4] arm64: dts: imx8mm-evk: add revision-B EVK
Date:   Tue, 10 Jan 2023 05:32:57 +0100
Message-Id: <20230110043257.3637516-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110043257.3637516-2-johannes.schneider@leica-geosystems.com>
References: <20230110043257.3637516-2-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT032:EE_|AS8PR06MB8257:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 34f6456d-d7ff-4240-8e84-08daf2c3c5b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KBoZ3DZf2OlaYntPiTtlorunqgqBgaeH/KgpaCsnS88XG9XZ7vZsP2rwYeBUjhxc2p80mwhQCh5x0mj+zvZWESmIb9OPOb//KsWg6ikw3xa5E68TTHQy6mOyxWqf4MX7A+pnxwEBuzXRrve9XtpL+svgcpfaIvE88URhGDeIOycjjFsB+5BKjzS1b8drdNqxEeHZxmcfGxvT0+/LEveHlLwtrnSOFcNs/0mo115YpoWSjjobHTP8Bym6uhJmYzWf1fimwKuTJvCUyRXNIR42RgvDc18g146bA7IQjm7ET+TufhIVOl+kSXck3FldrijjNFSOrSF7RQUG1amLMEIUwqrL61H7WORn7LRakEPuEPhQUvO0BWK0bEmvSDJzLreN197/7FAqxSJ+FaNBrIo0dzHX4r+dQlCcYoJMCltbvr0j9TzRXvgV2EUdwillqmwMnO5z46nnDa790UOA0tv/VnNG2wKKGjy89Uj1k7JPsuEl+/SUR6PmW6yMTlzxTxOQh/XiiWU4iaL/odv9Vud75ph/MjZ0ZNAlorF9lxR8jKAU5zneKsfUMhlpe5VS9nSfzvvK2cRADsmtRAbmvecgwO8RWbrEHdR3Y4zV1+MaGgNS3KRWkMdVzT37tsckKslLB9I/59IFhzXLHsdMJbEb81DIig3UbhDOX92/xIp6WbQ12K65DrkHLuGeqlPXoA9xp4sKE0LW8V73Ljg7GEIddk6obrsYexopo6IZ4+ujWbck9LdEvHSuWRM6ROf4QvQR
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(136003)(396003)(451199015)(40470700004)(36840700001)(46966006)(9316004)(44832011)(2906002)(82310400005)(47076005)(336012)(36860700001)(81166007)(2616005)(1076003)(7416002)(5660300002)(40480700001)(6666004)(107886003)(118246002)(26005)(186003)(36756003)(8936002)(6506007)(6512007)(478600001)(956004)(70586007)(110136005)(70206006)(8676002)(41300700001)(6486002)(36736006)(356005)(86362001)(4326008)(921005)(40460700003)(316002)(82740400003)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 04:33:07.0901
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 34f6456d-d7ff-4240-8e84-08daf2c3c5b5
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT032.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR06MB8257
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

