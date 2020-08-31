Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7695257669
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 11:20:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727810AbgHaJUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 05:20:41 -0400
Received: from mail-am6eur05on2046.outbound.protection.outlook.com ([40.107.22.46]:60449
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726244AbgHaJUk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Aug 2020 05:20:40 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMV40pPQVZ+K6tNPBFNGovOSmq1MOAJ3OvPBEkk6VObi7PFOxAEdnMjv/47QtBsPgcSoZTT/A6UUCoXsGqwQEWTGOQ0VDXWPXeeAbCQGf9uNAW43vK66j3FPUeBrnkVLasOdgF1vGcaMNYWcHFpzCxyo01P25xPgqEag3bNYJsWjirWKTuy862qbT2R+/39fKJNCOmBSSf0o8+9z/inBEv8Pbw3kvHeshLFS/skZLYoA3TuGOM+2rA6CVhKPAFl8W0S4aM4JNWrGdl0g1gIwtGQVAz30bJma42dP2FhkDQstm9ZZz+PB3/XxkJEuwOjHEfTfP8XzHt+kuoGHZMXzAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfZWt74bQ7iNg+g/doLoVJMydE7GUpQ8tFQMNbnrNf0=;
 b=iTF2LND+Divnly+z4IUtZMr4BluwQ50eGeRiwMrtztr/U2+iJSsXrUGNlW7ZjAiOgArMAPi4jrrd6hBps+CQXQsJtyn9j2Nct5RuXI+tugQLLwIDp9obeYwZ8/bjl09QNbN7qn6kAJX/jHg3SX7969z98oKBIXF1BNPNHFHPo3tAm6F9hZrMXI9oRkF27XZBs6LGbcmDE068gfqLgafnsu/TgaD/YJMmU2Y3mAihTU6Y4V2r4ptOcFeBIQOIdsY8O67cWySV1DPlwCYK3QfEbT1Zc0sAHzE1XUZ7OMEiw7Qz2dND1gFlPTlDpXCqI0+AhSqiENoLG3pp6n7H20hpSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfZWt74bQ7iNg+g/doLoVJMydE7GUpQ8tFQMNbnrNf0=;
 b=CyqPG7mNYtwnC1p4G32o+QI2cN17TjYBx54vc8NCemRzfEaVApl6P4NURcGE+1R+DaDHBFmuni7DFLYOc/Kid2McDGDZmKMvotR4tqNVZ+owi1UfNYs9B+rJC7VFRf9WalxzqSeN2aJvwT3W5WJpsi86nKvAFoLGZN7Qv9zC9rA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR04MB6178.eurprd04.prod.outlook.com (2603:10a6:208:146::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.21; Mon, 31 Aug
 2020 09:20:32 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3326.025; Mon, 31 Aug 2020
 09:20:32 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 3/3] arm64: dts: imx8mm: Add imx8mm ddr4 evk board support
Date:   Mon, 31 Aug 2020 17:14:14 +0800
Message-Id: <1598865254-20248-3-git-send-email-ping.bai@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1598865254-20248-1-git-send-email-ping.bai@nxp.com>
References: <1598865254-20248-1-git-send-email-ping.bai@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0003.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::15)
 To AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 10.192.242.69 (119.31.174.67) by SGAP274CA0003.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3326.19 via Frontend Transport; Mon, 31 Aug 2020 09:20:29 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: edda83b1-571a-4e85-124b-08d84d8f1c70
X-MS-TrafficTypeDiagnostic: AM0PR04MB6178:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6178F5897D90FE5F500C93CA87510@AM0PR04MB6178.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o5mJuwZX/YRF7dtIEmbep8ViASiRtn50xkd+eSU3LvO49OWcfM+Mu5LhqG4TEZYtD/RTtTKwoxtfR++ntkHgiAwMsLzIScLFEEW2QhwAs/96vxJh0D0mQb5hEPQDiYR2zQ6HH8cIcVCIU+2TguwQLpw/V5zzKnPSU9GQS12cIHi/2bqw9eHgbAm1n2dWy494q81iGIZeK5+tEEuEy1Uz8ZLp9B7nuQ16ZzY0nVip2DdwajyKJspImc/vbhA0YMfuaGgR45jr7oWQ3JOOdw6ixIE4JPOTE3VbyH6OwMrIVxN28r41tGGMbjjO3Gbw+bUCtuPTcQwZlXaiPhgqzCOQvVBTSZeQyb5vicPVA059hkNJWG6paUcHMmJeyl+EvsLv
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(366004)(39860400002)(136003)(8936002)(36756003)(26005)(2616005)(86362001)(6666004)(16526019)(186003)(8676002)(956004)(52116002)(66556008)(66946007)(66476007)(478600001)(5660300002)(16576012)(6486002)(316002)(4326008)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: dFQPbkaOOuN+UFeKLUEPKOOAkk/eDdjkW1Z5r6wA7zrVhY5/jWiAwUvpzcHxKh/0gihmTCiOa8PSl+Mi240I5cAsVrJIWvTbeXo5MBzzcc+ycsWoZnN5aareQEffmcMLp5h6bhL7CcLDwMVbYemjmCAE116eS3TW7N0qPGV9kRyKQhYZIYPHiUOWkxk9HKVxXyC3zfzUkzIMoywpixIgyzaGQoLEENZuTP+cJQ/8ic1PhFeTmTNw5rA9Nib1wBNHAQap2MiWOQZOjmsjuwmxlbHFD3dQ4GhrGn+ZNTMa5a2ruRQEf7TV6qoLUdniGAUjt9EDCsrOj0nTvd5iqDEfYugv1VpfKg8YijktYm2/xDUTcB389KSH6jmJiBnqhTsjrMF9CA1C0xr+fUo00Hh9XDqwF/kD+lSg6K0gBSXVO0LdzYBdNmgq5aw4lXp717zlE4aaWeZoT1Za9JC4jBgj43xWeRvJOP9/0DlGf5IpkejvZbZt7xN8tY9XVWK/hTKTT77cqv8Xdp05SBWlm9DsYLZivbFLuqincW4JKQ1X8GPV0VgItF2StWMaU6992gwvF/cr5uTjpVIZI8W2P3TTJUxbxo3REu/lPAreAJhtuiAEy3BmhzQaOsAdlkpxosTTkRBOqr+i2CNSuteevUAvRQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edda83b1-571a-4e85-124b-08d84d8f1c70
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2020 09:20:32.8012
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K41HWkc9F/OVd7pSddMKVH2tLzawrdNp6ilAPrtUjVfmDsxTdexXEtJd0E+EXZLURFhH0AaVl4dvxXzlZlN7fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6178
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the board dts support for i.MX8MM DDR4 EVK board.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
Changes for v2: remove the ddrc opp table for now; remove the unnecessary
suffix for gpmi pinctrl node.
---
 arch/arm64/boot/dts/freescale/Makefile        |  1 +
 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 57 +++++++++++++++++++
 2 files changed, 58 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 6b3494b6aa99..640c8c65a5c2 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
new file mode 100644
index 000000000000..6c079c0a3a48
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2020 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8mm-evk.dtsi"
+
+/ {
+	model = "FSL i.MX8MM DDR4 EVK with CYW43455 WIFI/BT board";
+	compatible = "fsl,imx8mm-ddr4-evk", "fsl,imx8mm";
+
+	leds {
+		pinctrl-0 = <&pinctrl_gpio_led_2>;
+
+		status {
+			gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_gpmi_nand: gpmi-nand {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_ALE_RAWNAND_ALE		0x00000096
+			MX8MM_IOMUXC_NAND_CE0_B_RAWNAND_CE0_B		0x00000096
+			MX8MM_IOMUXC_NAND_CE1_B_RAWNAND_CE1_B		0x00000096
+			MX8MM_IOMUXC_NAND_CLE_RAWNAND_CLE		0x00000096
+			MX8MM_IOMUXC_NAND_DATA00_RAWNAND_DATA00		0x00000096
+			MX8MM_IOMUXC_NAND_DATA01_RAWNAND_DATA01		0x00000096
+			MX8MM_IOMUXC_NAND_DATA02_RAWNAND_DATA02		0x00000096
+			MX8MM_IOMUXC_NAND_DATA03_RAWNAND_DATA03		0x00000096
+			MX8MM_IOMUXC_NAND_DATA04_RAWNAND_DATA04		0x00000096
+			MX8MM_IOMUXC_NAND_DATA05_RAWNAND_DATA05		0x00000096
+			MX8MM_IOMUXC_NAND_DATA06_RAWNAND_DATA06		0x00000096
+			MX8MM_IOMUXC_NAND_DATA07_RAWNAND_DATA07		0x00000096
+			MX8MM_IOMUXC_NAND_RE_B_RAWNAND_RE_B		0x00000096
+			MX8MM_IOMUXC_NAND_READY_B_RAWNAND_READY_B	0x00000056
+			MX8MM_IOMUXC_NAND_WE_B_RAWNAND_WE_B		0x00000096
+			MX8MM_IOMUXC_NAND_WP_B_RAWNAND_WP_B		0x00000096
+		>;
+	};
+
+	pinctrl_gpio_led_2: gpioled2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x19
+		>;
+	};
+};
-- 
2.26.2

