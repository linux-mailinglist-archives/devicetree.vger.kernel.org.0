Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 910163E5359
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237191AbhHJGSe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:34 -0400
Received: from mail-eopbgr150055.outbound.protection.outlook.com ([40.107.15.55]:42311
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S237003AbhHJGSc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:32 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjW1VQYYIsqpY6ZJ76qhAvSgKNFxz/uOTs367Gxh3yxaY6YJd0Hzt40SF9IN1vmtZi+OlAAEVzCiGZnsXrnhKd5UO12/AvLbn4j96I3hfth/3pf9PmeN0PTcJM0wH00MJkJN86Zs7RqSfVcVFwwl1XDLSGwjyCTuL9fetJsksaDSKobPkp/JEJWES7IGTgO23c7cC+Era2lrE9O2Xhw1o76RZCqH7V9XU6AQBs4eLoXc67BWS/cMGW3s9FsuM0haIH9HuD5IYWyeN0moDS/WmwaUVKUf/xSoEw8TYRDmVGi9vuUKdBC01oGFull8hrkGsFerO4hlEXJrcpHiWBGqUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=If69pyqgSKhC1M8avqS/kSgdLe38tPLaUF9V82PHG3c=;
 b=NkhydNzAeIZlweBI71Qi9x8PgAA98bp0ub6PiboHuNK2vPPoKhCOoTTPljo3iQzknpHeeBCzrsJ0HocMS2WIrhBvy39kMHcy1S8ET7FIBJBA6Hna/Ot78FOrYrJ4XtYBqRMf9qPKZmojSwkhBsvkOPRSRwUdA6Q/SXchOzEyYAQ/aQrzjaQU7w1kUGLftyO69D9p22ttwCQEeyImQ64B6lHj5zTkGh7ZQetshSrr80nYwrBe+vPcqSC0NcE+fZ6ec1g2sGRVnbIvMHc1gI+TlFMT4cwVC9c2VvCPCWDDoW2m8kuQ/4u0ZPd7KWh9pg1JOWwpfwaUzj5cRc7MJUWq4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=If69pyqgSKhC1M8avqS/kSgdLe38tPLaUF9V82PHG3c=;
 b=NCR1sv49mQVayQt5Nsf+0RDayM/BhnTK9vQX2b1vSeelvh5z/jXSa0L/x3uKBtfyQu5eSgGLFKJSGpIfqbWGZNfjZFnDHXyxX1txpt4QcZvqnE8AT+4NylgubAaVxJkfL9xTtuMPJjnW5hDrDrVxto6RBvBAzQyFrWpHr0gM7SI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 06:18:09 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:18:09 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 7/9] clk: imx: Update the pfdv2 for 8ulp specific support
Date:   Tue, 10 Aug 2021 14:28:18 +0800
Message-Id: <20210810062820.1062884-8-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:18:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 96ab626f-551c-49a4-0377-08d95bc69fb0
X-MS-TrafficTypeDiagnostic: DBBPR04MB7563:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB75638AF93B303CE07F8BB54587F79@DBBPR04MB7563.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t5URou8iPAAVNKxUvsOgnRNF9bEprprwFWZoQX8kYzHdBmF6ZVwdLpzHVtCs5OLP3dsrjcMAoI6Vdxyg1sPoDy8Api0XurqPs9EbVBkE3BgKQc+KHbUF2/0syw6h+1/jSCHAXtSWGJid6coE9L+kIpJmCMxDmIG4su2nRB3DFyJatftlW5LuP1NMIRndwSW77mpy7Zv0PVraC08HVYRqM9OgKTaxEtC9g9jYMMCtsXqwlrJtxG+ocMGMcCxst1uRQ1Vj5ZaUW18mOzhPmzyvnQIls9Z605k8yJ8yZ6+lLXBGtqAsTl2bZdHE4eVtp7CPzYkXVPUuXBSOHrprDI0XzQs8nPgr79+C/5yTvyqQupplZ6Vdzx6uRwIWv9AHKyRx0QucmB4L9Ed3jiyp7ZtukiDSGuE+gz08KrnIFaXTftrbU++cGqVoJ+mxIai/BXjEq38BJw88vOf7cSHxwLTiPa+/5DdopibMou5UBGwSsyTi1sBirZchhvE2Bkan+Y7DKD8lt9Db0FyXq42wdqZc30Pq/W1fpe/ID23d5toOxaFZUHAVtqg8ijxxVx4CXjJAAxrSSmw1HmrAZQcedlycAE6O/62dTWUtJU0apy92P9CRkR6lgWa0Ws15Q/BJJVOPWZLmOG321CP4PKFNxINT3pfet2FMRQ1JZETR+hCJekN0sl+cnrCrxpL6d/ab7otR4dQk067bOIegHS9ebpKjgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(66946007)(2906002)(52116002)(38100700002)(38350700002)(66556008)(66476007)(2616005)(956004)(4326008)(8676002)(15650500001)(36756003)(6486002)(1076003)(6506007)(6666004)(26005)(6512007)(8936002)(86362001)(83380400001)(316002)(5660300002)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LbDoXfBLAKLA/JscuHF1UT0foP4Nvl4d1FQgCdl17JY6PMjZohBcQIXIEWYO?=
 =?us-ascii?Q?N4AAuuhmpYd6JUHl7B40CSR12oFlFhrZX25gVyRXaE1cYi74GBKxtbLacgEa?=
 =?us-ascii?Q?N0Ef57eGEQ8yS/3jmqyHAeGlwtney49gR66ny/h5eEDDNxmukeBxYFOGuFh8?=
 =?us-ascii?Q?58A5WXcA9Y2R9Mh1uaEuM0gABiBK3T3AAZMmaVK5+DQ6z/dLJfbIBXNz6AuG?=
 =?us-ascii?Q?7kzWSZiN+6DRRfFabW6PuSRMz9fgDxUCqsheMnIH5P+TZUZiaMJx2iPj3lQy?=
 =?us-ascii?Q?/llEE+Wn2f2il5oRP+mNENtb8mELB4bNRkZOQ4fC55AwTEL6lihbVgY51Oeq?=
 =?us-ascii?Q?zFcnVXeUMnaKxJb/4TUnFGB8XjyHBE0pArBQCFsjanFPWGwNiH+4NGbunj4/?=
 =?us-ascii?Q?4/xmStDLbmRC9Vwb3IkSdCK9WCauGbhvXtXJkiutZgaUO4UhcNXpPtRfenee?=
 =?us-ascii?Q?vYYYkAsRdn1sEmZHiub8t0dY30OKdHVHHCGMwXHTUq1Bmng+5oV09J0s4nn0?=
 =?us-ascii?Q?jzKttuEwNkCHENj9PSdGh62mw9lPFL61Pyu3KBrWwmhmvonqmwRdF97VDxXq?=
 =?us-ascii?Q?z12qnVaeUJ6OCDAsDPt+Kgj57ohGUVOMi2Fe8Fy1vdMvZ9xtFdc0dBKFlymJ?=
 =?us-ascii?Q?HXVKxC26CaK5z8AZFUeWMLweiko4I646POTlBLE2UVauL2+jxTwnOnn3khVb?=
 =?us-ascii?Q?Vq34v+x9/YTd98Xm34k7BtGoGna/usygWDmJTcAiSvLmnPKWMNlvaa6aHrKI?=
 =?us-ascii?Q?WTFDSwJbUARh1fzUFcfG2ahDTIBc6lmhSWOlTzuVDc+mZMkZ5wL/HNBhTRKx?=
 =?us-ascii?Q?5WjXXopCedjKli8M3WDeX2rTmmfZB0YkXR89hfdMAE/RpPgPbAKcuv89vXXM?=
 =?us-ascii?Q?WO/w1JZ0l2qV8R7c66mzf6Llwn/v5yXtlSB7mQw4ugNZNBGO34C8xTkvb6d2?=
 =?us-ascii?Q?ue54pH3Z9uJ9dMnybkZO4nigtkLMd+1tJZWVG0MAM3RttVp7XHYOijSWoyk6?=
 =?us-ascii?Q?Zlr5ClHna3X6Nl6SyTbs/7XZURL4SBk/NBIMSmR0lmPgO2vQR/LOARoor/eg?=
 =?us-ascii?Q?OrcYFUmiv1TbxtM0zHdqjoY8eRAOmD47Uj1+9Ym1mkCiWAS7p0dKheYtmflE?=
 =?us-ascii?Q?GuJvP8t1VBO/HNxFU2uZvlp7YuQfHr/S8+5sfstuhpqH+vWrVSRzggVpl9dK?=
 =?us-ascii?Q?XSvI3Ln9blqAO7JisOu7mwTOaaAVkUsbMAzI9B6br76VGIaOUKU4CWAwy5xX?=
 =?us-ascii?Q?7WQh7Jbrqb5JbBOf9t6W3Ga4SBOweMdFPtPpIgD5C/zSiTI1OWtGhsINY+Jg?=
 =?us-ascii?Q?N7664zDrpXEKw92e7OVQiPay?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96ab626f-551c-49a4-0377-08d95bc69fb0
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:18:09.1983
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KuIcqiC7tOOWogjKjrsYiRQr6YY13QWau+y/NW/msoGybGrCcm4CNhkxEKB/kEPSOiG+4TyQomuzoXx3IVCJHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On i.MX8ULP, the 'CLK_SET_RATE_PARENT' flag should NOT be
set and according to the laest RM, the PFD divider value range
seems will be changed in the future, so update the pfdv2 to
include the specific support for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v2 changs: no
---
 drivers/clk/imx/clk-imx7ulp.c | 16 ++++++++--------
 drivers/clk/imx/clk-pfdv2.c   |  9 ++++++---
 drivers/clk/imx/clk.h         |  9 +++++++--
 3 files changed, 21 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index ba50d6db8097..b6e45e77ee39 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -82,16 +82,16 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	hws[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4(IMX_PLLV4_IMX7ULP, "spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
-	hws[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
-	hws[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
-	hws[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
-	hws[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
+	hws[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd0", "apll", base + 0x50c, 0);
+	hws[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd1", "apll", base + 0x50c, 1);
+	hws[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd2", "apll", base + 0x50c, 2);
+	hws[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd3", "apll", base + 0x50c, 3);
 
 	/* SPLL PFDs */
-	hws[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
-	hws[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
-	hws[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
-	hws[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
+	hws[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd0", "spll", base + 0x60C, 0);
+	hws[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd1", "spll", base + 0x60C, 1);
+	hws[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd2", "spll", base + 0x60C, 2);
+	hws[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd3", "spll", base + 0x60C, 3);
 
 	/* PLL Mux */
 	hws[IMX7ULP_CLK_APLL_PFD_SEL]	= imx_clk_hw_mux_flags("apll_pfd_sel", base + 0x508, 14, 2, apll_pfd_sels, ARRAY_SIZE(apll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index 9cba83521988..42505669cdfb 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -200,8 +200,8 @@ static const struct clk_ops clk_pfdv2_ops = {
 	.is_enabled     = clk_pfdv2_is_enabled,
 };
 
-struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
-			     void __iomem *reg, u8 idx)
+struct clk_hw *imx_clk_hw_pfdv2(enum imx_pfdv2_type type, const char *name,
+			     const char *parent_name, void __iomem *reg, u8 idx)
 {
 	struct clk_init_data init;
 	struct clk_pfdv2 *pfd;
@@ -223,7 +223,10 @@ struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 	init.ops = &clk_pfdv2_ops;
 	init.parent_names = &parent_name;
 	init.num_parents = 1;
-	init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT;
+	if (type == IMX_PFDV2_IMX7ULP)
+		init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT;
+	else
+		init.flags = CLK_SET_RATE_GATE;
 
 	pfd->hw.init = &init;
 
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 2acac152c4aa..76de2972d021 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -47,6 +47,11 @@ enum imx_pllv4_type {
 	IMX_PLLV4_IMX8ULP,
 };
 
+enum imx_pfdv2_type {
+	IMX_PFDV2_IMX7ULP,
+	IMX_PFDV2_IMX8ULP,
+};
+
 /* NOTE: Rate table should be kept sorted in descending order. */
 struct imx_pll14xx_rate_table {
 	unsigned int rate;
@@ -220,8 +225,8 @@ struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
 struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
 		void __iomem *reg, u8 idx);
 
-struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
-			     void __iomem *reg, u8 idx);
+struct clk_hw *imx_clk_hw_pfdv2(enum imx_pfdv2_type type, const char *name,
+	 const char *parent_name, void __iomem *reg, u8 idx);
 
 struct clk_hw *imx_clk_hw_busy_divider(const char *name, const char *parent_name,
 				 void __iomem *reg, u8 shift, u8 width,
-- 
2.26.2

