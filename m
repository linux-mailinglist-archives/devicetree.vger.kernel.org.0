Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4414240AC6E
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 13:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231980AbhINLbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 07:31:38 -0400
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]:58709
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231941AbhINLbh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 07:31:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TneJZCTsnVxmd4uv1JU4LdWThAud6SIrd4HwAHdHFu9m4cGf6d7UctHtjd5eUFrzqG5WbsDWbu7JdtGQIZtTgTSk3lzQ94ixI5DwwUK0I9sQS412eanyUwh7a4qjmcQDsk5sRBVbs5PMkORKHY29zKOj2JP0ZnXUto5HZX1ilpULoukoZpE+ZIfyKExkh4xTNxypUAPN6PbpYDdi2SSSx76o2YAFaYooWPToelBApW8Bg7vMr6xH7TNRiwzY8GWxNboslzU6eVinXrhBCE+nESa1aY58FAne8/T/U1Et7/4kPfH5xH2cvd3sJZ0k2uLJ5veGafHAlZgKVyYRqPYj0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=LqFhHdvaVnSaCHLWV/wpdUnTpIVeNtxxDQeynCZqRdQ=;
 b=CMr8uS5ljRa/+3QiDTTViCBE6FzsfBj3t3agH0vM79FND6946dSmJDvbHxmZV+EhgZyyRb4zNBXIz9ouZ6JQEaWTjrXPkIRGEzmiYOh6MQx55KEPik54jpNsVmRSpXL69xs5xKFFMw4lA+IjK4nyYDh6GJt/+FjB+iC0c/N12vIvq4x+ilLBxvsV48tNNkc60cUOwKWFq1wjmRZbCaGDZpfnct8j4/3oVHINe5HkTliXI0IrSEI37RLFVk1mHrUkuWrJFiepnB/gvwf49bnI86ujzyKigzRinQysr5LOnWZfOjtLrFBsPeRaN2DB/DU3GMNiVgwmgEy7R9Apa3VocQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LqFhHdvaVnSaCHLWV/wpdUnTpIVeNtxxDQeynCZqRdQ=;
 b=WhCr3C+HHp9lbTH7whLa+zvJWPrYyZh3ejmrfriNbEOTOx1ydLite10aXMrpaB4bpVfCcSRiOBTiHaPicOLJ41nVKP8YY9jCSO0p5pNT10SFS0/bFT9+sf83ea1SXoLFdfc7tsTxcG623gIRTyniq4Y4uwetkg1lgt8BTgJ7U9Q=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2638.eurprd04.prod.outlook.com (2603:10a6:800:56::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Tue, 14 Sep
 2021 11:30:17 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::485a:4462:94c2:5edb%10]) with mapi id 15.20.4500.019; Tue, 14 Sep
 2021 11:30:17 +0000
Date:   Tue, 14 Sep 2021 14:30:16 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, p.zabel@pengutronix.de,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/9] clk: imx: Update the compsite driver to support
 imx8ulp
Message-ID: <YUCHyHW7COZYiD6B@ryzen>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-4-ping.bai@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914065208.3582128-4-ping.bai@nxp.com>
X-ClientProxiedBy: VI1PR09CA0114.eurprd09.prod.outlook.com
 (2603:10a6:803:78::37) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen (188.25.164.198) by VI1PR09CA0114.eurprd09.prod.outlook.com (2603:10a6:803:78::37) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 11:30:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9b9fc82a-c5c9-481a-9711-08d977730730
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB2638CB9A8CFE05CE976A0C0DF6DA9@VI1PR0401MB2638.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yCkdgVrdwJSHyn7ga11dSuODuMolxDChZbPcj3MdqN9CRJ/mOmpUdlYUIdKgcJVOZsIv+di21Gz+W8vp6jiq+fbf+K5Vm0XmX3z3kSK3yaJuf0eqECgcSAVaAICLDGWYrh1u8MM3l+54BrUZ4K16nsT4oBoBTjJWjepPcPAJTdgieQaYYBci1eu0hk0hJJ0I5gIU56Y42yOkCA1k3PVYHByYxcK5MTDqnkNnenadgXsj8k56jv+uFo5mKw1qQ2FMlgfS0khF+GSqntVqCOtsnRnvA26WsLY4x/cKDKUFi6Thmkd5rEy629yP00IRIJ8b0UV5KFBmnFJWzLeR1z5JnW3RFGRDwyn9A3effsSdB1+9p0nLX6yApnv++zuWnF0CIhb7b6OBRRbPSptkAA3wqT41ki2Hz/X7Z1wDV5zu5GV74UUK/Qy2UBUnOsWSTwJOmbIB823oUZ/aJ3KFBpTuKXD2XdM7fVcgdD85x3ABBJjEs98poVlzE4aH/SsgnHjABXh0+EQ+e8C3yKJY9wWX6wEUyG/eOvSHzNulCVkEH0KFP8B8q2IHlo0WiOQlC65eVAOOE7v0pxoduluVxXKzW+p1OgiFXa5Cb1JltUnTAOlvOFBLwIwuhRYml3FD1cKFxpzcUA045Iby0nE3cUouNWZtJh6/w9++9lmRjKsPQmfiwAVd7iWanS/J0F8ka1JuXwY9X2Isz5paMOBYrh78vpPcrikUjU04QrcKSiT+Rw0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(346002)(136003)(376002)(39860400002)(66946007)(66476007)(66556008)(26005)(5660300002)(52116002)(6496006)(186003)(38350700002)(38100700002)(8936002)(6862004)(478600001)(86362001)(15650500001)(33716001)(53546011)(9686003)(55016002)(9576002)(956004)(83380400001)(2906002)(44832011)(316002)(8676002)(6636002)(4326008)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WvRtprwdNKJH/q7qjAGk7qK9BvF8fLG9iwpDxhSkQJjn/cSophc2X5RTZw2e?=
 =?us-ascii?Q?jfuvpJJAnHKSmAfHAYGmBN1+aX0knXgtgAQ9d1erUYI6cjx5GUNHwDlfpN/Q?=
 =?us-ascii?Q?tMqs8whRzWC0bvPUquXOkHdX5dtIa2tyjqYg/Lo44NWmuyTFgi/S0lSRpDQx?=
 =?us-ascii?Q?OTnubSSAK/Yha8tehUUI1W7oYyhzhFOoLCh54KV7uztHoukm7l9rccFF1GCQ?=
 =?us-ascii?Q?cdCE5zOOQn12Paikyk/D74uNV6DVaLv5s2rn/GOXXgBqsbZy8Adgtq1Sdlvn?=
 =?us-ascii?Q?RkT0BZ4WT2aS0vmIA4YGECKKEModEZbwZQ+ut49HqmfVjxlqRuvhMTC3q7dM?=
 =?us-ascii?Q?Ky8iNnEaZuAI9wkuNtY8/GxZ6cF87GxKv3/Y0Fx2IKrXd6lK24Yt0ULWi9w1?=
 =?us-ascii?Q?spZfLgUS9xdtaQsuPclbVy0wPgQG0Yu7R9zC2/ivKY/3rGNs7Yq+jOOgmsRZ?=
 =?us-ascii?Q?27qvWoHbEUqfRk9mDX5HR/3ub0BecP8mmqIFVEownOs4gPhiQBdpWgeeK83F?=
 =?us-ascii?Q?BPvaj5JeLnz/7o7J1ZqnZqjRirAmQykJehwkhnW53LQ9DorKpbebWvwzXxA0?=
 =?us-ascii?Q?zHxB4q5ER9GsNsQgg7GohoaBjqPAOsMbMxUrytN0TdL+OCOVHmXQPv+PThM1?=
 =?us-ascii?Q?ra+z+u0SBaZ468Kk9ajizH05F3EM1Vrhe5WftD0tUwONPWlylpKfPJXA9Dfx?=
 =?us-ascii?Q?5CVWBpC1CXyWFdO8AONfxe2644dnwycxRAIU+MxQb2wgCTuO52HbPaBV0ST2?=
 =?us-ascii?Q?oUspBnBGo3R1MmYLPcWC9oBvafPuLJpqtyus1flKmuUEUYkSN5IyounpREZQ?=
 =?us-ascii?Q?jVwc9POo6wBaWHqfvBIFGYSR1pdpT9h1WcZqM6torLWzF8IvzhYLgjRiZ++N?=
 =?us-ascii?Q?/dq01Gv/MmLP1xl9tnjIFPDgUbE0D5E7A0e6zkMu0niPzAals4jCpnyBbnXg?=
 =?us-ascii?Q?fBd9NYG7ds6Df3jgXaylW2U43L5WYlM34TDal2eKYyb5ZM0Ee3fL40KZFDa2?=
 =?us-ascii?Q?PahU8qIjSEc5f4v76lPG+tiRTCJzo3wQiXcYMoMJG/UoYU64lml7731Lnagk?=
 =?us-ascii?Q?Zr53CTH93PfgcLLx39lHTsTxrbb5+w9X3Cfq/Azn/v3g3MGe6gKkG7BkuRPP?=
 =?us-ascii?Q?Bz4e2iEINztBHgMqMRZwZirwjg4sczPVi9wtrywaszH8sa7FLUuWkNaZ3UBi?=
 =?us-ascii?Q?gfkRBI0RQb5to2DGW5IpJL0jraiAqAsjb/+tfD8hFZ35AXJLgWbyrOJj3KoT?=
 =?us-ascii?Q?b2qM7heu77kO2jn/Wvm7LlaRbVnIVVldJYwoKPt0RjIwkk1VLqXi0nWjQcYD?=
 =?us-ascii?Q?IaIiCvs7S3ygfPNDMjCJl2un?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b9fc82a-c5c9-481a-9711-08d977730730
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 11:30:17.6844
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U8PdsfMDr7/isVsVDB6AS5rtR4R4vgmwZtF2Xh4TfOer3dZkAaH84pyqwkUtDHYy3H7bjDXDqxaO7LE0//OPcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2638
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-09-14 14:52:02, Jacky Bai wrote:
> On i.MX8ULP, some peripherals have a sw_rst control resides
> in the per device PCC clock control register, all others are
> same as i.MX7ULP, so update the 7ulp clock composite driver to
> support i.MX8ULP to maxmimize the code reuse.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>   v3 changs: no
> ---
>  drivers/clk/imx/clk-composite-7ulp.c | 61 ++++++++++++++++++++++++++--
>  drivers/clk/imx/clk.h                |  6 +++
>  2 files changed, 64 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-7ulp.c b/drivers/clk/imx/clk-composite-7ulp.c
> index d85ba78abbb1..50ed383320bf 100644
> --- a/drivers/clk/imx/clk-composite-7ulp.c
> +++ b/drivers/clk/imx/clk-composite-7ulp.c
> @@ -23,11 +23,50 @@
>  #define PCG_PCD_WIDTH	3
>  #define PCG_PCD_MASK	0x7
>  
> -struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
> +#define SW_RST		BIT(28)
> +
> +static int pcc_gate_enable(struct clk_hw *hw)
> +{
> +	struct clk_gate *gate = to_clk_gate(hw);
> +	u32 val;
> +	int ret;
> +
> +	ret = clk_gate_ops.enable(hw);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * release the sw reset for peripherals associated with
> +	 * with this pcc clock.
> +	 */
> +	val = readl(gate->reg);
> +	val |= SW_RST;
> +	writel(val, gate->reg);
> +
> +	return 0;
> +}
> +
> +static void pcc_gate_disable(struct clk_hw *hw)
> +{
> +	clk_gate_ops.disable(hw);
> +}
> +
> +static int pcc_gate_is_enabled(struct clk_hw *hw)
> +{
> +	return clk_gate_ops.is_enabled(hw);
> +}
> +
> +static const struct clk_ops pcc_gate_ops = {
> +	.enable = pcc_gate_enable,
> +	.disable = pcc_gate_disable,
> +	.is_enabled = pcc_gate_is_enabled,
> +};
> +
> +static struct clk_hw *imx_ulp_clk_hw_composite(const char *name,
>  				     const char * const *parent_names,
>  				     int num_parents, bool mux_present,
>  				     bool rate_present, bool gate_present,
> -				     void __iomem *reg)
> +				     void __iomem *reg, bool has_swrst)
>  {
>  	struct clk_hw *mux_hw = NULL, *fd_hw = NULL, *gate_hw = NULL;
>  	struct clk_fractional_divider *fd = NULL;
> @@ -77,7 +116,7 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
>  	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
>  				       mux_hw, &clk_mux_ops, fd_hw,
>  				       &clk_fractional_divider_ops, gate_hw,
> -				       &clk_gate_ops, CLK_SET_RATE_GATE |
> +				       has_swrst ? &pcc_gate_ops : &clk_gate_ops, CLK_SET_RATE_GATE |
>  				       CLK_SET_PARENT_GATE);
>  	if (IS_ERR(hw)) {
>  		kfree(mux);
> @@ -87,3 +126,19 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
>  
>  	return hw;
>  }
> +
> +struct clk_hw *imx7ulp_clk_hw_composite(const char *name, const char * const *parent_names,
> +				int num_parents, bool mux_present, bool rate_present,
> +				bool gate_present, void __iomem *reg)
> +{
> +	return imx_ulp_clk_hw_composite(name, parent_names, num_parents, mux_present, rate_present,
> +					gate_present, reg, false);
> +}
> +
> +struct clk_hw *imx8ulp_clk_hw_composite(const char *name, const char * const *parent_names,
> +				int num_parents, bool mux_present, bool rate_present,
> +				bool gate_present, void __iomem *reg, bool has_swrst)
> +{
> +	return imx_ulp_clk_hw_composite(name, parent_names, num_parents, mux_present, rate_present,
> +					gate_present, reg, has_swrst);
> +}
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 3f518559b8f9..a9bcfee7a75b 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -237,6 +237,12 @@ struct clk_hw *imx7ulp_clk_hw_composite(const char *name,
>  				     bool rate_present, bool gate_present,
>  				     void __iomem *reg);
>  
> +struct clk_hw *imx8ulp_clk_hw_composite(const char *name,
> +				     const char * const *parent_names,
> +				     int num_parents, bool mux_present,
> +				     bool rate_present, bool gate_present,
> +				     void __iomem *reg, bool has_swrst);
> +
>  struct clk_hw *imx_clk_hw_fixup_divider(const char *name, const char *parent,
>  				  void __iomem *reg, u8 shift, u8 width,
>  				  void (*fixup)(u32 *val));
> -- 
> 2.26.2
> 
