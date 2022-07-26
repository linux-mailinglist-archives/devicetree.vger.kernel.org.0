Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78B10581B38
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239784AbiGZUly (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 16:41:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239730AbiGZUlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:41:51 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70053.outbound.protection.outlook.com [40.107.7.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 799DC37FA8
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:41:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D8AOWEB5xr0dtJUjMQyFAMmbDxNZAcltO+aGdw4COrS481EpmMww2ay/IZQeD6DudtFjR73/FFMdhKGEZGpGPBdzm7iszNKwn9K8fzi4qrYIHB0M3/OBiYYnKcBCipBeBrDJ+n7QAy9jNZn5c+Y+WjI30UW2OFDJ9xM6/V9MvTc5V+IeZRZI8RrlwwxLggnlbonASM7fKusWDSyg2/P+dsvlFGYwxsujoDpaFcU/QNP0IYJS7CxdxZl+zNspZK7GeLkzyHd+yvYm+jy7b5kD+kDjl5zzhfFBLRPjviznyUmMQot8WS7JNruEzqNKVKZFP3L7XvNakGW2CPcV8nDp+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2ZgRBUbEoct7cTm1YwM1dnA4HB7o4GyDQ4gBJNPMwg=;
 b=WXKdWSEo1lgDuL48t5qPCdluvzYXGxN/iHpIgaXDgaFBa3GJ/4PIthbH6ptZrCVIlF7P9Os+7i+YUZ+yvDRpOJz0iuF45UFppOaLIs2qaWKpKzkC6jZAohwlMFZO5dUTV4hdsT4xyCWgKqa5ZB0v8RmaCK/fL/I3rtrGaMWy+0EMGCtrWk3BMx5VJpBOhUAHz/CmLrZQadx5JylaBeGtos0DJHpI8JlgcOMRY17+gqZt6IUSraGQMg+OKEsZl52YTBt2fp64U3hMS5yBivrqt0lIzYB6EW/kjKKk/pOhxBTvy6QqHslO4g0cMxNSJNFIZbmyQGipAktTFrpWaxQN4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2ZgRBUbEoct7cTm1YwM1dnA4HB7o4GyDQ4gBJNPMwg=;
 b=K4nklDQ42eBpa82sitcdfrMPRPMnrK1dzD5e2h3UUDR31v/xrBflSXjj443d0bKnP2NlKOkt7BxMvr2l8u2Uhj958TMiBGMHxSK7rt5RgoHQz/PX2eGbOuTQYdfrtO1d/8lG6LIUaFjaNrj+nvLvzCzHdjrngxKQkZ7sOEJc8vM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM8PR04MB7441.eurprd04.prod.outlook.com (2603:10a6:20b:1c4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Tue, 26 Jul
 2022 20:41:42 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 20:41:42 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>
Subject: [PATCH v4 3/3] arm64: dts: imx: add imx8dxl support
Date:   Tue, 26 Jul 2022 15:41:11 -0500
Message-Id: <20220726204111.733647-4-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220726204111.733647-1-shenwei.wang@nxp.com>
References: <20220726204111.733647-1-shenwei.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0037.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::12) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87503c56-6a12-45ab-538f-08da6f473f01
X-MS-TrafficTypeDiagnostic: AM8PR04MB7441:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5pJrFIkjulrRAunl+JDOVfXds0bE2p1zgtIT3mx66X1GmDynKj/cIaNDty+Kk7SzlnaZIhBEEmYqVd0uKc9sITMpy/riVpUvpm9OE8oklD1OZqefDdIsEbhLo+leL3uo2n/X/ng+MI0E0NmEwPp8zjDENZfsE/ak/fqQjHjGADwWJIAQphTpdT7ulkXcvQxrAglj3ZTFujfFE+wW4yPTBkZNS1L0b+NvBlNA8vS4v2sCtlDKvYez6TypQ3lOZRs1BjVzfkcITUWYl0mhFWHNPAE/0BbCnyrdGcaXUei8rrGnJJMH5Na030ptAK10EB6999ya9mUdWQd5L45y8p8Gz9fz7+ngdmo0xEQm7JnOq/uUGc1lTYKBovir0bLw5xn/mhW44PoceTF66M91lYVR65aSmgTv3DYJpz0n6XsxnOvTt4PnsVVWsdB/nHBee/6keY2tLTWKnuqbTNXfPN1imYvO5t4zEMKCtJPFsVDeVypHRlHIw4RLjdOn6tlInehqHqB7auE5omSdyPtQjA/GxfMXRDoWGQkCtH1dJq1MJvV5I73UsKeZqzU+FBGH+8fXslCAyi+kniBBMG0dHOOrPmzsLq6NhmO3pccO1OmsICORXedGMnnV0qR0IriM2GioieBvX0Okf7XOs+BWV+VvaeDpPny7d8Yk+QBC8NjbxH2CsARSn3qHqL9BGcVVCNWUf+m50bcFQDWTpssvn4zmo6KXUsPn/qI2RGaZJFQjU4imMhyxghl0sCFXjboLbFVcYBPzZAK6TEsWfR2iUBp04yxhUxER5VU4w0BImSz9eK7TLRalXuJ2YbJQ94QzqKqfB0oN0jZcdllOsKhjpZD4cBugv+qdYpvrSYLuIuT61IYCyGRdXWorwBMJA/hl7sq7wtfvPuQN6CyRupTsbC3pew==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(2616005)(1076003)(2906002)(6666004)(186003)(6506007)(86362001)(55236004)(52116002)(41300700001)(6512007)(26005)(38100700002)(83380400001)(38350700002)(5660300002)(66556008)(66476007)(8936002)(30864003)(8676002)(4326008)(66946007)(478600001)(6486002)(110136005)(54906003)(36756003)(6636002)(316002)(32563001)(47402002)(473944003)(414714003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vT0Of8DwElqLXzYhDT3ZIBiHqHfW58iPRYRpU8aSMlal3rB/yqFj/i2zntfy?=
 =?us-ascii?Q?esPaYl+KZmClLjapw8tyzhJkkD1W9RW/GFyOFbmaEGtvamkJYKs+MYtzjzLg?=
 =?us-ascii?Q?uQRrAFoWbA+I7Cp6eu3wMorVoz6dIF1/qTny+0liSTQx/ksLppEqx/6lNCuT?=
 =?us-ascii?Q?AXmhfhs+u3+sHN9pOeZq+IcuCx1Os7Sgn2ofgbmpJfkEpP54NTNAo3aMOoaM?=
 =?us-ascii?Q?bSltBMXULHtyE3Ipb/7RBW6RFpP4BKAn+JqDR6VRFYGPw1cvwrEmWPZbHYYR?=
 =?us-ascii?Q?OeVG3mMVPAGVWtN2sdLoLXOH9mn3Hf8AI97chvKS5DdO5DAJIPWkJFJtxhzL?=
 =?us-ascii?Q?WGv2eP1x5Ezh6tyTkwgslJ12PIx7t703rLJCQYLR8HEvxQm7qcr/q5UJliuC?=
 =?us-ascii?Q?Z9rcsqPqJ8Cqcv4pI5Jy6hU6I0h5cBy5NFml7tLBhRVLSo912KPoM6e2dBaP?=
 =?us-ascii?Q?ury58VcBIL+jBhfMTpWzXYb4GJlkuyguLeSwHRGy/u8ZAw6TikulHqwO2Rzd?=
 =?us-ascii?Q?fhcGrmCp7C+ucJ1DAo+8aqbt5jWT31V7gmoS6sYMEwLXiJy/HiOSaf3GYOqp?=
 =?us-ascii?Q?oFobY+nmxkap7wn/r8b+dyEpLiEkhYrXG+GXAs7kOkCWExbFgbuVa/aAmGDu?=
 =?us-ascii?Q?n2InQuDEG3fLTXYNRNinjQWA58on72/Pe7XEZUFFguJtpRd2fuzqptKnPD/+?=
 =?us-ascii?Q?Oq6vMn0iKiuha3YPpnTYR6KpCE1DtLQWxmaN6zQX2p1Q76rs6ieB4BoNqFW6?=
 =?us-ascii?Q?Ykg6zvJQtjZSUhsXPkbN1zMcpgsL0qVfWGKffvr9XYkJUtkhbybnf0w1muIZ?=
 =?us-ascii?Q?gevshgbQn24ymcI9nv8YfQP/4BCoC5TYh/8PIHnO6PNfa5LZ6xQs8YsG/eDJ?=
 =?us-ascii?Q?5rMGLe79dEFyueDs8A2CWcRizO44d/od4A9hHGItCKzd2D05Fpg9EY+Y8ybA?=
 =?us-ascii?Q?+kE7IECmnMaOiqpZH6mQ1jiQJeQuaDLmficz/4Rqdef42PjNJArDFo07hp0e?=
 =?us-ascii?Q?7090qft5gIvR9X/EN7NjMt4cVJz8PRtA+FydzkkHV4yJk/Nst3tqXj0sIeWP?=
 =?us-ascii?Q?fb7vj5manJclFANnN3i0GklzzU+J2/tFVV3/n6kQQKgF4gdfESS/QVVtJCfX?=
 =?us-ascii?Q?EBjQFKW+ShYp/unYOWRGuSeq+bZhm7itLAE1j99MiN1OU8DosBUan+uhyG+B?=
 =?us-ascii?Q?7me7WaJ7JPTuqGXaneMGsoJyYamRNgO5zVG1ZcN+PFiNYpPl+nQSYp6SHeFz?=
 =?us-ascii?Q?VV/ny4Iu/NIxeFDaIRobtUnQMm5PKun5HzQ4gOe4vcDe9HX2z2TlhUF5UevI?=
 =?us-ascii?Q?N6A9KYffWLaVq+iZ0OW0uaAKlPQ7jDTKr3uLOR/eFEzXC0USrlVczYzOWLKz?=
 =?us-ascii?Q?scrZL/UCXCEgoCpyrg9l5rS95drYgUNm6hlNMjzIOvK2swd6KiUkTVq6mUIC?=
 =?us-ascii?Q?NIp+2Or8DkX6zkzqLISYWxVlZNtgdKxXvsRnNxQDCxXXg641mo+3A3mzEXYQ?=
 =?us-ascii?Q?XFXsVCdXYWo2U77kuhTSTBgRVpxWi9+XOvy4LZK9lM1hJA9EEee1EdaQFXsg?=
 =?us-ascii?Q?AUZqqVI8gumnqBVfWEjhmds1BbnW1fp+3thffVYw?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87503c56-6a12-45ab-538f-08da6f473f01
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 20:41:41.9727
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BkIaDmf6zbbuhZKC2btvjGiCG7AHMBIA0YTHZrEjeHM91ZEUDImFfBWPPCXC804oJNbUvsOwo0w7nfjcORc7mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7441
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.MX8DXL is a device targeting the automotive and industrial market
segments. The chip is designed to achieve both high performance and
low power consumption. It has a dual (2x) Cortex-A35 processor.

This patch adds the imx8dxl soc and EVK board support.

Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |   2 +-
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 138 ++++++
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      |  14 +
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 463 ++++++++++++++++++
 .../boot/dts/freescale/imx8dxl-ss-adma.dtsi   |  72 +++
 .../boot/dts/freescale/imx8dxl-ss-conn.dtsi   | 145 ++++++
 .../boot/dts/freescale/imx8dxl-ss-ddr.dtsi    |   9 +
 .../boot/dts/freescale/imx8dxl-ss-lsio.dtsi   |  78 +++
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi    | 238 +++++++++
 10 files changed, 1159 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 8bf7f7ecebaa1..2741205efe84e 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -48,6 +48,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-85bb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-899b.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds-9999.dtb
 
+dtb-$(CONFIG_ARCH_MXC) += imx8dxl-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
index 8b5cad4e27002..7d5183c6c5bef 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
@@ -10,7 +10,7 @@ ddr_subsys: bus@5c000000 {
 	#size-cells = <1>;
 	ranges = <0x5c000000 0x0 0x5c000000 0x1000000>;
 
-	ddr-pmu@5c020000 {
+	ddr_pmu0: ddr-pmu@5c020000 {
 		compatible = "fsl,imx8-ddr-pmu";
 		reg = <0x5c020000 0x10000>;
 		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
index 960a802b8b6ee..3944dfbdb7c9e 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
@@ -60,6 +60,54 @@ lpuart3: serial@5a090000 {
 		status = "disabled";
 	};
 
+	spi0_lpcg: clock-controller@5a400000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a400000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_SPI_0 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "spi0_lpcg_clk",
+				     "spi0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SPI_0>;
+	};
+
+	spi1_lpcg: clock-controller@5a410000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a410000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_SPI_1 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "spi1_lpcg_clk",
+				     "spi1_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SPI_1>;
+	};
+
+	spi2_lpcg: clock-controller@5a420000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a420000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_SPI_2 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "spi2_lpcg_clk",
+				     "spi2_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SPI_2>;
+	};
+
+	spi3_lpcg: clock-controller@5a430000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a430000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_SPI_3 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "spi3_lpcg_clk",
+				     "spi3_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_SPI_3>;
+	};
+
 	uart0_lpcg: clock-controller@5a460000 {
 		compatible = "fsl,imx8qxp-lpcg";
 		reg = <0x5a460000 0x10000>;
@@ -108,6 +156,18 @@ uart3_lpcg: clock-controller@5a490000 {
 		power-domains = <&pd IMX_SC_R_UART_3>;
 	};
 
+	emvsim0_lpcg: clock-controller@5a4d0000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a4d0000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_EMVSIM_0 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "emvsim0_lpcg_clk",
+				     "emvsim0_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_EMVSIM_0>;
+	};
+
 	i2c0: i2c@5a800000 {
 		reg = <0x5a800000 0x4000>;
 		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
@@ -199,4 +259,82 @@ i2c3_lpcg: clock-controller@5ac30000 {
 				     "i2c3_lpcg_ipg_clk";
 		power-domains = <&pd IMX_SC_R_I2C_3>;
 	};
+
+	lpspi0: spi@5a000000 {
+		compatible = "fsl,imx7ulp-spi";
+		reg = <0x5a000000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupts = <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&spi0_lpcg IMX_LPCG_CLK_0>,
+			 <&spi0_lpcg IMX_LPCG_CLK_4>;
+		clock-names = "per", "ipg";
+		assigned-clocks = <&clk IMX_SC_R_SPI_0 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <20000000>;
+		power-domains = <&pd IMX_SC_R_SPI_0>;
+		status = "disabled";
+	};
+
+	lpspi1: spi@5a010000 {
+		compatible = "fsl,imx7ulp-spi";
+		reg = <0x5a010000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupts = <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&spi1_lpcg IMX_LPCG_CLK_0>,
+			 <&spi1_lpcg IMX_LPCG_CLK_4>;
+		clock-names = "per", "ipg";
+		assigned-clocks = <&clk IMX_SC_R_SPI_1 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <60000000>;
+		power-domains = <&pd IMX_SC_R_SPI_1>;
+		status = "disabled";
+	};
+
+	lpspi2: spi@5a020000 {
+		compatible = "fsl,imx7ulp-spi";
+		reg = <0x5a020000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupts = <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&spi2_lpcg IMX_LPCG_CLK_0>,
+			 <&spi2_lpcg IMX_LPCG_CLK_4>;
+		clock-names = "per", "ipg";
+		assigned-clocks = <&clk IMX_SC_R_SPI_2 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <60000000>;
+		power-domains = <&pd IMX_SC_R_SPI_2>;
+		status = "disabled";
+	};
+
+	lpspi3: spi@5a030000 {
+		compatible = "fsl,imx7ulp-spi";
+		reg = <0x5a030000 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		clocks = <&spi3_lpcg IMX_LPCG_CLK_0>,
+			 <&spi3_lpcg IMX_LPCG_CLK_4>;
+		clock-names = "per", "ipg";
+		assigned-clocks = <&clk IMX_SC_R_SPI_3 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <60000000>;
+		power-domains = <&pd IMX_SC_R_SPI_3>;
+		status = "disabled";
+	};
+
+	can0_lpcg: clock-controller@5acd0000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5acd0000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_CAN_0 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>, <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>,
+				<IMX_LPCG_CLK_5>;
+		clock-output-names = "can0_lpcg_pe_clk",
+				     "can0_lpcg_ipg_clk",
+				     "can0_lpcg_chi_clk";
+		power-domains = <&pd IMX_SC_R_CAN_0>;
+	};
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index 6446e6df7a9ac..61c506b0c1456 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -107,6 +107,20 @@ lsio_gpio7: gpio@5d0f0000 {
 		power-domains = <&pd IMX_SC_R_GPIO_7>;
 	};
 
+	flexspi0: spi@5d120000 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "nxp,imx8qxp-fspi";
+		reg = <0x5d120000 0x10000>, <0x08000000 0x10000000>;
+		reg-names = "fspi_base", "fspi_mmap";
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&clk IMX_SC_R_FSPI_0 IMX_SC_PM_CLK_PER>,
+			 <&clk IMX_SC_R_FSPI_0 IMX_SC_PM_CLK_PER>;
+		clock-names = "fspi", "fspi_en";
+		power-domains = <&pd IMX_SC_R_FSPI_0>;
+		status = "disabled";
+	};
+
 	lsio_mu0: mailbox@5d1b0000 {
 		reg = <0x5d1b0000 0x10000>;
 		interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
new file mode 100644
index 0000000000000..052a30182eb4e
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
@@ -0,0 +1,463 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019~2020 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8dxl.dtsi"
+
+/ {
+	model = "Freescale i.MX8DXL EVK";
+	compatible = "fsl,imx8dxl-evk", "fsl,imx8dxl";
+
+	aliases {
+		i2c2 = &i2c2;
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		serial0 = &lpuart0;
+	};
+
+	chosen {
+		stdout-path = &lpuart0;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x80000000 0 0x40000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/*
+		 * Memory reserved for optee usage. Please do not use.
+		 * This will be automatically added to dtb if OP-TEE is installed.
+		 * optee@96000000 {
+		 *     reg = <0 0x96000000 0 0x2000000>;
+		 *     no-map;
+		 * };
+		 */
+
+		/* global autoconfigured region for contiguous allocations */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0 0x14000000>;
+			alloc-ranges = <0 0x98000000 0 0x14000000>;
+			linux,cma-default;
+		};
+	};
+
+	mux3_en: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "mux3_en";
+		gpio = <&pca6416_2 8 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
+	};
+
+	reg_fec1_sel: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "fec1_supply";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pca6416_1 11 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		status = "disabled";
+	};
+
+	reg_fec1_io: regulator-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "fec1_io_supply";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&max7322 0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+		status = "disabled";
+	};
+
+	reg_usdhc2_vmmc: regulator-3 {
+		compatible = "regulator-fixed";
+		regulator-name = "SD1_SPWR";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		gpio = <&lsio_gpio4 30 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		off-on-delay-us = <3480>;
+	};
+};
+
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	nvmem-cells = <&fec_mac1>;
+	nvmem-cell-names = "mac-address";
+	snps,reset-gpios = <&pca6416_1 2 GPIO_ACTIVE_LOW>;
+	snps,reset-delays-us = <10 20 200000>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			eee-broken-1000t;
+			qca,disable-smarteee;
+			vddio-supply = <&vddio0>;
+
+			vddio0: vddio-regulator {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+		};
+	};
+};
+
+/*
+ * fec1 shares the some PINs with usdhc2.
+ * by default usdhc2 is enabled in this dts.
+ * Please disable usdhc2 to enable fec1
+ */
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-txid";
+	phy-handle = <&ethphy1>;
+	fsl,magic-packet;
+	rx-internal-delay-ps = <2000>;
+	nvmem-cells = <&fec_mac0>;
+	nvmem-cell-names = "mac-address";
+	phy-reset-gpios = <&pca6416_1 0 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <10>;
+	phy-reset-post-delay = <150>;
+	status = "disabled";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			qca,disable-smarteee;
+			vddio-supply = <&vddio1>;
+
+			vddio1: vddio-regulator {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+		};
+	};
+};
+
+&flexspi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi0>;
+	nxp,fspi-dll-slvdly = <4>;
+	status = "okay";
+
+	mt35xu512aba0: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <133000000>;
+		spi-tx-bus-width = <8>;
+		spi-rx-bus-width = <8>;
+	};
+};
+
+&i2c2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	pca6416_1: gpio@20 {
+		compatible = "ti,tca6416";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	pca6416_2: gpio@21 {
+		compatible = "ti,tca6416";
+		reg = <0x21>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	pca9548_1: i2c-mux@70 {
+		compatible = "nxp,pca9548";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x70>;
+
+		i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0>;
+
+			max7322: gpio@68 {
+				compatible = "maxim,max7322";
+				reg = <0x68>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				status = "disabled";
+			};
+		};
+
+		i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x4>;
+		};
+
+		i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x5>;
+		};
+
+		i2c@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x6>;
+		};
+	};
+};
+
+&lpuart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart0>;
+	status = "okay";
+};
+
+&lsio_gpio4 {
+	status = "okay";
+};
+
+&lsio_gpio5 {
+	status = "okay";
+};
+
+&thermal_zones {
+	pmic-thermal0 {
+		polling-delay-passive = <250>;
+		polling-delay = <2000>;
+		thermal-sensors = <&tsens IMX_SC_R_PMIC_0>;
+
+		trips {
+			pmic_alert0: trip0 {
+				temperature = <110000>;
+				hysteresis = <2000>;
+				type = "passive";
+			};
+			pmic_crit0: trip1 {
+				temperature = <125000>;
+				hysteresis = <2000>;
+				type = "critical";
+			};
+		};
+
+		cooling-maps {
+			map0 {
+				trip = <&pmic_alert0>;
+				cooling-device =
+					<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			};
+		};
+	};
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	bus-width = <8>;
+	no-sd;
+	no-sdio;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	cd-gpios = <&lsio_gpio5 1 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&lsio_gpio5 0 GPIO_ACTIVE_HIGH>;
+	max-frequency = <100000000>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHB_PAD	0x000514a0
+			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHK_PAD	0x000014a0
+			IMX8DXL_SPI3_CS0_ADMA_ACM_MCLK_OUT1		0x0600004c
+			IMX8DXL_SNVS_TAMPER_OUT1_LSIO_GPIO2_IO05_IN	0x0600004c
+		>;
+	};
+
+	pinctrl_usbotg1: usbotg1grp {
+		fsl,pins = <
+			IMX8DXL_USB_SS3_TC0_CONN_USB_OTG1_PWR		0x00000021
+		>;
+	};
+
+	pinctrl_usbotg2: usbotg2grp {
+		fsl,pins = <
+			IMX8DXL_USB_SS3_TC1_CONN_USB_OTG2_PWR		0x00000021
+		>;
+	};
+
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <
+			IMX8DXL_ENET0_MDC_CONN_EQOS_MDC				0x06000020
+			IMX8DXL_ENET0_MDIO_CONN_EQOS_MDIO			0x06000020
+			IMX8DXL_ENET1_RGMII_TX_CTL_CONN_EQOS_RGMII_TX_CTL	0x06000020
+			IMX8DXL_ENET1_RGMII_TXC_CONN_EQOS_RGMII_TXC		0x06000020
+			IMX8DXL_ENET1_RGMII_TXD0_CONN_EQOS_RGMII_TXD0		0x06000020
+			IMX8DXL_ENET1_RGMII_TXD1_CONN_EQOS_RGMII_TXD1		0x06000020
+			IMX8DXL_ENET1_RGMII_TXD2_CONN_EQOS_RGMII_TXD2		0x06000020
+			IMX8DXL_ENET1_RGMII_TXD3_CONN_EQOS_RGMII_TXD3		0x06000020
+			IMX8DXL_ENET1_RGMII_RXC_CONN_EQOS_RGMII_RXC		0x06000020
+			IMX8DXL_ENET1_RGMII_RX_CTL_CONN_EQOS_RGMII_RX_CTL	0x06000020
+			IMX8DXL_ENET1_RGMII_RXD0_CONN_EQOS_RGMII_RXD0		0x06000020
+			IMX8DXL_ENET1_RGMII_RXD1_CONN_EQOS_RGMII_RXD1		0x06000020
+			IMX8DXL_ENET1_RGMII_RXD2_CONN_EQOS_RGMII_RXD2		0x06000020
+			IMX8DXL_ENET1_RGMII_RXD3_CONN_EQOS_RGMII_RXD3		0x06000020
+		>;
+	};
+
+	pinctrl_flexspi0: flexspi0grp {
+		fsl,pins = <
+			IMX8DXL_QSPI0A_DATA0_LSIO_QSPI0A_DATA0     0x06000021
+			IMX8DXL_QSPI0A_DATA1_LSIO_QSPI0A_DATA1     0x06000021
+			IMX8DXL_QSPI0A_DATA2_LSIO_QSPI0A_DATA2     0x06000021
+			IMX8DXL_QSPI0A_DATA3_LSIO_QSPI0A_DATA3     0x06000021
+			IMX8DXL_QSPI0A_DQS_LSIO_QSPI0A_DQS         0x06000021
+			IMX8DXL_QSPI0A_SS0_B_LSIO_QSPI0A_SS0_B     0x06000021
+			IMX8DXL_QSPI0A_SCLK_LSIO_QSPI0A_SCLK       0x06000021
+			IMX8DXL_QSPI0B_SCLK_LSIO_QSPI0B_SCLK       0x06000021
+			IMX8DXL_QSPI0B_DATA0_LSIO_QSPI0B_DATA0     0x06000021
+			IMX8DXL_QSPI0B_DATA1_LSIO_QSPI0B_DATA1     0x06000021
+			IMX8DXL_QSPI0B_DATA2_LSIO_QSPI0B_DATA2     0x06000021
+			IMX8DXL_QSPI0B_DATA3_LSIO_QSPI0B_DATA3     0x06000021
+			IMX8DXL_QSPI0B_DQS_LSIO_QSPI0B_DQS         0x06000021
+			IMX8DXL_QSPI0B_SS0_B_LSIO_QSPI0B_SS0_B     0x06000021
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_ENET_ENETB0_PAD		0x000014a0
+			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_ENET_ENETB1_PAD		0x000014a0
+			IMX8DXL_ENET0_MDC_CONN_ENET0_MDC			0x06000020
+			IMX8DXL_ENET0_MDIO_CONN_ENET0_MDIO			0x06000020
+			IMX8DXL_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x00000060
+			IMX8DXL_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC		0x00000060
+			IMX8DXL_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0		0x00000060
+			IMX8DXL_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1		0x00000060
+			IMX8DXL_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2		0x00000060
+			IMX8DXL_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3		0x00000060
+			IMX8DXL_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC		0x00000060
+			IMX8DXL_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x00000060
+			IMX8DXL_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0		0x00000060
+			IMX8DXL_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1		0x00000060
+			IMX8DXL_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2		0x00000060
+			IMX8DXL_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3		0x00000060
+		>;
+	};
+
+	pinctrl_lpspi3: lpspi3grp {
+		fsl,pins = <
+			IMX8DXL_SPI3_SCK_ADMA_SPI3_SCK		0x6000040
+			IMX8DXL_SPI3_SDO_ADMA_SPI3_SDO		0x6000040
+			IMX8DXL_SPI3_SDI_ADMA_SPI3_SDI		0x6000040
+			IMX8DXL_SPI3_CS1_ADMA_SPI3_CS1		0x6000040
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			IMX8DXL_SPI1_SCK_ADMA_I2C2_SDA		0x06000021
+			IMX8DXL_SPI1_SDO_ADMA_I2C2_SCL		0x06000021
+		>;
+	};
+
+	pinctrl_cm40_lpuart: cm40lpuartgrp {
+		fsl,pins = <
+			IMX8DXL_ADC_IN2_M40_UART0_RX		0x06000020
+			IMX8DXL_ADC_IN3_M40_UART0_TX		0x06000020
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			IMX8DXL_SPI1_CS0_ADMA_I2C3_SDA		0x06000021
+			IMX8DXL_SPI1_SDI_ADMA_I2C3_SCL		0x06000021
+		>;
+	};
+
+	pinctrl_lpuart0: lpuart0grp {
+		fsl,pins = <
+			IMX8DXL_UART0_RX_ADMA_UART0_RX		0x06000020
+			IMX8DXL_UART0_TX_ADMA_UART0_TX		0x06000020
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			IMX8DXL_EMMC0_CLK_CONN_EMMC0_CLK	0x06000041
+			IMX8DXL_EMMC0_CMD_CONN_EMMC0_CMD	0x00000021
+			IMX8DXL_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000021
+			IMX8DXL_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000021
+			IMX8DXL_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000021
+			IMX8DXL_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000021
+			IMX8DXL_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000021
+			IMX8DXL_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000021
+			IMX8DXL_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000021
+			IMX8DXL_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000021
+			IMX8DXL_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000041
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			IMX8DXL_ENET0_RGMII_TX_CTL_LSIO_GPIO4_IO30	0x00000040 /* RESET_B */
+			IMX8DXL_ENET0_RGMII_TXD1_LSIO_GPIO5_IO00	0x00000021 /* WP */
+			IMX8DXL_ENET0_RGMII_TXD2_LSIO_GPIO5_IO01	0x00000021 /* CD */
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			IMX8DXL_ENET0_RGMII_RXC_CONN_USDHC1_CLK		0x06000041
+			IMX8DXL_ENET0_RGMII_RX_CTL_CONN_USDHC1_CMD	0x00000021
+			IMX8DXL_ENET0_RGMII_RXD0_CONN_USDHC1_DATA0	0x00000021
+			IMX8DXL_ENET0_RGMII_RXD1_CONN_USDHC1_DATA1	0x00000021
+			IMX8DXL_ENET0_RGMII_RXD2_CONN_USDHC1_DATA2	0x00000021
+			IMX8DXL_ENET0_RGMII_RXD3_CONN_USDHC1_DATA3	0x00000021
+			IMX8DXL_ENET0_RGMII_TXD0_CONN_USDHC1_VSELECT	0x00000021
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
new file mode 100644
index 0000000000000..e26bbbf7f1508
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019~2020 NXP
+ */
+
+&audio_ipg_clk {
+	clock-frequency = <160000000>;
+};
+
+&dma_ipg_clk {
+	clock-frequency = <160000000>;
+};
+
+&i2c0 {
+	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c1 {
+	compatible = "fsl,imx8dxl-lpi2c", "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c2 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&i2c3 {
+	compatible = "fsl,imx8qxp-lpi2c", "fsl,imx7ulp-lpi2c";
+	interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpspi0 {
+	compatible = "fsl,imx8qxp-spi", "fsl,imx7ulp-spi";
+	interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpspi1 {
+	compatible = "fsl,imx8qxp-spi", "fsl,imx7ulp-spi";
+	interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpspi2 {
+	compatible = "fsl,imx8qxp-spi", "fsl,imx7ulp-spi";
+	interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpspi3 {
+	compatible = "fsl,imx8qxp-spi", "fsl,imx7ulp-spi";
+	interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpuart0 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+	interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpuart1 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+	interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpuart2 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+	interrupts = <GIC_SPI 230 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lpuart3 {
+	compatible = "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
+	interrupts = <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>;
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
new file mode 100644
index 0000000000000..98f666cbe63bf
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019~2020 NXP
+ */
+
+/delete-node/ &enet1_lpcg;
+/delete-node/ &fec2;
+
+&conn_subsys {
+	conn_enet0_root_clk: clock-conn-enet0-root {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <250000000>;
+		clock-output-names = "conn_enet0_root_clk";
+	};
+
+	eqos: ethernet@5b050000 {
+		compatible = "nxp,imx8dxl-dwmac-eqos", "snps,dwmac-5.10a";
+		reg = <0x5b050000 0x10000>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "eth_wake_irq", "macirq";
+		clocks = <&eqos_lpcg IMX_LPCG_CLK_4>,
+			 <&eqos_lpcg IMX_LPCG_CLK_6>,
+			 <&eqos_lpcg IMX_LPCG_CLK_0>,
+			 <&eqos_lpcg IMX_LPCG_CLK_5>,
+			 <&eqos_lpcg IMX_LPCG_CLK_2>;
+		clock-names = "stmmaceth", "pclk", "ptp_ref", "tx", "mem";
+		assigned-clocks = <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>;
+		assigned-clock-rates = <125000000>;
+		power-domains = <&pd IMX_SC_R_ENET_1>;
+		clk_csr = <0>;
+		status = "disabled";
+	};
+
+	usbotg2: usb@5b0e0000 {
+		compatible = "fsl,imx8dxl-usb", "fsl,imx7ulp-usb";
+		reg = <0x5b0e0000 0x200>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>;
+		fsl,usbphy = <&usbphy2>;
+		fsl,usbmisc = <&usbmisc2 0>;
+		/*
+		 * usbotg1 and usbotg2 share one clcok.
+		 * scu firmware disables the access to the clock and keeps
+		 * it always on in case other core (M4) uses one of these.
+		 */
+		clocks = <&clk_dummy>;
+		ahb-burst-config = <0x0>;
+		tx-burst-size-dword = <0x10>;
+		rx-burst-size-dword = <0x10>;
+		#stream-id-cells = <1>;
+		power-domains = <&pd IMX_SC_R_USB_1>;
+		status = "disabled";
+
+		clk_dummy: clock-dummy {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <0>;
+			clock-output-names = "clk_dummy";
+		};
+	};
+
+	usbmisc2: usbmisc@5b0e0200 {
+		#index-cells = <1>;
+		compatible = "fsl,imx7ulp-usbmisc";
+		reg = <0x5b0e0200 0x200>;
+	};
+
+	usbphy2: usbphy@0x5b110000 {
+		compatible = "fsl,imx8dxl-usbphy", "fsl,imx7ulp-usbphy";
+		reg = <0x5b110000 0x1000>;
+		clocks = <&usb2_2_lpcg IMX_LPCG_CLK_7>;
+		power-domains = <&pd IMX_SC_R_USB_1_PHY>;
+		status = "disabled";
+	};
+
+	eqos_lpcg: clock-controller@5b240000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5b240000 0x10000>;
+		#clock-cells = <1>;
+
+		clocks = <&conn_enet0_root_clk>,
+			 <&conn_axi_clk>,
+			 <&conn_axi_clk>,
+			 <&clk IMX_SC_R_ENET_1 IMX_SC_PM_CLK_PER>,
+			 <&conn_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_2>,
+				<IMX_LPCG_CLK_4>, <IMX_LPCG_CLK_5>,
+				<IMX_LPCG_CLK_6>;
+		clock-output-names = "eqos_ptp",
+				     "eqos_mem_clk",
+				     "eqos_aclk",
+				     "eqos_clk",
+				     "eqos_csr_clk";
+		power-domains = <&pd IMX_SC_R_ENET_1>;
+	};
+
+	usb2_2_lpcg: clock-controller@5b280000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5b280000 0x10000>;
+		#clock-cells = <1>;
+
+		clock-indices = <IMX_LPCG_CLK_7>;
+		clocks = <&conn_ipg_clk>;
+		clock-output-names = "usboh3_2_phy_ipg_clk";
+		power-domains = <&pd IMX_SC_R_USB_1_PHY>;
+	};
+
+};
+
+&enet0_lpcg {
+	clocks = <&conn_enet0_root_clk>,
+		 <&conn_enet0_root_clk>,
+		 <&conn_axi_clk>,
+		 <&clk IMX_SC_R_ENET_0 IMX_SC_C_TXCLK>,
+		 <&conn_ipg_clk>,
+		 <&conn_ipg_clk>;
+};
+
+&fec1 {
+	compatible = "fsl,imx8qm-fec";
+	interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
+		     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>;
+	assigned-clocks = <&clk IMX_SC_R_ENET_0 IMX_SC_C_CLKDIV>;
+	assigned-clock-rates = <125000000>;
+};
+
+&usdhc1 {
+	compatible = "fsl,imx8dxl-usdhc", "fsl,imx8qxp-usdhc";
+	interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&usdhc2 {
+	compatible = "fsl,imx8dxl-usdhc", "fsl,imx8qxp-usdhc";
+	interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&usdhc3 {
+	compatible = "fsl,imx8dxl-usdhc", "fsl,imx8qxp-usdhc";
+	interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-ddr.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-ddr.dtsi
new file mode 100644
index 0000000000000..550f513708d85
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-ddr.dtsi
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2020 NXP
+ */
+
+&ddr_pmu0 {
+	compatible = "fsl,imx8-ddr-pmu";
+	interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl-ss-lsio.dtsi
new file mode 100644
index 0000000000000..4aaedb6ce591a
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxl-ss-lsio.dtsi
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019~2020 NXP
+ */
+&flexspi0 {
+	compatible = "nxp,imx8dxl-fspi";
+	interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio0 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio1 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio2 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio3 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio4 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio5 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio6 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_gpio7 {
+	compatible = "fsl,imx8dxl-gpio", "fsl,imx35-gpio";
+	interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_mu0 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+	interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_mu1 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+	interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_mu2 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+	interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_mu3 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+	interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_mu4 {
+	compatible = "fsl,imx8-mu-scu", "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+	interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+};
+
+&lsio_mu5 {
+	compatible = "fsl,imx8qxp-mu", "fsl,imx6sx-mu";
+	interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
new file mode 100644
index 0000000000000..517036639674c
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
@@ -0,0 +1,238 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019~2020 NXP
+ */
+
+#include <dt-bindings/clock/imx8-clock.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/pinctrl/pads-imx8dxl.h>
+#include <dt-bindings/thermal/thermal.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		ethernet0 = &fec1;
+		ethernet1 = &eqos;
+		gpio0 = &lsio_gpio0;
+		gpio1 = &lsio_gpio1;
+		gpio2 = &lsio_gpio2;
+		gpio3 = &lsio_gpio3;
+		gpio4 = &lsio_gpio4;
+		gpio5 = &lsio_gpio5;
+		gpio6 = &lsio_gpio6;
+		gpio7 = &lsio_gpio7;
+		mu1 = &lsio_mu1;
+	};
+
+	cpus: cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		/* We have 1 clusters with 2 Cortex-A35 cores */
+		A35_0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0x0 0x0>;
+			enable-method = "psci";
+			next-level-cache = <&A35_L2>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
+			#cooling-cells = <2>;
+			operating-points-v2 = <&a35_opp_table>;
+		};
+
+		A35_1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a35";
+			reg = <0x0 0x1>;
+			enable-method = "psci";
+			next-level-cache = <&A35_L2>;
+			clocks = <&clk IMX_SC_R_A35 IMX_SC_PM_CLK_CPU>;
+			#cooling-cells = <2>;
+			operating-points-v2 = <&a35_opp_table>;
+		};
+
+		A35_L2: l2-cache0 {
+			compatible = "cache";
+		};
+	};
+
+	a35_opp_table: opp-table {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-microvolt = <1000000>;
+			clock-latency-ns = <150000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1100000>;
+			clock-latency-ns = <150000>;
+			opp-suspend;
+		};
+	};
+
+	gic: interrupt-controller@51a00000 {
+		compatible = "arm,gic-v3";
+		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
+		      <0x0 0x51b00000 0 0xc0000>; /* GICR (RD_base + SGI_base) */
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		dsp_reserved: dsp@92400000 {
+			reg = <0 0x92400000 0 0x2000000>;
+			no-map;
+		};
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	scu {
+		compatible = "fsl,imx-scu";
+		mbox-names = "tx0",
+			     "rx0",
+			     "gip3";
+		mboxes = <&lsio_mu1 0 0
+			  &lsio_mu1 1 0
+			  &lsio_mu1 3 3>;
+
+		pd: power-controller {
+			compatible = "fsl,scu-pd";
+			#power-domain-cells = <1>;
+			wakeup-irq = <160 163 235 236 237 228 229 230 231 238
+				     239 240 166 169>;
+		};
+
+		clk: clock-controller {
+			compatible = "fsl,imx8dxl-clk", "fsl,scu-clk";
+			#clock-cells = <2>;
+			clocks = <&xtal32k &xtal24m>;
+			clock-names = "xtal_32KHz", "xtal_24Mhz";
+		};
+
+		iomuxc: pinctrl {
+			compatible = "fsl,imx8dxl-iomuxc";
+		};
+
+		ocotp: ocotp {
+			compatible = "fsl,imx8qxp-scu-ocotp";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			fec_mac0: mac@2c4 {
+				reg = <0x2c4 6>;
+			};
+
+			fec_mac1: mac@2c6 {
+				reg = <0x2c6 6>;
+			};
+		};
+
+		rtc: rtc {
+			compatible = "fsl,imx8qxp-sc-rtc";
+		};
+
+		sc_pwrkey: keys {
+			compatible = "fsl,imx8qxp-sc-key", "fsl,imx-sc-key";
+			linux,keycode = <KEY_POWER>;
+			wakeup-source;
+		};
+
+		watchdog {
+			compatible = "fsl,imx-sc-wdt";
+			timeout-sec = <60>;
+		};
+
+		tsens: thermal-sensor {
+			compatible = "fsl,imx-sc-thermal";
+			#thermal-sensor-cells = <1>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* Physical Secure */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* Physical Non-Secure */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* Virtual */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* Hypervisor */
+	};
+
+	thermal_zones: thermal-zones {
+		cpu-thermal0 {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&tsens IMX_SC_R_SYSTEM>;
+
+			trips {
+				cpu_alert0: trip0 {
+					temperature = <107000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu_crit0: trip1 {
+					temperature = <127000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device =
+					<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
+	/* The two values below cannot be changed by the board */
+	xtal32k: clock-xtal32k {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "xtal_32KHz";
+	};
+
+	xtal24m: clock-xtal24m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "xtal_24MHz";
+	};
+
+	/* sorted in register address */
+	#include "imx8-ss-adma.dtsi"
+	#include "imx8-ss-conn.dtsi"
+	#include "imx8-ss-ddr.dtsi"
+	#include "imx8-ss-lsio.dtsi"
+};
+
+#include "imx8dxl-ss-adma.dtsi"
+#include "imx8dxl-ss-conn.dtsi"
+#include "imx8dxl-ss-lsio.dtsi"
+#include "imx8dxl-ss-ddr.dtsi"
-- 
2.25.1

