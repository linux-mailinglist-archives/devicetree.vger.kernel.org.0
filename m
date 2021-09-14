Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7D7440AC6D
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231948AbhINLap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:30:45 -0400
Received: from mail-vi1eur05on2085.outbound.protection.outlook.com ([40.107.21.85]:21248
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231941AbhINLam (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:30:42 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U/y9Wq6vE+PDVLFfNuamjG5pcDmkb99gP0Whxm2Y1jEzbezyADKf5u+8ED5FH7iyEHENkqInvWelrJhN8+Xz9UJArY2FE4n+eFc0bHwbyeuxpBnAOT8jWggll/S4PO/G0MdLo+QgJ83OH/AZhrp0IY37uIQR71QUrxVleiIsDjyZACQaSnUybYD5cV13ZvR0CyYuwBwloTXwOQyP9HDkjiABBJXPksX5lvp2L1YjVYXX13p3UwLJZdS5y1LuxSjy9QmKw+6Tsehe9ukIrcTI/AVRzkKQJJQWeLWUI6ixeXGwWGxN0lKzaAOPNh8K4rcDRBZyddCiWj4IEjtfqj6MLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=9lA+U4uNFx+UrM2W0SIsFIvI9G2E11uxkU4Hv7xWId4=;
 b=VK3ZcMQccFWQL4Md6a8GVpC+NE+mIM9d4JTXRlmr8gqtBYwKE/bGmzzOVe8xAqIMvFF3IDSgDOuIQI5NG/ZAb3ZMVhgjY4lUoTfK/l12hfVaeNYNsz5vKQ9iROkNGiRi+g+xq9X5HbPpNGFdcKVJzBSF4SLeqqoI17jPKsbDUegA1FebO4ZaU0YKz5EGnL+Zvq9QbGx34JuPAO/77bkHFnrmrC2IR9zE5VdSui4A5HhLL4H6BpWgPtzOnLg6w2Ve+DuxvJipevoDoiEwGvueEnDs8dU9wddIpLdXHU+Abj9v7o8SKo2DIvnV8aQCN46oRGL+il2j4jq4EPxjZuDD5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9lA+U4uNFx+UrM2W0SIsFIvI9G2E11uxkU4Hv7xWId4=;
 b=Vx5b9v1YHa3rNcRgAJ952K/+kZGZNj6j6FlQ4aWeCA3fmzyGWRodXHEWjEgOKVIhYCH1i1691jvAgTvG+THWYvydzta4LBrHjkJnfSXfY6huXYnn2uSg9FaWa4rFyFb/K3P/D+Q8YRDSTDzygCffaW3ltyOIfo4stacE34N9FeA=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2366.eurprd04.prod.outlook.com (2603:10a6:800:2b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Tue, 14 Sep
 2021 11:29:23 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:29:23 +0000
Date:   Tue, 14 Sep 2021 14:29:20 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/9] clk: imx: Update the pllv4 to support imx8ulp
Message-ID: <YUCHkKFTBxIuEYpf@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-3-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-3-ping.bai@nxp.com>
X-ClientProxiedBy: VI1PR04CA0080.eurprd04.prod.outlook.com
 (2603:10a6:803:64::15) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR04CA0080.eurprd04.prod.outlook.com (2603:10a6:803:64::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15 via Frontend Transport; Tue, 14 Sep 2021 11:29:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 240ef483-5ae9-4693-fa8e-08d97772e6b3
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2366:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB23664FDFB46CE937D030804FF6DA9@VI1PR0401MB2366.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1tm3FTEWcwvYLX9X/oPeRG589QJHS+WfOpCr2qgdSR76xptjyK1mH+Ne+zX7DSlfY15kcwhdYkjqutPjrBFRa5bppDxpnDIWO55DKaX195T6J5bBX4hnWLBMF/YRD6K2uZg8xWutTw5pt1THvGxE3e1xCyabiwmom8RfoTWP1Y3D+MwdzN19HzvAOHsIWqKXMImrOV/vsru/g/5budXU90V6KxCvBb9iXc+3AyJXwFeMBKqKiErP8xlG8ql3xRvldRdHDo1IkZAKrYe701lRbFR7C+Z3e4NCRQjo7e2TOoIQGKNDKuIGw1e5tbdFRpDwzg5PdpQT88yx6dJ9eFSzrgJJ72IOvP8HSd84rufG66EY4VKjHbMVSYknnqnTWprvTCJ2vpo7nH9dKLWT6wly2TsrqlhALU/IAT/AeaiLDQeEvj6NTegvPy4h9eTiHiDjqWwqYdUV43VRlAfXzrCAcOssu/Oecj0Ox/b64OTdD1HT0q0k2bAsyuDBFrn365IpMQLs+FXzHidy4WTVuMMUFJQ2Ql8RNVfCTUmeBvJ1KYO0eOSADV5yd4lhaAT1Fw/o8SELXJAoxvvj/bs44QsMVdb2ZnpU2TYJ+l1vS1exQi6+N9mOuPoyKE6M8qsF0aDcmWpRl0XgRjXbPS69vvJvEEco3BLUaoJlsOc7e2zvOdhl0Zrv4+xl4o+vSFcO1r4PDn9Kbn2akn10rHmuELwRddEdj5eSyKr7YuxQnkrRcyc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(346002)(136003)(366004)(39860400002)(52116002)(316002)(6496006)(9686003)(86362001)(5660300002)(55016002)(33716001)(44832011)(6636002)(9576002)(66946007)(66476007)(66556008)(6862004)(53546011)(8936002)(956004)(478600001)(2906002)(38350700002)(83380400001)(26005)(38100700002)(8676002)(186003)(4326008)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3MtPPhXL+MyqKKyB690EOFhf00D3HNY5v3cF/vj7ASK4X+YUFHwQUwnm0j3k?=
 =?us-ascii?Q?SCvKYw6fZIdSTSmdkv0xBKNInzOE3cgSX9A6dl1tc9CM+06kwbzG48+Vn6vw?=
 =?us-ascii?Q?6tXIlrKH1rCMJS1wowuMDdCnSc5dhrsbsarSGLVh91Elza27Na5hbaJArhVR?=
 =?us-ascii?Q?PiDfZTp9px1xmPkw4TyawSAUmaKHCbLg28uhfqsULxgKKKiPfFlkZJiFVQuU?=
 =?us-ascii?Q?KElbLmSWRDy38H19X/expsF/t+BDizR5s1IolGSwuBB4baJfAkuAaHt/bICm?=
 =?us-ascii?Q?QlloCu1Q3QEdJsGUHo6WKj8r6wDucbuCxu9Qox+d/U9Lemkoemj2azSNiLN6?=
 =?us-ascii?Q?KHKuvcDbh08Op/ltEgSB7yczzaU4KwMGZV/mS+6eXsMwnGa/TvD3c89ywcUy?=
 =?us-ascii?Q?OZ+/dfHGJSYosE1Bla0vQa+GBERS5Osj9j25YfMbEoTNVyH00MUDiKS744eL?=
 =?us-ascii?Q?hkqXGaNtfqIu8ouwMK4Vtj44uodr9ig0gROag2CA640w4yrPFmPkCNkccsKW?=
 =?us-ascii?Q?ppzXSg9SqtCLuE2G/2DpGxTSjU0OwzqtRCbdWdMhRkGKGrIH0P6MH4T8CPDc?=
 =?us-ascii?Q?iK5DDxXkr9KlxDCYyG6QLrj1cjSb2toNEnLVSMVoKwBjCYj3ZjctofiWZ4hR?=
 =?us-ascii?Q?6DWbzaKf+i5J1AmXqA2zx7y/F1O5k+tO0mQHcG1z+QnX7YmAux0m9dW3gSmA?=
 =?us-ascii?Q?rq0AtkDmLdd36b1OOC5WIAH42+CzxFHDxeHxpz9IGJcVt3Nkx+0JVarlgAju?=
 =?us-ascii?Q?x8ydgtv4Jd7kHbi+xeNFQD+vXIGqFtQYbOIFEOO7eQpsOQ7/5bjNh9+bL9QK?=
 =?us-ascii?Q?WocvwQPmrZTwMWmiWcjinrmJzOVkiJvyTgHdTcWzOG11+jZ03gDxuEIrsaRV?=
 =?us-ascii?Q?VvUZCgOsgdNzudf0YUju1vTbcFpB0xobVBrOB5SXdueSlzSc/Ebl7XaVtJRe?=
 =?us-ascii?Q?xrvOyrSETti0xJnq8rKvH3i8aJbj3Y48ZpVXxmbr7sAncHcdHOtCr9xwrQdq?=
 =?us-ascii?Q?6c7+i9p2TQx53v/MBW2rfRtDf8eNl/40ZDDzv7EkAPv4nRjRYdOiJHxTCBdy?=
 =?us-ascii?Q?0CmxP3H/RVL9F4Aybj5blJkfT80oJOLach1/kLTtruWgbBh4+G6tDUTrKGcK?=
 =?us-ascii?Q?qxyxKDnLDkp8ftEfiFas1Osa/sB4Xpq7EznGCFaAJpHGEgr3/uAMctcRCeZY?=
 =?us-ascii?Q?ee7W+DwQgG02YnRWeKxSH/5yHViv3Nl8MIb4smH1wcyA8rP4AQ/Eq3xgkrry?=
 =?us-ascii?Q?cTWUOEZuajdcbO0UyVqasJsTiX5GhVuLL0y6S+bqgFpvEcWyBeP2WlZvHAFO?=
 =?us-ascii?Q?TKKGifx8P0ocmujCWttfQ0PK?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 240ef483-5ae9-4693-fa8e-08d97772e6b3
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:29:23.2326
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t3L/UWzNJmoudza3xm3y/L6BarVmW5COY04WYevXc4WOC2pbbj2FMOSHJoa93MAXGqANHH3kvpPixOm1QQ7QZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2366
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:01, Jacky Bai wrote:
> The PLLs used on i.MX8ULP is mostly the same as on i.MX7ULP,
> except the PLL register offset is changed. Change the PLLv4
> driver for code reuse on i.MX7ULP and i.MX8ULP.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

I'm OK with this one. But maybe later on we will have two separate
wrappers in clk.h called imx_clk_hw_pllv4_7ulp and
imx_clk_hw_pllv4_8ulp. We'll see. 

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>   v3 changes: no
> ---
>  drivers/clk/imx/clk-imx7ulp.c |  4 ++--
>  drivers/clk/imx/clk-pllv4.c   | 34 +++++++++++++++++++++++++---------
>  drivers/clk/imx/clk.h         |  9 +++++++--
>  3 files changed, 34 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
> index 779e09105da7..ba50d6db8097 100644
> --- a/drivers/clk/imx/clk-imx7ulp.c
> +++ b/drivers/clk/imx/clk-imx7ulp.c
> @@ -78,8 +78,8 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
>  	hws[IMX7ULP_CLK_SPLL_PRE_DIV]	= imx_clk_hw_divider_flags("spll_pre_div", "spll_pre_sel", base + 0x608,	8,	3,	CLK_SET_RATE_GATE);
>  
>  	/*						name	 parent_name	 base */
> -	hws[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4("apll",  "apll_pre_div", base + 0x500);
> -	hws[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
> +	hws[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4(IMX_PLLV4_IMX7ULP, "apll",  "apll_pre_div", base + 0x500);
> +	hws[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4(IMX_PLLV4_IMX7ULP, "spll",  "spll_pre_div", base + 0x600);
>  
>  	/* APLL PFDs */
>  	hws[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
> diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
> index 8ec703f27417..3c750ccbee25 100644
> --- a/drivers/clk/imx/clk-pllv4.c
> +++ b/drivers/clk/imx/clk-pllv4.c
> @@ -23,14 +23,17 @@
>  
>  /* PLL Configuration Register (xPLLCFG) */
>  #define PLL_CFG_OFFSET		0x08
> +#define IMX8ULP_PLL_CFG_OFFSET	0x10
>  #define BP_PLL_MULT		16
>  #define BM_PLL_MULT		(0x7f << 16)
>  
>  /* PLL Numerator Register (xPLLNUM) */
>  #define PLL_NUM_OFFSET		0x10
> +#define IMX8ULP_PLL_NUM_OFFSET	0x1c
>  
>  /* PLL Denominator Register (xPLLDENOM) */
>  #define PLL_DENOM_OFFSET	0x14
> +#define IMX8ULP_PLL_DENOM_OFFSET	0x18
>  
>  #define MAX_MFD			0x3fffffff
>  #define DEFAULT_MFD		1000000
> @@ -38,6 +41,9 @@
>  struct clk_pllv4 {
>  	struct clk_hw	hw;
>  	void __iomem	*base;
> +	u32		cfg_offset;
> +	u32		num_offset;
> +	u32		denom_offset;
>  };
>  
>  /* Valid PLL MULT Table */
> @@ -72,12 +78,12 @@ static unsigned long clk_pllv4_recalc_rate(struct clk_hw *hw,
>  	u32 mult, mfn, mfd;
>  	u64 temp64;
>  
> -	mult = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> +	mult = readl_relaxed(pll->base + pll->cfg_offset);
>  	mult &= BM_PLL_MULT;
>  	mult >>= BP_PLL_MULT;
>  
> -	mfn = readl_relaxed(pll->base + PLL_NUM_OFFSET);
> -	mfd = readl_relaxed(pll->base + PLL_DENOM_OFFSET);
> +	mfn = readl_relaxed(pll->base + pll->num_offset);
> +	mfd = readl_relaxed(pll->base + pll->denom_offset);
>  	temp64 = parent_rate;
>  	temp64 *= mfn;
>  	do_div(temp64, mfd);
> @@ -165,13 +171,13 @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned long rate,
>  	do_div(temp64, parent_rate);
>  	mfn = temp64;
>  
> -	val = readl_relaxed(pll->base + PLL_CFG_OFFSET);
> +	val = readl_relaxed(pll->base + pll->cfg_offset);
>  	val &= ~BM_PLL_MULT;
>  	val |= mult << BP_PLL_MULT;
> -	writel_relaxed(val, pll->base + PLL_CFG_OFFSET);
> +	writel_relaxed(val, pll->base + pll->cfg_offset);
>  
> -	writel_relaxed(mfn, pll->base + PLL_NUM_OFFSET);
> -	writel_relaxed(mfd, pll->base + PLL_DENOM_OFFSET);
> +	writel_relaxed(mfn, pll->base + pll->num_offset);
> +	writel_relaxed(mfd, pll->base + pll->denom_offset);
>  
>  	return 0;
>  }
> @@ -207,8 +213,8 @@ static const struct clk_ops clk_pllv4_ops = {
>  	.is_prepared	= clk_pllv4_is_prepared,
>  };
>  
> -struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
> -			  void __iomem *base)
> +struct clk_hw *imx_clk_hw_pllv4(enum imx_pllv4_type type, const char *name,
> +		 const char *parent_name, void __iomem *base)
>  {
>  	struct clk_pllv4 *pll;
>  	struct clk_hw *hw;
> @@ -221,6 +227,16 @@ struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
>  
>  	pll->base = base;
>  
> +	if (type == IMX_PLLV4_IMX8ULP) {
> +		pll->cfg_offset = IMX8ULP_PLL_CFG_OFFSET;
> +		pll->num_offset = IMX8ULP_PLL_NUM_OFFSET;
> +		pll->denom_offset = IMX8ULP_PLL_DENOM_OFFSET;
> +	} else {
> +		pll->cfg_offset = PLL_CFG_OFFSET;
> +		pll->num_offset = PLL_NUM_OFFSET;
> +		pll->denom_offset = PLL_DENOM_OFFSET;
> +	}
> +
>  	init.name = name;
>  	init.ops = &clk_pllv4_ops;
>  	init.parent_names = &parent_name;
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index e144f983fd8c..3f518559b8f9 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -42,6 +42,11 @@ enum imx_pll14xx_type {
>  	PLL_1443X,
>  };
>  
> +enum imx_pllv4_type {
> +	IMX_PLLV4_IMX7ULP,
> +	IMX_PLLV4_IMX8ULP,
> +};
> +
>  /* NOTE: Rate table should be kept sorted in descending order. */
>  struct imx_pll14xx_rate_table {
>  	unsigned int rate;
> @@ -191,8 +196,8 @@ struct clk_hw *imx_clk_hw_pllv3(enum imx_pllv3_type type, const char *name,
>  		.kdiv	=	(_k),			\
>  	}
>  
> -struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
> -			     void __iomem *base);
> +struct clk_hw *imx_clk_hw_pllv4(enum imx_pllv4_type type, const char *name,
> +		const char *parent_name, void __iomem *base);
>  
>  struct clk_hw *clk_hw_register_gate2(struct device *dev, const char *name,
>  		const char *parent_name, unsigned long flags,
> -- 
> 2.26.2
> 
