Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F8876803EC
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 03:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235239AbjA3C4s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 21:56:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235522AbjA3C4r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 21:56:47 -0500
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-he1eur01on2135.outbound.protection.outlook.com [40.107.13.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD19D1A962
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 18:56:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i1sz+gu9hT1Bly1Zl0eUQLKaw4TPB8B6oEuOa5xtOA1hzXlrDkfJORShBwNGgJ5cCfiB6cS/psYAxDLpc5B/ttdRTCrqBOh0iKegpCxcH+F7b2nvbbesgYw5IP8r/TaTkYMj9fq6E9qTWNQsqq4i5+4HXbZHkoR/Xrmc4sTVkBhdygnxW7oulgi2iFjDFbIU/v0XrK80yoMo2J5gsfRJYY3VTWw1T4Fo0nAqsaI3dWbkLr00CvhRfbvaFYiC+37SpOnnHR9pFag7zHuw4JzUoSQZZ42C2GbI0+sg291XLNTo7HfqmKHlyMYaVQsUIGjzShdOBxyBiquccZS40audFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HdOl5SNRQzXmiBiIUtTSt3QZ9iQVQ/rO2DtgiITOlEo=;
 b=gmcYQdXFxsPGlWfVsULR8Z6T67INCZkB9KUKkhyjhMrA17+rZDOerUOfzPKVrUV0wB79M7uK6ONQ2siBKy/Bk3l4kXSGGc/HgzISWyAK/2Sbste4VPqjVLjGLVslICf9UYQLj5yi16CcwmJPdwg2kdA3WMMX9gh0GBk3oTIkWiNhf9ghzXAK3Kg5KZRrrJuCG5pSuTzUpvAzJsKCuR1iJaKGpMof/tBj/JXcrit90hFoM3d6waB8YBe518Z3pptqoyQDf7fica5u1JWw0/gmBUZExEUcqgL5PSaeyOeCBqgmsGFTD6fIEDn6Mp2RToyFTEwtWp4Mjqj+cLP6to2tfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HdOl5SNRQzXmiBiIUtTSt3QZ9iQVQ/rO2DtgiITOlEo=;
 b=ru+QpQOBNnNVVYz0kwn7pxjdBYvlHSAboQvumiP2nHV/9VBY7DLwqlmmMWIhJf73mYmW05YpuSm9zIg2OPGQGe72uW/ek7tG8K0oQXyaC3yMAf+JBJVscNdr7sXsTeZWGECiAIG0j+rpeuW3vJD5s29F+TP2UDy5KM9KZn9HbbI=
Received: from DUZPR01CA0190.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::8) by DB7PR06MB5960.eurprd06.prod.outlook.com
 (2603:10a6:10:2c::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Mon, 30 Jan
 2023 02:56:42 +0000
Received: from DB5EUR02FT047.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:10:4b6:cafe::c) by DUZPR01CA0190.outlook.office365.com
 (2603:10a6:10:4b6::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 02:56:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT047.mail.protection.outlook.com (10.13.58.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 30 Jan 2023 02:56:41 +0000
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
Subject: [PATCH v10 1/2] arm64: dts: imx8mm-evkb: add support for i.MX8MM-EVKB
Date:   Mon, 30 Jan 2023 03:56:31 +0100
Message-Id: <20230130025632.4101943-2-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230130025632.4101943-1-johannes.schneider@leica-geosystems.com>
References: <20230130025632.4101943-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT047:EE_|DB7PR06MB5960:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 0726416a-40fe-420d-078f-08db026d9d95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H07zZtv44dhLT1njQCay6KAnzlJAxDtdn9pZqXoLyDq5HfHDcy/MhxZgy8i6ue6Nax9seha/ej0upZ9M5DffUUZRiJEuWa0JsTus5aUY0ov5tATaN+D93M4rcpGskDbNaz81dqIhZHGP/RnJLDatIobKoZsdp347z2TGrR4IE3HvFcj0f55RIgmIheJHalTwri2uyH8T3aWYNTi/AB3X5+030CJTmc/fqb1mkjxwyZr5PgKo1xP7xy3SXtkiF2LyR42NW1OdS4cbgpJpF5oPQJyjqw0jB/kbc6kZYY3LO1N/J5zn2VO1gHDvGbQWx8YuY6J6CldujM4S5EPIkjywZFK6TiR0XwaAehgXGeZNiYCfmSXv7WsVk/P/Pbg1kz0eJrpjnyRkUzyrFaKE+kVCYo/Kr2zSxquaDaXczK0nKYtEqxBqU92B8C0BV1/ORsUUhM73qON4NOIT1ezwPHL2Z7KMJkvb9lJSzHL8GGV+gTPzAVJX+NuEe88nwMLY9Y82+xDbrh8dMDlJ+S8gIQkp/S5fJBvlCl2A16qDNHNVC97D0NArjVGKHnqBHijc50sIDlQC1VTiZsABVZH2xxG+YMgjnD3LUFZMEV3w6RXa3u9ecwGOZAwtYtG8XNE11PlGSG0nvhGQ7euTcPoBeafXG8VKsGsw8RDAbzI380J2oF0DfN4F7B8fqi8LpsYOcs5oQVRalIF83KxWHYcSjKwREZ/xDbkGjeazF3PHdGFVEaE=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(376002)(39860400002)(346002)(451199018)(36840700001)(40470700004)(46966006)(81166007)(36860700001)(356005)(86362001)(36736006)(70586007)(316002)(8936002)(82740400003)(41300700001)(7416002)(8676002)(82310400005)(70206006)(5660300002)(36756003)(478600001)(44832011)(2906002)(2616005)(9316004)(186003)(118246002)(47076005)(40480700001)(40460700003)(83380400001)(6486002)(956004)(110136005)(6666004)(26005)(6506007)(6512007)(107886003)(1076003)(4326008)(336012)(54906003)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 02:56:41.6537
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0726416a-40fe-420d-078f-08db026d9d95
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT047.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR06MB5960
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
 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 128 ++++++++++++++++++
 2 files changed, 129 insertions(+)
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
index 000000000000..9ada2512d9a0
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
@@ -0,0 +1,128 @@
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
+	/*
+	replace "rohm,bd71847" pmic found on previous evks
+	with "nxp,pca9450a"
+	*/
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
+			buck1_reg: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			buck2_reg: BUCK2 {
+				regulator-name = "BUCK2";
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
+				regulator-name = "BUCK3";
+				// BUCK5 in datasheet
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4_reg: BUCK4 {
+				regulator-name = "BUCK4";
+				// BUCK6 in datasheet
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5_reg: BUCK5 {
+				regulator-name = "BUCK5";
+				// BUCK7 in datasheet
+				regulator-min-microvolt = <1605000>;
+				regulator-max-microvolt = <1995000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6_reg: BUCK6 {
+				regulator-name = "BUCK6";
+				// BUCK8 in datasheet
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1400000>;
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
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: LDO3 {
+				regulator-name = "LDO3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: LDO4 {
+				regulator-name = "LDO4";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo5_reg: LDO5 {
+				regulator-name = "LDO5";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
-- 
2.25.1

