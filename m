Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3A43663832
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 05:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbjAJEcT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 23:32:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjAJEcQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 23:32:16 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2112.outbound.protection.outlook.com [40.107.21.112])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7B0511454
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 20:32:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RxrBHjN+30Br8jWVCvYubvNeWE77P86+O8x35k3qxJtGxMXPFLZhnUJlU4ML3tLEuBpuG1q514A9dQAj9PDE6bgxZdKq9ftnhtgtGmK7WptT4lPfhd6Ts60omWkDcPCEEVqTo+VqkSFvON2dUwlcNMLWnyWdeBSoVULT0npWEg4LQRCrV1je/j1rflVjpySwKq9Q59BtakiHPTXuKnXv7ziTKS8mT4f2CbnemGrJRHz+IIih5FNRd2ZGtJbWXBw2b1yGNBdZ+tOrruic8N8R4IUKPtfXXKW7y9oqNvKhZ5NVGWQKXY12oQdOQXi3gNgIoLTwPWFu1hUCAnv79/iz1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lM+WZIQ7LFdKMYnB+dyMXjDo/zxn73psuJUEixDhc3M=;
 b=gmN9Ao0fz073rq4Rf+zKsYOPucbzwDynTXl02xVDfiWNi759cnbqDVeStnVKmY7s0f+WZMKozxAseuIkvQH+QLmM6dXeVHgV8nBGazW5pyatq6R77TNbXb4J2vshpn3lLg1TnRSFLvpkPJUMOxablYBM7/x/Nk2qJCzULINx3BkkXaW1ImrG5m30OefgaTWi35Lx2cKHmJHlPe0fYQ60CEsPQLCPxSaq2PokQR6T0osxSD4L5boIcdvUZgpkdUzgDoGXq6UbAE9OZL1xJEJm8u/syWXMoyinMiYgYNVYJ7rV0OPNcTUiSJyTTul1wxi1fFbtjUX1JBQEzf6O2QcCHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lM+WZIQ7LFdKMYnB+dyMXjDo/zxn73psuJUEixDhc3M=;
 b=SziA9+o+Oz44abfiqJDunFaSCqttBEvTKoHfvZTeb2BvWYx5VX5OlrqDXCM9zUsYdBD1vnhzYEE4UNuxSgtHLEsPRI934rBIDPU1ZWaDkBMjc8JIuYlfMmy7DMOAyqD0XNy4rnOHp3p48fFwuDZfm6Gc+O1+T6SqxpGcYw7LNok=
Received: from DB6PR07CA0006.eurprd07.prod.outlook.com (2603:10a6:6:2d::16) by
 DB7PR06MB5020.eurprd06.prod.outlook.com (2603:10a6:10:6f::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Tue, 10 Jan 2023 04:32:09 +0000
Received: from DB5EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:2d:cafe::99) by DB6PR07CA0006.outlook.office365.com
 (2603:10a6:6:2d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.11 via Frontend
 Transport; Tue, 10 Jan 2023 04:32:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT060.mail.protection.outlook.com (10.13.59.229) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.12 via Frontend Transport; Tue, 10 Jan 2023 04:32:09 +0000
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
Subject: [PATCH 2/2] arm64: dts: imx8mm-evk: add revision-B EVK
Date:   Tue, 10 Jan 2023 05:32:00 +0100
Message-Id: <20230110043200.3636458-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110043200.3636458-1-johannes.schneider@leica-geosystems.com>
References: <20230110043200.3636458-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT060:EE_|DB7PR06MB5020:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 10371419-c74b-4338-f0db-08daf2c3a33e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aDMWHnAJcBGSkYFDC28HeCsz6lZt4iWgTjYKWamDVA4FDhO4UEcOZrlvs+LZtiohnVQhtizaYkdHuKybo3L0dbFrNxNzd7nuJJzeiMgtNc6u84xGxYy8wE2rDD594wlthQFzOT9yaeKSajPn9srIFIH3NRBPTF5ZD5c2uhHCs/h+Ot0UL/mLZML9HNzscL+GmWD6tuJ6he4NcPH7GuT9VX6a+5QR2swZ4qFsPG04bQ14jidL88+cTRCkqgFH/KLJo82m8jTzFMMP6T9PZzwl3qBYPgUjTObhcbIQEj9lQ73zgWUlwrXgcQXoRLBZ812weBUmV8gHH5iPs3ymFYMthJJp4URzVoLAFHXpVUY2M363XxrUBkDJQ8e7EhoEFvwV53oJh4+o8IcUBUCudXLsaTAFpr/om1mXCbRsClwoTfsUFOo4waS8Haq6C0FdmcbKZmvszqlpYOKTJ7TnOsbb7FCbUKcXGDRHEAx1IYDEJ9rth9q7470mh92osswKWSrk03s39E1bClbAheywlOb8w2w6BHWeeGwbBxxRgyEcp8YVpuQAks3x7Q0R8w1eWKyDYg5MYHiwQ+dO+giAKljkZ+XPtwdANKeGW/rfoGyGfCFoV0DRzRM9T0RE1Q+eNki8KyvQ2cxCOQJHNWxeN/7A5aulyxGEwh881JjP/m+eE/ObuhLNH6q5XvYR9QOAOccqHTGB9JxvgGS3DdjsdJ2GjREIiPAPGs+GL2MYQc3PNNssVM6afeA2+l5rUMMkGb+D
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(396003)(376002)(39860400002)(451199015)(40470700004)(46966006)(36840700001)(40460700003)(47076005)(41300700001)(36736006)(110136005)(70206006)(2616005)(316002)(956004)(36756003)(1076003)(4326008)(8676002)(336012)(70586007)(86362001)(118246002)(9316004)(82310400005)(36860700001)(356005)(81166007)(921005)(82740400003)(44832011)(40480700001)(8936002)(5660300002)(7416002)(2906002)(6506007)(6486002)(186003)(107886003)(26005)(6666004)(6512007)(478600001)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 04:32:09.2858
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 10371419-c74b-4338-f0db-08daf2c3a33e
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT060.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR06MB5020
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

