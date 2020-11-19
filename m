Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9B9E2B93D9
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727266AbgKSNpA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:45:00 -0500
Received: from mail-eopbgr40073.outbound.protection.outlook.com ([40.107.4.73]:28839
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727217AbgKSNo7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:44:59 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a9FQpKCoxfF2E7WUFrg7Effh28VxEEoPKJp8mOs+N2pCtMqOi6GN97YJBStzgAUulivsB+TrjgtlDfWqqkOy6hHROdBL+zo1x7Cq/pIETsOIaySRDGnXNkl7c6WFG9du0BMxi/6D1OwJDfBCHH6HDVSqeClZaUzM1ndgg//Tk1t91JX6zb3ehES46ZJHXXassxmH6Q54Zqs6IKEj/3aOpFu+0ml6Qoc/ObgPA/XLaVZ8KG9dz9/iudN6lMR6o8JTbT8VrOh2urnYFd7yVzeZsga5frdUWdWhOsHcLAz2M0lWRA+n7Ci9BDxXuB+1yYlgmKku2wRFPyjMa4hDoCjVLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/QX7pvrDBPuunUeGRpZP4kA2yTN60H+ojHjit5PJ0I=;
 b=e1KR6Jvca+QGK0xqACYTZqyGT1J/5XRGvzj9yLNBj+U4gy83QqHX0SO8BgZOg2QHXsy+CxEDVWUhNnpLATtdosNAX6noLw8Nl+lAe4t9CUQH4n8qydys2pNNn1t4/GHkbL9ux4zuGwyRvfck2RBUnifEnuaVIHrlNRAGudjYdxqcKPQ1CHto0Bso4fL/sronkNWLKSw31+cB7BZBJMKoyUHbuVOkGxbrwT4RHdD19TWd88SPnkvp9MrberMr4Dqz4GvYUbNTi5ElNAvf0XS6iThZ+pSIXf7ymoMCe0t4/XKDjgrp8bGmNqW5R8+aLgcBuYbRqy/56vJuCRR1DuVTrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/QX7pvrDBPuunUeGRpZP4kA2yTN60H+ojHjit5PJ0I=;
 b=CYvK9JDa0gleik68E0/wwAAXA48kPMi06zuYLsVjfXwf0B1WntefsFctkGbQ/d5SgPtiCLVNKgjkbdHBrjmKaI9tnEnLCOxeSrRC/+ZSpP+TStFEU6A98IVDgw6al8MTpN8GKNFD0+9nWNB++gYtSrrBj7n1WckeTkiP368hed0=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6517.eurprd04.prod.outlook.com (2603:10a6:20b:f5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:44:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:44:54 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 12/15] arm64: dts: imx8qm: add dma ss support
Date:   Thu, 19 Nov 2020 21:26:51 +0800
Message-Id: <20201119132654.1755-13-aisheng.dong@nxp.com>
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
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:44:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 00c66811-1498-4bbb-eea7-08d88c914bdb
X-MS-TrafficTypeDiagnostic: AM6PR04MB6517:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB651748D4A30BDC1EFADF78A580E00@AM6PR04MB6517.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6X8s9F2j/x91f+bwXO7vKFV/t13Hitn2h6neltlYUC3R2DOqk98AlBXwFZfmoSo2cJdSSkWgBakP9hRTO25PwM6yW5agLW1Iyq+6BM2jVaJuTDJS1WgEXYRnP1cGQ0I7l9HjjGGtheIpe+pHK6n81y4D/lScdE1BUHM3dCo2BAh1pxb4B5anKdNYruTaNl1uIEdIT+2+iOn1AYUA1yAQWmk1H5nbfVCxowfVtMc92YEdVGFYxUIMVbqc4nz1cg2cOVRkTChGxI3E4UV5bvoImqdfcw0utgyKuql1wPVIammnikym1vFcmafY/yCEIpD2+1rRoSl6rjIpUsdKZsxBCS9hbKaMOCd4PQAYKZMY8ZM0prN7Sr8mtFXtHJRJWF/q
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39850400004)(396003)(376002)(366004)(36756003)(5660300002)(8676002)(478600001)(4326008)(66946007)(52116002)(6506007)(6512007)(316002)(16526019)(186003)(26005)(66476007)(6486002)(66556008)(1076003)(2906002)(8936002)(83380400001)(86362001)(2616005)(956004)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: JJ+eP8p0cNcgGpqmH5up8TSRSo9QPSYA+FpffFVKQL2j6bzZ+RF3MVtvNk5TiJrzUhLTtlsbNbR2x1O62fZa/AONzvcgFZodFBw4jWq5i+bhIQEn5BUEEe+bkoQMdunfyatfh6mbnU252qKroAqZ8CMiC6uPpfsz8dQoIphNpZbwCrKPBvsYoPfcN1KUoRjutJgtngq59OptbgzqIItRTecHg35upShAFJ6UQBi1tR0Lg3QEdrXUtwvvt+ct80DS3tqkwyj8w2YaDMNB5jyrLQdmCOa/hJiIMoHtRWmpAToDag6/P0m3ZIhbFgNX+k6hiC9hZshqCYAs5MNjNYJEDVPUkKoxD/29mWHei2eHUkomojv/43iXeRQGtxs3UFp71gNB/s7Nslr17Ek6nlrnA+pBw8vDbL+PrcvQZACGFt5GJXQze0qJOou6hmarW0ITbL5GFCHaz3RMKmcZAdJuFIMwyGtu/9SJqpi654SQsPXLQ53xcAIDIqIagLtNIdkTKqsJ48IzJNgnaKAJqJw3JzSCeY1krZfbwKyeS3dpVUntvsBdgdHD5zLVUtcOQN4FL1pxnvfzZQRNnsqXL3YTrToMVk5iahq7YxbHgYCcZcSyGZtFfhVC4Yh/9jkktBJS+Rit2kdtTf2/SxWzJjn6mg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00c66811-1498-4bbb-eea7-08d88c914bdb
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:44:54.5505
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8puEWpppqgpGwmRqgVrFY5tuEJz2LAd6zbqrP/dYUDTg5JTujLbSRLzqMFTkg38LymUWv6CxkFWloy664ZIvdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6517
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DMA SS of MX8QM is mostly the same as the DMA part in MX8QXP ADMA SS
while it has one more instance for each of LPUART, ADC and LPI2C. And unlike
MX8QXP that flexcan clocks are shared between multiple CAN instances,
MX8QM has separate flexcan clock slice.

So we reuse the most part of common imx8-ss-dma.dtsi and add new things
based on it.

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
 * use new clock-indices IDs
 * update lpuart fallback compatible string to fsl,imx8qxp-lpuart
v1->v2:
 * change to the new two cell scu clk binding
---
 .../boot/dts/freescale/imx8qm-ss-dma.dtsi     | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
new file mode 100644
index 000000000000..bbe5f5ecfb92
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&dma_subsys {
+	uart4_lpcg: clock-controller@5a4a0000 {
+		compatible = "fsl,imx8qxp-lpcg";
+		reg = <0x5a4a0000 0x10000>;
+		#clock-cells = <1>;
+		clocks = <&clk IMX_SC_R_UART_4 IMX_SC_PM_CLK_PER>,
+			 <&dma_ipg_clk>;
+		clock-indices = <IMX_LPCG_CLK_0>, <IMX_LPCG_CLK_4>;
+		clock-output-names = "uart4_lpcg_baud_clk",
+				     "uart4_lpcg_ipg_clk";
+		power-domains = <&pd IMX_SC_R_UART_4>;
+	};
+};
+
+&lpuart0 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+};
+
+&lpuart1 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+};
+
+&lpuart2 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+};
+
+&lpuart3 {
+	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
+};
+
+&i2c0 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&i2c1 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&i2c2 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
+
+&i2c3 {
+	compatible = "fsl,imx8qm-lpi2c", "fsl,imx7ulp-lpi2c";
+};
-- 
2.23.0

