Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EE6E3E5356
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 08:18:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236328AbhHJGSU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 02:18:20 -0400
Received: from mail-eopbgr150041.outbound.protection.outlook.com ([40.107.15.41]:4809
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S237003AbhHJGST (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 02:18:19 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a2spEB0Ei2O72tTZiNBuq8KpV+h5bwrWLg8zGluSx+Cd14iiKr8r3rOg/XikUu6y2jcpnd9YUc/ltFoI4gYxej74XESbomujcGnON/DCYd1QaXwYwNzjbbG0W37wphaDMQ+I33Q5Bsm2n6+fOb305hE5FctwM4c2XSsS88uStJgAjDk8N/FaGgWa8cCTxi6nJtTJV40hhaNWYP43yYdihTt2VJnwexZY2GUCMRZc02Quz4mcZjAhxTovrRsv/KksJ75oM7krMx/LI8lRptIMR1ncmHABllFVcTlvfvfl6llQ/lh0o7K2s/xjjV7I2i0Q+AHC/q1TbzvxDMNbsEBA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qpkCuJVxZC4VqgY56nrxTQ/hNotyj5DXi8OmCCMRKIQ=;
 b=h0TjG4EFJ3HROANmei+DFVuV6S4TYEKH0ZVGar792a2hQe5HBDOJMO3mLdf5vE+GF8q8fX1HRm9nqLILWZ3umYXAr7OwrohOLuyEEOlmNwNnme4t9tD4KWbVljuIAMvSOBVKhYD2+laMQ4VEth8S6w0qs1tjUViDeLxhbIBchdlTLouPoGOJAEXcNdgZUVIEJYekz7fxDMegcvMpBnyCmcQd/o0TlCtZC+bXgKJziL9ewn3p37KJ2c3T+ometMzSq4bEYVZXCB0QnRGZ88ocVXojX8z4dXxYNt00kdmKQDqSW+z+6rP3h1gshTROobh8i01XY6ZizhKnUnGMwgfw0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qpkCuJVxZC4VqgY56nrxTQ/hNotyj5DXi8OmCCMRKIQ=;
 b=M7j/DMgHQtzGhtzutTabPiK5pkIFf5yQwBZLWVBo72CuBuB1g72+TTeviN2KBgz/1YUZA3w7gTYq1r6i9po753cWysYT3hOP9BhPaJqv/DAZFnOHN/4qPz4GqsN/nq8+TkrSvFMVu7Uv3j6S2Dbyum1O56pfe8xGNYZaECqv3qY=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7563.eurprd04.prod.outlook.com (2603:10a6:10:206::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 06:17:57 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%6]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 06:17:56 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v2 4/9] clk: imx: disable i.mx7ulp composite clock during initialization
Date:   Tue, 10 Aug 2021 14:28:15 +0800
Message-Id: <20210810062820.1062884-5-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210810062820.1062884-1-ping.bai@nxp.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Tue, 10 Aug 2021 06:17:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 710e4727-8b87-41df-a6bc-08d95bc69843
X-MS-TrafficTypeDiagnostic: DBBPR04MB7563:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB75635B2FB868917E044546B687F79@DBBPR04MB7563.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: deke742qgmZxaviW2mlzgOoyfDZ+v5bfOXADE1G/DIq9bjjrq82bwU3ytwiPg2zWTxNM8OkF0t1lcrDkH10acK8DNNh9aSg6k2f5hUm1825Ef2hmMXjSUAIZiblOUwTWY+eVOPkONgxsHEB0pZH5WJG7Gulckf6rYUeNXZAPG87RyZAefw/4OxsAcR4JUpXgxkqtZ9xC2IQvhCV3y7hCo0OdHKxfq8IiIXWG75XuhbW4ORFb6Cdj50D1ry/q81NMFDDASsZXbELCm+dmWUzMP2Lfo+ifYICxn/752ugQakcTO5DMOWqAo3G4Ygve6LQLm7S0VHtP9QMUcNQtwQ+8SlLkq7a5GbC8iZLe56LRnvo/+cLn7uK+4+ZVzPUP9UjXWhkSv0n3QMwo6BcuYhZs409D5Unwbq/7ze8ZmqG/eKhLjGVrEpHMfyTl3I78C71iT95V8UMDoMGni2XAkI8coFfnwDS0muKNRWF0IoTgwSwFaoAwW2GererGWHu16KfHcuHzL3LekTi6f7c/N49uN+SNxsUwV8OBwYPlP6hHuLEU2WvdSTWNn53nt5csAfsQ/CWWcwdiny4Rl4e/6ex+XpJE+5K1Wz7V/FD3Otvk8/Hpe9zGUsrRHZPuxnzaUF8Uz9YWe9TpLuSEaZ9z5bVh1Fb/SWn4YjLWnj5ZhkO/8xmBD4nknQ05ob8EJKC6uSt092hALezSfr0bKU0LKoYs3Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39860400002)(478600001)(66946007)(2906002)(52116002)(38100700002)(38350700002)(66556008)(66476007)(2616005)(956004)(4326008)(8676002)(36756003)(6486002)(1076003)(6506007)(6666004)(26005)(6512007)(8936002)(86362001)(83380400001)(316002)(5660300002)(186003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lEHWYha7OGJtjmLCs8BjGmrTX0BXL5UejZArwM+tZhpTIqd/6Z8+0vSBNtQh?=
 =?us-ascii?Q?HgGm//nmM4oxvRm37e/Fmocgm9v4Xk8JFNWELZQViziUyK5lefMix4VE1Wup?=
 =?us-ascii?Q?H79xilTWzcsjnjMJ/sIhaFmwfKnu4kBzMTINu37Fw82yxNx60hWhNcj2JzS5?=
 =?us-ascii?Q?zWj31hG7cJhfPiFjHuCWjzVVt6Q4KA23txvhd8APpkRIlvNqKUv9ZbP0lh9V?=
 =?us-ascii?Q?sHzfsdatzIyCyIa4SWSr4CCiAeRtlIkHFBnCdmOibuBuYXfgdprGLD7ZQ/R6?=
 =?us-ascii?Q?EXMLHYKQjb+3rzMaIt/zpLHSfWGolDXcBnBl4PLpUBL/vc6DcS/Mnd/RLyV+?=
 =?us-ascii?Q?KOmt4AvAoRLLJdauC/hZtBHImIUpyIPJFCplwaJX+mYFyO0zCqWxGYSa09JM?=
 =?us-ascii?Q?TH0S5x6VPCHwJe+mGKI60TdmqqhcJ8pxQWXnJbh8MSnJ3xn9YjOBe8CmDzPX?=
 =?us-ascii?Q?7MasTIoqmONYEF+dFEuFQDaf20La3+YXgqSpXq6PNfFYZnZ/Fzq6Ikdkb40+?=
 =?us-ascii?Q?gulzhA97Owq8FdR1MvinSeOEDjjQryvuzXukXXoPYoqWWPZclIwEJjXaLKu4?=
 =?us-ascii?Q?E61gVwL+ujYqiUE59GBI/jiOA0h/lenWMz4Ga7QSBValFo7GpZxkI94izCYd?=
 =?us-ascii?Q?aErvdroh4SyMrMyEQHKivZ6PQa6g0orPTnKCr3WwOltjx2F3HYmPotuX/CUg?=
 =?us-ascii?Q?28DEhvJtz+NSftXfLj/6UXrOTdNadJ5PUIgOdqJQ9sd7wXzocbntRQwNWa7R?=
 =?us-ascii?Q?UxeL7Epttuxe0p2uJx5yhqBUe7XOcTSlUXBc6AAkZTW96bM5gZu7qLNpFGCe?=
 =?us-ascii?Q?pwiz8a//uiSVXFqxhBHl1bEGNMwR3rR7uIu0gtqQ/g0IdSZuXK7zUSoeyHHA?=
 =?us-ascii?Q?4WeaA3FaKoQBzKmeBiim4u+sHEuzh8J+goNcbbpaRTW+VSssVa/gBxejYlCr?=
 =?us-ascii?Q?dRB6X+BTA2Dwa1wCj2O96KJumSzM19L44HD8YNBB3azw1oovlBoRcFOJJoZw?=
 =?us-ascii?Q?tUD6Z44M0E1DOSNzYek52FAsyS5RhZo0gaxBJqqkQvkrL/52xF3EZ18kZv3G?=
 =?us-ascii?Q?I8b7bQ/622QGHTN9VauI/0Scrhoe6Fkj5aXGnbFTttEWazBUg3DwzkWPpCWz?=
 =?us-ascii?Q?qBBwqMKVoLhFG7Lef/9L5eMuzNl1ZSAY3GoMtFNboi+FeiAOAX9KvHWiP/Dj?=
 =?us-ascii?Q?1NMuJ8wIdiMHkYefUOiDAR2+jDZjuOxTKDcZmP2EbY5FGcxQREBubS2ublos?=
 =?us-ascii?Q?B3BabCULMB0r8mxT3kWTFCxeCxketf8fQX77FaxpgtnW+JvnZkElmqvjT9i6?=
 =?us-ascii?Q?6vgGYpwJDhqXR34tUpPEt/du?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 710e4727-8b87-41df-a6bc-08d95bc69843
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2021 06:17:56.7919
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HHhyFtWxPMRydj0F+AtqnmPIvGYZ72OZd3O2khomTcL5krfrH/lcHm9jir2gE5NNni1F0YWXKgSHWUhZmBLidg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7563
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX7ULP peripheral clock ONLY allow parent/rate to be changed
with clock gated, however, during clock tree initialization, the
peripheral clock could be enabled by bootloader, but the prepare
count in clock tree is still zero, so clock core driver will allow
parent/rate changed even with CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE
set, but the change will fail due to HW NOT allow parent/rate change
with clock enabled. It will cause clock HW status mismatch with
clock tree info and lead to function issue. Below is an example:

usdhc0's pcc clock value is 0xC5000000 during kernel boot up, it
means usdhc0 clock is enabled, its parent is APLL_PFD1. In DT file,
the usdhc0 clock settings are as below:

assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;

when kernel boot up, the clock tree info is as below, but the usdhc0
PCC register is still 0xC5000000, which means its parent is still
from APLL_PFD1, which is incorrect and cause usdhc0 NOT work.

nic1_clk       2        2        0   176000000          0     0  50000
    usdhc0       0        0        0   176000000          0     0  50000

After making sure the peripheral clock is disabled during clock tree
initialization, the usdhc0 is working, and this change is necessary
for all i.MX7ULP peripheral clocks.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
  v2 changes: no
---
 drivers/clk/imx/clk-composite-7ulp.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
index 9298bca7a62a..ba48445a0007 100644
--- a/drivers/clk/imx/clk-composite-7ulp.c
+++ b/drivers/clk/imx/clk-composite-7ulp.c
@@ -8,6 +8,7 @@
 #include <linux/bits.h>
 #include <linux/clk-provider.h>
 #include <linux/err.h>
+#include <linux/io.h>
 #include <linux/slab.h>
 
 #include "clk.h"
@@ -72,6 +73,7 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
 	struct clk_hw *hw;
+	u32 val;
 
 	if (mux_present) {
 		mux = kzalloc(sizeof(*mux), GFP_KERNEL);
@@ -110,6 +112,18 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
 		gate_hw = &gate->hw;
 		gate->reg = reg;
 		gate->bit_idx = PCG_CGC_SHIFT;
+		/*
+		 * make sure clock is gated during clock tree initialization,
+		 * the HW ONLY allow clock parent/rate changed with clock gated,
+		 * during clock tree initialization, clocks could be enabled
+		 * by bootloader, so the HW status will mismatch with clock tree
+		 * prepare count, then clock core driver will allow parent/rate
+		 * change since the prepare count is zero, but HW actually
+		 * prevent the parent/rate change due to the clock is enabled.
+		 */
+		val = readl_relaxed(reg);
+		val &= ~(1 << PCG_CGC_SHIFT);
+		writel_relaxed(val, reg);
 	}
 
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
-- 
2.26.2

