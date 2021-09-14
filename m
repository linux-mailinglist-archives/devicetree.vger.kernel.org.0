Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C48540A6CE
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240150AbhINGmr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:47 -0400
Received: from mail-am6eur05on2046.outbound.protection.outlook.com ([40.107.22.46]:4192
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S239015AbhINGmq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:46 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mbJNWecYl3HjToLhbdnKWFYomdpVNGkCrWncv2a92LVbx0jQLVUwLo3qznvUve3pgAF0SrPLLvGK4KTydu9crs6LmVCYmxY3MdxgokYQtHjZPMFGNMhfCbkf9aJOAxTp1jQtkTrMEGIVBdDLidk/7vr9fNo/OSY1hEWWvaeQuApyOMGGHqhJ5F24kicdkGqtRIy1vCGdXIQ0mzaCBjIHS2p+tSfR+MFXMq41EBYo71gb8asiGD7NZLn2/eG91x6isBeb8qEv00QIsExHyBiwvcZregYeHk0Hxem9i9XWSuegc4hSKFFe+Df4Idzl5lqFTSv6Obj9dLwETVeHvLC6Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=f7PTQbNswaC+CFwntSoo2JGfvOVHFErzZTAoq3zKOqA=;
 b=AuVX0YG4/EqEc1BZYECgYSNiaMMeJpqae5naB6UjS6lBjRSXgixjCxWxE6KZdAg41L0MD3Fyd+yssdDnosMe17F9FfBroLYGVlUvp3uQyBmMJZmHIuZ2LCyj0UGakVAkE3Bu09t2OOLhlFZ0BoGJJi4UUWtLR050qX94VBxX3JZGV0DFNvdfZHqCHxY3uKAlKp8Jbfm2z2IYJFoKygGvf1Bjqanik5qgKqrr5A89QAaGYt4fMccSlHjBMYR12sX6ForeuIecczDgxj4Arg2H90g5C1yXMeejv+GV95T5EEhBuBAzWvQAW9mPLbFxtSiZ9Zx3jWFjOVYavTfJMLeHHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f7PTQbNswaC+CFwntSoo2JGfvOVHFErzZTAoq3zKOqA=;
 b=GFTuZFhDaLWFn7XxeVIXLhQIwFyhw08UZSIzkwDCxaQ+vYD9e8rhOOeSS+nm6+nn3O1l7RfhrMvRjxFwNPWW1vGGxm21l2n7ILLtpgLxwunkqOXvpAdkuu+Cn0rF298xXTiu7V45CRMj8i85Olzjlg/t7iYLL6nIN4W4VOqq3S4=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB4763.eurprd04.prod.outlook.com (2603:10a6:10:1c::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 14 Sep
 2021 06:41:28 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:28 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 5/9] clk: imx: Add 'CLK_SET_RATE_NO_REPARENT' for composite-7ulp
Date:   Tue, 14 Sep 2021 14:52:04 +0800
Message-Id: <20210914065208.3582128-6-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210914065208.3582128-1-ping.bai@nxp.com>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 73814e7e-80b4-493a-81b4-08d9774aaddf
X-MS-TrafficTypeDiagnostic: DB7PR04MB4763:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB4763B119108077363895604287DA9@DB7PR04MB4763.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TCKRkU4/RdQYEhF7zQpPAWZ9w7pDaMWXz5LxXYk9seGLYyMc1J/zVUGLh4xj9bEMxsGr7kF4DwiZ7Nu+tKyleMJewNj0cwce0DyylZTfISBksONgIpOVjDveySrl4ujRhqQPUY3fmLkd3O4nT3xnSG5N51GYhZNs23CmFiOtvgfIZCHC07gQFqDxXy3/5Sh7xV+uSVW4Z0I3akzdcwtZVXiGtnQOPwby3GnI/im84USpHKhyHxrhvypbFDoqmuCNEtY01WLODsKUkTWOlq/wJZoyEX7XDl20UiEAxVtMG57gNqBuHjxqtoUJf2J+bzH5FDP1Y0RymAyrE41h6GKpIYNs9HWsWgv/fXAisdq5FQ6f2X7CVhr+ELA+7rXa+aggPWyQygTRh3MjKB7QnTzGXzSBskdxwnftc/h19HvHjKfRfCBWFvY/SuAxwQlhrScZifoX6V40Df/q1QIuxFrgq0S7aU01SFIzYPEVNAsle4lqxipb/Had2aYobH9XbHX8LwBRTPWnXsaeeg3kJWvnDnFfMuadHhreTUiwixAX6B5kzh1y8KIJR2GL39YHa6TCbaHe064gX8bz3fqa3gjz+8K65Ad8ZmAMeIRWiI9+xhGrIzL+yKyTmsIVdbj0sbUYTNooVBoN8O/Z4gBjQzuVbc6bZxNEg63VVvFSRQwc8vJ9mg/hcWyYwcC4xeDG4S1vmC/tGGpTUvPSR16wJhHE1Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(136003)(396003)(39850400004)(5660300002)(6486002)(66476007)(36756003)(83380400001)(66556008)(86362001)(2906002)(316002)(66946007)(1076003)(8676002)(478600001)(8936002)(2616005)(52116002)(956004)(4326008)(26005)(6506007)(6666004)(6512007)(38350700002)(186003)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4FxGrMXaqZciTEqflidOuQ6m77FVRSzssjC5IyTSbcRXyOnlqUrwqkEYKezg?=
 =?us-ascii?Q?lsYEsyElMCu9AOYGRb1rfyuGRO5a/UonUvCO7CZu9fmqaQzCRqXN3bcF8nqE?=
 =?us-ascii?Q?3ojDmxuk51LZpsxLXP/gLnsexZzSLVmH8RN/00hqnlvrMlL6hlmTDf9kvddC?=
 =?us-ascii?Q?sru6aVZRCd9i299AtqirUpeK9BTgUS9xyv+nVnsl95eZ5u16Kn7QVcBmVghe?=
 =?us-ascii?Q?U7V1D6ynD1gXdjrh+c5Ljen+Hu7g3IXDtO+vChE/2a7qYQkBLPCMcpFEl4zZ?=
 =?us-ascii?Q?3kSme20OiW/ZAuhu0bkd/2gLVAhjJ7bjD8pP5/wUoL3nAPvuRipb2X2zrQ01?=
 =?us-ascii?Q?MogUXPn8MRtzzyxgcGE8kvD6aXLLJ5BpT6c1hi/zmkkBUPCZzfUxop4LUub6?=
 =?us-ascii?Q?382XsIolhooc1ubSgefSlNlCTym0+dRS1RZyqOWI23XPqWBzMDIwWM2sqst0?=
 =?us-ascii?Q?HrCs84RcREztKUTkEmYW/KN9ka0vqHksJNoFf7HKGEiJJGAKuyPPR5ZI6Nsn?=
 =?us-ascii?Q?xCbNfIZqZXbp9pk4tz+2SxpOeNbQh7iuYUmrfZ1qp4s7NziPprGP/xkMFe1s?=
 =?us-ascii?Q?VR8T0DkwvmpUd8h50ZLWqZppV/ixG4MkREWj6VOOKolHMSF7TvTALz49Xxi+?=
 =?us-ascii?Q?GvBz5Kvzv6gMiMCpPnH/4tfibVp6SoGSn6EZsJwhFRr7DLomRRn1GKzZzdnd?=
 =?us-ascii?Q?Qv2DGaVHT8v7XDpto8rlXIHPPKe4dpNSyfq08TqHt3drmql9nvuSHZ6jai9p?=
 =?us-ascii?Q?FceuHcx72AwwwhNY0Z6LCMQZqaKodXV7O6V4ARZZ4eczvvUMk4Es6c3Fo3W1?=
 =?us-ascii?Q?KyudOHt+0kL1PJDSvwhrHnaAmMJWl2YLoLgRT7sfLB6isvHvQU+9hKVOCbFM?=
 =?us-ascii?Q?TOiO2pqmAeVtwVhmnejLSzh92/+dgZQwLrCjARht0RC6ctgHYROLGJHmMvyz?=
 =?us-ascii?Q?OwyHZa3VZANW9GIrdjbPjj2WPCPZUVKUXgJresSUK8tB39snADdE19UDt8zC?=
 =?us-ascii?Q?9cihPQywudtGWXmSZQ2D9GQkL07J7ovRkWh/7NYswhfm4xFHYSsZaAHCJZDh?=
 =?us-ascii?Q?pxLmVjES1wGLKidhRAHp7TfnNdI3v/V7HeE2h/SBN/wnkDM1nRhE3LFiwwv+?=
 =?us-ascii?Q?ESJ6lmKBvxeWePFhh0NId4v7NqsG05vy54uq4yhLOEO9rA38ccKN6xVM4ZpW?=
 =?us-ascii?Q?h3W3Mke7j1MWC9XfOks/8+LKLET6Af+ZhSqYJLutaGowHBbcDNWqKYikT6bT?=
 =?us-ascii?Q?Xkax07VikLomiGi289ujGCjQ1M0x408JENRk32/Poqu0Hx8oOtT5Me6AbpaZ?=
 =?us-ascii?Q?4Gl31bLPltFDsDOwvWi7pp+1?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73814e7e-80b4-493a-81b4-08d9774aaddf
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:28.1143
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U0wKG3qs42rYjaj+K137mRKuQrMA8EksV7UV33MFMjpalOL6b/kiyqbPP5d1Lg1toccOMAvxId0xIBGSK3Hl6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4763
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For the imx_composite-7ulp clock type, The clock parent should
be changed explicitly by end user of this clock, if the the
'CLK_SET_RATE_NO_REPARENT' flag is not set, when user want to
set a clock frequency that can NOT get from HW accurately, then
the clock's parent will be switch to another clock parent sometimes.
This is NOT what we expected and introduced some additional debug
effort, so add the 'CLK_SET_RATE_NO_REPARENT' to avoid such unexpected
result.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
  v3 changs: no
---
 drivers/clk/imx/clk-composite-7ulp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 92908ee4509d..9ce8c630ee32 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -131,7 +131,7 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 				       mux_hw, &clk_mux_ops, fd_hw,
 				       &clk_fractional_divider_ops, gate_hw,
 				       has_swrst ? &pcc_gate_ops : &clk_gate_ops, CLK_SET_RATE_GATE |
-				       CLK_SET_PARENT_GATE);
+				       CLK_SET_PARENT_GATE | CLK_SET_RATE_NO_REPARENT);
 	if (IS_ERR(hw)) {
 		kfree(mux);
 		kfree(fd);
-- 
2.26.2

