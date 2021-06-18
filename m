Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 263273AC41D
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232316AbhFRGrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:47:18 -0400
Received: from mail-eopbgr50089.outbound.protection.outlook.com ([40.107.5.89]:43396
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232570AbhFRGrR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 02:47:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxtfiGQOg5Sd+mcVm0AFNtS+aYwki8F/jUQPuxUTCut2XUkL+S8oAob1mBiCk6+OTT2sFcCYTZH/77/PYSUjWkN0yzP8a95Y03UgyODXB/u1s4EM6nU5wlXQoVEtsQKJOa5gY55tJIVmhPVx+BiKEC4/8+KTiiWNq9AYo4gnkCKQtU22jSHzj+z6ObdOLd97H9puFDaAetux5kz9dhaI04PP3apdFtA19HGCMD+1qoqMxLdNWNMtJ6kyE19ZehzjR/0d3PoFjXxz93Q+IyY9IbnaW636Lj5kZOjIMPeV2rkkhFL77BIoAWliYeDFh/ZiTVu+ShTjdtE8ZV6tOl3nOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0R0djADKtX+T6elXKfMvJabW+P5FCDRjoyqBtjXYe2E=;
 b=lQHpe59/MPH7sbfQB96xYFmOh5E9YmQH4TtkF2z2BCmOCZFEMqKB/TQD4MttrciFHZotQYwVMK407Siy7bT5Lqnr0JIEJHGwe4A1IlbD9DY09M9F+c4PetoXGz4NiceTx4oO6GT3aj2Icdv10qo1JQ6QPaEztilQk6VittUzSVFRPA1Ro1fV2srRGnuOgN/In4IUtUK/yLoF0bdRJlzsr8h6kAHKcwj8CykurLgm1tu8JrIm5FapjyfQ1zL05kh8ueFUiT1dvmD/8sK7Uops7u4UuccfFEueNQuuCnk/CyEQRwSPr7qNnVMS19taYNKNwqXaxokYvUXRW6Gk+6ZMBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0R0djADKtX+T6elXKfMvJabW+P5FCDRjoyqBtjXYe2E=;
 b=qk/h1yMtre8uTuWi8o8rfcutiVT90yyxxxAWM/XOMpH0NmQNRvm6zyHy5tPlMtDLq/l/ax78jKvAUg7g63wo8R2rI1VLDtWnYSoKTYyKZ4J8LaF9eKFnmRxV/PKtDNsQbT2ucSF39KR2xbQadDDTvy8Ac03oFe5cRMuYn/auuAM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB9PR04MB8140.eurprd04.prod.outlook.com (2603:10a6:10:249::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.15; Fri, 18 Jun
 2021 06:45:06 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.021; Fri, 18 Jun 2021
 06:45:06 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 11/11] arm64: dts: imx8ulp: Add the basic dts for imx8ulp evk board
Date:   Fri, 18 Jun 2021 14:54:23 +0800
Message-Id: <20210618065423.3424938-12-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210618065423.3424938-1-ping.bai@nxp.com>
References: <20210618065423.3424938-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:d::32) To DBBPR04MB7930.eurprd04.prod.outlook.com
 (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by MAXPR0101CA0046.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:d::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.18 via Frontend Transport; Fri, 18 Jun 2021 06:45:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6cb9641-88ce-4852-8f3f-08d932249b92
X-MS-TrafficTypeDiagnostic: DB9PR04MB8140:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR04MB8140A6BF27F280A5EB44173F870D9@DB9PR04MB8140.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9OV8f8pj+Zf5S7qyyUwTJTPZS3sRq6G6gU42D9fZeR82Qg0JB6eZVLQf3gTnijSmTunCkMM4jPoE55D8CuEGtL6qxVsDVYn4ln/DR10Lj6s4ux2JvoM8ojBpAEdZ7vZhoyB+0dgrE4RrbBcmCtimdKtE/sUByBLL1j3a9u8DZpJF/2Z2y9BBfg3hiviUlWURNYmT2TgNyRvJxoNpjRq0bQLaEYOFHeLpuIH4ZOAM50laqg7JibSNhD1KPv28WlzZsYjEzaPadOJu1xZhyVC4bIwqc0AkU/+1Pspsa3jrgmjChgr5nY25VO9ROCXGaGpSyMwPwmWbIimihh8aa0QXkOcq17gxEWJBVW3YwBE+KXkRinjkDoT74aW+Ldiv4XZnPxd44gU0rFbbieasG0ySJ1RH6OiSDOWJorgn7+b+YDJNU4lsAjcpS/MLTfRF7bdwzse3kPmiajcOnZnBNsMV7ZAbqhIkLkQibsG7A5g1Ibl+oCSnL+TTrPfUqO7SZMgLCetAWUCO1SLLQYo2cZOxnn0SiNLvrnxxf+Ehb00tpcfObPsDa9StCgaLbtWqIrMzgcbi9Wo5LMkjBDTxryc4wTQtCFZYO0I8VkCdApnhHA0j15Re4wX+Y83hIVgp4BzKYyyKzzCX8Io44sdznn+ihBttxzgER3cPikBBan6sVxpMcFY/IkjBz8m811bY9O/iyhuevwiaMvvy3bG4KqKgJC6GJp+mC/iNhZ2gmQoRPoEPpIykH6dSXIkVQFeJj3YoEON1W+J4k5AyMHblFKmUgw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39860400002)(136003)(366004)(6666004)(6506007)(316002)(66476007)(86362001)(186003)(66556008)(26005)(1076003)(8936002)(16526019)(6486002)(83380400001)(66946007)(8676002)(36756003)(6512007)(5660300002)(2906002)(956004)(2616005)(52116002)(478600001)(4326008)(6636002)(38100700002)(38350700002)(69590400013)(32563001)(414714003)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vKTI5taxUrKdJQZmSppjx3vew2Ka0jH9AHJ4x0BTq02scqw0StEvH++4zbup?=
 =?us-ascii?Q?YaJOVXqC10HC6CdnURNzKKxb4FszgkBD7AJi9vv+2/DRpebpQ2uOszWUeLvt?=
 =?us-ascii?Q?J64pC2Nyk+k+kyK5D9fPsyQGDvp2ew7QYyNJaj61Zs7/9prDlH85ActYxumo?=
 =?us-ascii?Q?UukgMWU+Yg2Vg3FBbkaHR+b0noJ8X5JOvER3o6Zk9fXJHE9Ag6KccmKFSCg4?=
 =?us-ascii?Q?OUmgqblV8hqblcm7xzkCUOBth6mxX/K2V9703ntB8AwnLKZnhvEnQv2myTq+?=
 =?us-ascii?Q?fT4pI0HMoO+AsnGdQRG29JLsI+MoLIX1Hi0lV0qfp7I5f6ua1FqVkvpa28UX?=
 =?us-ascii?Q?VUuxCEsAt3zy4qOI7E3O0ZXdGbb/mawm3LDfQaFY4ve01kxkX2J4OMQxpxin?=
 =?us-ascii?Q?Cf1RfpcKy7xLgueyuj7rq65k21Nel/N8eSjcodjxoV8m8rnwxCnM0Sh75GiZ?=
 =?us-ascii?Q?Wbyri8n7C+YVKJh+rxYng/fY6mFVB6HY7A44IEpBeHmzQesa34dKddNCX2Gi?=
 =?us-ascii?Q?jJfbp94pSG41DDHxknERNyJTc81+3zKp8+1ltjzWomUqjjrqaAVF/cJele6e?=
 =?us-ascii?Q?GFTZu5lQ+xqlfIJmvJl3uXoyPhdxu403MP9oi/nCIUvbBfZtklLBYO9GcIfk?=
 =?us-ascii?Q?sLDyfC+TtLiujiD/fvBJ8K0IMj9z+lO+UeSHmwpxP2iknIE7WAbJq90yRU+T?=
 =?us-ascii?Q?t/w4eFdXZ6nojA53l5JvVra+XvcQK12wqgM323zWRvR7ChHqIKFMs5vdAKYl?=
 =?us-ascii?Q?cvjlNKBeoE5fDGYrj+ys3HuYzhEpKce04vIvBlhVV1E0h8VtiAACdj31+7pb?=
 =?us-ascii?Q?FyjfI2wSSmsq6qh98o75GeZYZjzAf7jVHyWINRGOIuBkLoqJ5awPbFvolUvl?=
 =?us-ascii?Q?3ELh4EXTXGacjmIA2XRP6wNVhk4Gb5qzTOeIb2zfsFUbbsaLaFIrPU03bvn9?=
 =?us-ascii?Q?2o3TuBAGBqyP2NQQgC3+yBpObyFSPr3AOy38BSwIoiEitu2uaYUFlXcYkpNG?=
 =?us-ascii?Q?EPFjSxP/hQiVJhukpdyRt3HxbqnU8vtAH0hgt9vI6p1agBWndArMa9Xw4DmV?=
 =?us-ascii?Q?syLG3kByRLddFv8+24m7JM3Urjg+/SMhAL9MaVAszrBHyxCaGxqv/MKEPCmJ?=
 =?us-ascii?Q?XhGwYCnDD1zXuGDbBOhRws9IfMYyqE8doVkuX1bV/AwZRJAgZJB8aCkXxNiI?=
 =?us-ascii?Q?WqyXtwNhtDYjjGzDAA3QvWKasWzBHyybyy26UwYaU6gHF2k+UwyBAUp1E6wd?=
 =?us-ascii?Q?EnavHpp3N1gbU1gaHNtM2RTkqQGGuIpBDBwEBvozkA2PqYy6aZpEUT7EHet2?=
 =?us-ascii?Q?D2rDG1HCQFqvwiPqb+yVlZ52?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6cb9641-88ce-4852-8f3f-08d932249b92
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2021 06:45:06.4779
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qjNsXTYfehaSy72QS0d6tQFicmOhs/thG87d/V/GIPTOqXh1awv9Ia1yEYRzCRh2YjKz37oGy62Mu2QuG8tg5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8140
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the basic dts file for i.MX8ULP EVK board.
Only the necessary devices for minimal system boot up are enabled:
enet, emmc, usb, console uart.

some of the devices' pin status may lost during low power mode,
so additional sleep pinctrl properties are included by default.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 - v2 changes:
   add the memory node place holder
   update the license
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 148 ++++++++++++++++++
 2 files changed, 149 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 25806c4924cb..8c24a05d55af 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -65,5 +65,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qm-mek.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
 
 dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
new file mode 100644
index 000000000000..de84f29c12ce
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
@@ -0,0 +1,148 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2021 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8ulp.dtsi"
+
+/ {
+	model = "NXP i.MX8ULP EVK";
+	compatible = "fsl,imx8ulp-evk", "fsl,imx8ulp";
+
+	chosen {
+		stdout-path = &lpuart5;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0 0x80000000>;
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy {
+			reg = <1>;
+			micrel,led-mode = <1>;
+		};
+	};
+};
+
+&lpuart5 {
+	/* console */
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_lpuart5>;
+	pinctrl-1 = <&pinctrl_lpuart5>;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_otgid1>;
+	pinctrl-1 = <&pinctrl_otgid1>;
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
+
+&usbmisc1 {
+	status = "okay";
+};
+
+&usbotg2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_otgid2>;
+	pinctrl-1 = <&pinctrl_otgid2>;
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usbphy2 {
+	status = "okay";
+};
+
+&usbmisc2 {
+	status = "okay";
+};
+
+&usdhc0 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_usdhc0>;
+	pinctrl-1 = <&pinctrl_usdhc0>;
+	non-removable;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&iomuxc1 {
+	pinctrl_enet: enetgrp {
+		fsl,pins = <
+			MX8ULP_PAD_PTE15__ENET0_MDC     0x43
+			MX8ULP_PAD_PTE14__ENET0_MDIO    0x43
+			MX8ULP_PAD_PTE17__ENET0_RXER    0x43
+			MX8ULP_PAD_PTE18__ENET0_CRS_DV  0x43
+			MX8ULP_PAD_PTF1__ENET0_RXD0     0x43
+			MX8ULP_PAD_PTE20__ENET0_RXD1    0x43
+			MX8ULP_PAD_PTE16__ENET0_TXEN    0x43
+			MX8ULP_PAD_PTE23__ENET0_TXD0    0x43
+			MX8ULP_PAD_PTE22__ENET0_TXD1    0x43
+			MX8ULP_PAD_PTE19__ENET0_REFCLK  0x43
+			MX8ULP_PAD_PTF10__ENET0_1588_CLKIN 0x43
+		>;
+	};
+
+	pinctrl_lpuart5: lpuart5grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTF14__LPUART5_TX	0x3
+			MX8ULP_PAD_PTF15__LPUART5_RX	0x3
+		>;
+	};
+
+	pinctrl_otgid1: usb1grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTF2__USB0_ID	0x10003
+		>;
+	};
+
+	pinctrl_otgid2: usb2grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTD23__USB1_ID	0x10003
+		>;
+	};
+
+	pinctrl_usdhc0: usdhc0grp {
+		fsl,pins = <
+			MX8ULP_PAD_PTD1__SDHC0_CMD	0x43
+			MX8ULP_PAD_PTD2__SDHC0_CLK	0x10042
+			MX8ULP_PAD_PTD10__SDHC0_D0	0x43
+			MX8ULP_PAD_PTD9__SDHC0_D1	0x43
+			MX8ULP_PAD_PTD8__SDHC0_D2	0x43
+			MX8ULP_PAD_PTD7__SDHC0_D3	0x43
+			MX8ULP_PAD_PTD6__SDHC0_D4	0x43
+			MX8ULP_PAD_PTD5__SDHC0_D5	0x43
+			MX8ULP_PAD_PTD4__SDHC0_D6	0x43
+			MX8ULP_PAD_PTD3__SDHC0_D7	0x43
+			MX8ULP_PAD_PTD11__SDHC0_DQS	0x10042
+		>;
+	};
+};
-- 
2.26.2

