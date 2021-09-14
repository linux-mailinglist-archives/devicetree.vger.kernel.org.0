Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9162340AC70
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:32:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232052AbhINLeE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:34:04 -0400
Received: from mail-eopbgr20076.outbound.protection.outlook.com ([40.107.2.76]:43493
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231941AbhINLeD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:34:03 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZK2WyOzrAiC0YA2RlPgmqnojvtRXz1YOH+KtBIuNHCOrBGj20ySzPfrhPfP+kwp+z9290EQ2HQoMQSbBZYLuLm+q5RBDVGZeXjJE/ZRDpNssKmpj68ED7DNmo85UIkjCFyUGw0tCXa13viqR9HR7N8rFyfGa32FGkQVUhD1rqZnWlh5fILoLKZSvO+A06sZEd7ygCYkorAAz06xzRaf7xkx0Sr7C7LSUK0eFbc3VqjogsSBzgOxvVkzHCLWb53kppUEi4wapTFW+n+qMr3jdJEnfISboHs3S9/EMBZoF20DwyXwjZukfmZGRBrMfN5aP6Qd2YhklR2TTqYA20GwBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=nbz9f/mpTXEh0TJt2gcdS4+BKBTlqY9J2+7iBUU720c=;
 b=Y2pyhatIn2PojPKpzSWH1x1KbnAchlugVLoXTAkgzfVznOgYG++7lIzqM5B8CZbj6pRpv8iyF7n0/+Zt8fG57nZhKNU/E7n3hXs4JyoMwR8rWCey+CTCnAG0fVZbvwrkQUdU2vv4kGhP4ZI/0azZpdrb0zVQASmxLFVYJLaeqtPHukQClwULe4QNlJ27iG1d+gy+50WiK8w7jI2gzUzQH7VoQtaJhN459oDykKS5QMmAYs2NiU2ZLI5FjBJDZSDj/wnK2YGdfH2M2gaz47rOmBnPc7Gudz7kM8IlOZuZ2n6S9pzjoDlQeaK0us3Hq7ACnwBENbKagxTf35p199g37g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nbz9f/mpTXEh0TJt2gcdS4+BKBTlqY9J2+7iBUU720c=;
 b=TTYpZWABYVgAuLe5+6a27pIqWrWpu7PvV3HbUIbvEPd/m8ukHqNAbyc1af+FvkYn2nsFpW/fcGksdZdu1H8V/b880g4epW57++R9q9fDVlhcS+o/55+NzLgJk48+2E1Sj7ssX5s4klHbWoa51OQffRvkQ/qwgMez65mPTV/52ME=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2638.eurprd04.prod.outlook.com (2603:10a6:800:56::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Tue, 14 Sep
 2021 11:32:44 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:32:44 +0000
Date:   Tue, 14 Sep 2021 14:32:42 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/9] clk: imx: disable i.mx7ulp composite clock during
 initialization
Message-ID: <YUCIWg2e/inua6GB@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-5-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-5-ping.bai@nxp.com>
X-ClientProxiedBy: VI1PR06CA0215.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::36) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR06CA0215.eurprd06.prod.outlook.com (2603:10a6:802:2c::36) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 11:32:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6385962e-9efd-41a2-21f0-08d977735ebc
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB26389E63A7D6086657E98F96F6DA9@VI1PR0401MB2638.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ovko4BkFYLyJ14932NXlkRCsGKkKyrxdi1LJVWnP6LOYz7TzGf6TX0ONhiHZacihGHh0q1trcQneCTkRQZA4GKpadjj5juNBiyHI0DQfOU18zV1FLlmdkbQROclFhCCj3bHoLSVR8CI9q2EJXBHUK8Oc3TtfoX3Eiw7v7zlmpxSVNDdAqUU8MGRLo5kPZyfW9551Orhk6IT1jKomKzy11m+nAEYYNZ8mU9DR7rNGgClm2QL9oopRuC0D2yIjsIRODaKHIDvrsnyaK7DaLl+NL+K978a7ZCgRweJuifbwJD+KOo6FpIDsNWBCLGBLUNXSSEM9oGYdSBy9+FqovB+uLralhGRIPbJRnRxteOEDtySgImaBK2MS3Pjv48nDrggaz4EA4TugpGZKj+j3PFps1tXuh6loACRDBPd5iOnIRs5+cN4XQejl65XLlYPAgPwOr5e2LERVblHoUd0J+giIzv5izWqCLwxWcEmtKsZsoFQuDHzITIKsbNHdERfMa5c9n7F6aMEVl7YIpEAy5bA9ra8nPqsy0UV12hhkMoGxLq7PItRufUJJyDG4KIKH4dVnq3s0pjvBYpLXZ1hmV7vHqGYHnl7JxcGcwe1ttZbJauq6/anuYG+Kggu47nDTgCeSsQoXffAyNDPYOK82AAJa1/prrZqUBwptRIodz7PmaSZkmgq1ScZ+61+PeGlvrjFtK7s9WR/PKbK20y6SrwqkKQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(66946007)(66476007)(66556008)(26005)(5660300002)(52116002)(6496006)(186003)(38350700002)(38100700002)(8936002)(6862004)(478600001)(86362001)(33716001)(53546011)(9686003)(55016002)(9576002)(956004)(83380400001)(2906002)(44832011)(316002)(8676002)(6636002)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cHsyGeUN5KUZuPLAMZxYsSrna+/HJyC6krH7Aq0xYdsEJ1KElaQtVu7KVvpZ?=
 =?us-ascii?Q?uOStDiXBBOKq8fz+OGz+HB+6TuU7OcSSRTdZqvc0JqkhWUTKJQmOxckGLNSf?=
 =?us-ascii?Q?jQznXsU/dnVKxYk8XPgk3MW+Dlx8g/6yDyGWyz6y7M4VIb9g/HqaERXN4mDI?=
 =?us-ascii?Q?VGkI1OUq02G0MuQpjy4mBs26IyNf3ADmIZykRJBkUn3QmwRmbbiC3MTjgot4?=
 =?us-ascii?Q?StLRQBinxiEHF+xsYowxfrO89gEJNjwG7vtnS/u1kBwuyoaL0nAlJDii1SEd?=
 =?us-ascii?Q?XnzZykwGG1Ovygrk16dCnCa2C+oTDIcPE/v5uCfDEOI60qmqKs1Wx5B7Fcsh?=
 =?us-ascii?Q?c9zReJaCl7tYy3HqB/EdybTphOqysB10D4mU5p3UB/LnimHN1xDcViQE03hf?=
 =?us-ascii?Q?y3aH7t+p1iWJkNGx2iN9dj3avBGQ0lw7gLBM8MHtI/82GBuLgHeiN2RFTmuL?=
 =?us-ascii?Q?sz3AfqeSQKokCgA3AtAcxwe2Wt1BE7cvMbXbJpjWQqNfA1FXOVoQEu8hMoMx?=
 =?us-ascii?Q?n6E4hL+uomFGiIXWZBnY4etAGFm64X9twp4kr0H40Xv9oSPJ88W6RW8M4lPL?=
 =?us-ascii?Q?MtO6ZorcScADZzaybb0I6y1jPAdOCS5+KCafreIpD2NXwvjAx00JDxb4eOCw?=
 =?us-ascii?Q?t8C/7K2P6iVXC3rGT+H+VkikNvElApUliR/x6svzPs2+i2v5/LuBKV/AKu2H?=
 =?us-ascii?Q?cGe+rA8pEb6l+VZmwDd7CRQ2LyVhqMb/SpPZRZ9TGgBG9R/r/mwc+dX4ofT7?=
 =?us-ascii?Q?lMNZ+vJA0k529l/qYD2OR/xHiRPQ5eKo0g8m1uXTr6uxBVXoD6emLgEQkgtw?=
 =?us-ascii?Q?hSs53Nmi/OAm+0pFceNGgwtTMJyp8g2RVVE9BYTfHr4sB+bhVwiwSsXd27Ji?=
 =?us-ascii?Q?CsmtfORxhYdeYiV63mFV0CUyp8gS3Wnyc48WpHMWklBOusBriAaaUhnTC2g1?=
 =?us-ascii?Q?MWBkZd/7aytnotpbKkNWx2bRDWHZRWVe9Ee089AaqstJh3OHS1DQxeO/jwnf?=
 =?us-ascii?Q?9f4d5ygVXqaqrUmz2HpsVKEG+mjD/oDYKwihx/n4ysqb1RGrC6blq+GbjbTb?=
 =?us-ascii?Q?x21ZW3WSzovnWUgCAhC77MEU6+gvPHFJcB8tKgDlGWCxpIYTIlOg1VH44T3q?=
 =?us-ascii?Q?Cej4hY0FWGfd45UnO9572UFecn2hrjAnMwytvQJ19dFarise0dSYY6rRIJ26?=
 =?us-ascii?Q?+B8Ap8tX1us3qJR0AUiuW1pbaKcsoWtbJ7sFhtGvP6JVat7D+5nhbaCUYOSN?=
 =?us-ascii?Q?ouYdTKm1VCZUFKBmsPuIixnTuD9OmkfDijndFqQa+cUGkf21m304iceni68n?=
 =?us-ascii?Q?JuigTddBa3nUg6UlnU4KD3Vj?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6385962e-9efd-41a2-21f0-08d977735ebc
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:32:44.6366
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZwyJxhCU81ystf7Z+37GZsBg26Ncv+hOHvwrdccRIWodEO/UbWoweGzj/pjM7FkUIY7gTOmxWj57QeSPSdMKtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2638
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:03, Jacky Bai wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX7ULP peripheral clock ONLY allow parent/rate to be changed
> with clock gated, however, during clock tree initialization, the
> peripheral clock could be enabled by bootloader, but the prepare
> count in clock tree is still zero, so clock core driver will allow
> parent/rate changed even with CLK_SET_RATE_GATE/CLK_SET_PARENT_GATE
> set, but the change will fail due to HW NOT allow parent/rate change
> with clock enabled. It will cause clock HW status mismatch with
> clock tree info and lead to function issue. Below is an example:
> 
> usdhc0's pcc clock value is 0xC5000000 during kernel boot up, it
> means usdhc0 clock is enabled, its parent is APLL_PFD1. In DT file,
> the usdhc0 clock settings are as below:
> 
> assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
> assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;
> 
> when kernel boot up, the clock tree info is as below, but the usdhc0
> PCC register is still 0xC5000000, which means its parent is still
> from APLL_PFD1, which is incorrect and cause usdhc0 NOT work.
> 
> nic1_clk       2        2        0   176000000          0     0  50000
>     usdhc0       0        0        0   176000000          0     0  50000
> 
> After making sure the peripheral clock is disabled during clock tree
> initialization, the usdhc0 is working, and this change is necessary
> for all i.MX7ULP peripheral clocks.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>   v3 changes: no
> ---
>  drivers/clk/imx/clk-composite-7ulp.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
> index 50ed383320bf..92908ee4509d 100644
> --- a/drivers/clk/imx/clk-composite-7ulp.c
> +++ b/drivers/clk/imx/clk-composite-7ulp.c
> @@ -8,6 +8,7 @@
>  #include <linux/bits.h>
>  #include <linux/clk-provider.h>
>  #include <linux/err.h>
> +#include <linux/io.h>
>  #include <linux/slab.h>
>  
>  #include "../clk-fractional-divider.h"
> @@ -73,6 +74,7 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
>  	struct clk_gate *gate = NULL;
>  	struct clk_mux *mux = NULL;
>  	struct clk_hw *hw;
> +	u32 val;
>  
>  	if (mux_present) {
>  		mux = kzalloc(sizeof(*mux), GFP_KERNEL);
> @@ -111,6 +113,18 @@ static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
>  		gate_hw = &gate->hw;
>  		gate->reg = reg;
>  		gate->bit_idx = PCG_CGC_SHIFT;
> +		/*
> +		 * make sure clock is gated during clock tree initialization,
> +		 * the HW ONLY allow clock parent/rate changed with clock gated,
> +		 * during clock tree initialization, clocks could be enabled
> +		 * by bootloader, so the HW status will mismatch with clock tree
> +		 * prepare count, then clock core driver will allow parent/rate
> +		 * change since the prepare count is zero, but HW actually
> +		 * prevent the parent/rate change due to the clock is enabled.
> +		 */
> +		val = readl_relaxed(reg);
> +		val &= ~(1 << PCG_CGC_SHIFT);
> +		writel_relaxed(val, reg);
>  	}
>  
>  	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
> -- 
> 2.26.2
> 
