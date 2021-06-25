Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BC133B3A5D
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232952AbhFYBG6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:58 -0400
Received: from mail-eopbgr00053.outbound.protection.outlook.com ([40.107.0.53]:5112
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232942AbhFYBG4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nk4GF2pzGbYtSVpFbte8LH2ONTK9rBH04+raQ0gqUEBmw2W/Y1LdrAUQ/kAHtyOivGVQGqXgsmM+HwIexRPl2oWFdj3zUlaCXRT0rcKPTqPSNmi5/FIgA0dKr9WbFmC1/D3yN/TIm/11VIrT55MbJc63Ex/TmdX4RAOX8QlCwnGbBjYvFo4yBOpOxOC8aMe/jDiDdi2mL1DnF38WG365RzhKnXWeO0pFp5ejUh5Pq0P16lZhYPDd3MFtlr5FLhzOe+tud+vOqOUyCJG7V1Gww+nFcJiyi0FGWfTaMFa/hwxU1DRwQybJxPYLvN6lrvsRkQCGPf0TWE02mdgj8svxoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aa+mtnn5QsEmHlP+9y3b+3q8nBHDUeRW+EQIaWcg91I=;
 b=bGGt7DFuUdr5OXwwwJeRRM5AjTgedEFAm+7n/sltFhKcpM4Cbptov6r2fE94Gnx67b9Rcae79EpI8NN1UVsonkMk6wYImg546sn46vEbyEipDZDlMLe6QA2vH4UxvlwsrhqRcVYDe5+SMkj/cGpTdk4Aarg+knapKzIZXblSBW8KlKwkta26f5ZcHG7UWxTc1G7B+OllFLnl3TfKJuGbHLqmnHZR8eHr+IeNKmdIcuee6mrADrCviFGEXOjVIOqYPERw5RnTebRPu/IylSw3cyYf70EZRZwwlIFxTiJUir2XG+AsC9LmddZ/6JmD/5Gwg0mUqCNpF9NekxQI7ySZdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aa+mtnn5QsEmHlP+9y3b+3q8nBHDUeRW+EQIaWcg91I=;
 b=WL1X2SWfxIYAVgqHy3srbLqtKKwd5c9dKmx7uX453tM4sSnda6tFlfoGxiFzXrKy9CMCrG72gMHvO9baZ7wdvRjGthKl9s19WaIEgNjKKJufoYS6R+9oLTDeGVq98UKyoEu2Ab/I/Zgz0LWa1ieSiuqkNrUghUEC5RzrxQTadZA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR0401MB2374.eurprd04.prod.outlook.com (2603:10a6:4:4c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:04:34 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:04:34 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 11/11] arm64: dts: imx8ulp: Add the basic dts for imx8ulp evk board
Date:   Fri, 25 Jun 2021 09:13:55 +0800
Message-Id: <20210625011355.3468586-12-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210625011355.3468586-1-ping.bai@nxp.com>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:04:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f080b8fc-f620-48ac-e58d-08d93775323c
X-MS-TrafficTypeDiagnostic: DB6PR0401MB2374:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0401MB23749C3FA8AD39216AF0581987069@DB6PR0401MB2374.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /lJkXaVL4cgTka8sBnKXZFE2HU0WejUzctiH+sdlg6nPQkOju1GNhPSBNBYk9Fiv7E0039G8/RdCwBGFj4Msn9QS0NAa0EHTTkQz7tUc3mgVQDs9c39VK7bUL1xpWRX00i+rlRnH/Ep4dzwhFHU41o1Xi7yyKvJLwLP6ZrDB8ana+tOceU+yKuZKDzBgbjsxmPprIBchsVL9/zotVYo5BzbEC1Y3s6C97k/YBFCRcdeOn7IjEXsD6rpTLeVDGYmXczedNbPMDpFMCWqU7tIkfNv87r6LQIslFcxafnnm0FjVkLzmdOmwr7jlh+6U/YdeWnB2mkFHfLRzOIeE8WogXndiQVY0korIElaekWh7UdcG6cVzsIrZx7Jt/Vz0SKhUKYriViRZaF8zFibyVzAjrVkzXE67F5TbZjuT2firV0cFXHKGmfbjvdisQktgawtU093MfOj44u6DxES0XnmKPGZdKXYg2mM/iE4ewCY8kZ7q/e4IuIOPu96xeUE7tgK4t7pn9NlxuLSEhIhXXa1nDn3flHX34STtE4gwIP41upndKhFuraOKiQHsiQWqHQnuSAbY+aagkYdqJzwOmtDPzRMGiQdZpauppU23J3UyhF8gveoD7Aao1JrszZe4RUgyhkOJ61zAVb5yfE2tSgXezKoCTex1Biw6XLQYC0yYjLu7wgWWcyjpFbKbMh7mhbD8xA2Q+g7FHDWb2rlWViKTrCxx/WcASmepToDb/wbLaJ36cDJOFErGMr/ZyZI3ZRsp7ULaBZwX9GDR8XKR8Sl4rA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(136003)(346002)(39850400004)(2616005)(8936002)(66946007)(6506007)(16526019)(316002)(26005)(4326008)(5660300002)(66556008)(66476007)(52116002)(6666004)(1076003)(38350700002)(2906002)(186003)(38100700002)(6512007)(6486002)(6636002)(86362001)(36756003)(956004)(8676002)(478600001)(83380400001)(69590400013)(32563001)(414714003)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DEvTgVxVfaqmswBTrLjN63e2pjvE7eM+hJ2iUCqvo8+3CoqGuceUkYyIDVAk?=
 =?us-ascii?Q?GK/5ofJjEGOI7uyO0rl9OCOhSNVlyZUNLckvtI4QLd7R9lyjKSiXXf/P7AiZ?=
 =?us-ascii?Q?hsQsvqa+Zlf8CzyCvx1FHvUe8AUWT5pKBhSzCCHJci07xvVaRaQG5mK6ZD0f?=
 =?us-ascii?Q?SJtOq8mNC+NcPpHIszRDlYXJbxyXLJBLTVCCYs+nlalT8GeF0spkU2rouw/h?=
 =?us-ascii?Q?gWM/bVqyQzkfRdH/iHUAt6W5DeMeDW9wSbz24bkB2y0AQNjYiAGv6zfw5dQW?=
 =?us-ascii?Q?J8tHa05k/n3tzqFtk6jpfF+TuxZmrMen2AjG75jd4dGLrd/R3mpOVA2/LuZW?=
 =?us-ascii?Q?tw58ibnYEip7RYnoMrAYG6N0h1z2rAlGc5HBgP1eXk9C6jjCGKRLk0AUHu6U?=
 =?us-ascii?Q?r5woRQ1T2ITGg1e343E9vCsF/iRVuUZ9//VO0lFnIs90oLLYN8WDhKAjlX7o?=
 =?us-ascii?Q?LjXBeoosk3JWWly1AvCarvgUdygLJyNStulBuU7MQ97pYtuDY9QLQBWrOTwG?=
 =?us-ascii?Q?7FpoCKlvufH4bR+GpxAsv3x12dOGd4AyzdJnOsBJEGdxw3FHun3i+EWVxOgM?=
 =?us-ascii?Q?Ro+IZ6dkX3ZImC9uJ9KTv8dvp9fWVNkET9JQ7UJ/TCfmWLAaK527krt5G3r/?=
 =?us-ascii?Q?a9sQNGyti4cJkSorKE/efAy84BAGRryKmXcSKZpzOzh5uFmCEV9Wq4SwGfix?=
 =?us-ascii?Q?CPd7j0Qs0YQaUqqv528ux3mBcITDeFX7ZasCHM1yLo/aSc7C5CIiQnfIpi0O?=
 =?us-ascii?Q?VDaIDXaJCeoOiY0GK0tmtOO3Dot2pCIpup6wVId1z59woC+v0Swf54VhPVBC?=
 =?us-ascii?Q?7nLVf4bd87D0P4L/3TwTh3j8DWcCUqNYThSkcGIqyXGiENE8nE4OMpkDR7RG?=
 =?us-ascii?Q?nXSAlbSBWKKQJ3tg+M2ARaNQX1LPvfewfJwAvHPrs94PvLPL1Kxorr/fpyUD?=
 =?us-ascii?Q?3XNEG+Et4dFLEOfE0KPZwlin4sAnbiWcOXBp3GMnOP+opv3Bgfhw5tm3oFaF?=
 =?us-ascii?Q?e4mH5rhfSLbFpgY/nqSEzBH32G5Hnpf0poCrV82zfMR0+VxOLUD+n1pwAgRI?=
 =?us-ascii?Q?01/lgYjc4UucRQslWn4RtdesPtvBni8lvonVEW32LdRlhE9nEtl9qQ3MoISo?=
 =?us-ascii?Q?olkb0t+U+AaakHjWgmrkVuA08uKU/dvYtUwIgIQPNFsAlMbiE4qukSiuFycW?=
 =?us-ascii?Q?IXAFS07H+G6lpxGZYGTZ4mV+wHLsXPhCyZpq/zqvwelESmhYuwpYTT14isc3?=
 =?us-ascii?Q?aFt7Wj/CpaPig9V6QPU27GjVSI2zWklfKdE+1PAMmmPsPTtI+c0XBjBneSmh?=
 =?us-ascii?Q?N6DmdLFspReuKQqlBxk6/axd?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f080b8fc-f620-48ac-e58d-08d93775323c
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:04:34.5249
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ziWfRkGPb1NbLFOH/VsSOqkz8r820IejXFBbijNYqRyGlAi9ERo7DH/I/1NIGv2bA6LN4sOUPruOm4yHCz6ntQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2374
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
 - v3 changes:
   no

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

