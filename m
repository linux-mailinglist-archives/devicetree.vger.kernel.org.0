Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDA2D40244E
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 09:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbhIGH3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 03:29:53 -0400
Received: from mail-vi1eur05on2127.outbound.protection.outlook.com ([40.107.21.127]:40064
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S235868AbhIGH3w (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Sep 2021 03:29:52 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6hFf54rNwHU6/00rXSC/T36ilk4P8TyzPFx9ACUNUX48nekph81UGC6px+cGMnsPX4ZKnUs4QQvwGxDxkXGkHaXNbpKBphidAlto/piNgHf7LlbnN2HUYtcfG6P+y+UDi9fTSi6mZfnHtVvo9acYpip7OYbXvTzAYffWztLdiztcdI+mFLXo6fuXPy1ioxWcYk+1AOCg/ipYryLAbPiKPhghIDsOpadzEXeOXB/71JwKWjKe+flhUpWyKYPrCEhBURTueYYtWSyaAu5G6XQPLF5QM9coxWWkwQejRxnwZw+q6UUjD3TrjRfYeImSbbOrAK5pILTQ6IluvKikHNxeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=EIYVJ0S0pPTtaeB0DoHPC1A2JEY/Gr6uAX2ZCWodqA0=;
 b=DGpq2q3W6O6M6HaE39sBNtBvizxfe97sqUntqrLn61OQMrCHhXGKURjUneK6v3rJNazNY0/eRi/gN9MZKlZFfQ886vjbFikGhhqvs1wtFq6/J3+6/QAy+2KDe11BliUXC5W+25enpu+eBvJUtr1pEYAL8wutjdg1mfZrJg0rnbhwajAuV5n+EIcengKeStNxGBzzx5AM+Owf6hZC/ob6NBPOcGWPRUXlasDgGCfp5Vyw8CvUZdpnsHR936jxFdgyqrrAhrJDfm2odarcMFQc6F7pMQIGtFL8tllw0Q3IxUuBwiB40mIpjf2Dikw49Jb8v2ohRNnI9ZeSLpRCFN4QZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kontron.de; dmarc=pass action=none header.from=kontron.de;
 dkim=pass header.d=kontron.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mysnt.onmicrosoft.com;
 s=selector2-mysnt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EIYVJ0S0pPTtaeB0DoHPC1A2JEY/Gr6uAX2ZCWodqA0=;
 b=gOEZLK8UJk9cqNqVGT57SF0MmkUY8Mu+lKB+fOcT8Lifu75Xb9tlQs0l8xqe5NktlgOG9bA1R1hEU+GrrjxOMdFscCSYNilSuoM95Jro+WzGdDyRfNcP10UCDnhH4sBzMn9JWNrkJ9P3VdmfIycCt+YJLaT76iSFRyJ5puij2A4=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=kontron.de;
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:d6::31)
 by AS8PR10MB4646.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:337::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Tue, 7 Sep
 2021 07:28:43 +0000
Received: from AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1]) by AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d124:4253:83f9:d8e1%5]) with mapi id 15.20.4478.019; Tue, 7 Sep 2021
 07:28:43 +0000
Subject: Re: [PATCH v3 10/18] soc: imx: add i.MX8M blk-ctrl driver
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>, Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
 <20210906184333.1855426-11-l.stach@pengutronix.de>
From:   Frieder Schrempf <frieder.schrempf@kontron.de>
Message-ID: <49a42cba-cd61-0c4e-5e56-37fe6cced57a@kontron.de>
Date:   Tue, 7 Sep 2021 09:28:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210906184333.1855426-11-l.stach@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0PR02CA0121.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::18) To AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:d6::31)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.10.40] (88.130.75.72) by AM0PR02CA0121.eurprd02.prod.outlook.com (2603:10a6:20b:28c::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 7 Sep 2021 07:28:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45e3e93e-c0c8-48cb-da1b-08d971d11ef3
X-MS-TrafficTypeDiagnostic: AS8PR10MB4646:
X-Microsoft-Antispam-PRVS: <AS8PR10MB464611CF28F26F16DC73F8D2E9D39@AS8PR10MB4646.EURPRD10.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z6gWvlZZefzhhi5HGDzrQQMNahJ/n4k4prC5FgmSSZGEzEPlVL47OZK/bV9+QWdzDBUhtbBsjZJ+r5UigLHXo6DeghsZ7WNlUJoyy7flqfH+DAREvn0sjfCtrpo49/KxdTaaAQ17//FMuN+IAYHbcvYJ8Op8D6rW5ZplxjPDr3Md4bd28jX78TaBD6Qhp1bgSz6X4+D8D8Sd0SSK1/svZLRv4qsCDT3cN5SdPFHElb5IdKmc82WG9ZS57Icp9RTS1Jiw933fGuAJwovhlSToLk9P9bPwayHtphpiOQm9HoaNCDInkeWieeRFTnEVX7N5j0JFi8KHtKjj2x31gDSwhHH2KFOLgzmIT8wUoY/QNPeEBCGhRwyT077dAPzK9BSir1aPfaV/GEiHNMmPszDB8OnOTxMn2mhuCgJ3CmCn3ae4S1EGKlVgV6Z/18v4qNIpohcTMP0Dif4YC+zmLV/mEt706N/7p/K6go4bsHf7KJK3Hhgsp5TZpX4E531G5FcnSg718BVqFqtIP0hFJyk7lmfRhXLNj8z+ykdALPpVIRfP1xMy/gXw32X4gXlCnps3HEJUXShZR6/3HVEh+tgfzZa6a4oa43XQxeLnTnIk1x8CnK+req/kKCnv71wbeguSg4oB+5YFwKnq8Okk2tPoQi4uMcXVsjCSP/OH7fz7Toum76uqNAbfpadxoZd91RD1TbfwpWy6VNapmfT6JACsaOHQKyCmpa8MnRAzb1xcIdI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(316002)(16576012)(2616005)(36756003)(44832011)(31686004)(54906003)(110136005)(7416002)(4326008)(30864003)(53546011)(31696002)(8936002)(26005)(2906002)(6486002)(186003)(8676002)(38100700002)(83380400001)(86362001)(478600001)(66556008)(956004)(66946007)(5660300002)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1JEUVR5WlltajNEYmdWVkJZQVBOakNBL2F5alE2K0dUN3RCNFRXMTFNY3J6?=
 =?utf-8?B?bDNHVEpWZWlvUm10blZ0eXhJQmR5ekdjMkFkd0ROakRWbThybS80NnBBVzdP?=
 =?utf-8?B?RDcyS3hpL1pkWUlVTnlrUXdmMlVEdThVZ2RUOVVjYVlvVlVFdXRqcHlKVTgy?=
 =?utf-8?B?UDlCQ21VOVhicU0wU3ZENk0vaS9WSmFBYXVuMSt1RWNjR2toaENOcVdONDJW?=
 =?utf-8?B?ODN4eW04TWx4bjBsY3hENlVna0NQQzZhT3N1eXZDdmpsM2tZZEpheE9iNnpN?=
 =?utf-8?B?UWErVVJXZDZMY1RFYVRSazJWRUpYMkIvZHhMSld3MU9zdkJ3UTV5ZGhwc3Mr?=
 =?utf-8?B?SlVhUjB1bEZHMFNZZThiWkN3S2NyVTQzakdYZXhnRW9yK25PNllqN0FKSElG?=
 =?utf-8?B?Ti9aRkxVQlV2QXMxS0FQSWhUK2xXaGx4eGZJeWhCT0VaZ2pvKzY4aExJc3dH?=
 =?utf-8?B?alhqRkRYREZzQ0JZN2tqMmgrWjl6TmVaSEJOTFE1SndFUkpuajVDWEtwb29L?=
 =?utf-8?B?SHF3eWhRckxwbk1iS2hza0h4QUROWXd1c2JKVmNROTgwUmJOQkFYSHJwTWVt?=
 =?utf-8?B?Y2E0WURVUElkVWpDcFA4TlF5S01HOUM1Z002SlIyemNTNy90NmVsSXUycWZD?=
 =?utf-8?B?V1Q5MTFkeFI3VS9UM25JbHNLd1Bibm9kM0R4NW11K0RoclBIRFJKZzlzaUps?=
 =?utf-8?B?bHNscTl4eUZZdXBnMGdWYTM1RHprTHJjcWR4bDVuZVNIVTBQbXZuQWE3ZVFt?=
 =?utf-8?B?bHhneHZIdU5DTjh1VW1iSzYxd1FBVGN4aDJOS2FLOTZHT1ZlN0ZuelFzNW1S?=
 =?utf-8?B?RXNrL09RR3R3eFJxUVlsUkd4WW1qWWFabjhKZjFlbk5VQnZFdzVBYU1sUmNH?=
 =?utf-8?B?MGRtbFRtSlBYeitxRlFFSUhNZ2tXUCtwMnIxNEZnenNBbUlMVTNzdFgvOStv?=
 =?utf-8?B?bTh1Z3QzcWhSN290elVCQTVxKzJUVmVSVGxSWFRvNEdmc1FGdE9FWElYTCs4?=
 =?utf-8?B?OGhaTFhOZ3JhUjBiV3ZTVXdzdDloT0pmTnBQcytDNXpwd0VSZERkUmNYdUp3?=
 =?utf-8?B?ZzJCTWFReVl4WEl3ZWc1alVteG8vYi9IcnhXaGRoTU1Ibk13cDJLWlFjdkFx?=
 =?utf-8?B?UzV6MkU3UVVJbkRzbjhjSk1jSi9zbFNnS2hETWhHLy9uUEtJNGt2aWNwNmVT?=
 =?utf-8?B?RHdmNlNzR0d6OGFoV3RMOGhaWGZJRFRna3BYaTZJT1VYTE1lRDEzRFZ6Yktx?=
 =?utf-8?B?L3dDQWlBWFpoV2lPeVBmSGpGcE1LR2xINWJKa25KajJwMTliQWoydnpuS0RZ?=
 =?utf-8?B?SitLLzcvZ3FCNFl4NUc2RlY5eHpTYVorSmZmWGR0TVpOZGJHNkt6eSs0SXk4?=
 =?utf-8?B?OC9VZlMralRrZ1lVenhNWTJlREQxeGJEYWNXNDB0TGRsYWx2YWJZeW1wb3c4?=
 =?utf-8?B?WWJUell5MS9lSFdHRnk4U2d0SDJLaHRkdk0xYWhVeTlkejBOMGdVcXI2MFh5?=
 =?utf-8?B?eCs5T3ZUa01kclE1VnNiOEoxVXNyMGROSzYvbGc5cXpVenpuRHpsai84TTI4?=
 =?utf-8?B?Z0hYbjhUWkVQbmprZ00wbGx3aVQ0RHozYXh5RGZCeEF6TVZSUG15RkJyV1ZV?=
 =?utf-8?B?NnFvZDkwdnJ1SGxWbHlRRWVSbEpjbUFWdWJoZHVBQ0k3TkI1QUErZko1byts?=
 =?utf-8?B?d3l0SGRCTlE2M0l6N3BoMnJHcWJobEdkaXNRRE1EL09FZEkwbkMxTEY2L3hB?=
 =?utf-8?Q?Cq49LeFs05MU4dm3ug5uApHpzaK4jUeKiYjBRBY?=
X-OriginatorOrg: kontron.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 45e3e93e-c0c8-48cb-da1b-08d971d11ef3
X-MS-Exchange-CrossTenant-AuthSource: AM6PR10MB2968.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2021 07:28:43.8932
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8c9d3c97-3fd9-41c8-a2b1-646f3942daf1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AImE3RwJGDko2DwF+sA42/dd7XQe0SJl/YMYBahTcDN63pbKxTcoohbHAYKmQO/k2TQqKL+iM8VA1SPK9F1KPH0rW+SuL5SPv4tlxzr1zZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB4646
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06.09.21 20:43, Lucas Stach wrote:
> This adds a driver for the blk-ctrl blocks found in the i.MX8M* line of
> SoCs. The blk-ctrl is a top-level peripheral located in the various *MIX
> power domains and interacts with the GPC power controller to provide the
> peripherals in the power domain access to the NoC and ensures that those
> peripherals are properly reset when their respective power domain is
> brought back to life.
> 
> Software needs to do different things to make the bus handshake happen
> after the the GPC *MIX domain is power up and before it is powered down.

        ^ double "the"             ^ powered

> As the requirements are quite different between the various blk-ctrls
> there is a callback function provided to hook in the proper sequence.
> 
> The peripheral domains are quite uniform, they handle the soft clock
> enables and resets in the blk-ctrl address space and sequencing with the
> upstream GPC power domains.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

I don't understand all of the logic behind this implementation, but
looking at the code I don't see any obvious problems. So FWIW:

Acked-by: Frieder Schrempf <frieder.schrempf@kontron.de>

> ---
> This commit includes the full code to drive the VPUMIX domain on the
> i.MX8MM, as the skeleton driver would probably be harder to review
> without the context provided by one blk-ctrl implementation. Other
> blk-ctrl implementations will follow, based on this overall structure.
> ---
>  drivers/soc/imx/Makefile         |   1 +
>  drivers/soc/imx/imx8m-blk-ctrl.c | 455 +++++++++++++++++++++++++++++++
>  2 files changed, 456 insertions(+)
>  create mode 100644 drivers/soc/imx/imx8m-blk-ctrl.c
> 
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> index 078dc918f4f3..8a707077914c 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -5,3 +5,4 @@ endif
>  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
>  obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
> +obj-$(CONFIG_SOC_IMX8M) += imx8m-blk-ctrl.o
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
> new file mode 100644
> index 000000000000..3dd17b903636
> --- /dev/null
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -0,0 +1,455 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +/*
> + * Copyright 2021 Pengutronix, Lucas Stach <kernel@pengutronix.de>
> + */
> +
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/clk.h>
> +
> +#include <dt-bindings/power/imx8mm-power.h>
> +
> +#define BLK_SFT_RSTN	0x0
> +#define BLK_CLK_EN	0x4
> +
> +struct imx8m_blk_ctrl_domain;
> +
> +struct imx8m_blk_ctrl {
> +	struct device *dev;
> +	struct notifier_block power_nb;
> +	struct device *bus_power_dev;
> +	struct regmap *regmap;
> +	struct imx8m_blk_ctrl_domain *domains;
> +	struct genpd_onecell_data onecell_data;
> +};
> +
> +struct imx8m_blk_ctrl_domain_data {
> +	const char *name;
> +	const char **clk_names;
> +	int num_clks;
> +	const char *gpc_name;
> +	u32 rst_mask;
> +	u32 clk_mask;
> +};
> +
> +#define DOMAIN_MAX_CLKS 3
> +
> +struct imx8m_blk_ctrl_domain {
> +	struct generic_pm_domain genpd;
> +	const struct imx8m_blk_ctrl_domain_data *data;
> +	struct clk_bulk_data clks[DOMAIN_MAX_CLKS];
> +	struct device *power_dev;
> +	struct imx8m_blk_ctrl *bc;
> +};
> +
> +struct imx8m_blk_ctrl_data {
> +	int max_reg;
> +	notifier_fn_t power_notifier_fn;
> +	const struct imx8m_blk_ctrl_domain_data *domains;
> +	int num_domains;
> +};
> +
> +static inline struct imx8m_blk_ctrl_domain *
> +to_imx8m_blk_ctrl_domain(struct generic_pm_domain *genpd)
> +{
> +	return container_of(genpd, struct imx8m_blk_ctrl_domain, genpd);
> +}
> +
> +static int imx8m_blk_ctrl_power_on(struct generic_pm_domain *genpd)
> +{
> +	struct imx8m_blk_ctrl_domain *domain = to_imx8m_blk_ctrl_domain(genpd);
> +	const struct imx8m_blk_ctrl_domain_data *data = domain->data;
> +	struct imx8m_blk_ctrl *bc = domain->bc;
> +	int ret;
> +
> +	/* make sure bus domain is awake */
> +	ret = pm_runtime_get_sync(bc->bus_power_dev);
> +	if (ret < 0) {
> +		pm_runtime_put_noidle(bc->bus_power_dev);
> +		dev_err(bc->dev, "failed to power up bus domain\n");
> +		return ret;
> +	}
> +
> +	/* put devices into reset */
> +	regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +
> +	/* enable upstream and blk-ctrl clocks to allow reset to propagate */
> +	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
> +	if (ret) {
> +		dev_err(bc->dev, "failed to enable clocks\n");
> +		goto bus_put;
> +	}
> +	regmap_set_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
> +
> +	/* power up upstream GPC domain */
> +	ret = pm_runtime_get_sync(domain->power_dev);
> +	if (ret < 0) {
> +		dev_err(bc->dev, "failed to power up peripheral domain\n");
> +		goto clk_disable;
> +	}
> +
> +	/* wait for reset to propagate */
> +	udelay(5);
> +
> +	/* release reset */
> +	regmap_set_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +
> +	/* disable upstream clocks */
> +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +
> +	return 0;
> +
> +clk_disable:
> +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +bus_put:
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return ret;
> +}
> +
> +static int imx8m_blk_ctrl_power_off(struct generic_pm_domain *genpd)
> +{
> +	struct imx8m_blk_ctrl_domain *domain = to_imx8m_blk_ctrl_domain(genpd);
> +	const struct imx8m_blk_ctrl_domain_data *data = domain->data;
> +	struct imx8m_blk_ctrl *bc = domain->bc;
> +
> +	/* put devices into reset and disable clocks */
> +	regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +	regmap_clear_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
> +
> +	/* power down upstream GPC domain */
> +	pm_runtime_put(domain->power_dev);
> +
> +	/* allow bus domain to suspend */
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return 0;
> +}
> +
> +static struct generic_pm_domain *
> +imx8m_blk_ctrl_xlate(struct of_phandle_args *args, void *data)
> +{
> +	struct genpd_onecell_data *onecell_data = data;
> +	unsigned int index = args->args[0];
> +
> +	if (args->args_count != 1 ||
> +	    index > onecell_data->num_domains)
> +		return ERR_PTR(-EINVAL);
> +
> +	return onecell_data->domains[index];
> +}
> +
> +static struct lock_class_key blk_ctrl_genpd_lock_class;
> +
> +static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
> +{
> +	const struct imx8m_blk_ctrl_data *bc_data;
> +	struct device *dev = &pdev->dev;
> +	struct imx8m_blk_ctrl *bc;
> +	void __iomem *base;
> +	int i, ret;
> +
> +	struct regmap_config regmap_config = {
> +		.reg_bits	= 32,
> +		.val_bits	= 32,
> +		.reg_stride	= 4,
> +	};
> +
> +	bc = devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
> +	if (!bc)
> +		return -ENOMEM;
> +
> +	bc->dev = dev;
> +
> +	bc_data = of_device_get_match_data(dev);
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	regmap_config.max_register = bc_data->max_reg;
> +	bc->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
> +	if (IS_ERR(bc->regmap))
> +		return dev_err_probe(dev, PTR_ERR(bc->regmap),
> +				     "failed to init regmap \n");
> +
> +	bc->domains = devm_kcalloc(dev, bc_data->num_domains,
> +				    sizeof(struct imx8m_blk_ctrl_domain),
> +				    GFP_KERNEL);
> +	if (!bc->domains)
> +		return -ENOMEM;
> +
> +	bc->onecell_data.num_domains = bc_data->num_domains;
> +	bc->onecell_data.xlate = imx8m_blk_ctrl_xlate;
> +	bc->onecell_data.domains =
> +		devm_kcalloc(dev, bc_data->num_domains,
> +			     sizeof(struct generic_pm_domain *), GFP_KERNEL);
> +	if (!bc->onecell_data.domains)
> +		return -ENOMEM;
> +
> +	bc->bus_power_dev = genpd_dev_pm_attach_by_name(dev, "bus");
> +	if (IS_ERR(bc->bus_power_dev))
> +		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
> +				     "failed to attach power domain\n");
> +
> +	for (i = 0; i < bc_data->num_domains; i++) {
> +		const struct imx8m_blk_ctrl_domain_data *data = &bc_data->domains[i];
> +		struct imx8m_blk_ctrl_domain *domain = &bc->domains[i];
> +		int j;
> +
> +		domain->data = data;
> +
> +		for (j = 0; j < data->num_clks; j++)
> +			domain->clks[j].id = data->clk_names[j];
> +
> +		ret = devm_clk_bulk_get(dev, data->num_clks, domain->clks);
> +		if (ret) {
> +			dev_err_probe(dev, ret, "failed to get clock\n");
> +			goto cleanup_pds;
> +		}
> +
> +		domain->power_dev =
> +			dev_pm_domain_attach_by_name(dev, data->gpc_name);
> +		if (IS_ERR(domain->power_dev)) {
> +			dev_err_probe(dev, PTR_ERR(domain->power_dev),
> +				      "failed to attach power domain\n");
> +			ret = PTR_ERR(domain->power_dev);
> +			goto cleanup_pds;
> +		}
> +
> +		domain->genpd.name = data->name;
> +		domain->genpd.power_on = imx8m_blk_ctrl_power_on;
> +		domain->genpd.power_off = imx8m_blk_ctrl_power_off;
> +		domain->bc = bc;
> +
> +		ret = pm_genpd_init(&domain->genpd, NULL, true);
> +		if (ret) {
> +			dev_err_probe(dev, ret, "failed to init power domain\n");
> +			dev_pm_domain_detach(domain->power_dev, true);
> +			goto cleanup_pds;
> +		}
> +
> +		/*
> +		 * We use runtime PM to trigger power on/off of the upstream GPC
> +		 * domain, as a strict hierarchical parent/child power domain
> +		 * setup doesn't allow us to meet the sequencing requirements.
> +		 * This means we have nested locking of genpd locks, without the
> +		 * nesting being visible at the genpd level, so we need a
> +		 * separate lock class to make lockdep aware of the fact that
> +		 * this are separate domain locks that can be nested without a
> +		 * self-deadlock.
> +		 */
> +		lockdep_set_class(&domain->genpd.mlock,
> +				  &blk_ctrl_genpd_lock_class);
> +
> +		bc->onecell_data.domains[i] = &domain->genpd;
> +	}
> +
> +	ret = of_genpd_add_provider_onecell(dev->of_node, &bc->onecell_data);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to add power domain provider\n");
> +		goto cleanup_pds;
> +	}
> +
> +	bc->power_nb.notifier_call = bc_data->power_notifier_fn;
> +	ret = dev_pm_genpd_add_notifier(bc->bus_power_dev, &bc->power_nb);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "failed to add power notifier\n");
> +		goto cleanup_provider;
> +	}
> +
> +	dev_set_drvdata(dev, bc);
> +
> +	return 0;
> +
> +cleanup_provider:
> +	of_genpd_del_provider(dev->of_node);
> +cleanup_pds:
> +	for (i--; i >= 0; i--) {
> +		pm_genpd_remove(&bc->domains[i].genpd);
> +		dev_pm_domain_detach(bc->domains[i].power_dev, true);
> +	}
> +
> +	dev_pm_domain_detach(bc->bus_power_dev, true);
> +
> +	return ret;
> +}
> +
> +static int imx8m_blk_ctrl_remove(struct platform_device *pdev)
> +{
> +	struct imx8m_blk_ctrl *bc = dev_get_drvdata(&pdev->dev);
> +	int i;
> +
> +	of_genpd_del_provider(pdev->dev.of_node);
> +
> +	for (i = 0; bc->onecell_data.num_domains; i++) {
> +		struct imx8m_blk_ctrl_domain *domain = &bc->domains[i];
> +
> +		pm_genpd_remove(&domain->genpd);
> +		dev_pm_domain_detach(domain->power_dev, true);
> +	}
> +
> +	dev_pm_genpd_remove_notifier(bc->bus_power_dev);
> +
> +	dev_pm_domain_detach(bc->bus_power_dev, true);
> +
> +	return 0;
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int imx8m_blk_ctrl_suspend(struct device *dev)
> +{
> +	struct imx8m_blk_ctrl *bc = dev_get_drvdata(dev);
> +	int ret, i;
> +
> +	/*
> +	 * This may look strange, but is done so the generic PM_SLEEP code
> +	 * can power down our domains and more importantly power them up again
> +	 * after resume, without tripping over our usage of runtime PM to
> +	 * control the upstream GPC domains. Things happen in the right order
> +	 * in the system suspend/resume paths due to the device parent/child
> +	 * hierarchy.
> +	 */
> +	ret = pm_runtime_get_sync(bc->bus_power_dev);
> +	if (ret < 0) {
> +		pm_runtime_put_noidle(bc->bus_power_dev);
> +		return ret;
> +	}
> +
> +	for (i = 0; i < bc->onecell_data.num_domains; i++) {
> +		struct imx8m_blk_ctrl_domain *domain = &bc->domains[i];
> +
> +		ret = pm_runtime_get_sync(domain->power_dev);
> +		if (ret < 0) {
> +			pm_runtime_put_noidle(domain->power_dev);
> +			goto out_fail;
> +		}
> +	}
> +
> +	return 0;
> +
> +out_fail:
> +	for (i--; i >= 0; i--)
> +		pm_runtime_put(bc->domains[i].power_dev);
> +
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return ret;
> +}
> +
> +static int imx8m_blk_ctrl_resume(struct device *dev)
> +{
> +	struct imx8m_blk_ctrl *bc = dev_get_drvdata(dev);
> +	int i;
> +
> +	for (i = 0; i < bc->onecell_data.num_domains; i++)
> +		pm_runtime_put(bc->domains[i].power_dev);
> +
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return 0;
> +}
> +#endif
> +
> +static const struct dev_pm_ops imx8m_blk_ctrl_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(imx8m_blk_ctrl_suspend, imx8m_blk_ctrl_resume)
> +};
> +
> +static int imx8mm_vpu_power_notifier(struct notifier_block *nb,
> +				     unsigned long action, void *data)
> +{
> +	struct imx8m_blk_ctrl *bc = container_of(nb, struct imx8m_blk_ctrl,
> +						 power_nb);
> +
> +	if (action != GENPD_NOTIFY_ON && action != GENPD_NOTIFY_PRE_OFF)
> +		return NOTIFY_OK;
> +
> +	/*
> +	 * The ADB in the VPUMIX domain has no separate reset and clock
> +	 * enable bits, but is ungated together with the VPU clocks. To
> +	 * allow the handshake with the GPC to progress we put the VPUs
> +	 * in reset and ungate the clocks.
> +	 */
> +	regmap_clear_bits(bc->regmap, BLK_SFT_RSTN,
> +			  BIT(0) | BIT(1) | BIT(2));
> +	regmap_set_bits(bc->regmap, BLK_CLK_EN,
> +			BIT(0) | BIT(1) | BIT(2));
> +
> +	if (action == GENPD_NOTIFY_ON) {
> +		/*
> +		 * On power up we have no software backchannel to the GPC to
> +		 * wait for the ADB handshake to happen, so we just delay for a
> +		 * bit. On power down the GPC driver waits for the handshake.
> +		 */
> +		udelay(5);
> +
> +		/* set "fuse" bits to enable the VPUs */
> +		regmap_set_bits(bc->regmap, 0x8, 0xffffffff);
> +		regmap_set_bits(bc->regmap, 0xc, 0xffffffff);
> +		regmap_set_bits(bc->regmap, 0x10, 0xffffffff);
> +		regmap_set_bits(bc->regmap, 0x14, 0xffffffff);
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static const struct imx8m_blk_ctrl_domain_data imx8m_vpu_blk_ctl_domain_data[] = {
> +	[IMX8MM_VPUBLK_PD_G1] = {
> +		.name = "vpublk-g1",
> +		.clk_names = (const char *[]){ "g1", },
> +		.num_clks = 1,
> +		.gpc_name = "g1",
> +		.rst_mask = BIT(1),
> +		.clk_mask = BIT(1),
> +	},
> +	[IMX8MM_VPUBLK_PD_G2] = {
> +		.name = "vpublk-g2",
> +		.clk_names = (const char *[]){ "g2", },
> +		.num_clks = 1,
> +		.gpc_name = "g2",
> +		.rst_mask = BIT(0),
> +		.clk_mask = BIT(0),
> +	},
> +	[IMX8MM_VPUBLK_PD_H1] = {
> +		.name = "vpublk-h1",
> +		.clk_names = (const char *[]){ "h1", },
> +		.num_clks = 1,
> +		.gpc_name = "h1",
> +		.rst_mask = BIT(2),
> +		.clk_mask = BIT(2),
> +	},
> +};
> +
> +static const struct imx8m_blk_ctrl_data imx8m_vpu_blk_ctl_dev_data = {
> +	.max_reg = 0x18,
> +	.power_notifier_fn = imx8mm_vpu_power_notifier,
> +	.domains = imx8m_vpu_blk_ctl_domain_data,
> +	.num_domains = ARRAY_SIZE(imx8m_vpu_blk_ctl_domain_data),
> +};
> +
> +static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
> +	{
> +		.compatible = "fsl,imx8mm-vpu-blk-ctrl",
> +		.data = &imx8m_vpu_blk_ctl_dev_data
> +	}, {
> +		/* Sentinel */
> +	}
> +};
> +MODULE_DEVICE_TABLE(of, imx8m_blk_ctrl_of_match);
> +
> +static struct platform_driver imx8m_blk_ctrl_driver = {
> +	.probe = imx8m_blk_ctrl_probe,
> +	.remove = imx8m_blk_ctrl_remove,
> +	.driver = {
> +		.name = "imx8m-blk-ctrl",
> +		.pm = &imx8m_blk_ctrl_pm_ops,
> +		.of_match_table = imx8m_blk_ctrl_of_match,
> +	},
> +};
> +module_platform_driver(imx8m_blk_ctrl_driver);
> 
