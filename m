Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17BAD447604
	for <lists+devicetree@lfdr.de>; Sun,  7 Nov 2021 22:08:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234601AbhKGVLY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Nov 2021 16:11:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbhKGVLX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Nov 2021 16:11:23 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51249C061570
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 13:08:40 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id o8so54469695edc.3
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 13:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JSrnASI9il+g0ydipN3JQkPuZiBfUh2J+0mmtagq/WA=;
        b=ql/pL7QZ5eX2ht1NbE5R0cHcZfOEPE6rbGLGsDg7/fe19KT3r2WaRHQvipyiuyhRTU
         SujLn0oIRwa8O4wZPZMCNoCSe1igQw4rtvwL4pNix9tZ2FnY1rhBWnLzEgEsK0n/v2+a
         AVCIShQnLkiRJPEXEsftuFq01kC9jkww8ouFDgw24fOUk9ZlCrmsu2SiSyPKQqIP+X/n
         Im/ALAWCu1CWoKr/P3QcG9RIKI/4QQn2qk+h1cDNTZDivFGJI7JHCAp2VYkr0vvqJfSK
         pJx0Ika1Xfz6pdWbL19U42V9sn69qs0q41INWpspDbgLcnCUnjqBLRsDWGRK3g+lRXaD
         uADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JSrnASI9il+g0ydipN3JQkPuZiBfUh2J+0mmtagq/WA=;
        b=WOioFpNNnjY9iQ+EEZwQ4oDlBU+aDFLC4MbXE/abkx5zTrGM52q7LnQgVUjqq8MmSf
         wt8Z7G7bqYXmSs+Lg1FCGvtAcdy10JoFSGuCA3wN9EFEmQdfJs0xd+hqamyvC5CH+sf3
         eP49UjgFpi7YogPd7zGwrLap/znh2hheoOODmJYKquBU+ka8X0V+NKSkFcw8Hp0bm555
         YfF4y2yymnTEZAMALH1GtURgkFRqWIMSUBWcf8PNZ0ZeRTWf7lO364MmLN0AKnXDxs/S
         T21HdxEYgXC8oZlszabCxNrmL0ap6/1t+OE67+3/p84MPumBwXqaSxUwsfYo45VQQjtH
         VCsg==
X-Gm-Message-State: AOAM532fhpesHx61TlIlis9Z0q0Cb58RxY5a/ueaL/XksNPD1tWtHA79
        jM65NZysmVqmLtQXUmXZFaQHGfqB9uQt1+tZonk=
X-Google-Smtp-Source: ABdhPJwageu7mQG8SC7H0kPjGDrpWN6svY9D7XtM1ujh0F+1+/FnvRKhXI84kwTO5YoTcWeyDAxWo600oZYkdXuB4+0=
X-Received: by 2002:a17:906:d20c:: with SMTP id w12mr70112835ejz.521.1636319318452;
 Sun, 07 Nov 2021 13:08:38 -0800 (PST)
MIME-Version: 1.0
References: <20210910202640.980366-1-l.stach@pengutronix.de> <20210910202640.980366-11-l.stach@pengutronix.de>
In-Reply-To: <20210910202640.980366-11-l.stach@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Sun, 7 Nov 2021 15:08:27 -0600
Message-ID: <CAHCN7xK3zaEDuUkWO=hMWbxXwL7vEXWkbSGeez0HEvqpNoX7rg@mail.gmail.com>
Subject: Re: [PATCH v4 10/18] soc: imx: add i.MX8M blk-ctrl driver
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 10, 2021 at 3:26 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> This adds a driver for the blk-ctrl blocks found in the i.MX8M* line of
> SoCs. The blk-ctrl is a top-level peripheral located in the various *MIX
> power domains and interacts with the GPC power controller to provide the
> peripherals in the power domain access to the NoC and ensures that those
> peripherals are properly reset when their respective power domain is
> brought back to life.
>
> Software needs to do different things to make the bus handshake happen
> after the GPC *MIX domain is powered up and before it is powered down.
> As the requirements are quite different between the various blk-ctrls
> there is a callback function provided to hook in the proper sequence.
>
> The peripheral domains are quite uniform, they handle the soft clock
> enables and resets in the blk-ctrl address space and sequencing with the
> upstream GPC power domains.
>
Sorry to resurrect an old thread, but I'm running into issues enabling
new peripherals, and I think it's related to this, but I am not
certain.

I have attempted to enable the various VPU's, and in doing so, I
referenced the vpu_blk_ctrl for the respective power-domains reference
[1].

The various VPU devices enumerate, and I can see the various VPU power
domains turn on and off a boot.

[    1.968565] genpd genpd:0:38330000.blk-ctrl: adding to PM domain vpumix
[    1.981208] genpd genpd:1:38330000.blk-ctrl: adding to PM domain vpu-g1
[    1.993838] genpd genpd:2:38330000.blk-ctrl: adding to PM domain vpu-g2
[    2.006455] genpd genpd:3:38330000.blk-ctrl: adding to PM domain vpu-h1
[    8.922661] hantro_vpu: module is from the staging directory, the
quality is unknown, you have been warned.
[    9.008147] hantro_vpu: module is from the staging directory, the
quality is unknown, you have been warned.
[    9.044041] hantro-vpu 38300000.video-codec: adding to PM domain vpublk-g1
[    9.050959] hantro-vpu 38300000.video-codec: genpd_add_device()
[    9.063349] PM: vpumix: Power-on latency exceeded, new value 50875 ns
[    9.083437] PM: vpu-g1: Power-on latency exceeded, new value 26125 ns
[    9.104778] PM: vpublk-g1: Power-on latency exceeded, new value 47819250 ns
[    9.211988] hantro-vpu 38300000.video-codec: registered
nxp,imx8mm-vpu-dec as /dev/video0
[    9.259680] hantro-vpu 38300000.video-codec: genpd_runtime_resume()
[    9.297395] hantro-vpu 38300000.video-codec: resume latency exceeded, 2750 ns
[    9.307767] hantro-vpu 38310000.video-codec: adding to PM domain vpublk-g2
[    9.316462] hantro-vpu 38310000.video-codec: genpd_add_device()
[    9.328807] PM: vpu-g2: Power-on latency exceeded, new value 26625 ns
[    9.342401] PM: vpublk-g2: Power-on latency exceeded, new value 19965125 ns
[    9.430254] hantro-vpu 38300000.video-codec: genpd_runtime_suspend()
[    9.436683] hantro-vpu 38300000.video-codec: suspend latency
exceeded, 1625 ns
[    9.443984] PM: vpublk-g1: Power-off latency exceeded, new value 16625 ns
[    9.462361] hantro-vpu 38310000.video-codec: registered
nxp,imx8mm-vpu-g2-dec as /dev/video2
[    9.491848] PM: vpu-g1: Power-off latency exceeded, new value 17125 ns
[    9.506353] hantro-vpu 38310000.video-codec: genpd_runtime_resume()
[    9.512735] hantro-vpu 38310000.video-codec: resume latency exceeded, 2750 ns
[    9.520306] hantro-vpu 38320000.video-codec: adding to PM domain vpublk-h1
[    9.527268] hantro-vpu 38320000.video-codec: genpd_add_device()
[    9.539632] PM: vpu-h1: Power-on latency exceeded, new value 27750 ns
[    9.553358] PM: vpublk-h1: Power-on latency exceeded, new value 20112125 ns
[    9.605800] hantro_vpu: module is from the staging directory, the
quality is unknown, you have been warned.
[    9.642194] hantro-vpu 38310000.video-codec: genpd_runtime_suspend()
[    9.648634] hantro-vpu 38310000.video-codec: suspend latency
exceeded, 1500 ns
[    9.655974] PM: vpublk-g2: Power-off latency exceeded, new value 12625 ns
[    9.703863] PM: vpu-g2: Power-off latency exceeded, new value 16750 ns
[    9.754527] hantro-vpu 38320000.video-codec: registered
nxp,imx8mm-vpu-h1-enc as /dev/video3
[    9.785424] hantro-vpu 38320000.video-codec: genpd_runtime_resume()
[    9.796034] hantro-vpu 38320000.video-codec: resume latency exceeded, 2000 ns
[    9.934247] hantro-vpu 38320000.video-codec: genpd_runtime_suspend()
[    9.940707] hantro-vpu 38320000.video-codec: suspend latency
exceeded, 1500 ns
[    9.948042] PM: vpublk-h1: Power-off latency exceeded, new value 18875 ns
[    9.975951] PM: vpu-h1: Power-off latency exceeded, new value 17625 ns
[    9.999970] PM: vpumix: Power-off latency exceeded, new value 25750 ns

However, because the vpumix is disabled here, I think it might be
what's causing a hang when I attempt to read the regmap registers with

cat /sys/kernel/debug/regmap/38330000.blk-ctrl/registers

I was looking at the ATF code that NXP has, and it doesn't appear that
the VPUMIX ever shuts down, and for that matter, I don't think the g1,
g2, and h1 domains shutdown either.

I think it makes sense to have the domains turned off when not in use,
but I have a few comments / questions below....

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Acked-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
> This commit includes the full code to drive the VPUMIX domain on the
> i.MX8MM, as the skeleton driver would probably be harder to review
> without the context provided by one blk-ctrl implementation. Other
> blk-ctrl implementations will follow, based on this overall structure.
>
> v4:
> - fix commit message typos
> - fix superfluous whitespace
> - constify clk_names more
> ---
>  drivers/soc/imx/Makefile         |   1 +
>  drivers/soc/imx/imx8m-blk-ctrl.c | 453 +++++++++++++++++++++++++++++++
>  2 files changed, 454 insertions(+)
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
> index 000000000000..f2d74669d683
> --- /dev/null
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -0,0 +1,453 @@
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
> +#define BLK_SFT_RSTN   0x0
> +#define BLK_CLK_EN     0x4
> +
> +struct imx8m_blk_ctrl_domain;
> +
> +struct imx8m_blk_ctrl {
> +       struct device *dev;
> +       struct notifier_block power_nb;
> +       struct device *bus_power_dev;
> +       struct regmap *regmap;
> +       struct imx8m_blk_ctrl_domain *domains;
> +       struct genpd_onecell_data onecell_data;
> +};
> +
> +struct imx8m_blk_ctrl_domain_data {
> +       const char *name;
> +       const char * const *clk_names;
> +       int num_clks;
> +       const char *gpc_name;
> +       u32 rst_mask;
> +       u32 clk_mask;
> +};
> +
> +#define DOMAIN_MAX_CLKS 3
> +
> +struct imx8m_blk_ctrl_domain {
> +       struct generic_pm_domain genpd;
> +       const struct imx8m_blk_ctrl_domain_data *data;
> +       struct clk_bulk_data clks[DOMAIN_MAX_CLKS];
> +       struct device *power_dev;
> +       struct imx8m_blk_ctrl *bc;
> +};
> +
> +struct imx8m_blk_ctrl_data {
> +       int max_reg;
> +       notifier_fn_t power_notifier_fn;
> +       const struct imx8m_blk_ctrl_domain_data *domains;
> +       int num_domains;
> +};
> +
> +static inline struct imx8m_blk_ctrl_domain *
> +to_imx8m_blk_ctrl_domain(struct generic_pm_domain *genpd)
> +{
> +       return container_of(genpd, struct imx8m_blk_ctrl_domain, genpd);
> +}
> +
> +static int imx8m_blk_ctrl_power_on(struct generic_pm_domain *genpd)
> +{
> +       struct imx8m_blk_ctrl_domain *domain = to_imx8m_blk_ctrl_domain(genpd);
> +       const struct imx8m_blk_ctrl_domain_data *data = domain->data;
> +       struct imx8m_blk_ctrl *bc = domain->bc;
> +       int ret;
> +
> +       /* make sure bus domain is awake */
> +       ret = pm_runtime_get_sync(bc->bus_power_dev);
> +       if (ret < 0) {
> +               pm_runtime_put_noidle(bc->bus_power_dev);
> +               dev_err(bc->dev, "failed to power up bus domain\n");
> +               return ret;
> +       }
> +
> +       /* put devices into reset */
> +       regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +
> +       /* enable upstream and blk-ctrl clocks to allow reset to propagate */
> +       ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
> +       if (ret) {
> +               dev_err(bc->dev, "failed to enable clocks\n");
> +               goto bus_put;
> +       }
> +       regmap_set_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
> +
> +       /* power up upstream GPC domain */
> +       ret = pm_runtime_get_sync(domain->power_dev);
> +       if (ret < 0) {
> +               dev_err(bc->dev, "failed to power up peripheral domain\n");
> +               goto clk_disable;
> +       }
> +
> +       /* wait for reset to propagate */
> +       udelay(5);
> +
> +       /* release reset */
> +       regmap_set_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +
> +       /* disable upstream clocks */
> +       clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +
> +       return 0;
> +
> +clk_disable:
> +       clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +bus_put:
> +       pm_runtime_put(bc->bus_power_dev);
> +
> +       return ret;
> +}
> +
> +static int imx8m_blk_ctrl_power_off(struct generic_pm_domain *genpd)
> +{
> +       struct imx8m_blk_ctrl_domain *domain = to_imx8m_blk_ctrl_domain(genpd);
> +       const struct imx8m_blk_ctrl_domain_data *data = domain->data;
> +       struct imx8m_blk_ctrl *bc = domain->bc;
> +
> +       /* put devices into reset and disable clocks */
> +       regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +       regmap_clear_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
> +
> +       /* power down upstream GPC domain */
> +       pm_runtime_put(domain->power_dev);
> +
> +       /* allow bus domain to suspend */
> +       pm_runtime_put(bc->bus_power_dev);
> +
> +       return 0;
> +}
> +
> +static struct generic_pm_domain *
> +imx8m_blk_ctrl_xlate(struct of_phandle_args *args, void *data)
> +{
> +       struct genpd_onecell_data *onecell_data = data;
> +       unsigned int index = args->args[0];
> +
> +       if (args->args_count != 1 ||
> +           index > onecell_data->num_domains)
> +               return ERR_PTR(-EINVAL);
> +
> +       return onecell_data->domains[index];
> +}
> +
> +static struct lock_class_key blk_ctrl_genpd_lock_class;
> +
> +static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
> +{
> +       const struct imx8m_blk_ctrl_data *bc_data;
> +       struct device *dev = &pdev->dev;
> +       struct imx8m_blk_ctrl *bc;
> +       void __iomem *base;
> +       int i, ret;
> +
> +       struct regmap_config regmap_config = {
> +               .reg_bits       = 32,
> +               .val_bits       = 32,
> +               .reg_stride     = 4,
> +       };
> +
> +       bc = devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
> +       if (!bc)
> +               return -ENOMEM;
> +
> +       bc->dev = dev;
> +
> +       bc_data = of_device_get_match_data(dev);
> +
> +       base = devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       regmap_config.max_register = bc_data->max_reg;
> +       bc->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
> +       if (IS_ERR(bc->regmap))
> +               return dev_err_probe(dev, PTR_ERR(bc->regmap),
> +                                    "failed to init regmap\n");
> +
> +       bc->domains = devm_kcalloc(dev, bc_data->num_domains,
> +                                  sizeof(struct imx8m_blk_ctrl_domain),
> +                                  GFP_KERNEL);
> +       if (!bc->domains)
> +               return -ENOMEM;
> +
> +       bc->onecell_data.num_domains = bc_data->num_domains;
> +       bc->onecell_data.xlate = imx8m_blk_ctrl_xlate;
> +       bc->onecell_data.domains =
> +               devm_kcalloc(dev, bc_data->num_domains,
> +                            sizeof(struct generic_pm_domain *), GFP_KERNEL);
> +       if (!bc->onecell_data.domains)
> +               return -ENOMEM;
> +
> +       bc->bus_power_dev = genpd_dev_pm_attach_by_name(dev, "bus");
> +       if (IS_ERR(bc->bus_power_dev))
> +               return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
> +                                    "failed to attach power domain\n");
> +
> +       for (i = 0; i < bc_data->num_domains; i++) {
> +               const struct imx8m_blk_ctrl_domain_data *data = &bc_data->domains[i];
> +               struct imx8m_blk_ctrl_domain *domain = &bc->domains[i];
> +               int j;
> +
> +               domain->data = data;
> +
> +               for (j = 0; j < data->num_clks; j++)
> +                       domain->clks[j].id = data->clk_names[j];
> +
> +               ret = devm_clk_bulk_get(dev, data->num_clks, domain->clks);
> +               if (ret) {
> +                       dev_err_probe(dev, ret, "failed to get clock\n");
> +                       goto cleanup_pds;
> +               }
> +
> +               domain->power_dev =
> +                       dev_pm_domain_attach_by_name(dev, data->gpc_name);
> +               if (IS_ERR(domain->power_dev)) {
> +                       dev_err_probe(dev, PTR_ERR(domain->power_dev),
> +                                     "failed to attach power domain\n");
> +                       ret = PTR_ERR(domain->power_dev);
> +                       goto cleanup_pds;
> +               }
> +
> +               domain->genpd.name = data->name;
> +               domain->genpd.power_on = imx8m_blk_ctrl_power_on;
> +               domain->genpd.power_off = imx8m_blk_ctrl_power_off;
> +               domain->bc = bc;
> +
> +               ret = pm_genpd_init(&domain->genpd, NULL, true);
> +               if (ret) {
> +                       dev_err_probe(dev, ret, "failed to init power domain\n");
> +                       dev_pm_domain_detach(domain->power_dev, true);
> +                       goto cleanup_pds;
> +               }
> +
> +               /*
> +                * We use runtime PM to trigger power on/off of the upstream GPC
> +                * domain, as a strict hierarchical parent/child power domain
> +                * setup doesn't allow us to meet the sequencing requirements.
> +                * This means we have nested locking of genpd locks, without the
> +                * nesting being visible at the genpd level, so we need a
> +                * separate lock class to make lockdep aware of the fact that
> +                * this are separate domain locks that can be nested without a
> +                * self-deadlock.
> +                */
> +               lockdep_set_class(&domain->genpd.mlock,
> +                                 &blk_ctrl_genpd_lock_class);
> +
> +               bc->onecell_data.domains[i] = &domain->genpd;
> +       }
> +
> +       ret = of_genpd_add_provider_onecell(dev->of_node, &bc->onecell_data);
> +       if (ret) {
> +               dev_err_probe(dev, ret, "failed to add power domain provider\n");
> +               goto cleanup_pds;
> +       }
> +
> +       bc->power_nb.notifier_call = bc_data->power_notifier_fn;
> +       ret = dev_pm_genpd_add_notifier(bc->bus_power_dev, &bc->power_nb);
> +       if (ret) {
> +               dev_err_probe(dev, ret, "failed to add power notifier\n");
> +               goto cleanup_provider;
> +       }
> +
> +       dev_set_drvdata(dev, bc);
> +
> +       return 0;
> +
> +cleanup_provider:
> +       of_genpd_del_provider(dev->of_node);
> +cleanup_pds:
> +       for (i--; i >= 0; i--) {
> +               pm_genpd_remove(&bc->domains[i].genpd);
> +               dev_pm_domain_detach(bc->domains[i].power_dev, true);
> +       }
> +
> +       dev_pm_domain_detach(bc->bus_power_dev, true);
> +
> +       return ret;
> +}
> +
> +static int imx8m_blk_ctrl_remove(struct platform_device *pdev)
> +{
> +       struct imx8m_blk_ctrl *bc = dev_get_drvdata(&pdev->dev);
> +       int i;
> +
> +       of_genpd_del_provider(pdev->dev.of_node);
> +
> +       for (i = 0; bc->onecell_data.num_domains; i++) {
> +               struct imx8m_blk_ctrl_domain *domain = &bc->domains[i];
> +
> +               pm_genpd_remove(&domain->genpd);
> +               dev_pm_domain_detach(domain->power_dev, true);
> +       }
> +
> +       dev_pm_genpd_remove_notifier(bc->bus_power_dev);
> +
> +       dev_pm_domain_detach(bc->bus_power_dev, true);
> +
> +       return 0;
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int imx8m_blk_ctrl_suspend(struct device *dev)
> +{
> +       struct imx8m_blk_ctrl *bc = dev_get_drvdata(dev);
> +       int ret, i;
> +
> +       /*
> +        * This may look strange, but is done so the generic PM_SLEEP code
> +        * can power down our domains and more importantly power them up again
> +        * after resume, without tripping over our usage of runtime PM to
> +        * control the upstream GPC domains. Things happen in the right order
> +        * in the system suspend/resume paths due to the device parent/child
> +        * hierarchy.
> +        */
> +       ret = pm_runtime_get_sync(bc->bus_power_dev);
> +       if (ret < 0) {
> +               pm_runtime_put_noidle(bc->bus_power_dev);
> +               return ret;
> +       }
> +
> +       for (i = 0; i < bc->onecell_data.num_domains; i++) {
> +               struct imx8m_blk_ctrl_domain *domain = &bc->domains[i];
> +
> +               ret = pm_runtime_get_sync(domain->power_dev);
> +               if (ret < 0) {
> +                       pm_runtime_put_noidle(domain->power_dev);
> +                       goto out_fail;
> +               }
> +       }
> +
> +       return 0;
> +
> +out_fail:
> +       for (i--; i >= 0; i--)
> +               pm_runtime_put(bc->domains[i].power_dev);
> +
> +       pm_runtime_put(bc->bus_power_dev);
> +
> +       return ret;
> +}
> +
> +static int imx8m_blk_ctrl_resume(struct device *dev)
> +{
> +       struct imx8m_blk_ctrl *bc = dev_get_drvdata(dev);
> +       int i;
> +
> +       for (i = 0; i < bc->onecell_data.num_domains; i++)
> +               pm_runtime_put(bc->domains[i].power_dev);
> +
> +       pm_runtime_put(bc->bus_power_dev);
> +
> +       return 0;
> +}
> +#endif
> +
> +static const struct dev_pm_ops imx8m_blk_ctrl_pm_ops = {
> +       SET_SYSTEM_SLEEP_PM_OPS(imx8m_blk_ctrl_suspend, imx8m_blk_ctrl_resume)
> +};
> +
> +static int imx8mm_vpu_power_notifier(struct notifier_block *nb,
> +                                    unsigned long action, void *data)
> +{
> +       struct imx8m_blk_ctrl *bc = container_of(nb, struct imx8m_blk_ctrl,
> +                                                power_nb);
> +
> +       if (action != GENPD_NOTIFY_ON && action != GENPD_NOTIFY_PRE_OFF)
> +               return NOTIFY_OK;
> +
> +       /*
> +        * The ADB in the VPUMIX domain has no separate reset and clock
> +        * enable bits, but is ungated together with the VPU clocks. To
> +        * allow the handshake with the GPC to progress we put the VPUs
> +        * in reset and ungate the clocks.
> +        */
 > +       regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, BIT(0) | BIT(1)
| BIT(2));

> +       regmap_set_bits(bc->regmap, BLK_CLK_EN, BIT(0) | BIT(1) | BIT(2));

The individual VPU's (IMX8MM_VPUBLK_PD_G1, G2, and H1) have clk_mask
values that set these bits when used and clear them when disabled.  If
the VPUMix needs them set, shouldn't the IMX8MM_VPUBLK_PD_xx leave
them on until they are cleared by the VPUMIX?

> +
> +       if (action == GENPD_NOTIFY_ON) {


> +               /*
> +                * On power up we have no software backchannel to the GPC to
> +                * wait for the ADB handshake to happen, so we just delay for a
> +                * bit. On power down the GPC driver waits for the handshake.
> +                */
> +               udelay(5);
> +
> +               /* set "fuse" bits to enable the VPUs */
> +               regmap_set_bits(bc->regmap, 0x8, 0xffffffff);
> +               regmap_set_bits(bc->regmap, 0xc, 0xffffffff);
> +               regmap_set_bits(bc->regmap, 0x10, 0xffffffff);
> +               regmap_set_bits(bc->regmap, 0x14, 0xffffffff);

Should these registers ever get turned off when we disable the VPUMIX?
These registers don't have good descriptions in the TRM describing how
they interact with the VPU's, and it's unclear to me what happens if
they are set and the VPUMIX and various VPU's are disabled.  I am
curious to know if they should get enabled/disabled with their
respective IMX8MM_VPUBLK_PD_xx domain.  The Example Code 5 in the TRM
doesn't set these bits in their VPUMIX example, so it makes me think
they're OK to leave with the individual IMX8MM_VPUBLK_PD_xx domains.

I ask, because if I  run v4l2-compliance on the H1 encoder, it also
appears to hang, but the power-domains appear to be attempting to
start, and the vpumix is the last thing to start, and I would expect
the pgc_vpu_h1 domain to follow, then end with the
vpublk-h1 starting.

# v4l2-compliance -d3
[  271.001098] hantro-vpu 38320000.video-codec: genpd_runtime_resume()
[  271.007447] genpd genpd:0:38330000.blk-ctrl: genpd_runtime_resume()
[  271.013796] PM: vpumix: Power-on latency exceeded, new value 40623 ns
[  271.020314] genpd genpd:3:38330000.blk-ctrl: genpd_runtime_resume()

adam

[1] - https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=576435
> +       }
> +
> +       return NOTIFY_OK;
> +}
> +
> +static const struct imx8m_blk_ctrl_domain_data imx8m_vpu_blk_ctl_domain_data[] = {
> +       [IMX8MM_VPUBLK_PD_G1] = {
> +               .name = "vpublk-g1",
> +               .clk_names = (const char *[]){ "g1", },
> +               .num_clks = 1,
> +               .gpc_name = "g1",
> +               .rst_mask = BIT(1),
> +               .clk_mask = BIT(1),
> +       },
> +       [IMX8MM_VPUBLK_PD_G2] = {
> +               .name = "vpublk-g2",
> +               .clk_names = (const char *[]){ "g2", },
> +               .num_clks = 1,
> +               .gpc_name = "g2",
> +               .rst_mask = BIT(0),
> +               .clk_mask = BIT(0),
> +       },
> +       [IMX8MM_VPUBLK_PD_H1] = {
> +               .name = "vpublk-h1",
> +               .clk_names = (const char *[]){ "h1", },
> +               .num_clks = 1,
> +               .gpc_name = "h1",
> +               .rst_mask = BIT(2),
> +               .clk_mask = BIT(2),
> +       },
> +};
> +
> +static const struct imx8m_blk_ctrl_data imx8m_vpu_blk_ctl_dev_data = {
> +       .max_reg = 0x18,
> +       .power_notifier_fn = imx8mm_vpu_power_notifier,
> +       .domains = imx8m_vpu_blk_ctl_domain_data,
> +       .num_domains = ARRAY_SIZE(imx8m_vpu_blk_ctl_domain_data),
> +};
> +
> +static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
> +       {
> +               .compatible = "fsl,imx8mm-vpu-blk-ctrl",
> +               .data = &imx8m_vpu_blk_ctl_dev_data
> +       }, {
> +               /* Sentinel */
> +       }
> +};
> +MODULE_DEVICE_TABLE(of, imx8m_blk_ctrl_of_match);
> +
> +static struct platform_driver imx8m_blk_ctrl_driver = {
> +       .probe = imx8m_blk_ctrl_probe,
> +       .remove = imx8m_blk_ctrl_remove,
> +       .driver = {
> +               .name = "imx8m-blk-ctrl",
> +               .pm = &imx8m_blk_ctrl_pm_ops,
> +               .of_match_table = imx8m_blk_ctrl_of_match,
> +       },
> +};
> +module_platform_driver(imx8m_blk_ctrl_driver);
> --
> 2.30.2
>
