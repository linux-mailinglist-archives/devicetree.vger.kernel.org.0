Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E77BF4CCF7D
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:03:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbiCDIDv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:03:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230046AbiCDIDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:03:51 -0500
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (mail-eopbgr10070.outbound.protection.outlook.com [40.107.1.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A3E35F8C5
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:03:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XML97dviORVwPKwVZT2/MiJuPpIyleEQv2bUyQKQa5XD2y0oZhHDxqWtxY75RRGfTXIMmzh0vMH/TCs5zOSlb/VAVrtk2UYDFEDdtQ1uwzWjh4fG4VwvVKzzlJzU8UZdPiXrMwaZ2hA4k9KOnJjinH7pxmABM78vnnh8KvYhkLnPZXCnwfpdpcT+52rIll+Nw7PZqzytoamx0xYImR9YFkk9rgM1xAvHElXFcP+qWD1BuIGfdLxQ8y++WBJmRIlhyuVAQT4DWXtrpbZTr3IqlVNRRdTVGMupA4KHkX7jbrv0p0ZDF81unkp/1EUlOziIHGo3cdngFQ3WlPScZ+3QZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XLHZhNSIR8g30gdSwcw67HLmNfyLl9qqVM54otelw6U=;
 b=GsZYmXEIOpkNXKMnQdvETyfajThgSpJMoet1uCo1ldTIsQ4xqNH0JN5n6Too2CxbdXDZXEujFxdTlPaehRifg95ooGcus/jxOFyTy1wzjGLDBS/fun/Hj+ccnsT8FTJfJLDMS31hAovnqHsSFemOKU4rlS5wzHo+fDDgd7120e4A88EqwJaNgNY2hQ1u20b0dZAHuhm8tPpJzbkbia7LrT9CcAXz5QFUOdFFLEiEPretSopjvjOSCyILWxK96VLYGhwDX1cMu09+6gKA+sqa34gKGYLG7NCmWivAatkoZCtOuWEvjAYt9UlPmgLJm7ieBxk//1hkWTPbjhPDqFXrTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XLHZhNSIR8g30gdSwcw67HLmNfyLl9qqVM54otelw6U=;
 b=g5YV91pfsmypF8hdZvLiqghS6WdQuR7vFaqhut8vB+GkCMp+HXFynJyCPPkgUAbS+z10KRLjMmoii1ogdAZpR+TKM38RFsmaZGUz8fovDzJ5IhULZYF73BMtEqkBoeAGY5h6QivMdD1Ur0+7AkOSrT004mp7fXeGHKIcrRAGOAg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DU0PR04MB9276.eurprd04.prod.outlook.com (2603:10a6:10:357::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Fri, 4 Mar
 2022 08:03:00 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::6117:74ed:7550:b3b3]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::6117:74ed:7550:b3b3%6]) with mapi id 15.20.5038.016; Fri, 4 Mar 2022
 08:03:00 +0000
From:   Liu Ying <victor.liu@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH] arm64: dts: imx8qm: Correct SCU clock controller's compatible property
Date:   Fri,  4 Mar 2022 16:04:43 +0800
Message-Id: <20220304080443.1733924-1-victor.liu@nxp.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0062.apcprd02.prod.outlook.com
 (2603:1096:4:54::26) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc7fadf3-c6d6-4169-9c25-08d9fdb56659
X-MS-TrafficTypeDiagnostic: DU0PR04MB9276:EE_
X-Microsoft-Antispam-PRVS: <DU0PR04MB927647B64A01B1CDA890EDBE98059@DU0PR04MB9276.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aX6cJ3jBCWQvbCXxhNAWae9VWD7Hf1nAhvsAIclftkSQeZhJ3ao5GvIRw8eEEXeZrZjgQeEe+bIOZBYZdCuPhFmq2aON+ImSLbyi0G2qKl3musN3sDSpdT9Y81RtRkNCewsNnYahsGQ1KVfe8ufVsG6712oahQs/d2EQqyRRylbHn3cA2ZzrHW/08lkETSUfmx8rnXr1OydVsGvycCQlqRMENN7TN5b5VuzBKquh9bSQ9LGSCe3bIu46QjtQ+TMSjIc2pN6qw/ihpf3JbR/dHiM00tAKfBgg67sLtbP3U9M8xkafEpOq54WI0rEOl+quo2lpeDDHoCjFqvMHgaO6aAmxd6BQJAVPEi2zMnqaYSB5QEdgL+XsVOSlRQqL7u0d4PbOGurFCge7kXiBHAtEQBibEikAxoFKh1A6vpS20EGpeHcwKIDGtu2PPqxCUu7tvGtNqEpc7iftPm2y6x4KOwF+k9Y94FU0bwGRJeMf2aj1p0m6Dsybsr5YskJFW1sQb+xJD3qJexjzbfB6sRJn3aIF5MLsWUUG1TcdDzyZccphiY6A2rqhCguuhhGk8nGA2S8LVccj4IXozPOPop2YFOXyzTT0LyTb1GDy2/KZE2F/v9pPi8izaJiGfS9yVJmVJKBY3e9VGtpBDURS+GM6YgqdW6gDy5cyWlHfbIykwPLx2BxxSlegpCbw+4j6+nBg9jELcA/SRYjnJ02p/6XHvOeIDGxCQaNXhYP80RbtTcU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(5660300002)(1076003)(38100700002)(38350700002)(2616005)(83380400001)(36756003)(54906003)(6512007)(2906002)(6506007)(8936002)(52116002)(86362001)(6666004)(8676002)(66476007)(4326008)(66556008)(498600001)(66946007)(26005)(6486002)(186003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Si1rCKHsGJPxLYqtbDEaFi8HPIPAT1263TQn5nJzdqsA/tqamvjIIJyukxnW?=
 =?us-ascii?Q?yhUO/koedxfkMwFagsRlt1NbWvFSxfKqeRT43eKttkLCccK7cbWTGgRUg4oi?=
 =?us-ascii?Q?S7lNdq72JouCEfdkk5nmdOenaXeoAObtMkIXNV9ggvp0ZKXB2fAh78ucl0+d?=
 =?us-ascii?Q?U6P3/2a31gH6pXwOEtw1916XeRAZQnmAg2Lvh3fwPhlfF8CfYqwHbGajKyn2?=
 =?us-ascii?Q?AeSq9zmIcfpDhodiWRSOKDDLFNSNwwG0Ye2Ua8KfrC5e+312M+EHEKWI/lez?=
 =?us-ascii?Q?Sur0DTAv3O1HBqIcAGHgNjxBMcltgXCxSZowPB1wN+mS0Wj7BWTyhSisr6wk?=
 =?us-ascii?Q?3u/dogxlUpi6eGZ1cS5/VLXYCOjTohH7yQgxUKDbDR7FdbLXcQBidhp4SU2W?=
 =?us-ascii?Q?7FGUyAQ+hwZ+t3WmlT0vL5/0qPFIxpsUqBnoEQ0XzS3Gbws6OjJneQym8b8l?=
 =?us-ascii?Q?4eO2ltA1u/rgtaTp0knEto6XDWYoqMx85vj/ImwmsZfFIn+z74ChJUJow+ao?=
 =?us-ascii?Q?P7ZIPKfeDjGLhoXMIpeiClv6uewY1Whz6QgToDUcANXjHzjhPm9Nk8gqnWWR?=
 =?us-ascii?Q?5KR7GLYlCCB0s25U6KNgGBQfotJwjfkrTNIB4jKu7X6TzeGQHidggTZx5gw7?=
 =?us-ascii?Q?noqblVUug7hNoTLoMoQW3MgeW/iLOYgMQS0zY2GfqAaQ+59WNeoEydgXyOiH?=
 =?us-ascii?Q?+Wj5aE6ydB3Z27lAHh9lkUoVIuxtiRdHLWTUSpXQmLP+4PVs5pb4rnbBD6rS?=
 =?us-ascii?Q?WxICrW/OEmyT2eriAjrh6ImZZzELdTtldW4WAbsJStU1bmEc698G+1vnTtqj?=
 =?us-ascii?Q?ip0iiVZXmwr7lcUXg65YDpN8PkAHTnMQaAwYzpgiXaX4MMMq/gnCdoWRIFwd?=
 =?us-ascii?Q?Y73b8u4xgtD7bmrQO8u+jzTWP8GpGIx5uc8URi7R0XIMcQ0nFZ5VJpBOWr/t?=
 =?us-ascii?Q?hx1PEEawSaxNT52QNUSt+8OF1fCgGKiKDMVWZlTawMNxNFLgpd2LIeecYZJT?=
 =?us-ascii?Q?4+G5lA5bv9mda7orD/V2Szda/XlrOqQ4DFesZUceYYJ4NtEMWMlDiPXyKdQT?=
 =?us-ascii?Q?CHWW0nR2uLzTe3nS6JYJzGqjd8/7nZaZcoUWpXpMwg8qA0dmWiJ6SxAPvwWn?=
 =?us-ascii?Q?VU9YziN0y2sN4oL5uKFzcvw3yhV5s0pf1F15st0fgRHizNVLStDFs+iyStvG?=
 =?us-ascii?Q?35W/MaqtzuXugb16ELVEWiJznt9OH3E7Z8OK3vpOTQxupkuVsBHDEuHBBPmq?=
 =?us-ascii?Q?kF0uInZkWP/Q7Gtg3aBZ+XSLbkLZcevLxE8uI/nLdq48d4pwBokwymzwEzEa?=
 =?us-ascii?Q?OTXEbd8AV/gVQsoaM6kI9JQQdBz+7LrouBzakiFN4m28fTku/w2CZ7YwNur7?=
 =?us-ascii?Q?Y4VxBTxrP5eGlv/jeu/q1H3cO2OeUujTQjBipHXBJ0UC9/XuVM01raCDqyDR?=
 =?us-ascii?Q?JM04RQLH4MOyvnIp9zyuqZPFMoMSWTp0XTulbfrKXYNOV/qyHmLk0ekNp7qT?=
 =?us-ascii?Q?A/h3VlSAgyxRXtyopvrxmzR6dnobfTP33shyhWB9tF1PdRewhIy2lflw+/7u?=
 =?us-ascii?Q?XGF1til6triUt3lFj7c7NANVwcppHaV+/9/aI2PIVcNb+Gvw10xKxPOux/p6?=
 =?us-ascii?Q?dSa9oT68T+1KxZ95oELbLvQ=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc7fadf3-c6d6-4169-9c25-08d9fdb56659
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2022 08:02:59.9879
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nHG6YFlytkU428BWgrTjLhXZHsSjWbRkU+hl36Ds8/rKCPdDS+M5gcv1ciTGvRU+Yy7jmPtTnZrSwL7pCusUjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9276
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fsl,scu.txt dt-binding documentation explicitly mentions
that the compatible string should be either "fsl,imx8qm-clock"
or "fsl,imx8qxp-clock", followed by "fsl,scu-clk".  Also, i.MX8qm
SCU clocks and i.MX8qxp SCU clocks are really not the same, so
we have to set the compatible property according to SoC name.
Let's correct the i.MX8qm clock controller's compatible property
from
"fsl,imx8qxp-clk", "fsl,scu-clk"
to
"fsl,imx8qm-clk", "fsl,scu-clk" .

Fixes: f2180be18a63 ("arm64: dts: imx: add imx8qm common dts file")
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
index be8c76a0554c..4f767012f1f5 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -196,7 +196,7 @@ pd: imx8qx-pd {
 		};
 
 		clk: clock-controller {
-			compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
+			compatible = "fsl,imx8qm-clk", "fsl,scu-clk";
 			#clock-cells = <2>;
 		};
 
-- 
2.25.1

