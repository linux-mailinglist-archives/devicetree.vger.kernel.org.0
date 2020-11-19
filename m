Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 324AD2B93DA
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727283AbgKSNpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:45:05 -0500
Received: from mail-eopbgr40053.outbound.protection.outlook.com ([40.107.4.53]:47230
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727289AbgKSNpE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:45:04 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJ2qxubj265jBBBdhpCsln8HvLXp5HwDkPL+FbW/ECZ7dMpHpHTIhH9UC7EwZTlg+klkuLKeydJlUOyqui2O9KQ9BZ0PUv3AbNevuQvCviFYDeVMx5hLEkW9qsaqO/1H/AD11TExo0zmWHASQOtWDgxuk6XppPr0uV87UQUpZP4QYwMgQVB/adoWnqkqXctFokMNb3t+ceLiGp8FrENJVTKPWIFRhXKLo/iiCgGQ67DDyD2uhK/jGGnQ2qxu9IPCYC4BDLIWoT2btED4yB9az/F7IHmraXzNa9twQViNdQRD6NI88/5f05F86MXmVkj9fRkC5dGSXZsxft8p5mp8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qzc4mCAstIXhqXy2MxhZ6AogDTZizW3HG+554sbs42g=;
 b=lWtUEH1Y82pqepMBY/2zVy3rK88Qyg/oYVQ7iTNXX+j6S5tM8tkkGbfM+bhVOaavFBekDWHDQwkadHzF1sMvgKu/A1MdBlhrmLhrEUFoJznr4sJPqV2L09mAtCu+K567mpFaZdgryqpiVDmx/D0eQZ80HA841N4dnqL4RvZ1QrTT74XrL1TR9wP2FsbYjv5tg3aJXtSKBZs+lQSdVBfcPcLS1rM+s6slwUk3SJWuQHGuxV93yqew1xctGDdcOuQ5wBUeNgT02O2E2pj4PnPeUa6vdMAKMCb5AVrnGUNMZD8JrxpKMpR5pV9zcgc5vM+wTNr969tMeSBS2UiZgbMUaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qzc4mCAstIXhqXy2MxhZ6AogDTZizW3HG+554sbs42g=;
 b=dUz+jxBRGp/B81Qv+4hsYXe9Cq8L7ncgHxr40VWq10dXxPigBimqy3YTZB8VCO/qihgWy1pj5y69euvFRfAgp2sEs5OCFst/NvhYbs07URXo+fwMxwEU/2iTiNBWLOVxdh54JJdyCsJLIxwmzT+7LcPMFFrNamUoqW+O8drPask=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6517.eurprd04.prod.outlook.com (2603:10a6:20b:f5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:45:01 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:45:01 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 14/15] arm64: dts: imx: add imx8qm mek support
Date:   Thu, 19 Nov 2020 21:26:53 +0800
Message-Id: <20201119132654.1755-15-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201119132654.1755-1-aisheng.dong@nxp.com>
References: <20201119132654.1755-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 04af22ec-665f-4277-855f-08d88c914fcb
X-MS-TrafficTypeDiagnostic: AM6PR04MB6517:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB65174CF1F8FE47B9EC1517D780E00@AM6PR04MB6517.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ltqS44QNu43gm0xuKJfuUc4LBRfO1T6IsFNZUeznoCT0KNetuxirL11MOfTagqxYeNmdpGuQ4adrd6FKSZRx8nt0jrnlCpfXig6dExVePobpovqjxisd6i1yFSFIgPM875DjR6HlfVTtZGzSEEGlulPaEEpbMBNWtLj65MDP55bIhvqTfqyrqgzSiYqNO9mEqy/d+Q+wfbhih5TdDuLsXpmGwnMbRhkK3x2ZI52p7Fq0+sqtpglBTvLRKJGKE3QVvreAquZxRakxKQvmi8zulkxWP0vh2Dhv8SOuuB/oeICt2edUEGc4Q1ly83gboQV4ejDvTVSylvNcJVH8sYXTIQZW6VDIsxoACeKy7rPtOJD6F+MyeLdz42inkTnuo2j7CbAjmwxbJ7wOh9q1JG6x7zY4sxRuvuRK0QRgla72uH4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39850400004)(396003)(376002)(366004)(36756003)(5660300002)(8676002)(478600001)(6666004)(4326008)(66946007)(52116002)(6506007)(6512007)(316002)(16526019)(186003)(26005)(66476007)(6486002)(66556008)(1076003)(2906002)(8936002)(83380400001)(86362001)(2616005)(956004)(32563001)(473944003)(414714003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: IT4VJEMjjUn3imj3NMtdZGcuWKvqXyazkt3xOa85WxlAiXQD1zmLLhtHFxo3yvyQK5B6HALWP6xggMw/qrTm321VmGFBG/TwQgqS/uYrI9Q++wSzJXt8LVLiJtYJ9WcoMLOCMFv6P3QghCWvpxPJhF5IDA2dzPazDAAv+9Rch8ov/B9HJirQmz29NxT3w6x0A1snbr7Phq/H5gP3t59FLDfgejrALswQzz8y7WAHjcRYPt+FBglJQfH/aORE/iAv/w9wkomHX7gOa8rB0VLm7WvgVwdZIBaSn8Rj/o/PYG9mXqn/18Bt0mRnAbLMePZ3/qfdoQRbl11MmbI3emPSL39zB6o9uTKZ+a8SaYy+21x32mJ29LBPR7XQKIyu95XeO8nFLlEmsKmA7PtlvpyvBq5O1hL6k/8bPrBDQXr9lNSV61VJIViMePb8k9/G/CRimeTJSjFu+LwYXrF8hLRsX4dZoDNAhdfGEC+bJmJd3I6ypP4RREAdpcuyumb59kCFLiVEFIHt8GArpyH+XO3p8iph5Ei9DG9AneEEU576K/DT9nboS0YkxpaNdoM1Q5N/i8XMeFAnzQ8KIAeMZYkHUNl04gNuybFrA1dh62Mhqf6dojHAds6aafWKak6Ug8wBrKv3MZSyjMS/H0qEvFo5Eg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04af22ec-665f-4277-855f-08d88c914fcb
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:45:01.1928
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sgoWtcLZIRRiKPTkyiMeEXGx3t9pG+ByLa018Ie9xdoXsTeCaR2exf1v9wLwg6Kotsm+QDzZxQSiqZN+KE15Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6517
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8QuadMax is a Dual (2x) Cortex-A72 and Quad (4x) Cortex-A53
proccessor with powerful graphic and multimedia features.
This patch adds i.MX8QuadMax MEK board support.

Note that MX8QM needs a special workaround for TLB flush due to a SoC
errata, otherwise there may be random crash if enable both clusters of
A72 and A53. As the errata workaround is still not in mainline, so we
disable A72 cluster first for MX8QM MEK.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * no changes
v1->v2:
 * copyright update to 2019, minor node name change
---
 arch/arm64/boot/dts/freescale/Makefile       |   1 +
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts | 144 +++++++++++++++++++
 2 files changed, 145 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-mek.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 6f0777ee6cd6..a0d6b50fc48c 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -49,6 +49,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-thor96.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8qm-mek.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
new file mode 100644
index 000000000000..ce9d3f0b98fc
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+/dts-v1/;
+
+#include "imx8qm.dtsi"
+
+/ {
+	model = "Freescale i.MX8QM MEK";
+	compatible = "fsl,imx8qm-mek", "fsl,imx8qm";
+
+	chosen {
+		stdout-path = &lpuart0;
+	};
+
+	cpus {
+		/delete-node/ cpu-map;
+		/delete-node/ cpu@100;
+		/delete-node/ cpu@101;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x80000000 0 0x40000000>;
+	};
+
+	reg_usdhc2_vmmc: usdhc2-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "SD1_SPWR";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+		gpio = <&lsio_gpio4 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&lpuart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart0>;
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+		};
+
+		ethphy1: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
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
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	cd-gpios = <&lsio_gpio4 22 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&lsio_gpio4 21 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			IMX8QM_ENET0_MDC_CONN_ENET0_MDC				0x06000020
+			IMX8QM_ENET0_MDIO_CONN_ENET0_MDIO			0x06000020
+			IMX8QM_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x06000020
+			IMX8QM_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC		0x06000020
+			IMX8QM_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0		0x06000020
+			IMX8QM_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1		0x06000020
+			IMX8QM_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2		0x06000020
+			IMX8QM_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3		0x06000020
+			IMX8QM_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC		0x06000020
+			IMX8QM_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x06000020
+			IMX8QM_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0		0x06000020
+			IMX8QM_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1		0x06000020
+			IMX8QM_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2		0x06000020
+			IMX8QM_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3		0x06000020
+		>;
+	};
+
+	pinctrl_lpuart0: lpuart0grp {
+		fsl,pins = <
+			IMX8QM_UART0_RX_DMA_UART0_RX				0x06000020
+			IMX8QM_UART0_TX_DMA_UART0_TX				0x06000020
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK				0x06000041
+			IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD				0x00000021
+			IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0			0x00000021
+			IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1			0x00000021
+			IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2			0x00000021
+			IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3			0x00000021
+			IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4			0x00000021
+			IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5			0x00000021
+			IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6			0x00000021
+			IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7			0x00000021
+			IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE			0x00000041
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK			0x06000041
+			IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD			0x00000021
+			IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0			0x00000021
+			IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1			0x00000021
+			IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2			0x00000021
+			IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3			0x00000021
+			IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT		0x00000021
+		>;
+	};
+};
-- 
2.23.0

