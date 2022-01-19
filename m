Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 341BD493B3C
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 14:40:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234261AbiASNkk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 08:40:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239502AbiASNki (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 08:40:38 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1E07C061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 05:40:37 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nABCR-0006Kr-LC; Wed, 19 Jan 2022 14:40:31 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH 6/9] soc: imx: add i.MX8MP HSIO blk-ctrl
Date:   Wed, 19 Jan 2022 14:40:24 +0100
Message-Id: <20220119134027.2931945-7-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220119134027.2931945-1-l.stach@pengutronix.de>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8MP added some blk-ctrl peripherals that don't follow the regular
structure of the blk-ctrls in the previous SoCs. Add a new file for those
with currently only the HSIO blk-ctrl being supported. Others will be added
later on.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/soc/imx/Makefile          |   1 +
 drivers/soc/imx/imx8mp-blk-ctrl.c | 444 ++++++++++++++++++++++++++++++
 2 files changed, 445 insertions(+)
 create mode 100644 drivers/soc/imx/imx8mp-blk-ctrl.c

diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index 8a707077914c..63cd29f6d4d2 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
 obj-$(CONFIG_SOC_IMX8M) += imx8m-blk-ctrl.o
+obj-$(CONFIG_SOC_IMX8M) += imx8mp-blk-ctrl.o
diff --git a/drivers/soc/imx/imx8mp-blk-ctrl.c b/drivers/soc/imx/imx8mp-blk-ctrl.c
new file mode 100644
index 000000000000..7f4e1a151d2b
--- /dev/null
+++ b/drivers/soc/imx/imx8mp-blk-ctrl.c
@@ -0,0 +1,444 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * Copyright 2022 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/clk.h>
+
+#include <dt-bindings/power/imx8mp-power.h>
+
+#define GPR_REG0		0x0
+#define  PCIE_CLOCK_MODULE_EN	BIT(0)
+#define  USB_CLOCK_MODULE_EN	BIT(1)
+
+struct imx8mp_hsio_blk_ctrl_domain;
+
+struct imx8mp_hsio_blk_ctrl {
+	struct device *dev;
+	struct notifier_block power_nb;
+	struct device *bus_power_dev;
+	struct regmap *regmap;
+	struct imx8mp_hsio_blk_ctrl_domain *domains;
+	struct genpd_onecell_data onecell_data;
+};
+
+struct imx8mp_hsio_blk_ctrl_domain_data {
+	const char *name;
+	const char *clk_name;
+	const char *gpc_name;
+};
+
+struct imx8mp_hsio_blk_ctrl_domain {
+	struct generic_pm_domain genpd;
+	struct clk *clk;
+	struct device *power_dev;
+	struct imx8mp_hsio_blk_ctrl *bc;
+	int id;
+};
+
+static inline struct imx8mp_hsio_blk_ctrl_domain *
+to_imx8mp_hsio_blk_ctrl_domain(struct generic_pm_domain *genpd)
+{
+	return container_of(genpd, struct imx8mp_hsio_blk_ctrl_domain, genpd);
+}
+
+static int imx8mp_hsio_blk_ctrl_power_on(struct generic_pm_domain *genpd)
+{
+	struct imx8mp_hsio_blk_ctrl_domain *domain =
+			to_imx8mp_hsio_blk_ctrl_domain(genpd);
+	struct imx8mp_hsio_blk_ctrl *bc = domain->bc;
+	int ret;
+
+	/* make sure bus domain is awake */
+	ret = pm_runtime_get_sync(bc->bus_power_dev);
+	if (ret < 0) {
+		pm_runtime_put_noidle(bc->bus_power_dev);
+		dev_err(bc->dev, "failed to power up bus domain\n");
+		return ret;
+	}
+
+	/* enable upstream and blk-ctrl clocks */
+	ret = clk_prepare_enable(domain->clk);
+	if (ret) {
+		dev_err(bc->dev, "failed to enable clocks\n");
+		goto bus_put;
+	}
+
+	switch (domain->id) {
+	case IMX8MP_HSIOBLK_PD_USB:
+		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+		break;
+	case IMX8MP_HSIOBLK_PD_PCIE:
+		regmap_set_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
+		break;
+	default:
+		break;
+	}
+
+	/* power up upstream GPC domain */
+	ret = pm_runtime_get_sync(domain->power_dev);
+	if (ret < 0) {
+		dev_err(bc->dev, "failed to power up peripheral domain\n");
+		goto clk_disable;
+	}
+
+	return 0;
+
+clk_disable:
+	clk_disable_unprepare(domain->clk);
+bus_put:
+	pm_runtime_put(bc->bus_power_dev);
+
+	return ret;
+}
+
+static int imx8mp_hsio_blk_ctrl_power_off(struct generic_pm_domain *genpd)
+{
+	struct imx8mp_hsio_blk_ctrl_domain *domain =
+			to_imx8mp_hsio_blk_ctrl_domain(genpd);
+	struct imx8mp_hsio_blk_ctrl *bc = domain->bc;
+
+	/* disable clocks */
+	switch (domain->id) {
+	case IMX8MP_HSIOBLK_PD_USB:
+		regmap_clear_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+		break;
+	case IMX8MP_HSIOBLK_PD_PCIE:
+		regmap_clear_bits(bc->regmap, GPR_REG0, PCIE_CLOCK_MODULE_EN);
+		break;
+	default:
+		break;
+	}
+
+	clk_disable_unprepare(domain->clk);
+
+	/* power down upstream GPC domain */
+	pm_runtime_put(domain->power_dev);
+
+	/* allow bus domain to suspend */
+	pm_runtime_put(bc->bus_power_dev);
+
+	return 0;
+}
+
+static struct generic_pm_domain *
+imx8m_blk_ctrl_xlate(struct of_phandle_args *args, void *data)
+{
+	struct genpd_onecell_data *onecell_data = data;
+	unsigned int index = args->args[0];
+
+	if (args->args_count != 1 ||
+	    index >= onecell_data->num_domains)
+		return ERR_PTR(-EINVAL);
+
+	return onecell_data->domains[index];
+}
+
+static struct lock_class_key blk_ctrl_genpd_lock_class;
+
+static const struct imx8mp_hsio_blk_ctrl_domain_data imx8mp_hsio_domain_data[] = {
+	[IMX8MP_HSIOBLK_PD_USB] = {
+		.name = "hsioblk-usb",
+		.clk_name = "usb",
+		.gpc_name = "usb",
+	},
+	[IMX8MP_HSIOBLK_PD_USB_PHY1] = {
+		.name = "hsioblk-ubs-phy1",
+		.gpc_name = "usb-phy1",
+	},
+	[IMX8MP_HSIOBLK_PD_USB_PHY2] = {
+		.name = "hsioblk-ubs-phy2",
+		.gpc_name = "usb-phy2",
+	},
+	[IMX8MP_HSIOBLK_PD_PCIE] = {
+		.name = "hsioblk-pcie",
+		.clk_name = "pcie",
+		.gpc_name = "pcie",
+	},
+	[IMX8MP_HSIOBLK_PD_PCIE_PHY] = {
+		.name = "hsioblk-pcie-phy",
+		.gpc_name = "pcie-phy",
+	},
+};
+
+static int imx8mp_hsio_power_notifier(struct notifier_block *nb,
+				      unsigned long action, void *data)
+{
+	struct imx8mp_hsio_blk_ctrl *bc = container_of(nb, struct imx8mp_hsio_blk_ctrl,
+						 power_nb);
+	struct clk *usb_clk = bc->domains[IMX8MP_HSIOBLK_PD_USB].clk;
+	int ret;
+
+	switch (action) {
+	case GENPD_NOTIFY_ON:
+		/*
+		 * enable USB clock for a moment for the power-on ADB handshake
+		 * to proceed
+		 */
+		ret = clk_prepare_enable(usb_clk);
+		if (ret)
+			return NOTIFY_BAD;
+		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+
+		udelay(5);
+
+		regmap_clear_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+		clk_disable_unprepare(usb_clk);
+		break;
+	case GENPD_NOTIFY_PRE_OFF:
+		/* enable USB clock for the power-down ADB handshake to work */
+		ret = clk_prepare_enable(usb_clk);
+		if (ret)
+			return NOTIFY_BAD;
+
+		regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+		break;
+	case GENPD_NOTIFY_OFF:
+		clk_disable_unprepare(usb_clk);
+		break;
+	default:
+		break;
+	}
+
+	return NOTIFY_OK;
+}
+
+static int imx8mp_hsio_blk_ctrl_probe(struct platform_device *pdev)
+{
+	int num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data);
+	struct device *dev = &pdev->dev;
+	struct imx8mp_hsio_blk_ctrl *bc;
+	void __iomem *base;
+	int i, ret;
+
+	struct regmap_config regmap_config = {
+		.reg_bits	= 32,
+		.val_bits	= 32,
+		.reg_stride	= 4,
+		.max_register	= 0x24,
+	};
+
+	bc = devm_kzalloc(dev, sizeof(*bc), GFP_KERNEL);
+	if (!bc)
+		return -ENOMEM;
+
+	bc->dev = dev;
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	bc->regmap = devm_regmap_init_mmio(dev, base, &regmap_config);
+	if (IS_ERR(bc->regmap))
+		return dev_err_probe(dev, PTR_ERR(bc->regmap),
+				     "failed to init regmap\n");
+
+	bc->domains = devm_kcalloc(dev, num_domains,
+				   sizeof(struct imx8mp_hsio_blk_ctrl_domain),
+				   GFP_KERNEL);
+	if (!bc->domains)
+		return -ENOMEM;
+
+	bc->onecell_data.num_domains = num_domains;
+	bc->onecell_data.xlate = imx8m_blk_ctrl_xlate;
+	bc->onecell_data.domains =
+		devm_kcalloc(dev, num_domains,
+			     sizeof(struct generic_pm_domain *), GFP_KERNEL);
+	if (!bc->onecell_data.domains)
+		return -ENOMEM;
+
+	bc->bus_power_dev = genpd_dev_pm_attach_by_name(dev, "bus");
+	if (IS_ERR(bc->bus_power_dev))
+		return dev_err_probe(dev, PTR_ERR(bc->bus_power_dev),
+				     "failed to attach power domain\n");
+
+	for (i = 0; i < num_domains; i++) {
+		const struct imx8mp_hsio_blk_ctrl_domain_data *data =
+				&imx8mp_hsio_domain_data[i];
+		struct imx8mp_hsio_blk_ctrl_domain *domain = &bc->domains[i];
+
+		if (data->clk_name) {
+			domain->clk = devm_clk_get(dev, data->clk_name);
+			if (IS_ERR(domain->clk)) {
+				ret = PTR_ERR(domain->clk);
+				dev_err_probe(dev, ret, "failed to get clock\n");
+				goto cleanup_pds;
+			}
+		}
+
+		domain->power_dev =
+			dev_pm_domain_attach_by_name(dev, data->gpc_name);
+		if (IS_ERR(domain->power_dev)) {
+			dev_err_probe(dev, PTR_ERR(domain->power_dev),
+				      "failed to attach power domain\n");
+			ret = PTR_ERR(domain->power_dev);
+			goto cleanup_pds;
+		}
+
+		domain->genpd.name = data->name;
+		domain->genpd.power_on = imx8mp_hsio_blk_ctrl_power_on;
+		domain->genpd.power_off = imx8mp_hsio_blk_ctrl_power_off;
+		domain->bc = bc;
+		domain->id = i;
+
+		ret = pm_genpd_init(&domain->genpd, NULL, true);
+		if (ret) {
+			dev_err_probe(dev, ret, "failed to init power domain\n");
+			dev_pm_domain_detach(domain->power_dev, true);
+			goto cleanup_pds;
+		}
+
+		/*
+		 * We use runtime PM to trigger power on/off of the upstream GPC
+		 * domain, as a strict hierarchical parent/child power domain
+		 * setup doesn't allow us to meet the sequencing requirements.
+		 * This means we have nested locking of genpd locks, without the
+		 * nesting being visible at the genpd level, so we need a
+		 * separate lock class to make lockdep aware of the fact that
+		 * this are separate domain locks that can be nested without a
+		 * self-deadlock.
+		 */
+		lockdep_set_class(&domain->genpd.mlock,
+				  &blk_ctrl_genpd_lock_class);
+
+		bc->onecell_data.domains[i] = &domain->genpd;
+	}
+
+	ret = of_genpd_add_provider_onecell(dev->of_node, &bc->onecell_data);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to add power domain provider\n");
+		goto cleanup_pds;
+	}
+
+	bc->power_nb.notifier_call = imx8mp_hsio_power_notifier;
+	ret = dev_pm_genpd_add_notifier(bc->bus_power_dev, &bc->power_nb);
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to add power notifier\n");
+		goto cleanup_provider;
+	}
+
+	dev_set_drvdata(dev, bc);
+
+	return 0;
+
+cleanup_provider:
+	of_genpd_del_provider(dev->of_node);
+cleanup_pds:
+	for (i--; i >= 0; i--) {
+		pm_genpd_remove(&bc->domains[i].genpd);
+		dev_pm_domain_detach(bc->domains[i].power_dev, true);
+	}
+
+	dev_pm_domain_detach(bc->bus_power_dev, true);
+
+	return ret;
+}
+
+static int imx8mp_hsio_blk_ctrl_remove(struct platform_device *pdev)
+{
+	struct imx8mp_hsio_blk_ctrl *bc = dev_get_drvdata(&pdev->dev);
+	int i;
+
+	of_genpd_del_provider(pdev->dev.of_node);
+
+	for (i = 0; bc->onecell_data.num_domains; i++) {
+		struct imx8mp_hsio_blk_ctrl_domain *domain = &bc->domains[i];
+
+		pm_genpd_remove(&domain->genpd);
+		dev_pm_domain_detach(domain->power_dev, true);
+	}
+
+	dev_pm_genpd_remove_notifier(bc->bus_power_dev);
+
+	dev_pm_domain_detach(bc->bus_power_dev, true);
+
+	return 0;
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int imx8mp_hsio_blk_ctrl_suspend(struct device *dev)
+{
+	struct imx8mp_hsio_blk_ctrl *bc = dev_get_drvdata(dev);
+	int ret, i;
+
+	/*
+	 * This may look strange, but is done so the generic PM_SLEEP code
+	 * can power down our domains and more importantly power them up again
+	 * after resume, without tripping over our usage of runtime PM to
+	 * control the upstream GPC domains. Things happen in the right order
+	 * in the system suspend/resume paths due to the device parent/child
+	 * hierarchy.
+	 */
+	ret = pm_runtime_get_sync(bc->bus_power_dev);
+	if (ret < 0) {
+		pm_runtime_put_noidle(bc->bus_power_dev);
+		return ret;
+	}
+
+	for (i = 0; i < bc->onecell_data.num_domains; i++) {
+		struct imx8mp_hsio_blk_ctrl_domain *domain = &bc->domains[i];
+
+		ret = pm_runtime_get_sync(domain->power_dev);
+		if (ret < 0) {
+			pm_runtime_put_noidle(domain->power_dev);
+			goto out_fail;
+		}
+	}
+
+	return 0;
+
+out_fail:
+	for (i--; i >= 0; i--)
+		pm_runtime_put(bc->domains[i].power_dev);
+
+	pm_runtime_put(bc->bus_power_dev);
+
+	return ret;
+}
+
+static int imx8mp_hsio_blk_ctrl_resume(struct device *dev)
+{
+	struct imx8mp_hsio_blk_ctrl *bc = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < bc->onecell_data.num_domains; i++)
+		pm_runtime_put(bc->domains[i].power_dev);
+
+	pm_runtime_put(bc->bus_power_dev);
+
+	return 0;
+}
+#endif
+
+static const struct dev_pm_ops imx8mp_hsio_blk_ctrl_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(imx8mp_hsio_blk_ctrl_suspend,
+				imx8mp_hsio_blk_ctrl_resume)
+};
+
+static const struct of_device_id imx8mp_hsio_blk_ctrl_of_match[] = {
+	{
+		.compatible = "fsl,imx8mp-hsio-blk-ctrl",
+	}, {
+		/* Sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, imx8m_blk_ctrl_of_match);
+
+static struct platform_driver imx8mp_hsio_blk_ctrl_driver = {
+	.probe = imx8mp_hsio_blk_ctrl_probe,
+	.remove = imx8mp_hsio_blk_ctrl_remove,
+	.driver = {
+		.name = "imx8mp-hsio-blk-ctrl",
+		.pm = &imx8mp_hsio_blk_ctrl_pm_ops,
+		.of_match_table = imx8mp_hsio_blk_ctrl_of_match,
+	},
+};
+module_platform_driver(imx8mp_hsio_blk_ctrl_driver);
-- 
2.30.2

