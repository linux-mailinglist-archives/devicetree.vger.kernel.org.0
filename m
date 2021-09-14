Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53E1C40AC75
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232059AbhINLg5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:36:57 -0400
Received: from mail-vi1eur05on2081.outbound.protection.outlook.com ([40.107.21.81]:1542
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232024AbhINLg4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:36:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQM1zAtPTb05x0D0sH30qsq8vvMQdoWcXa6xa69c1M8AyGFV5JPb/xLmW3TZA5JT4UAxYl1fls00fk07uOyK+SUusqAx2zMVxA8934rCKOo/dlF+5nqbRcsof08r/bfL4TnD0dagIiLreibBIgR7ZIeTPoOUXVzZGUCLgwtv8nr1J/hZmxaq9J0NiV2jvMHlgX9jvxJii59fRfY9AT83+F3IbtjXgABfKjYJsE1YA3kq83wzeDqzeDWigPKk4K6OKxcakrRD3iKz+i84k4vQvOmqQyPTxeyWsYqwbL56k4EeoqLVgJhXB4hg9HiWaJWYbC+rWbMDvM0XtC5Jv8K/5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=6IMQdNVEfPSCl20noqmZ6P1kCPG6MnA1CpT2g2L5ZNA=;
 b=EGDS7DZJXKWS+jJlqmoXAusGyuwLMqysoMbIUqIYp38LzIVJi4lxIG0SkJVrYyONwVjjDwZSIhSd6FDsO0ba88JL+7vWsRe5AvQK/8CLo5UIYe6819besEQ+95hRIuBRHBCGl2eVO78Zei8NvBEkIHZNelQs+NFyiMQf+cnD/YlpWdiXfDMjS+6bo27Tnbb1hzSYNC1k8Rn65Nrwln/IW6wr3APgUiMlJbu0c80LgsiChGH6/6dXlDyidoj0aQAqCRtSzfxbVHnq6aaCDkJP83w4a/uEQw/p17t2fU8EtTkOrmENKEWUsObj654T+pNhVdu5b8zjo+9tVxerkR9rDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6IMQdNVEfPSCl20noqmZ6P1kCPG6MnA1CpT2g2L5ZNA=;
 b=SRkZj0bflXvYC3yySYicfuusWHgaavCjVFBI9+Liw9C3aZd06YKe2qXvaPjghjhrnCO3/X2lOGsT0PbO9aaL1tYBXbbuxLuuBCxmC9hq7vyJgYrudHb5sbsWzvq2szAphrXPiMGnKddqXk8pXvoNCg4TNaPyAigVFtLjBf2xlb8=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2638.eurprd04.prod.outlook.com (2603:10a6:800:56::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Tue, 14 Sep
 2021 11:35:37 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:35:37 +0000
Date:   Tue, 14 Sep 2021 14:35:36 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 7/9] clk: imx: Update the pfdv2 for 8ulp specific
 support
Message-ID: <YUCJCCUomffNm/cf@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-8-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-8-ping.bai@nxp.com>
X-ClientProxiedBy: VI1PR10CA0110.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::39) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR10CA0110.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:803:28::39) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Tue, 14 Sep 2021 11:35:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0c571435-6499-440d-a4ee-08d97773c5e8
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB2638445F1B8CCCD25AEDA46AF6DA9@VI1PR0401MB2638.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nNrldv1sPKIGWkiFzydWdiPoZbin72S8pUkcZYLp/xBUQhOem7fAz6tV9wX2XF1Mg4Tkg+hHgxVgz8T/rgp2+qrTgYeRU9drVbMdSYYDDUMcnmfXG5zzQwCwEsWFOSE0Pw2Kqk5rcggU6mFgs49uo0bxhuGDfLiaH7R2qfHMrr29+IpcPi0UMLjItBEpI1Z+Bk/rfrFmtPZC+cT40siD/D+iYE6U3a6QPWZRZpfmTxIDJfTULoz5s1pzPgK/2e7SWNnG4upC7gjopweKcWuy98E5imNa1REXztG4JCmKQzZJQuzYm4YRGcPBJTtgcvDaj/nue4TJjdTrU7GBeA7kWCgk/cHJ9PMy4n1HrO1gAgo8qe+v1s8ZCtxP4y7RJGUCQjQhzGXE2Vk+HVh2RRQ1RHYoA9Jum1RI8abWOlLtinXQ1a9gAZAToZUzfk/FipsT9WAAcWS+tJ0Cs79VrWZDDTn1xrY+AjMY19LSZX2iedpawdti+Oj5QpVZLHs0nG5mHEqQfQ+rsg9ow3yVbtBEBtPPYQ693IaenkFujnw0wEexC4UMIczrYtmNTxqQc2noFQgPNp6ZGeGXubAqC2L4OAjegtBNEg5qIYGuV2ryEJ2c/JtGc3BM6y7O3jrBO2xUISpM7dIFCZMqV04rCx3GmkDYShsYFqUqV+xXzxp6P8s+DI8jQKq802Fq46GXOkxJQL8kw4/1NFkqU7nPiMYMvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(66946007)(66476007)(66556008)(26005)(5660300002)(52116002)(6496006)(186003)(38350700002)(38100700002)(8936002)(6862004)(478600001)(86362001)(15650500001)(33716001)(53546011)(9686003)(55016002)(9576002)(956004)(83380400001)(2906002)(44832011)(316002)(8676002)(6636002)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6bJi7yX6fihBuoJ4QATTKDJ0vqOWJ+7DKhlj3iBYY5D96NeMMyZ+PAMsSfqb?=
 =?us-ascii?Q?Rz67+jcabCNT2EOf+bjybkHbrg3zbPX1Hfwu0+MJNDn0hdwVyuydj3qefux1?=
 =?us-ascii?Q?5REQTRL9/uT5zcYXk2eWfCOCPGHU8U3AioEvB716VQpBAcOLL5i8ktI0oeeB?=
 =?us-ascii?Q?Xhh5cYSpeet17Udd1vF4ouj/lMYpUCJbtVx5pzHIeGdbGB8YcNL9+dKRqzeR?=
 =?us-ascii?Q?G6MSRFkTxsYnDfDVn/zuY1kfU1nlNJjg8cu+sb3+7iIiiZWBXDGb9QGz4mKr?=
 =?us-ascii?Q?l1ZXWYw7cwOrhXKedEJPKH7X12cuyA45MwwqfXNZz4vZMXxcClN80x9S+WAq?=
 =?us-ascii?Q?OeBCVLk9YJcwikjTgyJg2gMXRVleU8cdfun9U6OlT03yPmP0vUCTwceHEV54?=
 =?us-ascii?Q?uBcxHmM9HmEG5wLQY54zjOQBmvNS4lsL/t2UpBuYQ1PVKXPz7z77v/Dzq6jk?=
 =?us-ascii?Q?fG2+CZYHWG7NggE4o/LvikYXkhD2H1MbJJ3aTqyXRvh3WPacvnZrA0B/sQ5z?=
 =?us-ascii?Q?CtP3ZtWrF/ldUE/kL0HxqDJK8vJF0zujTX6YhZVTi2l2KlumExrj0OjZDN46?=
 =?us-ascii?Q?jl9WWuNopm8GEkZ3evGuHiNDYq8MzAPnxbJjf0YEb7lxtfjcE57VfSKduaoF?=
 =?us-ascii?Q?97pLu5wKBcoKaUhV5OEoiYRfXfi52yWHG+i2yxh8KObdDIdvebg57ynICQvU?=
 =?us-ascii?Q?DC7tkR1iEN/p7G+c7HnpSD7miAvS47Ieh/+zqx0Y6FXwmERqIXYKc0/OLMu5?=
 =?us-ascii?Q?PX4g9Sox2Tjj4M9Wua5RAWIDq7FHr2Y7i6YBsLY2YJBJPwkDTUdu+wEKnm6I?=
 =?us-ascii?Q?OrXG9EG8K/68Q8npqZfeRWM8pN9z683LGW9Lv+xMQlTquZBTe+XOeWqCwANu?=
 =?us-ascii?Q?sZcicZFLMdxt8R2WANCH0olsjDquid0ME5xgaUXo7DPhkERPXu4WgYW5ta3Y?=
 =?us-ascii?Q?XtbPyt/ni9SqwHhjhNdK51kNxm0cOzH2MlEQcgaZc2J6mjEl1ajiKXY7O2xp?=
 =?us-ascii?Q?qNvrGq22vyQZa+7TkcsrmyQeBKw+q2NcTrGiXmB+J0jAfRiyHJMRHTjPYofM?=
 =?us-ascii?Q?8xTQiENXDXkYlFESEbkv3gOop8IznqKS4Ad/M1dzolkBn2hJ+XS1hh+n4/O4?=
 =?us-ascii?Q?H0jTreSsZswAVoMSeqA7E5C8yGXfCiFaQ0x7aBuQR5LMBv1y5oZ7BfL2j9wF?=
 =?us-ascii?Q?tKrhby/OJVRnR2XP2G6YX7x32FZTnftz3I65FdSRITQ0kEu2OrdnNpxdNpav?=
 =?us-ascii?Q?tnJAA3jcEhBVsDImgtnbIy43OH3mF889iCnfKAZRmevNqZn+vYzVgEmfT36M?=
 =?us-ascii?Q?cDm8btDu3PJ54BS5OJAy8QJ6?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c571435-6499-440d-a4ee-08d97773c5e8
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:35:37.6577
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rGDxyhCyTkseLbFwP8HjLY9oROJEp5aovz938RJkbPa45oD5OqOaGZMhnWLDuKJXF5pApUxz0AFUcIBpUjFYsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2638
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:06, Jacky Bai wrote:
> On i.MX8ULP, the 'CLK_SET_RATE_PARENT' flag should NOT be
> set and according to the laest RM, the PFD divider value range
> seems will be changed in the future, so update the pfdv2 to
> include the specific support for i.MX8ULP.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>   v3 changs: no
> ---
>  drivers/clk/imx/clk-imx7ulp.c | 16 ++++++++--------
>  drivers/clk/imx/clk-pfdv2.c   |  9 ++++++---
>  drivers/clk/imx/clk.h         |  9 +++++++--
>  3 files changed, 21 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
> index ba50d6db8097..b6e45e77ee39 100644
> --- a/drivers/clk/imx/clk-imx7ulp.c
> +++ b/drivers/clk/imx/clk-imx7ulp.c
> @@ -82,16 +82,16 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
>  	hws[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4(IMX_PLLV4_IMX7ULP, "spll",  "spll_pre_div", base + 0x600);
>  
>  	/* APLL PFDs */
> -	hws[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
> -	hws[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
> -	hws[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
> -	hws[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
> +	hws[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd0", "apll", base + 0x50c, 0);
> +	hws[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd1", "apll", base + 0x50c, 1);
> +	hws[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd2", "apll", base + 0x50c, 2);
> +	hws[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "apll_pfd3", "apll", base + 0x50c, 3);
>  
>  	/* SPLL PFDs */
> -	hws[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
> -	hws[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
> -	hws[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
> -	hws[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
> +	hws[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd0", "spll", base + 0x60C, 0);
> +	hws[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd1", "spll", base + 0x60C, 1);
> +	hws[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd2", "spll", base + 0x60C, 2);
> +	hws[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2(IMX_PFDV2_IMX7ULP, "spll_pfd3", "spll", base + 0x60C, 3);
>  
>  	/* PLL Mux */
>  	hws[IMX7ULP_CLK_APLL_PFD_SEL]	= imx_clk_hw_mux_flags("apll_pfd_sel", base + 0x508, 14, 2, apll_pfd_sels, ARRAY_SIZE(apll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
> diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
> index 9cba83521988..42505669cdfb 100644
> --- a/drivers/clk/imx/clk-pfdv2.c
> +++ b/drivers/clk/imx/clk-pfdv2.c
> @@ -200,8 +200,8 @@ static const struct clk_ops clk_pfdv2_ops = {
>  	.is_enabled     = clk_pfdv2_is_enabled,
>  };
>  
> -struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
> -			     void __iomem *reg, u8 idx)
> +struct clk_hw *imx_clk_hw_pfdv2(enum imx_pfdv2_type type, const char *name,
> +			     const char *parent_name, void __iomem *reg, u8 idx)
>  {
>  	struct clk_init_data init;
>  	struct clk_pfdv2 *pfd;
> @@ -223,7 +223,10 @@ struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
>  	init.ops = &clk_pfdv2_ops;
>  	init.parent_names = &parent_name;
>  	init.num_parents = 1;
> -	init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT;
> +	if (type == IMX_PFDV2_IMX7ULP)
> +		init.flags = CLK_SET_RATE_GATE | CLK_SET_RATE_PARENT;
> +	else
> +		init.flags = CLK_SET_RATE_GATE;
>  
>  	pfd->hw.init = &init;
>  
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index a9bcfee7a75b..45be7ba23fae 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -47,6 +47,11 @@ enum imx_pllv4_type {
>  	IMX_PLLV4_IMX8ULP,
>  };
>  
> +enum imx_pfdv2_type {
> +	IMX_PFDV2_IMX7ULP,
> +	IMX_PFDV2_IMX8ULP,
> +};
> +
>  /* NOTE: Rate table should be kept sorted in descending order. */
>  struct imx_pll14xx_rate_table {
>  	unsigned int rate;
> @@ -220,8 +225,8 @@ struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
>  struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
>  		void __iomem *reg, u8 idx);
>  
> -struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
> -			     void __iomem *reg, u8 idx);
> +struct clk_hw *imx_clk_hw_pfdv2(enum imx_pfdv2_type type, const char *name,
> +	 const char *parent_name, void __iomem *reg, u8 idx);
>  
>  struct clk_hw *imx_clk_hw_busy_divider(const char *name, const char *parent_name,
>  				 void __iomem *reg, u8 shift, u8 width,
> -- 
> 2.26.2
> 
