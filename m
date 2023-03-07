Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 573386AD685
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 05:46:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbjCGEqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 23:46:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230135AbjCGEqn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 23:46:43 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on20726.outbound.protection.outlook.com [IPv6:2a01:111:f400:7d00::726])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D9FA6F62B
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 20:45:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YB8/UVgFtNoe16IKw+nzREXGgxcYjRygntn9eVCafIpYCJDa1W6zrRhg+bgSPPWtXZiA3BwlGlxXN5Fqs7iuzh/8g9M3KgDSF/CCLdJO8LWgILRlIZtBNrEaSHt+QYcv+y7PpFbJLH+i5geDPbF1oipBpcDABvawIMiJFpfNM1BDcKHuYYWRtAUVz1NBJthQJqXckairZlCrhqoDq7l1skjPz4nYba2p0diiZb5Cyh4+yRdbp2gxr0IiBiGHKnTT+Tbpz5NESmzWfh0q7NGTVVtaq40ztvhI4DIOc5irZqRkvT5DCFNHSp+2Wim5ML0Qzw7Bp9VSROLpsPB+DwY/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6WWK3BdW4Do5PdwjqmNKT8XuDIPHczNuucT1VsxtWM=;
 b=iQ6BdPtWkXeGQrf46blyOTSj1zluSQ2omaTl9NKXjDW9jAUkHXCpj5r4ecYu4/zqPvbhVTsOVHVydzXpwsgII0k8dJ/WubrfifB1gMenrhY+VdJ390iHV629KqiYSw+T7p24Tg1e5gKn5D9jLmbGm/caki1m4/FYbPOzmTd2zIo+ZC8dbhqnU2pQZNDWh8dJ0QghdfIdod+P6eanyg3+ntAnJ1uNvMNrVcXRlVzGRsaYee4dSkpTFzHJqm0YBdCPeUIM5naHa6xZiues0C6TpVjhe1kORF1l0s0T2HtFu0S3zxJjJh3JTiV3+QCI96jwUouCO5wuB7DFwyboTdw+3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q6WWK3BdW4Do5PdwjqmNKT8XuDIPHczNuucT1VsxtWM=;
 b=WFO9vGOj1yJHHYineAfzFGqfJGXjZjkJrdw6kGnkshA6pZMkoSB2+EmbNgjHdySQl0aXbqlBfLvAMQzqEygsIqoJC5e159akO9XMQ59gK1CpijMfNdyfSx6qm6WrMzvyMZHlyyhv8NZ7ZJP472mpQut2kPIp5zDU74Bpl2lw9tU=
Received: from AM6P193CA0136.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:85::41)
 by AM6PR0602MB3398.eurprd06.prod.outlook.com (2603:10a6:209:d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 04:44:59 +0000
Received: from AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:85:cafe::39) by AM6P193CA0136.outlook.office365.com
 (2603:10a6:209:85::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28 via Frontend
 Transport; Tue, 7 Mar 2023 04:44:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT063.mail.protection.outlook.com (10.13.54.188) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.13 via Frontend Transport; Tue, 7 Mar 2023 04:44:58 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v12 1/2] arm64: dts: imx8mm-evk-revb: add support for i.MX8MM-EVK rev B
Date:   Tue,  7 Mar 2023 05:44:48 +0100
Message-Id: <20230307044449.2714529-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
References: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT063:EE_|AM6PR0602MB3398:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ed6ce7ee-c486-43fc-dce8-08db1ec6b4f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I+8hCZwTgJlhL7auJDxTN1DyjK6L2wSINUv/Hzhse64P+ICBuN6FS/I3fY5Ka57gjD6ETpDfkK0EKnJNgcCxDFr+zazIx0q54fRaucC1ccc363WC8uGwZXZNNnLGysxzfID25L9+8ZeAOUTFXXdo5/wauFWS1VdYfCxk5DrIuSaHF6z56p4EyTittmXk0Fm6kr5+nUYcJlWvymSU8ux7h6quq4OXphQwF688kaMYwF6wdtexBBc394RBPiOA8jgaVDa7cFy09g32pB472B4+XO3IJr4jnRL5WxHn15Bf9LbtTxCKsyVsFo4BehWMqZuky3vqUc54mXztqIA6Xelp5HxwEDZO543yhSEumo7+0ESwtgHI41u2/XVIeE6dRV4rZ+PE1u8AiYj7MgGijB3pirQcohN6pTx+WxetDvPshyi/z7t8Sl4yD9IgHGX57rtIWH155c6IYWJRYF+8PvWq8Dd1Wm+8DPtMXfllCQcrijfeP4hAreb0WAveZiPQBA23nuWh1Ohyqyt34LUav0DL02RAbZOM77/VaGeQwXIfLj4h0k/wzrBnt92b8OMDNJQ3JtnLJQDOSV3M6eiCw9rZ/KHIx/iqVKnIoFlGxeMrffeWBQiW0KEOvUgZDc3csmmlTNn3kR+CrY4/0uNdPGbwHgyUjO9J28VaHa0H8BLbkMU/yw40A2CVvuguNOuw/GlzH+oQ8//ULJ+6ZbnHA5fg2EYsOUbbNYq/7MYIaz18Zz4=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(396003)(39860400002)(136003)(376002)(346002)(451199018)(36840700001)(46966006)(40470700004)(82310400005)(336012)(2906002)(2616005)(956004)(83380400001)(9316004)(47076005)(44832011)(70586007)(70206006)(4326008)(6916009)(8676002)(7416002)(5660300002)(36860700001)(186003)(6512007)(26005)(118246002)(41300700001)(81166007)(8936002)(6506007)(1076003)(36756003)(82740400003)(107886003)(6666004)(478600001)(6486002)(54906003)(356005)(86362001)(40480700001)(316002)(40460700003)(36736006)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 04:44:58.8276
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ed6ce7ee-c486-43fc-dce8-08db1ec6b4f7
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0602MB3398
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree for the revision B imx8mm-EVK, which comes with a
different PMIC.

The regulator min/max values are taken from the evk's schematic:
8MMINILPD4-CPU  SPF-31399_C2.pdf

Reviewed-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mm-evk-revb.dts    | 134 ++++++++++++++++++
 2 files changed, 135 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evk-revb.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 3ea9edc87909..5264f762386c 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk-revb.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk-revb.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk-revb.dts
new file mode 100644
index 000000000000..2eabefb9cdc3
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk-revb.dts
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019-2022 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8mm-evk.dts"
+
+/ {
+	model = "FSL i.MX8MM EVK Revision B"; /* with PCA9450 PMIC */
+	compatible = "fsl,imx8mm-evk-revb", "fsl,imx8mm";
+};
+
+&i2c1 {
+	/*
+	 * replace "rohm,bd71847" pmic found on previous evks
+	 * with "nxp,pca9450a"
+	 */
+	/delete-node/ pmic@4b;
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
+			/* VDD_SOC_0V8 */
+			buck1_reg: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <780000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			/* VDD_ARM_0V9 */
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
+			/* VDD_DRAM&PU_0V9 (BUCK5 in datasheet) */
+			buck3_reg: BUCK3 {
+				regulator-name = "BUCK3";
+				regulator-min-microvolt = <805000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* VDD_3V3/NVCC_3V3 (BUCK6 in datasheet) */
+			buck4_reg: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3600000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* VDD_1V8/NVCC_1V8 (BUCK7 in datasheet) */
+			buck5_reg: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1650000>;
+				regulator-max-microvolt = <1950000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* NVCC_DRAM_1V1 (BUCK8 in datasheet) */
+			buck6_reg: BUCK6 {
+				regulator-name = "BUCK6";
+				regulator-min-microvolt = <1060000>;
+				regulator-max-microvolt = <1140000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* NVCC_SNVS_1V8 */
+			ldo1_reg: LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1620000>;
+				regulator-max-microvolt = <19800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* VDD_SNVS_0V8 */
+			ldo2_reg: LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <760000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* VDDA_1V8 */
+			ldo3_reg: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1710000>;
+				regulator-max-microvolt = <1890000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* VDD_PHY_0V9 */
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <855000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* VDD_PHY_1V2 (LDO6 in datasheet) */
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

