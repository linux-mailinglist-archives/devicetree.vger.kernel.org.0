Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3107495C7F
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 10:04:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379656AbiAUJEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 04:04:21 -0500
Received: from mail-eopbgr130073.outbound.protection.outlook.com ([40.107.13.73]:60483
        "EHLO EUR01-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1379655AbiAUJEV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Jan 2022 04:04:21 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FGPJiqWo22nSn6/4EvnjFBMngWXzsJxWzj8+UvK++r/igiUNZzI250JNHKVG6kK0FLJ+5624ZOgMK1KCceQT8ZA5wxnAy2eAIlYKJ2p21PgJoMKVlzuUbYeYxO0U9gNsRdKs22OVnk18pQoDvHOTplieeFFTGgokkm1+5yaqNXdHwaTSJaK9IjTLF1zYLaD0TDP1vUYkYjQb9P7f2nIGsojzc1Aa3YXbyoyedSwABHct6XbU5uqVA9/Etj0loG5V3hn0m4Vy7pLyf6rS9vt9IQoZruMlymfXbpnRiuII83N/bFHoBDPwl4Rn6+Ik7WbvP43V4vvt7y0lscgW8tBdVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JtebdT3ePT2bXO5JDDCAqW2yhm+znq5Ki5qoKt4pcBI=;
 b=lCDzZajy39l+tIsJ1bxlfQPdMPYRLNCqoKgxfD5ASMgYhHC70FJRL3iyeSVv7+xaHAjUK6lHTe9/ZsE/5HnIheQDvViotoT4wAaxQ2my9kNTlmNxvc6M5YlSLbBOBggjULyyJs1pbnJti0/JHtcOr8j21UhCyiupNL4EZvS8d0TqT3FwxI9hp9QhlnDardcebcBAZ/bhGXHmSoaFhHLpbL2Tfkr2nmOsAyttcPs3AtZpaibIkn3dpaVHJGoYqojmvGe+AeS4Qwl3KiZCJLOKPAacIw8iLn6f8Jzu8mg5DPeOzpq2tWFw/RhG1th9PtR0rBBmWWEPHjIwDCwq1UZDpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JtebdT3ePT2bXO5JDDCAqW2yhm+znq5Ki5qoKt4pcBI=;
 b=QfGg7sAngojEdZlFzBrPC8zPtPYK8L0UERM7zvcoGfbHHKHVxiSnOtm32oc7JPMWBgkZMcrwF1XW1/oDYxqmSy8eEEX3E3tdMF9pY9AMgvC1A6WQKP4qu9DKf7UhhKF4mm0k4a0L30b4bouMpB1C4o/XoMW5anPxydU8Gk3mzLA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB4688.eurprd04.prod.outlook.com (2603:10a6:803:6a::30)
 by VI1PR04MB4512.eurprd04.prod.outlook.com (2603:10a6:803:69::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Fri, 21 Jan
 2022 09:04:18 +0000
Received: from VI1PR04MB4688.eurprd04.prod.outlook.com
 ([fe80::f853:4e9a:7ab6:dbf7]) by VI1PR04MB4688.eurprd04.prod.outlook.com
 ([fe80::f853:4e9a:7ab6:dbf7%6]) with mapi id 15.20.4909.010; Fri, 21 Jan 2022
 09:04:18 +0000
Date:   Fri, 21 Jan 2022 11:04:16 +0200
From:   Abel Vesa <abel.vesa@nxp.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH 6/9] soc: imx: add i.MX8MP HSIO blk-ctrl
Message-ID: <Yep3EF6VPc5LhMAE@abelvesa>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
 <20220119134027.2931945-7-l.stach@pengutronix.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220119134027.2931945-7-l.stach@pengutronix.de>
X-ClientProxiedBy: VI1PR0101CA0071.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::39) To VI1PR04MB4688.eurprd04.prod.outlook.com
 (2603:10a6:803:6a::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b3eb1fea-c6b4-4e43-8a4d-08d9dcbd0139
X-MS-TrafficTypeDiagnostic: VI1PR04MB4512:EE_
X-Microsoft-Antispam-PRVS: <VI1PR04MB4512167B129FB7864C874260F65B9@VI1PR04MB4512.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B0dMW01zs4b/FedArUhKrXHKgFUrrPYrpxtT7AHPN5BbWXPHZfO/q9n5dqVdbeKqd+kuUJwPZrzbbE8iLZV+zvYNnYLUbqObLzcrRJz9ukEyUIFavAvSf4ULEccs+zPr2DhH6G5mkdpyFo5EwucS+9io0PydOpyh1udo+E1EySVYa1w3O1A3ogEnj7byj3I/6lw86oFIpt/p2q4XeGpNb68HBxTiNs0q7RcLqASg7QS95Ke1eJW4m2mYUR+oYGsBGk0jgfT8dFU3OCWSVsUC7ZylqSRIrsMqLhhP3IetVpFNqpKgU3jAFI/zO3BoUcFxsxqW2/04giVe+WUL/GZPTtPdr/W17H6cG1aoDUNo6e/BNGiPEZUMtfN0iK+2uMwahxM48313NvFUWz5Cl6WEJ0t2cgfUWp5AfByiE4uIw/6Sm239iAACng6ImH702de5KoVS8hcmaw1PO9OaXphQyKZ7yCvArdyV+K+4zGo4KXh+0GGTyY9dPqJeMsAUgxkia9pvDIGQEHvzdOlTN2Jtkc0GG4xiEpo+QlMuO8GtkVyk1Ty3a6r7vfImstmGBMGwZgv994Gy1bnx43F6PTKJsAoVowhlqQLacCfFhUprozt38Sb+ubI1WlZQ9DL5Im9afFdg24whST679yDdsSlpJ6oj2FoRfvP334pQc0qlMc5iwN9awnjPHZ/j9MXX8B6P79JV56qSw/8eoRwvmCZ5oA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4688.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(366004)(38350700002)(38100700002)(86362001)(66556008)(316002)(66946007)(66476007)(83380400001)(4326008)(5660300002)(52116002)(508600001)(6512007)(44832011)(54906003)(8676002)(6486002)(30864003)(8936002)(33716001)(53546011)(2906002)(6506007)(6916009)(186003)(9686003)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6uG3kpfkcVxgObMUCk19j/1U4K2eIwemHqXaBQrpZuz7HkHNdxBgTnAns5od?=
 =?us-ascii?Q?+O/zwXa0/0TyCkAJvizXIIUzSCCb/zwSqvOKlj/SmunCaMIY/wnd9x1p5cNL?=
 =?us-ascii?Q?EgpCeK6fJdDezILIJ9+AGkIEpzKfX16EWO9LT5vSKwa9AatBBnDU5tOyrV+1?=
 =?us-ascii?Q?A83rHfsJu7TZOIozBYxOu8rAunRi93/szAKLXwOZO4MM8S07lJQVEu2GUyyd?=
 =?us-ascii?Q?LwnzLappiQ743d/0LX51XLQgkGx/nSu/hnHpJ78KINNlQxF8lhGmajJhaL1k?=
 =?us-ascii?Q?0QkEAJ3WnJz5t484EcLXP7VMlU3nlUETB7MB3GLbeOP1Cn9aRyZ3pujQjMNc?=
 =?us-ascii?Q?+ScHvD0p6vGGAtkzp4pgfoLJrGap/l6uApuoetUR9ykErKWgIeq2ulyI2GKQ?=
 =?us-ascii?Q?BzMdF3R7mrr/WsBYUknml/licUZaLG6Xzc/RQk7/VuFxIo69OxJEe41KszhV?=
 =?us-ascii?Q?MTjgTB/Ql5Y7yAfCfZNoD4enDDV565cuv+p1kqTvwQglYlt+W3DwhvRwbcAp?=
 =?us-ascii?Q?42dXkjIWA6QiMC2sYhh/m80tL8FX1G2AZkZfoDVOEZ0ESIXUs4z5du1Z5v+W?=
 =?us-ascii?Q?sZ6yyKGVWaBoOvKefmDHNdoytHeqmwVqK7/erlKWPeJBKjCC0piU6HOdcyH3?=
 =?us-ascii?Q?SriHeGkcacDXEI9mp+LUqiiUQzhD0iBX/kvUakCiQVLKJ67/NCwWiO9dUCgM?=
 =?us-ascii?Q?b9i9GjFoqZn3dh2oTPneTieY9Lj1mmAK9qnLP9OQaPSrW2bzCdutpzGcGo9f?=
 =?us-ascii?Q?OfNQtCYKcP73NREzwxWiii+B0Z1cZCZIaovsGDvn0aFMRUQQnrRyCO0/WrNK?=
 =?us-ascii?Q?RovNDb2Ipr6w+Ywsp1V2j8+GLrYu7zw+5uzWQdWCCCCtMQv9B0ILC6aDmzMs?=
 =?us-ascii?Q?gmXnwHABROKf8KgNp4mceJxk19M8HF3vc7A9LGjymi+FvcEIXo36z5x0GFLf?=
 =?us-ascii?Q?W2FWRrtiX/ovNo/ArO8dX/7KOaLpuBZNfuf1tvpwMxPZfzbDK8x7Ud80IeSi?=
 =?us-ascii?Q?t+BZUkKY/RcdBwVMgBnqVqX5iMaqe3LZtif2B9ETacJ0IoKaeojT7SclS0WZ?=
 =?us-ascii?Q?4OuQaM3rQAmSDLyw677Qj14EGPB7osa7KdeSFgxqwkaPrVEDxGyjazmYDOkr?=
 =?us-ascii?Q?ZOsuaMMh/O4hw4PLqYbhyBLo/ZKrkTNLJSpOxBACaIbW7UQELfzibycnTfIe?=
 =?us-ascii?Q?yLemYqyyrBkErM0qPStX8Enn8bmEK9tAmZosHpJKOOgPGXJbKEf7Ae6WbnYL?=
 =?us-ascii?Q?X6KFM2bvCx9jrecWLc+SfazF9z9BgyANr/M79yUp0kGV/XddLgF83grNf3Ew?=
 =?us-ascii?Q?8wPlykQoj6ZuzZI4zHUrSpE6qhRBuOkJyvVXfXVAEocatXZoDNU9gR56Mp0D?=
 =?us-ascii?Q?xm7OIX127KO55pPI//pRhvQ2Bj6kU4Z9RiLDvdhaMpdpOsQdfJlE1AD8oH0e?=
 =?us-ascii?Q?Kq3MzyxBF2lnQxrOgZKnmQ/F7laXKyuqV4r4Mhpd3sPtHRJzoLohGnfffKy1?=
 =?us-ascii?Q?3SkjZxeSWn5tZ9x1Ij+ijYuPXm1o1tIhd+Y2KuF2FlYDyufoN1Ijg7WFRqn3?=
 =?us-ascii?Q?AFPzwCCgbUsaFaxA2E5zO3uAHOGsGxUFVTByof8vamqutcBSZv/B4IlvzkPr?=
 =?us-ascii?Q?8zk2Sp/kRhZ62RkEu7t1o50=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3eb1fea-c6b4-4e43-8a4d-08d9dcbd0139
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4688.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2022 09:04:18.0863
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fkCNBEWLSz5TMAYBplcmKhw0xb1kW8aomRKSe6MCAVDGzcXiNdKsfuiZEsEu5KJ9V5U5KsBf4vUH5zYvxEe0GA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4512
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-01-19 14:40:24, Lucas Stach wrote:
> The i.MX8MP added some blk-ctrl peripherals that don't follow the regular
> structure of the blk-ctrls in the previous SoCs. Add a new file for those
> with currently only the HSIO blk-ctrl being supported. Others will be added
> later on.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/soc/imx/Makefile          |   1 +
>  drivers/soc/imx/imx8mp-blk-ctrl.c | 444 ++++++++++++++++++++++++++++++
>  2 files changed, 445 insertions(+)
>  create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c
> 
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> index 8a707077914c..63cd29f6d4d2 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -6,3 +6,4 @@ obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
>  obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
>  obj-$(CONFIG_SOC_IMX8M) += imx8m-blk-ctrl.o
> +obj-$(CONFIG_SOC_IMX8M) += imx8mp-blk-ctrl.o
> diff --git a/drivers/soc/imx/imx8mp-blk-ctrl.c b/drivers/soc/imx/imx8mp-blk-ctrl.c

So far the imx8m-blk-ctrl is used only by i.MX8MM, while this new one is
used by i.MX8MP. Do you think we can have the generic stuff we should
probably put the generic stuff in something new called imx-blk-ctrl
(which could be used for future non-i.MX8) ? Then maybe we can have one
file per SoC that only adds the SoC specific stuff. For example, you
define those structs that look quite the same in each file. Same goes
for the probe function.

I can prepare a patch and send it, if you want.

> new file mode 100644
> index 000000000000..7f4e1a151d2b
> --- /dev/null
> +++ b/drivers/soc/imx/imx8mp-blk-ctrl.c
> @@ -0,0 +1,444 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +/*
> + * Copyright 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
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
> +#include <dt-bindings/power/imx8mp-power.h>
> +
> +#define GPR_REG0		0x0
> +#define  PCIE_CLOCK_MODULE_EN	BIT(0)
> +#define  USB_CLOCK_MODULE_EN	BIT(1)
> +
> +struct imx8mp_hsio_blk_ctrl_domain;
> +
> +struct imx8mp_hsio_blk_ctrl {
> +	struct device *dev;
> +	struct notifier_block power_nb;
> +	struct device *bus_power_dev;
> +	struct regmap *regmap;
> +	struct imx8mp_hsio_blk_ctrl_domain *domains;
> +	struct genpd_onecell_data onecell_data;
> +};
> +
> +struct imx8mp_hsio_blk_ctrl_domain_data {
> +	const char *name;
> +	const char *clk_name;
> +	const char *gpc_name;
> +};
> +
> +struct imx8mp_hsio_blk_ctrl_domain {
> +	struct generic_pm_domain genpd;
> +	struct clk *clk;
> +	struct device *power_dev;
> +	struct imx8mp_hsio_blk_ctrl *bc;
> +	int id;
> +};
> +
> +static inline struct imx8mp_hsio_blk_ctrl_domain *
> +to_imx8mp_hsio_blk_ctrl_domain(struct generic_pm_domain *genpd)
> +{
> +	return container_of(genpd, struct imx8mp_hsio_blk_ctrl_domain, genpd);
> +}
> +
> +static int imx8mp_hsio_blk_ctrl_power_on(struct generic_pm_domain *genpd)
> +{
> +	struct imx8mp_hsio_blk_ctrl_domain *domain =
> +			to_imx8mp_hsio_blk_ctrl_domain(genpd);
> +	struct imx8mp_hsio_blk_ctrl *bc = domain->bc;
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
> +	/* enable upstream and blk-ctrl clocks */
> +	ret = clk_prepare_enable(domain->clk);
> +	if (ret) {
> +		dev_err(bc->dev, "failed to enable clocks\n");
> +		goto bus_put;
> +	}
> +
> +	switch (domain->id) {
> +	case IMX8MP_HSIOBLK_PD_USB:
> +		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
> +		break;
> +	case IMX8MP_HSIOBLK_PD_PCIE:
> +		regmap_set_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	/* power up upstream GPC domain */
> +	ret = pm_runtime_get_sync(domain->power_dev);
> +	if (ret < 0) {
> +		dev_err(bc->dev, "failed to power up peripheral domain\n");
> +		goto clk_disable;
> +	}
> +
> +	return 0;
> +
> +clk_disable:
> +	clk_disable_unprepare(domain->clk);
> +bus_put:
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return ret;
> +}
> +
> +static int imx8mp_hsio_blk_ctrl_power_off(struct generic_pm_domain *genpd)
> +{
> +	struct imx8mp_hsio_blk_ctrl_domain *domain =
> +			to_imx8mp_hsio_blk_ctrl_domain(genpd);
> +	struct imx8mp_hsio_blk_ctrl *bc = domain->bc;
> +
> +	/* disable clocks */
> +	switch (domain->id) {
> +	case IMX8MP_HSIOBLK_PD_USB:
> +		regmap_clear_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
> +		break;
> +	case IMX8MP_HSIOBLK_PD_PCIE:
> +		regmap_clear_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	clk_disable_unprepare(domain->clk);
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
> +	    index >= onecell_data->num_domains)
> +		return ERR_PTR(-EINVAL);
> +
> +	return onecell_data->domains[index];
> +}
> +
> +static struct lock_class_key blk_ctrl_genpd_lock_class;
> +
> +static const struct imx8mp_hsio_blk_ctrl_domain_data imx8mp_hsio_domain_data[] = {
> +	[IMX8MP_HSIOBLK_PD_USB] = {
> +		.name = "hsioblk-usb",
> +		.clk_name = "usb",
> +		.gpc_name = "usb",
> +	},
> +	[IMX8MP_HSIOBLK_PD_USB_PHY1] = {
> +		.name = "hsioblk-ubs-phy1",
> +		.gpc_name = "usb-phy1",
> +	},
> +	[IMX8MP_HSIOBLK_PD_USB_PHY2] = {
> +		.name = "hsioblk-ubs-phy2",
> +		.gpc_name = "usb-phy2",
> +	},
> +	[IMX8MP_HSIOBLK_PD_PCIE] = {
> +		.name = "hsioblk-pcie",
> +		.clk_name = "pcie",
> +		.gpc_name = "pcie",
> +	},
> +	[IMX8MP_HSIOBLK_PD_PCIE_PHY] = {
> +		.name = "hsioblk-pcie-phy",
> +		.gpc_name = "pcie-phy",
> +	},
> +};
> +
> +static int imx8mp_hsio_power_notifier(struct notifier_block *nb,
> +				      unsigned long action, void *data)
> +{
> +	struct imx8mp_hsio_blk_ctrl *bc = container_of(nb, struct imx8mp_hsio_blk_ctrl,
> +						 power_nb);
> +	struct clk *usb_clk = bc->domains[IMX8MP_HSIOBLK_PD_USB].clk;
> +	int ret;
> +
> +	switch (action) {
> +	case GENPD_NOTIFY_ON:
> +		/*
> +		 * enable USB clock for a moment for the power-on ADB handshake
> +		 * to proceed
> +		 */
> +		ret = clk_prepare_enable(usb_clk);
> +		if (ret)
> +			return NOTIFY_BAD;
> +		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
> +
> +		udelay(5);
> +
> +		regmap_clear_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
> +		clk_disable_unprepare(usb_clk);
> +		break;
> +	case GENPD_NOTIFY_PRE_OFF:
> +		/* enable USB clock for the power-down ADB handshake to work */
> +		ret = clk_prepare_enable(usb_clk);
> +		if (ret)
> +			return NOTIFY_BAD;
> +
> +		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
> +		break;
> +	case GENPD_NOTIFY_OFF:
> +		clk_disable_unprepare(usb_clk);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static int imx8mp_hsio_blk_ctrl_probe(struct platform_device *pdev)
> +{
> +	int num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data);
> +	struct device *dev = &pdev->dev;
> +	struct imx8mp_hsio_blk_ctrl *bc;
> +	void __iomem *base;
> +	int i, ret;
> +
> +	struct regmap_config regmap_config = {
> +		.reg_bits	= 32,
> +		.val_bits	= 32,
> +		.reg_stride	= 4,
> +		.max_register	= 0x24,
> +	};
> +
> +	bc = devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
> +	if (!bc)
> +		return -ENOMEM;
> +
> +	bc->dev = dev;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	bc->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
> +	if (IS_ERR(bc->regmap))
> +		return dev_err_probe(dev, PTR_ERR(bc->regmap),
> +				     "failed to init regmap\n");
> +
> +	bc->domains = devm_kcalloc(dev, num_domains,
> +				   sizeof(struct imx8mp_hsio_blk_ctrl_domain),
> +				   GFP_KERNEL);
> +	if (!bc->domains)
> +		return -ENOMEM;
> +
> +	bc->onecell_data.num_domains = num_domains;
> +	bc->onecell_data.xlate = imx8m_blk_ctrl_xlate;
> +	bc->onecell_data.domains =
> +		devm_kcalloc(dev, num_domains,
> +			     sizeof(struct generic_pm_domain *), GFP_KERNEL);
> +	if (!bc->onecell_data.domains)
> +		return -ENOMEM;
> +
> +	bc->bus_power_dev = genpd_dev_pm_attach_by_name(dev, "bus");
> +	if (IS_ERR(bc->bus_power_dev))
> +		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
> +				     "failed to attach power domain\n");
> +
> +	for (i = 0; i < num_domains; i++) {
> +		const struct imx8mp_hsio_blk_ctrl_domain_data *data =
> +				&imx8mp_hsio_domain_data[i];
> +		struct imx8mp_hsio_blk_ctrl_domain *domain = &bc->domains[i];
> +
> +		if (data->clk_name) {
> +			domain->clk = devm_clk_get(dev, data->clk_name);
> +			if (IS_ERR(domain->clk)) {
> +				ret = PTR_ERR(domain->clk);
> +				dev_err_probe(dev, ret, "failed to get clock\n");
> +				goto cleanup_pds;
> +			}
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
> +		domain->genpd.power_on = imx8mp_hsio_blk_ctrl_power_on;
> +		domain->genpd.power_off = imx8mp_hsio_blk_ctrl_power_off;
> +		domain->bc = bc;
> +		domain->id = i;
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
> +	bc->power_nb.notifier_call = imx8mp_hsio_power_notifier;
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
> +static int imx8mp_hsio_blk_ctrl_remove(struct platform_device *pdev)
> +{
> +	struct imx8mp_hsio_blk_ctrl *bc = dev_get_drvdata(&pdev->dev);
> +	int i;
> +
> +	of_genpd_del_provider(pdev->dev.of_node);
> +
> +	for (i = 0; bc->onecell_data.num_domains; i++) {
> +		struct imx8mp_hsio_blk_ctrl_domain *domain = &bc->domains[i];
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
> +static int imx8mp_hsio_blk_ctrl_suspend(struct device *dev)
> +{
> +	struct imx8mp_hsio_blk_ctrl *bc = dev_get_drvdata(dev);
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
> +		struct imx8mp_hsio_blk_ctrl_domain *domain = &bc->domains[i];
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
> +static int imx8mp_hsio_blk_ctrl_resume(struct device *dev)
> +{
> +	struct imx8mp_hsio_blk_ctrl *bc = dev_get_drvdata(dev);
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
> +static const struct dev_pm_ops imx8mp_hsio_blk_ctrl_pm_ops = {
> +	SET_SYSTEM_SLEEP_PM_OPS(imx8mp_hsio_blk_ctrl_suspend,
> +				imx8mp_hsio_blk_ctrl_resume)
> +};
> +
> +static const struct of_device_id imx8mp_hsio_blk_ctrl_of_match[] = {
> +	{
> +		.compatible = "fsl,imx8mp-hsio-blk-ctrl",
> +	}, {
> +		/* Sentinel */
> +	}
> +};
> +MODULE_DEVICE_TABLE(of, imx8m_blk_ctrl_of_match);
> +
> +static struct platform_driver imx8mp_hsio_blk_ctrl_driver = {
> +	.probe = imx8mp_hsio_blk_ctrl_probe,
> +	.remove = imx8mp_hsio_blk_ctrl_remove,
> +	.driver = {
> +		.name = "imx8mp-hsio-blk-ctrl",
> +		.pm = &imx8mp_hsio_blk_ctrl_pm_ops,
> +		.of_match_table = imx8mp_hsio_blk_ctrl_of_match,
> +	},
> +};
> +module_platform_driver(imx8mp_hsio_blk_ctrl_driver);
> -- 
> 2.30.2
>
