Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2896965CC8C
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 06:23:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbjADFXp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 00:23:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjADFXn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 00:23:43 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2125.outbound.protection.outlook.com [40.107.21.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 842741658A
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 21:23:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTJxzcqIb5WDjeenDLB1x+fteLfxDp7gGYWxTw+OyS8rjX+KMXuZ6qSuB6wis6/F0nqlaOXEYe3yiyK+efGXNpUOil99VtsGFfysLvBXfwMJmbhjEr7a8nmfxytdnKczoCGDeoD2B4ujQ0viU8DoUfXHGLnbNRFwVpcvKGwQeIIRIvni7fjTwRr2vF4sc0OAV3K7UUGvCi6M/nRX2zN/+br97AdsHCUE9ZKygWlKKv2wTZv1/aHaLJycyWkx09R7H4rC+ZxztB9qcQyw82JZhm1bKEaWKplN1eGQMtukEM+z9rwVL8CPlHqgwGVQrWcvWJ4rlkp9tAoPixrLsEpDNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ovZA4uLvDWMOr/9wZ5EkDOoVBm5ekAe8xDVvEUJ0mHA=;
 b=Ovufq40QYeEJnKlASRYRQ0Fckml9LxUhuHun0Rg4ZOddsGHvhp7a/wKQ9nI+SPzLnl3SlzFE3MxNsqp3ObG2N1AfkLnQgT4ZR1yMsgW0pj2pT/IOWKYjo2PoH8IJCjzVqB6cz/BDSFF+dSf0JtS3CcW4DF8mmrVns7tRWrvWsMOkde+NY7ETM1TJ8kyr1gZQYoeiPhvvsJJlZBxjN4yQPHNBu1dY0d0GyTaXm3IElCZMQ7GICr3doe44Fj8kBV3gHa0z14qWZqNvoWsTy2mhS+EQRrVKtzc/Zu3fhWgASJ3CAsoXC54kktSzPsaeJ0dkI2s2MvlvRDHWcDL+bXadcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ovZA4uLvDWMOr/9wZ5EkDOoVBm5ekAe8xDVvEUJ0mHA=;
 b=qROPwOkocz8DrUlKVrLmWjoy+xIVeQdaSJVg9SMllLbqUtjCKpvNG/307uQrSShlhz0WGVHeVTCk+tt9sqsy2h32/DFkocLG/9ECnXjxVlHAMb/ZJJX6U6wPUfAMlzOlXgIHV0hCkbrmvndwdXyF3LTI4mmAn8TSxV2nTQv273Y=
Received: from DB6PR07CA0018.eurprd07.prod.outlook.com (2603:10a6:6:2d::28) by
 PR3PR06MB7017.eurprd06.prod.outlook.com (2603:10a6:102:84::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Wed, 4 Jan 2023 05:23:39 +0000
Received: from DB5EUR02FT021.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:2d:cafe::83) by DB6PR07CA0018.outlook.office365.com
 (2603:10a6:6:2d::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14 via Frontend
 Transport; Wed, 4 Jan 2023 05:23:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT021.mail.protection.outlook.com (10.13.58.64) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.16 via Frontend Transport; Wed, 4 Jan 2023 05:23:39 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 1/1] arm64: dts: imx8mm: set PCA9450a as PMIC
Date:   Wed,  4 Jan 2023 06:23:17 +0100
Message-Id: <20230104052317.1083372-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230104052317.1083372-1-johannes.schneider@leica-geosystems.com>
References: <20230104052317.1083372-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT021:EE_|PR3PR06MB7017:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1569a636-1332-4789-74ea-08daee13d642
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m/TYSD4dLZcJPcTV4q+1rdElkCMQZO2l/eMIvrC1Z2StF7rR1SBHkImpfGNzxh3j8fbLi63FPd9t6VMf/CZAnckAUu4RRPI42jseHaV2GzYoHzf8eIzVXotFOJAI/ZgH1pJ7qu36Wr14MoIXC0YFLqXWKzMXkxcMGc7fEI4p5svesQKIYxlFz8fRAlswiove7ffOWs3/EMX6prtiEpIftwmmjM3ZcvpHgd5SRqqH/VT0w1gTz90uKfbfgh1SHS87mhMvan4QVeuCgcNAGthUhV5/6P3FWcyCKGUmOU+yJixCVKdr9tj8FPdwI9Tf2YWN02iEO8SByB28LllAZfcTiyTXsBBAd0TTLPsB/euxgW/th3PQzLWOir4JAvU7QpXSQL+C4UmfpNlhY1OeB2PjDLgO372humDinOPFLh4SifoMJUvyq3+Jt+nWvJYEklM4J6WVUDd2cxonBO7ailrGbdIGacgjpBXwwpoOmMGfXy+TNINkaLjev6FB3MCzn5aKb++UaWYqEOrG5k2/Hf0uP2ygdFuSVEJsg5lN7VpwO6y2dURTZVnshGYvGnpHMm5jA8jkj9ELM7eFPk4ECoNW9uQIDnAzXxbyZ8j3ZecApzBFlnrlrAetJ8E+rCshDukedkTHK473ngn0ThY6INm8ECD9ipw8zp65OTlb8JpdC0L0N/nTE1PdJ3PsCCG7Ph1vstTuRbdt+SK0BlKYfjca19wTiZV/PlxQDxiah7sqiCg=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(376002)(136003)(39860400002)(451199015)(40470700004)(46966006)(36840700001)(5660300002)(2906002)(8936002)(44832011)(4326008)(8676002)(41300700001)(70586007)(70206006)(36736006)(316002)(110136005)(6486002)(478600001)(956004)(1076003)(2616005)(26005)(186003)(82310400005)(6512007)(6506007)(336012)(83380400001)(40480700001)(107886003)(6666004)(9316004)(47076005)(82740400003)(81166007)(356005)(118246002)(40460700003)(86362001)(36756003)(36860700001)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 05:23:39.0784
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1569a636-1332-4789-74ea-08daee13d642
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT021.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB7017
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

new/current EVKs come with a different PMIC: old(er) ones used to use
"rohm,bd71847", which is now replaced "nxp,pca9450a" on the LPDDR4
EVKs

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
index 6c079c0a3a48..3d986aa3e0e8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
@@ -55,3 +55,127 @@ MX8MM_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x19
 		>;
 	};
 };
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
+	clock-frequency = <384000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic_nxp: pca9450@25 {
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

