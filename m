Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F03CF40A6CB
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232880AbhINGmf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:35 -0400
Received: from mail-eopbgr70088.outbound.protection.outlook.com ([40.107.7.88]:35907
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239015AbhINGmf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=He5L2KL6i9oQOBzT5SwqV8vHKq1sZ1AGSLA9KEGUDywehOiZPis0fNO27k+JKbk7i7Pyp7hc2jetqIS/XkDzXT6LT34Jc17QUIQ8f3iidznAeFwaG1H2rOpFWFhBcLi/9eE0hOaCzHZcyAchni/QasS0MjLG+CzzeOobO71vpMXx1fosK4K91vFfy/YYBHKPoV1s4w4ZWA0plmePK4HNJYaRLJs9GAsiIPfV/ohg6JmpLRS6r0sxG36kceZs4GVn+lSUtHmVHrUJVG0rtEM8JFJvmHAYIG0nv95BrqefjbhJM5WZPpPzylcN4Vj0SpcpO3TB0kxH0f6dZCm62cxyPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=E7RyfDFJyAP5SnRXkPEGns3qwGSBHvkYZQHT6JsE6BI=;
 b=NJynomWrta/Y+522/mkHg2t4XAhd5jKOD8h+leLGeX09M3NP5cXpILDrUmrIk4XTwpdV2yZ1X9CuhNLGXW830RaXo66XaJP3PBmkUOdMkyaJDidrdqNG17xA+o51JLmscd12ZZJjveEWwf4xOkDgUB+wiuKaybgIK1FXYeA0AzFWvH9XiBwhNEm8Mv2eiC0SKRhorU/peOlWLEXkqd9yWrKR1277FUv+L3eYcif94ycfKkteqvg1XHhskJY9IbRVPfn2dV/WvpAx+0LG+azkuLDrzNImOuyNOrbYvNXR+vxmYzLLzzwJGlwbQZ8/wmikylS//qj4q7Rj7l4+Rat8Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E7RyfDFJyAP5SnRXkPEGns3qwGSBHvkYZQHT6JsE6BI=;
 b=f5iUv4oCnDktWnlWxjig+f4i4k8hR+Gtzsh+Ms1MVG4jQqWIXAtHI/6u9x6ydGh/ZfFqvysA+2OjpXqIRGkGv95h3OwvlE7AgL1tePVq8ILRpW/ik/I/QO0neihk6elDWONhX3/sN7nkW3SAbGUxsTfC95tkZ79H18OHIPAyjmg=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB6028.eurprd04.prod.outlook.com (2603:10a6:10:c1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Tue, 14 Sep
 2021 06:41:16 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:16 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 2/9] clk: imx: Update the pllv4 to support imx8ulp
Date:   Tue, 14 Sep 2021 14:52:01 +0800
Message-Id: <20210914065208.3582128-3-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee7b70e3-72a5-4b62-d09a-08d9774aa6cf
X-MS-TrafficTypeDiagnostic: DBBPR04MB6028:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB60285A6D4391ADEF02F8085887DA9@DBBPR04MB6028.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zgcI/ZO+p3sMePKEwUvhxznWb9qkN6mYwhMGwcN6a/09Uxiaqyu3XeYsI0iGDtDE+DcG9KJmsntC+CWCYCWTyt5zhd5VxrdhDC0jVzPKxk7mAw9SZDDGJ2oONvUd/UCdaTabhKs/4ZmNd/gEMLemYaSTIdZQOvzwrcZDjx4t/4lJMWg7RboGxLA7XVBWsNwRG9VQdmkWDNUkckWIaFjoPwylDRRVEqmc8m8F9J3ODNumhGbcctHmpbQ9Wh2LvRxWXgx6o6bYMaDWduB4SIHO5c/dg0d2ayrikorKOBc1pAnT5J91lR4qtwq0i1IUrcSurazrYkCo+v8euwVtUahE3eFRzxz1SpegLxsMsRFkkjOZRc+YENg1AXB4NS/NqjIGV2hFuQiq4EKNnoZak9GSScUSURKjra0MfXQcLi6qth2OYUVESexJ5xqdgaV4BEvzKa0tnfmBGTh6ACbYFq3gmoZlEHpvVRaQSHAqHgmZVgU4NNSD8LUwf6zA4S6+zZmK+xEaamAo8JFfKZrvISU8/mhWFs9XDcdIeY6l1jNhU7vxujzNsKM7aAD5S9MMXkFoNM7MDRlf2Viedihhx361ITZJnDINA5v+BfycuQW+wsmzWsHqjNOyFtW+UyEVRxpdDk0OdM+V33U7ppFzuMGoc9YGMDHqD7CpAE87ofsM02mcSMHXcw6YDWlbgchQC3C04vFUcaqKOApa0wTqrsTvXJ8CQEVTpNxPK4mDfN2CGow=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(956004)(6512007)(2906002)(83380400001)(6486002)(2616005)(4326008)(316002)(8676002)(5660300002)(66946007)(66556008)(52116002)(6666004)(66476007)(1076003)(8936002)(38350700002)(6506007)(186003)(478600001)(26005)(86362001)(36756003)(38100700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DjmNGczA2n1v9iYdZoRzlXhwue6O6R9BDNZbpkh9ocyh+0aCedvAG/eaYeMy?=
 =?us-ascii?Q?+KEyfTg1raTPNpcBCvmYywssnSHbAkW/XA+9n/ngxwyJTzbfjD9nbuKwgkst?=
 =?us-ascii?Q?xcYhZrUMj9bPyO2ms1ADTf3zR7U/ZruPZq67eqYLwPMch53pAhK8htuRopYr?=
 =?us-ascii?Q?CKJ7C8rhX7lzC7w32Ea04pIF6MguYqRRM9NsXgXoTVIjb50eUP1IC2UZySu4?=
 =?us-ascii?Q?HVvWwjbR3mYdvVIAH/Ktl+WnwD79glVAjV2I7Nd/Kvn5d3uN0uOvuRb40tv0?=
 =?us-ascii?Q?DIBCXqRzEarxulfduVKdny3xHMmI2WNidlbrB8irSEuNIUvlb1d2YIS/M82z?=
 =?us-ascii?Q?PYFKwhVGn4UQKzADdy5eNBygYccwp/ed7lvsQ/3QAIuk6DmegaO7iQ+XV8F4?=
 =?us-ascii?Q?hqTILs/tayau+N3ewzDg6Vr+dE2wMhIh6OtnotAfRAeWWi0Tt37ySKeFr9ZR?=
 =?us-ascii?Q?ABKWL5cgY6w92wBLILsah0WgA957FBgWsrLeBIhNkPG1tykVbAtANdaLeV/N?=
 =?us-ascii?Q?q1NQT9lUAFWlJ+GIr1lFtyweebsnxqehiHF1E5T6VpRV0ElGbSlkgOYiHuYe?=
 =?us-ascii?Q?cGLlAxHyHj5mVnHFAIPFJ3RMdMCOnHUp6mwF24xIR0p0uGuM0eWQPoOmTs2R?=
 =?us-ascii?Q?lsPvnPX9Tf4HZX5tbQR629FyY3wmxMH4KckfHCiW6dA2Gvl1dsI5eUFiPAXB?=
 =?us-ascii?Q?8Q2V0QfcSWhcCW9p+ChAuyUFCD3dSdLGwW9ppIGjTxpmyDTdOv1bRdrW0IIj?=
 =?us-ascii?Q?uvvxagkA2fOlvd11120LCI/GfsvKfrQ0RXDLb/2FmRqV1cETprlbi02Hl78W?=
 =?us-ascii?Q?NRHThJhMH9GoZZ9BL/A05xyXELg3+/rh+mzrqxN/3lD7nLroZ9zggmaNcQFm?=
 =?us-ascii?Q?qkgpqGNrFVZHOwNsqYewqv0uqMcZB08mXUmwh58TsYmRCt8Kpq+BNrNNfO8G?=
 =?us-ascii?Q?s5T2X48WPehgzQf1OedxKD5zVG4dgjwFVExhavjjcBNmJVTItTgsaEIA9qpV?=
 =?us-ascii?Q?Md839aynQztppUAdhiZFPSaA7sWsHM6EPojYWlUAs46s+prroYb6DLuDi2I3?=
 =?us-ascii?Q?+V2hwwDOZHGT6FjLzSMCQSiSC9NbLTMaP1+6jpUX06iKBY9FnSWYJTzIrU3d?=
 =?us-ascii?Q?oZeZKyVJNHBSudea0hWfn7MzRs2mA2LydyHNPVyPRNmbUCMFgkkER2j45DpQ?=
 =?us-ascii?Q?7A8NPDk36s6uMQJvl3BVdvE1cdxPnNmnPv9qBIF9Og4jL5U4sQDzJSnd5IjB?=
 =?us-ascii?Q?BTdXpz3Vgl/Ci54j/Qc9QG1KVDOjbAN3rEnvniOI9InGnLqohjxZDMpIw7Gc?=
 =?us-ascii?Q?ghu+wPmC77q8jy9Jb6wC77TC?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee7b70e3-72a5-4b62-d09a-08d9774aa6cf
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:16.1440
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YjwS865iMCRA/oVwZvs2IISiHcHezZU82v6j7QG/m6iaEuKy7IcFHRMluTccv+5uvagWVvnNE5hJr52DnuH1RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6028
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PLLs used on i.MX8ULP is mostly the same as on i.MX7ULP,
except the PLL register offset is changed. Change the PLLv4
driver for code reuse on i.MX7ULP and i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v3 changes: no
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
index e144f983fd8c..3f518559b8f9 100644
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

