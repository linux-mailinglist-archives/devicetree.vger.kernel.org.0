Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E42F140A6D0
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240243AbhINGmz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:55 -0400
Received: from mail-db8eur05on2084.outbound.protection.outlook.com ([40.107.20.84]:58337
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239015AbhINGmz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ageVDAycJ0/H51T2XDdFbyguXJrHzpPOUo5cTmI4rnVgeahtxW5R533ItF8aPPvCJUNcJdq9rpo0vQzxMx3m7Gi00atuX7MKhSA+vEIj9hwrGqMRabkQTpAh15X1mL1QxiOQDDoydRhcqJ5JaC8XkhSZXDeKf7wBMyMC3pu/qp6t2P/WlRAlvAizvHdIZK6FUinf9i/5ZKciPddBXfHm0DjAHHGPWv58zRMUEJeEANSZgIAlerVRvFDr5WR+2qbCePBzFuBXoZ9qfDj3R6aqAgzgINszV/wMsLJaGS9x/9imX1ClOd0rvKzuLGxFJBwpb8HPfq4zglfJxzMk0I4ejg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=zyhG5vLu9L9K4v+CrCDeVCIkxJSIMM/FY0IVpJO1Ajg=;
 b=ZUECvMpLQeFKsAdBKyjMTHRy6eAlg9zW8duy2B/Ex3zRqJSsQw5B0DbYv1mUecgNz0aEJLw7yNBW+aUxE9E14Cs/Wkzf2sfSC+b8LPHrrqD5LNb7077rjspo9co+/RfHuG4aGEsLbfeDp73cIu0b3V3ojzJEYxBVjVAcvMGSrAk+XeNhxnv+MEcj/ysBoXE4wsbQOOBiNfyc+WF3AgLtLUeKp3LU8MOuoT6Ub152aDb7H8MCF2302VzJQqembk8BHqzHck6qwTs36zBHL/xTXnsV8xgAls00RFdKgeUOmEe4DNrYOv/xEVSwqD/bNoOvG0EbGdYQa4Rjgul/VtV80g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zyhG5vLu9L9K4v+CrCDeVCIkxJSIMM/FY0IVpJO1Ajg=;
 b=RBPfDK6BKmFa+LgudBHJNZvyFY/ZnssCLzodHAjzDLHc68U19+Ny1A52ilEWW1dtPZgY7au1QLwkXfjVDvj0st/V/stXsnABFKx4LZGhNDEwNabzjMc18jXqVm1TJ7OegRf0ZOwy0Lk1kbo6pDl73Rdxqk3jCvDeYHH3ioeFUng=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB9PR04MB8316.eurprd04.prod.outlook.com (2603:10a6:10:246::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Tue, 14 Sep
 2021 06:41:36 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:36 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 7/9] clk: imx: Update the pfdv2 for 8ulp specific support
Date:   Tue, 14 Sep 2021 14:52:06 +0800
Message-Id: <20210914065208.3582128-8-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c674fbe-6543-4914-0baa-08d9774ab2c1
X-MS-TrafficTypeDiagnostic: DB9PR04MB8316:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR04MB831646027C5FED030E7C01C387DA9@DB9PR04MB8316.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cl2aU4iBomV/OAL3HIRgSs9z3fdNxHxGxRPYRp3ObJn5I2tQsChaGiwIu6vbo7PUYZ/sV0RCKGmsVduiI9hXDUziKaTP2V6YkmWlFoHXtgCNud8daDPqudf4d8+rewcBTk7qWIV5QuNTx37iN++i4tmvQWQUveXP0u2MG1NS53L9a3umfZjlelLSfZUkqg3m/TkiA+HfvMsPvnGjp9X5PYdtnMyJdNjxR9EfnnF0JZI5Iayx7DXVBQJby6dE8MPdgzvMEiZYrT/qdG9zHvcKwvhSv42CDTZTJhnzo4bwpkn8iwV5R03Big7V9RC6aa3VHfoqKw8jYrvj/f7zOvhFM1c6SI0mKamIdOdAb1135HQWNTm5b3VsTCfyxpPpXCPLM/q8wtfwjac1fYuhWZ8rzaMNa/OjO6jmvZcxajmWVoF5TV7+8VClorUo/3wPjjoAALvHuIsvfPpRYmNNoAFJs2CVOuqjcZ0ikR1FncgY0n2GZFl9WfS3WriQuLL3GdcGbCdgrAYn9HOEI8yVsz4umJI2ucsfUxqopikfSI6UajvZLTz9G571HG8jlpiCHqW1eraJFXtsj0e4aG51LhvkDnEnWSM/uGyOeH7tI5f2B3vpY/nB+yquJmLuRVfjK4he0MnDIVl70l4+dwevaDB87Sui1ajyHS6PK7FHQcOs/sPVojfBGhwecmNZEZeP0YQa1KtBch8YvEmTD6+wD/BmTg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(346002)(136003)(376002)(396003)(5660300002)(83380400001)(86362001)(6666004)(6506007)(4326008)(2616005)(316002)(52116002)(956004)(66946007)(66476007)(66556008)(478600001)(15650500001)(6486002)(36756003)(38350700002)(38100700002)(26005)(6512007)(2906002)(186003)(1076003)(8676002)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KtXU0lnnkd6VAHIlFirjWxQ8f37JNhp5dj4RZQcTbzYyN++u4O6i/OuM38zh?=
 =?us-ascii?Q?F0GKK7WarO1GRVq+XuieHOrB2RuBnCh0qMmQ5+mGNa9RmcGtKmG5a4y20l/H?=
 =?us-ascii?Q?OyXW/a7mfxDTZjZYEnFDJvxA5dSowelKrmIo3HwqHZRp5xdR0gj7oPNnqxNA?=
 =?us-ascii?Q?oXTErm6trZIdFaf5ewqPX/RKpxjlt4RmbtTYEx4u6BO3bOzbwp3Jbtjam2a/?=
 =?us-ascii?Q?sJGGoUEHoCQzoDr4p9FQvehJXr7XDKTeKXO21H5mmtdKdYEuWiBR2jDsmtn4?=
 =?us-ascii?Q?4g1ahDMhYCVGPx2rmIudIosfNX3kLrDgZ6cYKDEx6HhI9ex2+/jd9oxfzPnV?=
 =?us-ascii?Q?XLM7XdtnOL4HeaXgoKnZHHbjiGjk66UuyHxL3C4FFo4YQAKcl3tJEzri2XCp?=
 =?us-ascii?Q?ROJFhdA4ughCzxtHdLyRxGha5d2l4X0MbaaB/DQfCBmVG+K3slPZ8c4foicr?=
 =?us-ascii?Q?/VCC2yHESeMyiGVsrdqnyRyXsOa+7tJAPTevjkSm65tM7JLfdpMQleLA6QD7?=
 =?us-ascii?Q?xS38+4fZaIq8Sx1MQ6K8KGFQsiHbgsBQr61rCLuk7HHv5rLVwnseKrB07rUz?=
 =?us-ascii?Q?5xYvWSQ429OttE7mj4kdAUx/qN6yjxlLmU0pLBbSvKo1yWIh68HtSNU7GvAQ?=
 =?us-ascii?Q?0Rh/d+blFz95wRqwUi612tW1lSeFT88ryDRuVL+Je0vTloEPbqQavWc/xF9t?=
 =?us-ascii?Q?BtpP/gJd18Eijf9qZ5STedvEUo7FEJqksHbfeY6Gqqcu8sXIdIPaQrwQylLZ?=
 =?us-ascii?Q?vMG+1uDzGj/7eSfqwa0QLS1OwVmdfWQsNlXoXgiEBqO67N/F0YS7J7xM5fl4?=
 =?us-ascii?Q?qs5j5hxFpA2srcTlNlJ0TQukCzyKkzIU6xqx8/+ABtW8w7MueCjppjYxp5mk?=
 =?us-ascii?Q?4GpGIlC4QqFl5rxFfk8sOVZVsk+NLe2y+mJpskmCvpn4n/fjt3Mn9pJFndKr?=
 =?us-ascii?Q?qNpUG6c8ttPQqmVXtdPoV3NC/69WkRhGWntPVk29l10LYGTfWCfUJtWuHF6I?=
 =?us-ascii?Q?F5nzg7bsVfMU3QmZ5YIsm4ZazfBqlMa+EuJW2SCBhQwrXgbTuvG0lJUaUhl6?=
 =?us-ascii?Q?yP5eMbQRwMPE+07aTPNV5oQ/ptPMxGVYhifbRjxRTI4UHMbRnAAEflmricaw?=
 =?us-ascii?Q?VQCKTP7B8/AUFIFA2c6lov5CvIJuQrfCU9M/zdUvTy0qqEs6dMjjkoWNF2Aq?=
 =?us-ascii?Q?a9lHKqQy01FY//QePJS2mkSCjGm4GCQUCeKdzBFBIGoaVTjGXo+WylP/sgGR?=
 =?us-ascii?Q?WTDmUGwJMVNSLINfXDNtyUP9MkRH74KC2p9E5XpK0u6X3CkbiMs19FiXXVy3?=
 =?us-ascii?Q?VqFNsE2Fdn9ArXqTyOanE8Hb?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c674fbe-6543-4914-0baa-08d9774ab2c1
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:36.1948
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P9bBFqzIzSoOF6jCjoD5xDm0r7Irc5fWoL9fi+Sv6H2GVR9M+hXgJ+cQRVD5fouAFCvd3zGXQWh67bO2LLpT9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8316
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On i.MX8ULP, the 'CLK_SET_RATE_PARENT' flag should NOT be
set and according to the laest RM, the PFD divider value range
seems will be changed in the future, so update the pfdv2 to
include the specific support for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v3 changs: no
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
index a9bcfee7a75b..45be7ba23fae 100644
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

