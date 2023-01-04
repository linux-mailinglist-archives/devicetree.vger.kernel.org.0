Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249BF65D12B
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 12:03:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239065AbjADLDZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 06:03:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239058AbjADLCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 06:02:51 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2116.outbound.protection.outlook.com [40.107.6.116])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4ED111159
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 03:02:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bZT10Hs65RrZBSc3lchu23PIq+xzLaUpA3rdGfpUc29LCmraxVpTiOJMGL7Pp4n7cXVxhiH6HIxhrg/Do2OctQAU946F9AWYtHUsFIKwS3cq55kTGNle60UE1FCSHj0OhtwU9DT5khxjMI9+LymM+OjIe7yRIS45PzuNy6IevLsfC8rAP6jcpvDQ4qMHubKchQ+K5Oeqm5cBIiVlVH/tAghBqO0Gw8G7RIWcAn5FXTJplzwBAHR4UpRh+NFnjCv0Q1umWxFdV8UBoaAb1VvCDyLq26Ty9RvecJDJ97Tqobd+YBCWAk9l47iXIeRacJoaGkKerczelTVXSvsiiGqnWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zu0hhdjbvve5svuT+LTMqBIfsXS9HBipI9nUEfLxcXE=;
 b=l5sxtKHSIwSC9aFZRb3ikisHK2yinj00dIqZIoboRilAfD5Udf7mTSc79nsfnLxT/WfBy/xwoRn7bCfr1Opd5Dj1Vsm82f/O4s5qmiwbqkxlI3+uzLpfKqa85Z+6WGzn+L+nrQ/IektjUABMUh2mFpnMa7EC++sMtz5MR5BUjlj2U9j6j2Gky7KeIDYwDm1/yHrwLiC6+iTimAhNpM+8oqoX6ZZknq814uthprzNMJTYMWEf3wkGpFAg3MsUmYtBc4c4YvpgXMa80Ggdb69SknBa8y4ns9Ko9v8aFk8CXitGF9oJeY+drX1clw3J52wNU9pcjTrv/cJx7vDzW64LQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zu0hhdjbvve5svuT+LTMqBIfsXS9HBipI9nUEfLxcXE=;
 b=L7Wnc17bB4e441qekh/P72tuaQaLFUF7kkuGN5HR09px8+xwdwGWNw1Q7xbZR+JTwxUc9b7Wr/hpNdyn23Fo3/eFHzJvNSic7HPUwZRLQizuPTBpbCknEEZAKQgk6qgJFJpzJuPQx5p/pVHOyVtTxvBC9uveejbAfeZMW2BivmM=
Received: from DB9PR02CA0015.eurprd02.prod.outlook.com (2603:10a6:10:1d9::20)
 by AM7PR06MB6754.eurprd06.prod.outlook.com (2603:10a6:20b:1a8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 11:02:46 +0000
Received: from DB5EUR02FT028.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:10:1d9:cafe::11) by DB9PR02CA0015.outlook.office365.com
 (2603:10a6:10:1d9::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14 via Frontend
 Transport; Wed, 4 Jan 2023 11:02:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT028.mail.protection.outlook.com (10.13.58.114) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.17 via Frontend Transport; Wed, 4 Jan 2023 11:02:45 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, ob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH][v2] arm64: dts: imx8mm: add EVK with LPDDR4 and PCA9450a as PMIC
Date:   Wed,  4 Jan 2023 12:02:15 +0100
Message-Id: <20230104110214.1432840-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT028:EE_|AM7PR06MB6754:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 65c07e19-c297-4c3c-39df-08daee4335ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JTgQIX/29s5v9+Me5k1de4mrSbFi9WUDGVaao2rzu2iVxOe280YvCfSKFnuHIZQvX30f9Lndmj2JSx2jMiLwB8G/Nr2/3zOyCXWZrn7yU0GXvAy9ro37s9lmDeF/4nrZdAKWBjPQ0qqkyuYCXJiOzpN8QTPdwKOVspJ7LDAOcpOANT6TP2MMkdjBja2j/GmmsstBcZqtKjiCa9GiOh0NNT/vqf4GwdghbxhGdUbdrQ3M9Akk8IWO9avqt+TxCej07CBS8BGvBqCDfWADzJcsR4/VeCqHUSX9Tv5Dat+8Rqj8lHH3HTX0r3u7uHN6uKg6TFtGpoiGs05FvumN5Ty58datw/KmTbY637Vka9wN8yOPeeQ4QaAEph6DqerNEA7SVGQPpmpDWw+f16Cf07ycUo0RsRSLfwe5BdzB1MCG60VCLXcH8YTE7cHOM9PGDNLiPooMS5QICLSEBVZItXNtSOpc3Wr9hCIcNrOMjuVDuGlKYOeAjJ50DuXSqt98ctB9Ziu3hXpnIZGnYoG1vw66VjjwDL0G4SbBosuqs4zNrjo82x9ZrtpE+fb9qXbGE1yiVzPGfp+uVkGhmh+2zoZBd6kaE/M7QdesyMgLnSgkLTkNHOm6DKCzoDNzG9sFz82BCPMHVQM3xp9b60S9rQpUjNirqfok1C9CxmbcGYpDi4VufWNiKQ8dlrgdRbhzph32mJF4CIGQIuhbNyOsbk1VZiDe4qchZXTgU1H+eBTpVNY=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(396003)(346002)(136003)(451199015)(36840700001)(40470700004)(46966006)(41300700001)(8936002)(70586007)(8676002)(4326008)(5660300002)(70206006)(110136005)(2906002)(316002)(36736006)(6506007)(6486002)(6512007)(478600001)(26005)(186003)(44832011)(118246002)(6666004)(107886003)(1076003)(86362001)(40480700001)(956004)(2616005)(36860700001)(83380400001)(47076005)(336012)(81166007)(82740400003)(356005)(30864003)(36756003)(40460700003)(82310400005)(9316004)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 11:02:45.4298
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 65c07e19-c297-4c3c-39df-08daee4335ad
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT028.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR06MB6754
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

to keep backwards compatibility with the old EVK, the nodes are moved
into imx8mm-evk.dtsi, with the old boards using imx8mm-evk.dts; while
the newer boards get to use imx8mm-lpddr4-evk.dts

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 130 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 224 +++++++++--------
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 230 ++++++++----------
 .../boot/dts/freescale/imx8mm-lpddr4-evk.dts  | 133 ++++++++++
 5 files changed, 491 insertions(+), 227 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index fbfc4f99c01e..5b387ab6b42d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -817,6 +817,7 @@ properties:
               - dmo,imx8mm-data-modul-edm-sbc # i.MX8MM eDM SBC
               - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
+              - fsl,imx8mm-lpddr4-evk     # i.MX8MM LPDDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
               - gateworks,imx8mm-gw7904
               - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
index 6c079c0a3a48..8274ddee49ac 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
@@ -55,3 +55,133 @@ MX8MM_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x19
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
+	pmic@4b {
+		compatible = "rohm,bd71847";
+		reg = <0x4b>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+		rohm,reset-snvs-powered;
+
+		#clock-cells = <0>;
+		clocks = <&osc_32k 0>;
+		clock-output-names = "clk-32k-out";
+
+		regulators {
+			buck1_reg: BUCK1 {
+				regulator-name = "buck1";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "buck2";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+				rohm,dvs-run-voltage = <1000000>;
+				rohm,dvs-idle-voltage = <900000>;
+			};
+
+			buck3_reg: BUCK3 {
+				// BUCK5 in datasheet
+				regulator-name = "buck3";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4_reg: BUCK4 {
+				// BUCK6 in datasheet
+				regulator-name = "buck4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5_reg: BUCK5 {
+				// BUCK7 in datasheet
+				regulator-name = "buck5";
+				regulator-min-microvolt = <1605000>;
+				regulator-max-microvolt = <1995000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6_reg: BUCK6 {
+				// BUCK8 in datasheet
+				regulator-name = "buck6";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: LDO1 {
+				regulator-name = "ldo1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "ldo2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "ldo3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "ldo4";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo6_reg: LDO6 {
+				regulator-name = "ldo6";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index a2b24d4d4e3e..93ae646b696d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -11,118 +11,134 @@
 / {
 	model = "FSL i.MX8MM EVK board";
 	compatible = "fsl,imx8mm-evk", "fsl,imx8mm";
-
-	aliases {
-		spi0 = &flexspi;
-	};
 };
 
-&ddrc {
-	operating-points-v2 = <&ddrc_opp_table>;
-
-	ddrc_opp_table: opp-table {
-		compatible = "operating-points-v2";
-
-		opp-25M {
-			opp-hz = /bits/ 64 <25000000>;
-		};
-
-		opp-100M {
-			opp-hz = /bits/ 64 <100000000>;
-		};
-
-		opp-750M {
-			opp-hz = /bits/ 64 <750000000>;
-		};
-	};
+&A53_0 {
+	cpu-supply = <&buck2_reg>;
 };
 
-&flexspi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexspi>;
-	status = "okay";
-
-	flash@0 {
-		reg = <0>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <1>;
-		spi-rx-bus-width = <4>;
-	};
+&A53_1 {
+	cpu-supply = <&buck2_reg>;
 };
 
-&usdhc3 {
-	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
-	assigned-clock-rates = <400000000>;
-	pinctrl-names = "default", "state_100mhz", "state_200mhz";
-	pinctrl-0 = <&pinctrl_usdhc3>;
-	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
-	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
-	bus-width = <8>;
-	non-removable;
-	status = "okay";
+&A53_2 {
+	cpu-supply = <&buck2_reg>;
 };
 
-&iomuxc {
-	pinctrl_flexspi: flexspigrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_ALE_QSPI_A_SCLK               0x1c2
-			MX8MM_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B            0x82
-			MX8MM_IOMUXC_NAND_DATA00_QSPI_A_DATA0           0x82
-			MX8MM_IOMUXC_NAND_DATA01_QSPI_A_DATA1           0x82
-			MX8MM_IOMUXC_NAND_DATA02_QSPI_A_DATA2           0x82
-			MX8MM_IOMUXC_NAND_DATA03_QSPI_A_DATA3           0x82
-		>;
-	};
-
-	pinctrl_usdhc3: usdhc3grp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x190
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d0
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d0
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d0
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d0
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d0
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d0
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d0
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d0
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x190
-		>;
-	};
-
-	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x194
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d4
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d4
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d4
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d4
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d4
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d4
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d4
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d4
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d4
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x194
-		>;
-	};
+&A53_3 {
+	cpu-supply = <&buck2_reg>;
+};
 
-	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
-		fsl,pins = <
-			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x196
-			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d6
-			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d6
-			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d6
-			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d6
-			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d6
-			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d6
-			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d6
-			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d6
-			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d6
-			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
-		>;
+&i2c1 {
+	pmic@4b {
+		compatible = "rohm,bd71847";
+		reg = <0x4b>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+		rohm,reset-snvs-powered;
+
+		#clock-cells = <0>;
+		clocks = <&osc_32k 0>;
+		clock-output-names = "clk-32k-out";
+
+		regulators {
+			buck1_reg: BUCK1 {
+				regulator-name = "buck1";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "buck2";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+				rohm,dvs-run-voltage = <1000000>;
+				rohm,dvs-idle-voltage = <900000>;
+			};
+
+			buck3_reg: BUCK3 {
+				// BUCK5 in datasheet
+				regulator-name = "buck3";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4_reg: BUCK4 {
+				// BUCK6 in datasheet
+				regulator-name = "buck4";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5_reg: BUCK5 {
+				// BUCK7 in datasheet
+				regulator-name = "buck5";
+				regulator-min-microvolt = <1605000>;
+				regulator-max-microvolt = <1995000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6_reg: BUCK6 {
+				// BUCK8 in datasheet
+				regulator-name = "buck6";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: LDO1 {
+				regulator-name = "ldo1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: LDO2 {
+				regulator-name = "ldo2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "ldo3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "ldo4";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo6_reg: LDO6 {
+				regulator-name = "ldo6";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
 	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 7d6317d95b13..8aee615bdc9e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -14,6 +14,10 @@ chosen {
 		stdout-path = &uart2;
 	};
 
+	aliases {
+		spi0 = &flexspi;
+	};
+
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0x0 0x40000000 0 0x80000000>;
@@ -133,20 +137,24 @@ simple-audio-card,codec {
 	};
 };
 
-&A53_0 {
-	cpu-supply = <&buck2_reg>;
-};
+&ddrc {
+	operating-points-v2 = <&ddrc_opp_table>;
 
-&A53_1 {
-	cpu-supply = <&buck2_reg>;
-};
+	ddrc_opp_table: opp-table {
+		compatible = "operating-points-v2";
 
-&A53_2 {
-	cpu-supply = <&buck2_reg>;
-};
+		opp-25M {
+			opp-hz = /bits/ 64 <25000000>;
+		};
+
+		opp-100M {
+			opp-hz = /bits/ 64 <100000000>;
+		};
 
-&A53_3 {
-	cpu-supply = <&buck2_reg>;
+		opp-750M {
+			opp-hz = /bits/ 64 <750000000>;
+		};
+	};
 };
 
 &fec1 {
@@ -177,123 +185,27 @@ vddio: vddio-regulator {
 	};
 };
 
+&flexspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi>;
+	status = "okay";
+
+	flash@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <80000000>;
+		spi-tx-bus-width = <1>;
+		spi-rx-bus-width = <4>;
+	};
+};
+
 &i2c1 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
-
-	pmic@4b {
-		compatible = "rohm,bd71847";
-		reg = <0x4b>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_pmic>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
-		rohm,reset-snvs-powered;
-
-		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
-		clock-output-names = "clk-32k-out";
-
-		regulators {
-			buck1_reg: BUCK1 {
-				regulator-name = "buck1";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <1250>;
-			};
-
-			buck2_reg: BUCK2 {
-				regulator-name = "buck2";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1300000>;
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-ramp-delay = <1250>;
-				rohm,dvs-run-voltage = <1000000>;
-				rohm,dvs-idle-voltage = <900000>;
-			};
-
-			buck3_reg: BUCK3 {
-				// BUCK5 in datasheet
-				regulator-name = "buck3";
-				regulator-min-microvolt = <700000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck4_reg: BUCK4 {
-				// BUCK6 in datasheet
-				regulator-name = "buck4";
-				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck5_reg: BUCK5 {
-				// BUCK7 in datasheet
-				regulator-name = "buck5";
-				regulator-min-microvolt = <1605000>;
-				regulator-max-microvolt = <1995000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			buck6_reg: BUCK6 {
-				// BUCK8 in datasheet
-				regulator-name = "buck6";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <1400000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo1_reg: LDO1 {
-				regulator-name = "ldo1";
-				regulator-min-microvolt = <1600000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo2_reg: LDO2 {
-				regulator-name = "ldo2";
-				regulator-min-microvolt = <800000>;
-				regulator-max-microvolt = <900000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo3_reg: LDO3 {
-				regulator-name = "ldo3";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo4_reg: LDO4 {
-				regulator-name = "ldo4";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-
-			ldo6_reg: LDO6 {
-				regulator-name = "ldo6";
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-boot-on;
-				regulator-always-on;
-			};
-		};
-	};
 };
 
 &i2c2 {
@@ -430,6 +342,18 @@ &usdhc2 {
 	status = "okay";
 };
 
+&usdhc3 {
+	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
 &wdog1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_wdog>;
@@ -464,6 +388,17 @@ MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22		0x19
 		>;
 	};
 
+	pinctrl_flexspi: flexspigrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_ALE_QSPI_A_SCLK               0x1c2
+			MX8MM_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B            0x82
+			MX8MM_IOMUXC_NAND_DATA00_QSPI_A_DATA0           0x82
+			MX8MM_IOMUXC_NAND_DATA01_QSPI_A_DATA1           0x82
+			MX8MM_IOMUXC_NAND_DATA02_QSPI_A_DATA2           0x82
+			MX8MM_IOMUXC_NAND_DATA03_QSPI_A_DATA3           0x82
+		>;
+	};
+
 	pinctrl_gpio_led: gpioledgrp {
 		fsl,pins = <
 			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
@@ -601,6 +536,55 @@ MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
 		>;
 	};
 
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x190
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d0
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d0
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d0
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d0
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d0
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d0
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d0
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x194
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d4
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d4
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d4
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d4
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d4
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d4
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d4
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d4
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d4
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x196
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d6
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d6
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d6
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d6
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d6
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d6
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d6
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d6
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d6
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
+		>;
+	};
+
 	pinctrl_wdog: wdoggrp {
 		fsl,pins = <
 			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0x166
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts
new file mode 100644
index 000000000000..340d3860153b
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019-2020 NXP
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/usb/pd.h>
+#include "imx8mm-evk.dtsi"
+
+/ {
+	model = "FSL i.MX8MM EVK board with LPDDR4";
+	compatible = "fsl,imx8mm-lpddr4-evk", "fsl,imx8mm";
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

