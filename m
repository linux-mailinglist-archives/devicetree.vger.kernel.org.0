Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CE464025F5
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 11:08:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244339AbhIGJKA convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 7 Sep 2021 05:10:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243468AbhIGJKA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 05:10:00 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE279C061575
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 02:08:53 -0700 (PDT)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1mNX64-0005U1-1p; Tue, 07 Sep 2021 11:08:52 +0200
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1mNX63-000797-5R; Tue, 07 Sep 2021 11:08:51 +0200
Message-ID: <27f2990eab4fa9b296eebba71fbc8c3f35bfe72e.camel@pengutronix.de>
Subject: Re: [PATCH v3 10/18] soc: imx: add i.MX8M blk-ctrl driver
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        Adam Ford <aford173@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Date:   Tue, 07 Sep 2021 11:08:51 +0200
In-Reply-To: <20210906184333.1855426-11-l.stach@pengutronix.de>
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
         <20210906184333.1855426-11-l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Mon, 2021-09-06 at 20:43 +0200, Lucas Stach wrote:
> This adds a driver for the blk-ctrl blocks found in the i.MX8M* line of
> SoCs. The blk-ctrl is a top-level peripheral located in the various *MIX
> power domains and interacts with the GPC power controller to provide the
> peripherals in the power domain access to the NoC and ensures that those
> peripherals are properly reset when their respective power domain is
> brought back to life.
> 
> Software needs to do different things to make the bus handshake happen
> after the the GPC *MIX domain is power up and before it is powered down.
> As the requirements are quite different between the various blk-ctrls
> there is a callback function provided to hook in the proper sequence.
> 
> The peripheral domains are quite uniform, they handle the soft clock
> enables and resets in the blk-ctrl address space and sequencing with the
> upstream GPC power domains.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
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

	const char * const *clk_names;
even?

> +	int num_clks;
> +	const char *gpc_name;
> +	u32 rst_mask;
> +	u32 clk_mask;
> +};
> +
[...]
> +static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
> +{
[...]
> +	regmap_config.max_register = bc_data->max_reg;
> +	bc->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
> +	if (IS_ERR(bc->regmap))
> +		return dev_err_probe(dev, PTR_ERR(bc->regmap),
> +				     "failed to init regmap \n");
                                                           ^
Superfluous whitespace.

> +	bc->domains = devm_kcalloc(dev, bc_data->num_domains,
> +				    sizeof(struct imx8m_blk_ctrl_domain),
> +				    GFP_KERNEL);
                                   ^
Misalignment (also superfluous whitespace).

[...]
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

These can be put on a single line each.

Otherwise,
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
