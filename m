Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CF673E5354
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:17:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236861AbhHJGSM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:12 -0400
Received: from mail-eopbgr150043.outbound.protection.outlook.com ([40.107.15.43]:43815
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230243AbhHJGSL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gfx5U0sLQ736kbANJ5Mnf6jk3BcWH7rYAlmwpI/4mH7THkCkOP5Ts1X9Z+nev2+yyeZR2VgXFa3nAB/CPJIgRMda1NMqNVZhE40bui4MTHP5HC27dqIkvvCx+huKcpHwbT0/yOEnTT2equuOcaxCXz5l/c12qFhTPBGfcF2AIe89hS+YPrmnHr2TRzMG6lG8+beUTHoCtGZUJtCwU2YL8yvCK7QnjqdnOePTb3DjmhCwcvU2XzHwWf65QI2pomlvj6UhIgV5Bd7CLws+NKSnyLfrVpr104kj1SlcXS2gcgEkXwDcc9JH3qtgMWu02PORh0sbEN4nzblJIx/kJiL74g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B6XCEaTYn3aGHFbSxgG8iXk0eNphX1feCFzRuyrDS80=;
 b=V+JIOBzHDpecY/qI7VxSEhGSUFMX118amZSbQBddzng1/qUqg7pJdEYpE9Ihf2f1jVpTuuvk/HSeEjDlA1SOxB6Krr5uYq4MFlMRPK9EXJ84SPuWDnSfP0fLVPrZAVD5E1khP0JF7v9LLPY+UxaAsuf2NYuoV4qt4LvnY/+L5XDhr3Rgo7phSbDxkcC2H7ZZnctotJ6+vf+L+ncGlj9qgGzzpN9l6CrtMSo5H1Lz2tyusmyR+/xgpcHlSW9ybqkz0l0ErDgAevrCJCtdJdpgbAJlUoSvid//i7SlSvzqr9tX1ANpLdeU4UrPJOHd1biCmc5SpHe6wwe4C0U6+vx6bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B6XCEaTYn3aGHFbSxgG8iXk0eNphX1feCFzRuyrDS80=;
 b=ZUO65Cmhj3U+/w2ljUWrbURXrkQexQrm3mI/S4D20CeotzDc4PUIZclZlnUPPFbPx+TJBUcICn3K99uWf4Qw28e83fE6Fwq/hyMuV/0Q5pzvoi5fP4eQ4ayZd3Rflk0BqCipezKgCm+LGhHvzfGTI/HFxE+tMcQ0F4pKwq3yq5M=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 06:17:48 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:17:48 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 2/9] clk: imx: Update the pllv4 to support imx8ulp
Date:   Tue, 10 Aug 2021 14:28:13 +0800
Message-Id: <20210810062820.1062884-3-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:17:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5ec47eee-1323-421c-0e51-08d95bc69336
X-MS-TrafficTypeDiagnostic: DBBPR04MB7563:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7563027F9161AA56C177FE3987F79@DBBPR04MB7563.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gft0TsA/iqNyZ0piuP+WR0dswdxnrRISIo9niQzsGzkfk4kTierHMIha1NOBVHybPcsP8sFJqMxXsgU9eIMaCHmnKF/zmJj2gfRfrsv5yOCQ9aqdO1IQoEAOFjV6fThEqmnYol03l9k+HKEDWoT7MAX3unHBGEoEmiFB8YnmDrM1M7Nls2BNl/c41bz/Zbkda9sHtRiL5udL7t72CBz7dW9ZnibvR8KLAByXoDkEmCmwFrYgfNfQeE6zY3TzHD4mo2etwOyiq3B/HF6ONE9GMKcHkP9p9D8zhf6kiMbnjyPw5lhC8iNAN4+JkwocvUR+R2/iCLcNs6gQdAHrJUVtEthr2KT/7aHU1kgr7hwW8uJInQ7GUpFrsZmQFfVe1+7bihv8bz+hAMMCtoYCjZC4mhENUXplUAZq+vVGP+jqwpnLravtUnRYXqllN4nlhJZLzYdu7/EK0cPSeCvaD6NVMJxal+7kpRRoafNY7LD55YNk3Q8JsMVdvuribLwT6P4hTdRDGHc29eSgjvGub0WO6TGqjLRSuXJqsxZWciylOgjyMBQfxEt/7SFbcYZBquQlgf4ZXIEfXdMkjT9kfbwK6iT4pH1Ia0Hslm40BGNTBh2wZo6Fm6fwwwbZMmuWui3e8It9eYswBaxzGkUZIi1eyiqjceqr9fScbMT5jfw0WZcqCoPP6wzNQMupydIcE214OU+L+xFivW1FC794PzGPG/cxitNiRlAIB2n+FPxLIik=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(66946007)(2906002)(52116002)(38100700002)(38350700002)(66556008)(66476007)(2616005)(956004)(4326008)(8676002)(36756003)(6486002)(1076003)(6506007)(6666004)(26005)(6512007)(8936002)(86362001)(83380400001)(316002)(5660300002)(186003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PUdEnB+lveOgyLb5du3fgTB0NXO/mNhXNaLgGyYzXzi73kJdK7zlxyVwjvEy?=
 =?us-ascii?Q?FoMGLeKY84hKU7CuuPFqM0gsyI+l36Qd60RPOIgkyWzWI2IdO0FADADpGOv/?=
 =?us-ascii?Q?CFNhn5mrSkHju7h++JoeJqh05QUbf3zt3IyMuT3AqglNMGTqvcSpyoQq4vvq?=
 =?us-ascii?Q?cFQfQYHOMIlloNiZ1sE1Q69CU3D0Oooz5sk9M2Hldldbeei7WiwgJNbV8eqP?=
 =?us-ascii?Q?TrGjAfTqypsojsRhM5dW+X2YXXZ032ufrMqJ/7aQQKO9ZENl4rFgWo/idmRz?=
 =?us-ascii?Q?wIGroJ745QH2f7wjxn9sh3kLi0uJMXtVTwTEFZVIMp2HbXNLc6paWHcF+lfO?=
 =?us-ascii?Q?jIA3sBkRiGpM4dQlYNFcSXLlcpSs3wDUGcY1eH+JY1pYT83VUMTKQgvULhGM?=
 =?us-ascii?Q?24YA5Dt2fvvmhJUhGNICT2REIWR3A1X6iK8+Z0MXYeWRiBfuaFmdcEtvaoGK?=
 =?us-ascii?Q?3jYtdATa/fxWGYqs3qRBuNxcxUNglANSf6vV2CZyaYXByVbtO0sFAzzbgQj1?=
 =?us-ascii?Q?enI5qIfiqJ/BkIvRC4dnbpXfxQU81E93yS8EyRbN3CE1nqOiJNdanypmVy28?=
 =?us-ascii?Q?lRCO5WYMJGEod+HrmLX24dP3iM7+B/976IxVcBmHNADjrJ+SfP+P4eQAwDFk?=
 =?us-ascii?Q?kmwYzZtVLAeJ5IzLg3znzViOyxlclkSiHsnijKC1cu78tj0X5Um0x8Wq8u8q?=
 =?us-ascii?Q?V2POOiTwcNRPAgQU/68Mi+NAIAYEJodjUM2j2/XeS7CVkSuy/9kRHMKHwnNe?=
 =?us-ascii?Q?hFPjs6gSrLSq0cGTRcA9jS/XXRCOugEeWh2D+qrQ4IJ8PbUOOtL2+x4tZ3Hy?=
 =?us-ascii?Q?C1ZM6L3YLtil4s+1MtfHUK1VyjuEP2hgRs3eL0axDD9CnQEqg8SXHfQcpNGj?=
 =?us-ascii?Q?oEUrURgC6Tr2DJOHBEa5qrb12caXLmZy1Y3Ux0mLQeSE7xiP8XYFQFwxUQX6?=
 =?us-ascii?Q?G7aPT7whsfTammpTPeVc/CUUSpFOUOrGQNIdINSGbqGkvlpDUMvAlQMEnNi5?=
 =?us-ascii?Q?XrZz2+Mbh0tKeC+XD+o6u2qRb8JzzwLhlAQmPrGs3xkciy8X0wgpEVHy/Wfe?=
 =?us-ascii?Q?BCvZ5chshQzZL7C4LHtgrzkbpxmLjkgWuvOII8Vvz3ZaX/h5WoUhDZnm2Ttv?=
 =?us-ascii?Q?H+YHLFiGdYuqrl+GUxbAaHdj8+2CjoGY203tAruw1x+Ee38tj8N/vaXLa7Ny?=
 =?us-ascii?Q?3KKgdj5T0rkzQmDVRjQyxhQD9/Tofld3GYvYyZNr3CL32OUjHxK2ZPEFgmsp?=
 =?us-ascii?Q?hMbhH6Q6on/ii7vai0xrmrEMIW380AtayO3VbzL9rDOl0SbZagxAJp4p0LDQ?=
 =?us-ascii?Q?4PNW91FojazfC9HyyuwDmJuX?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ec47eee-1323-421c-0e51-08d95bc69336
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:17:48.2993
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xdYcv6wanNhQq+5Mmc1fKB/IBe0JKgDG70FJzAGZ2Ym865pBveX12a/GAuM815zzskREn0Aj3rw0PmoCZzd51w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PLLs used on i.MX8ULP is mostly the same as on i.MX7ULP,
except the PLL register offset is changed. Change the PLLv4
driver for code reuse on i.MX7ULP and i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v2 changes: no
---
 drivers/clk/imx/clk-imx7ulp.c |  4 ++--
 drivers/clk/imx/clk-pllv4.c   | 34 +++++++++++++++++++++++++---------
 drivers/clk/imx/clk.h         |  9 +++++++--
 3 files changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 779e09105da7..ba50d6db8097 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -78,8 +78,8 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	hws[IMX7ULP_CLK_SPLL_PRE_DIV]	= imx_clk_hw_divider_flags("spll_pre_div", "spll_pre_sel", base + 0x608,	8,	3,	CLK_SET_RATE_GATE);
 
 	/*						name	 parent_name	 base */
-	hws[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4("apll",  "apll_pre_div", base + 0x500);
-	hws[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
+	hws[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4(IMX_PLLV4_IMX7ULP, "apll",  "apll_pre_div", base + 0x500);
+	hws[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4(IMX_PLLV4_IMX7ULP, "spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
 	hws[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
index 8ec703f27417..3c750ccbee25 100644
--- a/drivers/clk/imx/clk-pllv4.c
+++ b/drivers/clk/imx/clk-pllv4.c
@@ -23,14 +23,17 @@
 
 /* PLL Configuration Register (xPLLCFG) */
 #define PLL_CFG_OFFSET		0x08
+#define IMX8ULP_PLL_CFG_OFFSET	0x10
 #define BP_PLL_MULT		16
 #define BM_PLL_MULT		(0x7f << 16)
 
 /* PLL Numerator Register (xPLLNUM) */
 #define PLL_NUM_OFFSET		0x10
+#define IMX8ULP_PLL_NUM_OFFSET	0x1c
 
 /* PLL Denominator Register (xPLLDENOM) */
 #define PLL_DENOM_OFFSET	0x14
+#define IMX8ULP_PLL_DENOM_OFFSET	0x18
 
 #define MAX_MFD			0x3fffffff
 #define DEFAULT_MFD		1000000
@@ -38,6 +41,9 @@
 struct clk_pllv4 {
 	struct clk_hw	hw;
 	void __iomem	*base;
+	u32		cfg_offset;
+	u32		num_offset;
+	u32		denom_offset;
 };
 
 /* Valid PLL MULT Table */
@@ -72,12 +78,12 @@ static unsigned long clk_pllv4_recalc_rate(struct clk_hw *hw,
 	u32 mult, mfn, mfd;
 	u64 temp64;
 
-	mult = readl_relaxed(pll->base + PLL_CFG_OFFSET);
+	mult = readl_relaxed(pll->base + pll->cfg_offset);
 	mult &= BM_PLL_MULT;
 	mult >>= BP_PLL_MULT;
 
-	mfn = readl_relaxed(pll->base + PLL_NUM_OFFSET);
-	mfd = readl_relaxed(pll->base + PLL_DENOM_OFFSET);
+	mfn = readl_relaxed(pll->base + pll->num_offset);
+	mfd = readl_relaxed(pll->base + pll->denom_offset);
 	temp64 = parent_rate;
 	temp64 *= mfn;
 	do_div(temp64, mfd);
@@ -165,13 +171,13 @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned long rate,
 	do_div(temp64, parent_rate);
 	mfn = temp64;
 
-	val = readl_relaxed(pll->base + PLL_CFG_OFFSET);
+	val = readl_relaxed(pll->base + pll->cfg_offset);
 	val &= ~BM_PLL_MULT;
 	val |= mult << BP_PLL_MULT;
-	writel_relaxed(val, pll->base + PLL_CFG_OFFSET);
+	writel_relaxed(val, pll->base + pll->cfg_offset);
 
-	writel_relaxed(mfn, pll->base + PLL_NUM_OFFSET);
-	writel_relaxed(mfd, pll->base + PLL_DENOM_OFFSET);
+	writel_relaxed(mfn, pll->base + pll->num_offset);
+	writel_relaxed(mfd, pll->base + pll->denom_offset);
 
 	return 0;
 }
@@ -207,8 +213,8 @@ static const struct clk_ops clk_pllv4_ops = {
 	.is_prepared	= clk_pllv4_is_prepared,
 };
 
-struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
-			  void __iomem *base)
+struct clk_hw *imx_clk_hw_pllv4(enum imx_pllv4_type type, const char *name,
+		 const char *parent_name, void __iomem *base)
 {
 	struct clk_pllv4 *pll;
 	struct clk_hw *hw;
@@ -221,6 +227,16 @@ struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
 
 	pll->base = base;
 
+	if (type == IMX_PLLV4_IMX8ULP) {
+		pll->cfg_offset = IMX8ULP_PLL_CFG_OFFSET;
+		pll->num_offset = IMX8ULP_PLL_NUM_OFFSET;
+		pll->denom_offset = IMX8ULP_PLL_DENOM_OFFSET;
+	} else {
+		pll->cfg_offset = PLL_CFG_OFFSET;
+		pll->num_offset = PLL_NUM_OFFSET;
+		pll->denom_offset = PLL_DENOM_OFFSET;
+	}
+
 	init.name = name;
 	init.ops = &clk_pllv4_ops;
 	init.parent_names = &parent_name;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 7571603bee23..964f5cddc7aa 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -42,6 +42,11 @@ enum imx_pll14xx_type {
 	PLL_1443X,
 };
 
+enum imx_pllv4_type {
+	IMX_PLLV4_IMX7ULP,
+	IMX_PLLV4_IMX8ULP,
+};
+
 /* NOTE: Rate table should be kept sorted in descending order. */
 struct imx_pll14xx_rate_table {
 	unsigned int rate;
@@ -191,8 +196,8 @@ struct clk_hw *imx_clk_hw_pllv3(enum imx_pllv3_type type, const char *name,
 		.kdiv	=	(_k),			\
 	}
 
-struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
-			     void __iomem *base);
+struct clk_hw *imx_clk_hw_pllv4(enum imx_pllv4_type type, const char *name,
+		const char *parent_name, void __iomem *base);
 
 struct clk_hw *clk_hw_register_gate2(struct device *dev, const char *name,
 		const char *parent_name, unsigned long flags,
-- 
2.26.2

