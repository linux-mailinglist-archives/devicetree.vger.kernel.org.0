Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 398BA40A6CC
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240127AbhINGmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:40 -0400
Received: from mail-vi1eur05on2067.outbound.protection.outlook.com ([40.107.21.67]:25056
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S240243AbhINGmj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:39 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UzuP8tmiZZ0xn6wHZHq46fZCaJ2bhmEEdZrLrWvT0XrxzpMBS5hV4CD/9on2UvBnltEb6FHDNEb+JJWXNxaDlyXuACAna1kuFKPRzOd7AsKXilD/s2Kd7nuZu5rqXTrvzFUE74Sqmj594K5tsTPKnUzzPyml5UPMJqlJhMn4Gf6d31Hp4p0gWBnlWBCY9FU97cWX2YZOStZGWUfNR3cc+C08nMRA5SzCBDfX4dAT0f+6wkyqlrHvOEQKzMb88yB3R7SiE0BlHvchS+WPq6prwxGb80sCA4plpgAAg+oPDnGHDtHZ1jbr+e0Jz4GUSRjKrdT7dvGSR2gzDZktGClQaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=KYf+JSNGL40wG181B8oHFyJKZebSuwNVaaU8fUNAvsY=;
 b=Heynsi1F+rQoJUIv/6WHbAxHMjiNeutiiA1EcXUYBGQfvJ9rIYSEosQA5VRlgk/ggqtpINEW4N3XCN7cNvx6TVAJGgV3dZkPa0gbqHzKIhodG5FKy7OaPddRoK04iehwZKhoNc/4luduqh6/cHHAa81Gea5LBv2q2n0uf9frzOIaHyTNZ+0qFBAKvlcDw2qV4TyoSdL7pFlGvvQVr+JDhu650pBbhDsQY1xUXVa/F3Snc6zpSQqfAGSB3sCMEdIjeMmfOLS6h6OqHRuz8PevMpmVGn+2wQ4OC5W55UWJYPu34fKO8grqqb9XrY2rQfTmrW87hGsVQ455xj4Sne8p9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KYf+JSNGL40wG181B8oHFyJKZebSuwNVaaU8fUNAvsY=;
 b=NQYZHOa5f0ZUNTkmPHsH+YJOstyF7WqG0x5rLb1+Gztxt23sZBlJ/BHatGboLHscBi6UOC+FINmcA+BgOSh4nT6ikT4nOrzdsIbL28KGrtvrnql9/8uJiOSUhQV6I7Obe5WJdvwmpYr7L6a2D+gFsmwtgRTILuv+6ZJc9KZ9RK4=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4763.eurprd04.prod.outlook.com (2603:10a6:10:1c::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 14 Sep
 2021 06:41:20 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:20 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 3/9] clk: imx: Update the compsite driver to support imx8ulp
Date:   Tue, 14 Sep 2021 14:52:02 +0800
Message-Id: <20210914065208.3582128-4-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 600b264d-8374-48d1-63d7-08d9774aa91f
X-MS-TrafficTypeDiagnostic: DB7PR04MB4763:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB47631343B1C127C02DE859AB87DA9@DB7PR04MB4763.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7/7nW4pDu6s3+d2bF0+9oR4VOpHMl3fhxSALH7qN5UIlcesH8fnGPBNxtH07Q3F2ewWfwZPB4F4UGnsXJh217eWJjLGW2Tsp6mdLCVQK3lC9xpldTQDg1OC5h+G3tjAEY8REK2L865MVBySCe/Tj8FBRMThjU17Jh7lvK/VuoJCWvhffAYEDBCVFXySJPthmt4yCAyUMuYYogVBpdQ2oWNmhwo7+uCAM0XazzP5WF5oj2SgLQJRRBmqSMTZCVhix/yJpWZawdf5VbhYkB4ijPdn/2l8TISi81FuRZeXxGW6CrAWLlr3OXoFRx5a92ypxp7ANwu6mWmKaPOocEqjifPxvxg4a3v00ZIQnIS8d6MCooXvZcG05u8TQ79m2GWMwzG/G1vEkWyA6sinUxoLB+cGV08UJDluYMQJySDup4kOP26C2pMY3mcwWum9N24Uvfnsmj8AulHVqv4jMbaP9PphSc64uYWQxCTvGUVdtVpNor3DuXW96jb8U3RF2v7vMslWmQG6z9TbrfxmT4wyGGaVY3+wdawsQLyC+bkD54rRh8Y1DB6v9Ru9GYhUmr8EghvqCs8SsqHYUn3uy/51ybMnYGpP16f25DGJEVJQLZcumV9S8uzbdya4Mwdvj3ClDKBHs0Ay7nsEgHyOkFJKUa4+E6O5enwhFPe4QfysF1YPLxn6bqoNZPp/Q3UoFJTROOnTmXWuQvxA6JsaQPnY53MqUWJyyFCy5Zn/YgByxnQ0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(136003)(396003)(39850400004)(5660300002)(6486002)(15650500001)(66476007)(36756003)(83380400001)(66556008)(86362001)(2906002)(316002)(66946007)(1076003)(8676002)(478600001)(8936002)(2616005)(52116002)(956004)(4326008)(26005)(6506007)(6666004)(6512007)(38350700002)(186003)(38100700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EVnpNxbznZYgkyy3kK9HLS0Wbm4ixiBsloR+ymIJwOrWvYQvd1ZFbeQCKqdq?=
 =?us-ascii?Q?bEHwSTKYp1Oo+OvfienVXry0Lr68EYRwwudCVe+YgRR/8xro/AJL4fwDqxMC?=
 =?us-ascii?Q?9PSmE+bsJWAcUG8PwU8dCwP4TrQRKFeKag1Aym8PIYxeGnjCipMxXFCAJ9Kr?=
 =?us-ascii?Q?5wblHHNi0U4V1LyBVI3Bgf5ViBhhA+rUMDnKPLFYrLGAEvynMCRfypRbKn+d?=
 =?us-ascii?Q?sSqYkputU+7xLiMA5/F7/6O4t348nUDeM3tQLKcAt/DGXLonTSZS74y6HunO?=
 =?us-ascii?Q?hTotDB0ytO5agKJL3w020cLIMdwZFX7eh0Xw6yDVjiRttmH3u/11xmH/il2S?=
 =?us-ascii?Q?8Xwddd9Q2aO2JclJnXRTMLQTZWSlKTBysv7iOeafog3ZnAKeNJiMpdkLAPsO?=
 =?us-ascii?Q?hjJnfADTNPcbgootB61NTUcMUkyz8gur0XB0KbZPOPxKgFnrsDVne90Obqc2?=
 =?us-ascii?Q?W/zRXMuWr4G9puqW+wvw2JS823v9aZetIvv1jcm6WT6Hva2jiOeONeXkeGBP?=
 =?us-ascii?Q?sGeDtM3qhj8YvQrvOE5BuEXODQQ8SyKUdOLGw9FwlMNTiKwBbKsf3pz7Fl2+?=
 =?us-ascii?Q?WHcoEbu8hnbHQ4Rx+Nup2/H9zjDW7t9OkhmPLGFr09MF3OG1Q+NY9By6a1NH?=
 =?us-ascii?Q?CvMwqOKu4cJdl4ijQMoHsx65LAme+bTnf20yeTDtZIcJLXSWjX2ZvBpAK+MA?=
 =?us-ascii?Q?+A+3+ybIlU7m7qyqmRMn1zplfkaF+SOzG3zBTfoq0FTt0Mhg028qDEeQTowv?=
 =?us-ascii?Q?H9190eiadgGn8M3IwNw2lHkIcDTbl2Jlmf6g3mlNSSFSOsLN7q/+Uht8Ah9/?=
 =?us-ascii?Q?7bA88uhqhwpNw4YloEqIWtxIbd5oonG87mEOi8JAIVEoH7NyttZPv2b2GqEe?=
 =?us-ascii?Q?2ORGWTPwY7/hQcUU+890m01XkHioY7gZ3nNlcXYQ2qApfATrN5VEhEPUF1po?=
 =?us-ascii?Q?Ao5Adib4OvmxyoZ/P5Y+g13dyfOo+e8P80Bg+Rs4KiEm1k+5nQfT54A8WKbx?=
 =?us-ascii?Q?vQ1FSxsxH8nIwMu7JX0Cnc4b5thupQfhSHeN9hgcO3SrVNPEBiLSpPjjndEq?=
 =?us-ascii?Q?+JCojaZGRrKnln2hxn726vVwDz6gX95vnaUzJK+Ncc+fMlzF3O5XoBkma1MS?=
 =?us-ascii?Q?t8llOH7KAUt1J0e7AmSzyLBkfAvsz1jCgzDwE7c+8+O/uzXJgVXfdJUidBQ2?=
 =?us-ascii?Q?xU3sjuDOmD3A7sSyG/SFDNujgMTnNt3MfmUP0Sc0lRd+5mno6uBYo/9Pr3ZN?=
 =?us-ascii?Q?FDoJwl2bt4v8EptpYB5HRd4+rIpLzz7yqTdpm5/Uf9IzF507UFwYDp4P9uhC?=
 =?us-ascii?Q?+oploqENXhrOtxJCvDUmFfMj?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 600b264d-8374-48d1-63d7-08d9774aa91f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:20.0060
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xpGAByQvONAI4qIgigczelQUu9s4659iGBWKV9PbBmuoslokwlNIjLuXCfNG0vS1SOF8SN9akyazZ7du647iZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4763
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On i.MX8ULP, some peripherals have a sw_rst control resides
in the per device PCC clock control register, all others are
same as i.MX7ULP, so update the 7ulp clock composite driver to
support i.MX8ULP to maxmimize the code reuse.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v3 changs: no
---
 drivers/clk/imx/clk-composite-7ulp.c | 61 ++++++++++++++++++++++++++--
 drivers/clk/imx/clk.h                |  6 +++
 2 files changed, 64 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index d85ba78abbb1..50ed383320bf 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -23,11 +23,50 @@
 #define PCG_PCD_WIDTH	3
 #define PCG_PCD_MASK	0x7
 
-struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
+#define SW_RST		BIT(28)
+
+static int pcc_gate_enable(struct clk_hw *hw)
+{
+	struct clk_gate *gate = to_clk_gate(hw);
+	u32 val;
+	int ret;
+
+	ret = clk_gate_ops.enable(hw);
+	if (ret)
+		return ret;
+
+	/*
+	 * release the sw reset for peripherals associated with
+	 * with this pcc clock.
+	 */
+	val = readl(gate->reg);
+	val |= SW_RST;
+	writel(val, gate->reg);
+
+	return 0;
+}
+
+static void pcc_gate_disable(struct clk_hw *hw)
+{
+	clk_gate_ops.disable(hw);
+}
+
+static int pcc_gate_is_enabled(struct clk_hw *hw)
+{
+	return clk_gate_ops.is_enabled(hw);
+}
+
+static const struct clk_ops pcc_gate_ops = {
+	.enable = pcc_gate_enable,
+	.disable = pcc_gate_disable,
+	.is_enabled = pcc_gate_is_enabled,
+};
+
+static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 				     const char * const *parent_names,
 				     int num_parents, bool mux_present,
 				     bool rate_present, bool gate_present,
-				     void __iomem *reg)
+				     void __iomem *reg, bool has_swrst)
 {
 	struct clk_hw *mux_hw = NULL, *fd_hw = NULL, *gate_hw = NULL;
 	struct clk_fractional_divider *fd = NULL;
@@ -77,7 +116,7 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
 				       mux_hw, &clk_mux_ops, fd_hw,
 				       &clk_fractional_divider_ops, gate_hw,
-				       &clk_gate_ops, CLK_SET_RATE_GATE |
+				       has_swrst ? &pcc_gate_ops : &clk_gate_ops, CLK_SET_RATE_GATE |
 				       CLK_SET_PARENT_GATE);
 	if (IS_ERR(hw)) {
 		kfree(mux);
@@ -87,3 +126,19 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
 
 	return hw;
 }
+
+struct clk_hw *imx7ulp_clk_hw_composite(const char *name, const char * const *parent_names,
+				int num_parents, bool mux_present, bool rate_present,
+				bool gate_present, void __iomem *reg)
+{
+	return imx_ulp_clk_hw_composite(name, parent_names, num_parents, mux_present, rate_present,
+					gate_present, reg, false);
+}
+
+struct clk_hw *imx8ulp_clk_hw_composite(const char *name, const char * const *parent_names,
+				int num_parents, bool mux_present, bool rate_present,
+				bool gate_present, void __iomem *reg, bool has_swrst)
+{
+	return imx_ulp_clk_hw_composite(name, parent_names, num_parents, mux_present, rate_present,
+					gate_present, reg, has_swrst);
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 3f518559b8f9..a9bcfee7a75b 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -237,6 +237,12 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
 				     bool rate_present, bool gate_present,
 				     void __iomem *reg);
 
+struct clk_hw *imx8ulp_clk_hw_composite(const char *name,
+				     const char * const *parent_names,
+				     int num_parents, bool mux_present,
+				     bool rate_present, bool gate_present,
+				     void __iomem *reg, bool has_swrst);
+
 struct clk_hw *imx_clk_hw_fixup_divider(const char *name, const char *parent,
 				  void __iomem *reg, u8 shift, u8 width,
 				  void (*fixup)(u32 *val));
-- 
2.26.2

