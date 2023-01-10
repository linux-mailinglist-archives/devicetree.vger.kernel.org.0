Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61B35663F5C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 12:40:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234413AbjAJLkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 06:40:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230151AbjAJLkk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 06:40:40 -0500
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2114.outbound.protection.outlook.com [40.107.15.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24B9850F56
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:40:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SX8G7GF4raxDSi/E1IPAXNa7waBJNVtQQIABFJBYwRLrGJBHyEHlDDeMtqRIchESvQgXY87kV+4OxU4JcnvOkFeYJ31msLRQjJf2pE4En6j9kwc5nn2ZQStyu3jJgcjgPy/bUbHl+M5NITISlHEvdmWuDludDydIMHXm/L+dq26MK7oRzKVcl6JtJ9887AbOCdckAiYIYuWu26KyLKWkZ2nJ0ewCOW8arHDWhVsO6RuD4tISaD3S3u9+Glz4QFpXpiOwTYw2KBYiCeSt+BUQkyVJMVvybS0p3ZGaMgVqxpz3hxNUyX4y6fMiR0xnBgOKGLOAukEuMpXJvnhq3CeRmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yj+2JEcmT0yWLKVx7XREPgRrg4OgkUaG2vxH8/peazA=;
 b=aZh7ylUJ1/+UjOL+/OCUx+KfoZ3R6ael0LQxNLokgTKi5eo7Uy/vy1m27utUMvPCmSh2nRrbAIkBQKs04AU6sbgNfsepqksAm+fui35cjAYyPrzKqLl4W20HjhxBInbCGf9DntGxMOR80uGPaGwjrrHsTHmz0z/HOlkLFNHpBm3L0QGKKoiuclMT+ypirP2LMjU0pKLzb9EaheYa/wp91ky6wx4Ao/LNYBdFPq4HO6AjR1POGKp4sP+6zJQEf2gjKUFBpfGh3yh4Ve2bD8lax+emW6q0nwMVwpOk85kIwhw0jB2WWhY+9RZ9vIR23Fb6BNUAE9RrEXk95zJKc+KYXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yj+2JEcmT0yWLKVx7XREPgRrg4OgkUaG2vxH8/peazA=;
 b=gxmmP6zHVD6KB4ri/adkRWXm8PrtmRlJv11i4xxTk/lopBxy6nft3Z3A5QBw3w2a7xhuuSKxNWwjmCRrrIhWupTIfDpz6wFgKhAUA17UVAUc8xWVGU0uPeVdF7kjvDu/apPdrI5DZemzCjvKCYWoIbdx3mzeRvDge70DQKDRvjA=
Received: from AS8PR04CA0185.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::10)
 by AM5PR0601MB2722.eurprd06.prod.outlook.com (2603:10a6:203:43::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 11:40:36 +0000
Received: from AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:2f3:cafe::a1) by AS8PR04CA0185.outlook.office365.com
 (2603:10a6:20b:2f3::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 11:40:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT045.mail.protection.outlook.com (10.13.54.112) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.11 via Frontend Transport; Tue, 10 Jan 2023 11:40:35 +0000
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
Subject: [PATCH v6 2/3] arm64: dts: imx8mm-evk: add revision-B EVK
Date:   Tue, 10 Jan 2023 12:40:26 +0100
Message-Id: <20230110114027.634719-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
References: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT045:EE_|AM5PR0601MB2722:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f84d2120-7d36-410f-b8d2-08daf2ff7d6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4eDzH7kzaFPPwtyKTHh24hIyRuryB+HTzQSmT9q0OMKRyROlaksdiPW9E7tcdfhnvVcP/OcC2kp+yJjZC++USiUbPxE7bZ/Di3mEQXGt8LgtvyHH0e+1OSE7hAAYpBSdwVl8Y48wfeF62BIk/ooJsd4ME2SRYiZX0Zey/qpEGRhbRHuTXRvwFEX+/fnc/zP2U43Shcx3GYBwIU7cNsWqt9HS4wYMYO2arLSxryT7eoZvswun7yl3b0W879LmLM+AgBOWRzk0f7JBAJaQ8nIiNdtDxCYWB2nql3WAtb5A3snw030Si5m4IvgPjnqY/Q34E0NtJkYJuacOB7OgR/fkBq51ZBinEf2KkXHvlre7EnRTPmNAqqvOEIMcus6iqyUUMCZddFlXaa4F/A+sp9J8n1ewBi8iEDfTc9OGIV/EfC0LtTN7waRPr6SnaETZd7RMQsK5WBK/c1A1ovv5nTtuh7JIGmr2W4mltCm5rMB9kXoLK68l7EYHvVSUtthsZqDZkww+2lHBnQ+9hGJ9NUaRX+mqxq6YI6DB6vpLZbtHjZRR1kVNk23BPeZbEfyQADTxKi7QfC+UWHA/az+CbteQrQOayQh/u1HMT435RpICA/9uKlyWs9KqDVPQTo+jsUVmllj9aXKPNsFD1ByxzyzKDj+el2Xa8RwQHrl5hCDeZ1zDQBiKC/qd1FPniVKgn8ZLJ67QSJ1drQqkET6+l/5SdB/BswdlZDYY+KdQPmVc8SM=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(396003)(39860400002)(451199015)(36840700001)(46966006)(40470700004)(6506007)(26005)(40480700001)(478600001)(6486002)(1076003)(107886003)(186003)(6512007)(336012)(956004)(2616005)(70586007)(8676002)(6666004)(41300700001)(70206006)(4326008)(36736006)(110136005)(54906003)(316002)(47076005)(36860700001)(86362001)(81166007)(82740400003)(40460700003)(356005)(82310400005)(2906002)(7416002)(118246002)(8936002)(36756003)(5660300002)(44832011)(9316004)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 11:40:35.8368
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f84d2120-7d36-410f-b8d2-08daf2ff7d6e
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0601MB2722
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
 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 116 ++++++++++++++++++
 1 file changed, 116 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts

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

