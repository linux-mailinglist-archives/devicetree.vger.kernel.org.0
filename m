Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23B4D391547
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 12:46:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234014AbhEZKrz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 06:47:55 -0400
Received: from mail-eopbgr130053.outbound.protection.outlook.com ([40.107.13.53]:48353
        "EHLO EUR01-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234178AbhEZKrw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 May 2021 06:47:52 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KZjKrA2U8atXi013psvltXVYCfmNPjMAWdAUkRyIYOzC274+IXnk7PUT7B8PD/3fBF1Khg2X4kz7UB2hVgC4akxrwBh7yTzRDyLd32u2EGWCO2ez9kJXMlceyrpDn2n6o0aIpf+ZlF/Xsouyn4U4CMDk+gWksdRq0F50TRyzGNMvYAOX+6i/v1JLNYCjnILLD6xjQiWTF1cjyzytcXRstTaWbe0lQwfDV8oKjSGLn2lxblBY4kfhA4CJploB8PMTTln9kU1l8ETVo/W5AUWnS+O0mEKG5ShwY0P2FgTkbSXp9ErTmjLLZfqV38F6y3W4EBBJsXtV+HKU1jb+YNCfbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H32TzzqYQD3RT92w1pELCxanK0DjR6zfX+u9BKpLbC0=;
 b=lzSCjjVHdckzOsjOOtQ/66Zg8Z+kjcEE+r5ipDCYwZoM3QvWEkA1RpW2RGpddLSEcP0BjzLVOnCZGG7stF9owFQEzwvAUZ604xG25xuad1EpL2H67A7nMjrXNpl0gzLxjz6nPoOUXTNhxEeDuGDwCeMvAiom4yi2aS31sKS1lLum2bJ+Rw7Erv5WnvwXkNuFBzrs07pHgJnxPfEZR3tNTVtN/L6/YEJQHSWzK7YnxWiahNqr2U0Pr2y+30k19TTQNPoQ63hcnwU1yGMamM0DzxvrDTwlW+OKW2T+xPcYIboyCwdqn9/qFfXr56LfvHXBHLfq0oNDPgIYnAt889q+pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H32TzzqYQD3RT92w1pELCxanK0DjR6zfX+u9BKpLbC0=;
 b=kGnLMU2W1WDF+joJBkNjTb2KAf/rWJyVBjXa5zejjPMpjdpwPfG8EaMxHg5czRPzSbw0AmxWlJdzgkpAfBV7lOoeQKfTe/DayJ4l3xXop3BozIGZNg8OanciX+ARHpZI3G0WGJuuxaTZ/Z+0xN1yuqbLqnkxSAz0kvohbqOu7pE=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com (2603:10a6:800:57::8)
 by VI1PR0401MB2640.eurprd04.prod.outlook.com (2603:10a6:800:4f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Wed, 26 May
 2021 10:46:16 +0000
Received: from VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::49a5:9:d201:2382]) by VI1PR0401MB2559.eurprd04.prod.outlook.com
 ([fe80::49a5:9:d201:2382%6]) with mapi id 15.20.4173.021; Wed, 26 May 2021
 10:46:16 +0000
Date:   Wed, 26 May 2021 13:46:14 +0300
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, dongas86@gmail.com,
        linux-imx@nxp.com, shawnguo@kernel.org, kernel@pengutronix.de,
        festevam@gmail.com, devicetree@vger.kernel.org,
        Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/2] clk: imx: scu: add enet rgmii gpr clocks
Message-ID: <YK4m9lU/o9KHxwIN@ryzen.lan>
References: <20210521031248.2763667-1-aisheng.dong@nxp.com>
 <20210521031248.2763667-2-aisheng.dong@nxp.com>
 <YK4kK+r2Dkb+J+CH@ryzen.lan>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YK4kK+r2Dkb+J+CH@ryzen.lan>
X-Originating-IP: [188.27.175.31]
X-ClientProxiedBy: VI1PR0501CA0005.eurprd05.prod.outlook.com
 (2603:10a6:800:92::15) To VI1PR0401MB2559.eurprd04.prod.outlook.com
 (2603:10a6:800:57::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ryzen.lan (188.27.175.31) by VI1PR0501CA0005.eurprd05.prod.outlook.com (2603:10a6:800:92::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20 via Frontend Transport; Wed, 26 May 2021 10:46:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3c8d220-7555-424e-53cd-08d920337cec
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2640:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB26406D3BDC98F7FDE0125324F6249@VI1PR0401MB2640.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H5mcKHIJwzXf2ZTWn9nzdTqaUtBT4HklWu38Ugj5QVXNVSM/5KgCOorE7eDEfAZNEj5CXFLU6vRHaMu9MV8hj4bZbvELtx6ViC5vpTe1+I+p5IIk+wJA8nL4jWK3KtGNIRGaRPQEXhjBKxdqpOeLNu/8iKumcSvXaa6NeNEMe6eV/ptX4o9eJoVtd2KXXZXE32Bew06XzMnxm4HGkoQDmMKC014iVYbSggNrnhhlkcfE/mO74aqxkmYlplyU/+xI25wFM0sNQ1/jPSWSJUcEv1oN/+BBQCjyXKwuhzoewR3R8wn6gyLTTRuRLBiaOO1FVMqAMRya139DY4PIz4tAnXTQlmHKLzc6l6TuryEPS1ovw7MDilmP9/7YQhBaHpiFTNo9XLJQNodtduXEnglq+OD7AKWxaN8asqrCFZ/XQdffkEH2P1Ans1IocQne6yVBw6VDdtrdYbEv6OTzyO+CaNKPvlO7bUs85pNAzAkLM6MbbfFzHrsmUmu3rHFEZ2VbUVVoAfOZlJRQa74nKZZUE/wL5IkR0jqe9afUCHdnsmUSfaRlpSmNqOr9Os1MKr4MzkVxquWaiZ9eUQrBqfrzndyQ8Za+/RmO/dlKnQ8Ct5b2c+ZS2pv2PgFcAPM9UBc70X1OHV3fp6X33hQuFXno+VyJ6tjUbHTLatG1fPB4phs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0401MB2559.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66476007)(53546011)(6506007)(26005)(83380400001)(66556008)(52116002)(44832011)(6862004)(66946007)(6636002)(2906002)(498600001)(55016002)(8886007)(186003)(7696005)(9686003)(38100700002)(8676002)(8936002)(956004)(38350700002)(4326008)(16526019)(5660300002)(36756003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?NGn45mVx6VZh7DinQs57EiVxyP7dcbQo7w9ifj4pnYZVL1jqEU20z0h/cvxx?=
 =?us-ascii?Q?jb8nZ1bgZ+LqQpC7fLffVKiWh6aQO5MBR7AWDl3ag+pT1b1lUkplqoyfa2SV?=
 =?us-ascii?Q?n/nrJJpKrkMryWCOWxYQy20J0NAQJmLn9hyen6oGXVV6JEuy/GFw285XfHiN?=
 =?us-ascii?Q?s83PyesC0t3Ci0vqeDnd4XfYhfAw2OvQQqoquZgwcD4Sp9Ryf1P3MbyidwGX?=
 =?us-ascii?Q?hoeZ23F3JgdK31kO55MxgPsYdbF4SaOOHzJ1CUaioYYf/Ircwhl1TLsqp/Ne?=
 =?us-ascii?Q?JkmLOAVoDz1dJLTX8Z4+Yyohwfd+vGauGktj/hlzn9UpM1/T6zegsjKJZQI3?=
 =?us-ascii?Q?zfd0vK0S4+J3hrT9G3Ze5zvkUDDihSjKLrS5+Ctuuqe+CadoRNAILnPmaBzH?=
 =?us-ascii?Q?pdNE0Di8l/bM1uCPn40wEgJQ6aVLxo9rMS3xmzZgn5E1jLUmJo4ZlEA+GHt7?=
 =?us-ascii?Q?3ffXfEW+lXNSY1V0LkexcwRv1/WEXBMVKYkfKBF35tlKaJPJhHOWZ2cr7Ylx?=
 =?us-ascii?Q?scVQI4Dyviw+EfhLlUqYMpRtlkqhFMfAjINTNki6RXBt9NMmnuso1uqQysJq?=
 =?us-ascii?Q?zRqKMWbkC2UpWwzmEgDplELDR9BA9itrh+cyMH2vh9FszKB3Jp4gyz6zJ3eh?=
 =?us-ascii?Q?p/CLKMCcu9qxZVcxOlbO5/tVmLsSd1kcOb2rjV7nDltZzGaBI10PDpVOur23?=
 =?us-ascii?Q?qFGK0FGHHiYyM82t8XCH8XKWLazwcmReOOUMECbFwiXERjbiVn5W3FFqQFFU?=
 =?us-ascii?Q?utiAVY6iawBlUAXKmRZdPcfRxpZg8C6fUm2fjggMrrSIBzW2anaqNjQYX/6j?=
 =?us-ascii?Q?QXBdYY+FN375VjGk62dY1q7yKER3mxbzMr8iCR0QWfqWeAmSkI8ZcGSPVEfs?=
 =?us-ascii?Q?tt6wNw1IczfGCqWCsgAcA1sf7I3h6GU4khtnGyxh5Mx62hUFVbcRHtM7jLoa?=
 =?us-ascii?Q?tAft7X0KKGx5b2hUDpUOiIYjUPSXyK6FktAKPgMCxU7fQlQjIpKO4OEv5mtl?=
 =?us-ascii?Q?4ke7aehlomaMvAY1dCduYi7rWbLMSdgY8U26Um8uIB8yUkXK+Q0IGxQxuE9R?=
 =?us-ascii?Q?VDw+00+okCz6k5BwG890C6PUgYe7bAxloIuX4uD6wIb5DicsY2fwNmwnVit7?=
 =?us-ascii?Q?0v69403reX5pJFh1/PnsfOTXT4w0Rgnt6fuOm/YtWVT+pAfUWQjIgePelqw5?=
 =?us-ascii?Q?2rKmi3iQsj1ZiZ4N1WUFZOF/TzYEJxX/ad36ClZUvodiiuKeVYBvU3jnRcnl?=
 =?us-ascii?Q?duEntARsv8G4+nKWgvmZ25t0QRIHVBkQfHhl6KaG6Z6RZJ2psZJh81Oo3mKK?=
 =?us-ascii?Q?bn+iodK1jHTCI6UXN5Ybb8kY?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3c8d220-7555-424e-53cd-08d920337cec
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0401MB2559.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2021 10:46:16.2168
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: suQ7Itkp8kRHCvHPn3j5iJJglwmnlFvfBXeQL7h0s+ffAmsbneUQVs8BNt7vrUjuJ8VwzUOFG8DNVn4z8LQGVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2640
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21-05-26 13:34:19, Abel Vesa wrote:
> On 21-05-21 11:12:47, Dong Aisheng wrote:
> > enet tx clk actually is sourced from a gpr divider, not default enet
> > clk. Add enet grp clocks for user to use correctly.
> > 
> > Cc: Abel Vesa <abel.vesa@nxp.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> I'm OK with this:
> 
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> 

Applied this one, thanks.

> > ---
> >  drivers/clk/imx/clk-imx8qxp.c | 22 ++++++++++++++++++----
> >  1 file changed, 18 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> > index 88cc737ee125..f3cdd6449212 100644
> > --- a/drivers/clk/imx/clk-imx8qxp.c
> > +++ b/drivers/clk/imx/clk-imx8qxp.c
> > @@ -25,6 +25,16 @@ static const char *dc0_sels[] = {
> >  	"dc0_bypass0_clk",
> >  };
> >  
> > +static const char *enet0_rgmii_txc_sels[] = {
> > +	"enet0_ref_div",
> > +	"dummy",
> > +};
> > +
> > +static const char *enet1_rgmii_txc_sels[] = {
> > +	"enet1_ref_div",
> > +	"dummy",
> > +};
> > +
> >  static int imx8qxp_clk_probe(struct platform_device *pdev)
> >  {
> >  	struct device_node *ccm_node = pdev->dev.of_node;
> > @@ -80,12 +90,16 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
> >  	imx_clk_scu("sdhc0_clk", IMX_SC_R_SDHC_0, IMX_SC_PM_CLK_PER);
> >  	imx_clk_scu("sdhc1_clk", IMX_SC_R_SDHC_1, IMX_SC_PM_CLK_PER);
> >  	imx_clk_scu("sdhc2_clk", IMX_SC_R_SDHC_2, IMX_SC_PM_CLK_PER);
> > -	imx_clk_scu("enet0_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER);
> > +	imx_clk_scu("enet0_root_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_PER);
> > +	imx_clk_divider_gpr_scu("enet0_ref_div", "enet0_root_clk", IMX_SC_R_ENET_0, IMX_SC_C_CLKDIV);
> > +	imx_clk_mux_gpr_scu("enet0_rgmii_txc_sel", enet0_rgmii_txc_sels, ARRAY_SIZE(enet0_rgmii_txc_sels), IMX_SC_R_ENET_0, IMX_SC_C_TXCLK);
> >  	imx_clk_scu("enet0_bypass_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_BYPASS);
> > -	imx_clk_scu("enet0_rgmii_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0);
> > -	imx_clk_scu("enet1_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_PER);
> > +	imx_clk_scu("enet0_rgmii_rx_clk", IMX_SC_R_ENET_0, IMX_SC_PM_CLK_MISC0);
> > +	imx_clk_scu("enet1_root_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_PER);
> > +	imx_clk_divider_gpr_scu("enet1_ref_div", "enet1_root_clk", IMX_SC_R_ENET_1, IMX_SC_C_CLKDIV);
> > +	imx_clk_mux_gpr_scu("enet1_rgmii_txc_sel", enet1_rgmii_txc_sels, ARRAY_SIZE(enet1_rgmii_txc_sels), IMX_SC_R_ENET_1, IMX_SC_C_TXCLK);
> >  	imx_clk_scu("enet1_bypass_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_BYPASS);
> > -	imx_clk_scu("enet1_rgmii_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_MISC0);
> > +	imx_clk_scu("enet1_rgmii_rx_clk", IMX_SC_R_ENET_1, IMX_SC_PM_CLK_MISC0);
> >  	imx_clk_scu("gpmi_io_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_MST_BUS);
> >  	imx_clk_scu("gpmi_bch_clk", IMX_SC_R_NAND, IMX_SC_PM_CLK_PER);
> >  	imx_clk_scu("usb3_aclk_div", IMX_SC_R_USB_2, IMX_SC_PM_CLK_PER);
> > -- 
> > 2.25.1
> > 
