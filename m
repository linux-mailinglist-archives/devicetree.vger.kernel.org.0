Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AF8D2D297B
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 12:06:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729110AbgLHLDD convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 8 Dec 2020 06:03:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728752AbgLHLDC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 06:03:02 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32B49C061794
        for <devicetree@vger.kernel.org>; Tue,  8 Dec 2020 03:02:22 -0800 (PST)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kmalA-000750-1S; Tue, 08 Dec 2020 12:02:20 +0100
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kmal8-0004z5-Ti; Tue, 08 Dec 2020 12:02:18 +0100
Message-ID: <d5162eae806f21f583c6dbdf7bb79384a3d9d5cf.camel@pengutronix.de>
Subject: Re: [PATCH V2 2/2] reset: brcm-pmb: add driver for Broadcom's PMB
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Date:   Tue, 08 Dec 2020 12:02:18 +0100
In-Reply-To: <20201119125600.8559-3-zajec5@gmail.com>
References: <20201119125600.8559-1-zajec5@gmail.com>
         <20201119125600.8559-3-zajec5@gmail.com>
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

Hi Rafał,

On Thu, 2020-11-19 at 13:56 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> PMB can be found on BCM4908 and many other chipsets (e.g. BCM63138).
> It's needed to power on and off SoC blocks like PCIe, SATA, USB.

This sentence, the register names, and
the brcm_pmb_power_on/off_device/zone functions below make me worry that
this should be a power domain controller (pm_genpd in drivers/soc)
instead.
Does PM in PMB stand for power management by chance?

If this actually cuts power to the USB and PCIe cores instead of just
controlling reset lines, it would be better to implement this
differently.

> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Update subject to "brcm-pmb"
>     Fix validation in xlate
>     Use device_get_match_data()
> ---
>  drivers/reset/Kconfig          |   7 +
>  drivers/reset/Makefile         |   1 +
>  drivers/reset/reset-brcm-pmb.c | 307 +++++++++++++++++++++++++++++++++
>  3 files changed, 315 insertions(+)
>  create mode 100644 drivers/reset/reset-brcm-pmb.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 84baec01aa30..b7e377a32c92 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -41,6 +41,13 @@ config RESET_BERLIN
>  	help
>  	  This enables the reset controller driver for Marvell Berlin SoCs.
>  
> +config RESET_BRCM_PMB
> +	tristate "Broadcom PMB reset controller"
> +	depends on ARM64 || COMPILE_TEST
> +	default ARCH_BCM4908
> +	help
> +	  This enables the Broadcom PMB reset controller driver.
> +
>  config RESET_BRCMSTB
>  	tristate "Broadcom STB reset controller"
>  	depends on ARCH_BRCMSTB || COMPILE_TEST
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 16947610cc3b..0dd5d42050dc 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_RESET_A10SR) += reset-a10sr.o
>  obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
>  obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
>  obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
> +obj-$(CONFIG_RESET_BRCM_PMB) += reset-brcm-pmb.o
>  obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
>  obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
>  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
> diff --git a/drivers/reset/reset-brcm-pmb.c b/drivers/reset/reset-brcm-pmb.c
> new file mode 100644
> index 000000000000..780df6260d69
> --- /dev/null
> +++ b/drivers/reset/reset-brcm-pmb.c
> @@ -0,0 +1,307 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2013 Broadcom
> + * Copyright (C) 2020 Rafał Miłecki <rafal@milecki.pl>
> + */
> +
> +#include <dt-bindings/reset/brcm,pmb.h>
> +#include <linux/io.h>
> +#include <linux/mfd/syscon.h>

Unused header.

> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>

Unused header.

> +#include <linux/reset-controller.h>
> +#include <linux/reset/bcm63xx_pmb.h>
> +
> +#define BPCM_ID_REG					0x00
> +#define BPCM_CAPABILITIES				0x04
> +#define  BPCM_CAP_NUM_ZONES				0x000000ff
> +#define  BPCM_CAP_SR_REG_BITS				0x0000ff00
> +#define  BPCM_CAP_PLLTYPE				0x00030000
> +#define  BPCM_CAP_UBUS					0x00080000
> +#define BPCM_CONTROL					0x08
> +#define BPCM_STATUS					0x0c
> +#define BPCM_ROSC_CONTROL				0x10
> +#define BPCM_ROSC_THRESH_H				0x14
> +#define BPCM_ROSC_THRESHOLD_BCM6838			0x14
> +#define BPCM_ROSC_THRESH_S				0x18
> +#define BPCM_ROSC_COUNT_BCM6838				0x18
> +#define BPCM_ROSC_COUNT					0x1c
> +#define BPCM_PWD_CONTROL_BCM6838			0x1c
> +#define BPCM_PWD_CONTROL				0x20
> +#define BPCM_SR_CONTROL_BCM6838				0x20
> +#define BPCM_PWD_ACCUM_CONTROL				0x24
> +#define BPCM_SR_CONTROL					0x28
> +#define BPCM_GLOBAL_CONTROL				0x2c
> +#define BPCM_MISC_CONTROL				0x30
> +#define BPCM_MISC_CONTROL2				0x34
> +#define BPCM_SGPHY_CNTL					0x38
> +#define BPCM_SGPHY_STATUS				0x3c
> +#define BPCM_ZONE0					0x40
> +#define  BPCM_ZONE_CONTROL				0x00
> +#define   BPCM_ZONE_CONTROL_MANUAL_CLK_EN		0x00000001
> +#define   BPCM_ZONE_CONTROL_MANUAL_RESET_CTL		0x00000002
> +#define   BPCM_ZONE_CONTROL_FREQ_SCALE_USED		0x00000004	/* R/O */
> +#define   BPCM_ZONE_CONTROL_DPG_CAPABLE			0x00000008	/* R/O */
> +#define   BPCM_ZONE_CONTROL_MANUAL_MEM_PWR		0x00000030
> +#define   BPCM_ZONE_CONTROL_MANUAL_ISO_CTL		0x00000040
> +#define   BPCM_ZONE_CONTROL_MANUAL_CTL			0x00000080
> +#define   BPCM_ZONE_CONTROL_DPG_CTL_EN			0x00000100
> +#define   BPCM_ZONE_CONTROL_PWR_DN_REQ			0x00000200
> +#define   BPCM_ZONE_CONTROL_PWR_UP_REQ			0x00000400
> +#define   BPCM_ZONE_CONTROL_MEM_PWR_CTL_EN		0x00000800
> +#define   BPCM_ZONE_CONTROL_BLK_RESET_ASSERT		0x00001000
> +#define   BPCM_ZONE_CONTROL_MEM_STBY			0x00002000
> +#define   BPCM_ZONE_CONTROL_RESERVED			0x0007c000
> +#define   BPCM_ZONE_CONTROL_PWR_CNTL_STATE		0x00f80000
> +#define   BPCM_ZONE_CONTROL_FREQ_SCALAR_DYN_SEL		0x01000000	/* R/O */
> +#define   BPCM_ZONE_CONTROL_PWR_OFF_STATE		0x02000000	/* R/O */
> +#define   BPCM_ZONE_CONTROL_PWR_ON_STATE		0x04000000	/* R/O */
> +#define   BPCM_ZONE_CONTROL_PWR_GOOD			0x08000000	/* R/O */
> +#define   BPCM_ZONE_CONTROL_DPG_PWR_STATE		0x10000000	/* R/O */
> +#define   BPCM_ZONE_CONTROL_MEM_PWR_STATE		0x20000000	/* R/O */
> +#define   BPCM_ZONE_CONTROL_ISO_STATE			0x40000000	/* R/O */
> +#define   BPCM_ZONE_CONTROL_RESET_STATE			0x80000000	/* R/O */
> +#define  BPCM_ZONE_CONFIG1				0x04
> +#define  BPCM_ZONE_CONFIG2				0x08
> +#define  BPCM_ZONE_FREQ_SCALAR_CONTROL			0x0c
> +#define  BPCM_ZONE_SIZE					0x10
> +
> +enum brcm_pmb_chipset {
> +	BCM4908,
> +};
> +
> +struct brcm_pmb_data {
> +	enum brcm_pmb_chipset chipset;
> +};
> +
> +static const struct brcm_pmb_data brcm_pmb_4908_data = {
> +	.chipset				= BCM4908,
> +};

These three are not used at all.

> +struct brcm_pmb {
> +	const struct brcm_pmb_data *data;
> +	void __iomem *base;
> +	struct device *dev;
> +	struct reset_controller_dev rcdev;
> +	spinlock_t lock;
> +	bool little_endian;
> +};
> +
> +static int brcm_pmb_bpcm_read(struct brcm_pmb *pmb, u16 device, int offset, u32 *val)
> +{
> +	unsigned long flags;
> +	int err;
> +
> +	spin_lock_irqsave(&pmb->lock, flags);
> +	err = bpcm_rd(pmb->base, device, offset, val);
> +	spin_unlock_irqrestore(&pmb->lock, flags);
> +
> +	if (!err)
> +		*val = pmb->little_endian ? le32_to_cpu(*val) : be32_to_cpu(*val);
> +
> +	return err;
> +}
> +
> +static int brcm_pmb_bpcm_write(struct brcm_pmb *pmb, u16 device, int offset, u32 val)
> +{
> +	unsigned long flags;
> +	int err;
> +
> +	val = pmb->little_endian ? cpu_to_le32(val) : cpu_to_be32(val);
> +
> +	spin_lock_irqsave(&pmb->lock, flags);
> +	err = bpcm_wr(pmb->base, device, offset, val);
> +	spin_unlock_irqrestore(&pmb->lock, flags);
> +
> +	return err;
> +}
> +
> +static int brcm_pmb_power_off_zone(struct brcm_pmb *pmb, u16 device, int zone)
> +{
> +	int offset;
> +	u32 val;
> +	int err;
> +
> +	offset = BPCM_ZONE0 + zone * BPCM_ZONE_SIZE + BPCM_ZONE_CONTROL;
> +
> +	err = brcm_pmb_bpcm_read(pmb, device, offset, &val);
> +	if (err)
> +		return err;
> +
> +	val |= BPCM_ZONE_CONTROL_PWR_DN_REQ;
> +	val &= ~BPCM_ZONE_CONTROL_PWR_UP_REQ;
> +
> +	err = brcm_pmb_bpcm_write(pmb, device, offset, val);
> +
> +	return err;
> +}
> +
> +static int brcm_pmb_power_on_zone(struct brcm_pmb *pmb, u16 device, int zone)
> +{
> +	int offset;
> +	u32 val;
> +	int err;
> +
> +	offset = BPCM_ZONE0 + zone * BPCM_ZONE_SIZE + BPCM_ZONE_CONTROL;
> +
> +	err = brcm_pmb_bpcm_read(pmb, device, offset, &val);
> +	if (err)
> +		return err;
> +
> +	if (!(val & BPCM_ZONE_CONTROL_PWR_ON_STATE)) {
> +		val &= ~BPCM_ZONE_CONTROL_PWR_DN_REQ;
> +		val |= BPCM_ZONE_CONTROL_DPG_CTL_EN;
> +		val |= BPCM_ZONE_CONTROL_PWR_UP_REQ;
> +		val |= BPCM_ZONE_CONTROL_MEM_PWR_CTL_EN;
> +		val |= BPCM_ZONE_CONTROL_BLK_RESET_ASSERT;
> +
> +		err = brcm_pmb_bpcm_write(pmb, device, offset, val);
> +	}
> +
> +	return err;
> +}
> +
> +static int brcm_pmb_power_off_device(struct brcm_pmb *pmb, u16 device)
> +{
> +	int offset;
> +	u32 val;
> +	int err;
> +
> +	/* Entire device can be powered off by powering off the 0th zone */
> +	offset = BPCM_ZONE0 + BPCM_ZONE_CONTROL;
> +
> +	err = brcm_pmb_bpcm_read(pmb, device, offset, &val);
> +	if (err)
> +		return err;
> +
> +	if (!(val & BPCM_ZONE_CONTROL_PWR_OFF_STATE)) {
> +		val = BPCM_ZONE_CONTROL_PWR_DN_REQ;
> +
> +		err = brcm_pmb_bpcm_write(pmb, device, offset, val);
> +	}
> +
> +	return err;
> +}
> +
> +static int brcm_pmb_power_on_device(struct brcm_pmb *pmb, u16 device)
> +{
> +	u32 val;
> +	int err;
> +	int i;
> +
> +	err = brcm_pmb_bpcm_read(pmb, device, BPCM_CAPABILITIES, &val);
> +	if (err)
> +		return err;
> +
> +	for (i = 0; i < (val & BPCM_CAP_NUM_ZONES); i++) {
> +		err = brcm_pmb_power_on_zone(pmb, device, i);
> +		if (err)
> +			return err;
> +	}
> +
> +	return err;
> +}
> +
> +static int brcm_pmb_assert(struct reset_controller_dev *rcdev, unsigned long id)
> +{
> +	struct brcm_pmb *pmb = container_of(rcdev, struct brcm_pmb, rcdev);
> +	int device = id & 0xff;
> +
> +	switch (id >> 8) {
> +	case BRCM_PMB_USB:
> +		return brcm_pmb_power_off_device(pmb, device);
> +	case BRCM_PMB_PCIE:
> +		return brcm_pmb_power_off_zone(pmb, device, 0);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static int brcm_pmb_deassert(struct reset_controller_dev *rcdev, unsigned long id)
> +{
> +	struct brcm_pmb *pmb = container_of(rcdev, struct brcm_pmb, rcdev);
> +	int device = id & 0xff;
> +
> +	switch (id >> 8) {
> +	case BRCM_PMB_USB:
> +		return brcm_pmb_power_on_device(pmb, device);
> +	case BRCM_PMB_PCIE:
> +		return brcm_pmb_power_on_zone(pmb, device, 0);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
> +static int brcm_pmb_reset_xlate(struct reset_controller_dev *rcdev,
> +				const struct of_phandle_args *reset_spec)
> +{
> +	u32 type = reset_spec->args[0];
> +	u32 device = reset_spec->args[1];
> +
> +	if (type > 0xff || device > 0xff)
> +		return -EINVAL;
> +
> +	return (type << 8) | device;
> +}
> +
> +static const struct reset_control_ops brcm_pmb_reset_control_ops = {
> +	.assert = brcm_pmb_assert,
> +	.deassert = brcm_pmb_deassert,
> +};
> +
> +static const struct of_device_id brcm_pmb_reset_of_match[] = {
> +	{ .compatible = "brcm,bcm4908-pmb", .data = &brcm_pmb_4908_data, },
> +	{ },
> +};
> +
> +static int brcm_pmb_reset_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct brcm_pmb *pmb;
> +	struct resource *res;
> +
> +	pmb = devm_kzalloc(dev, sizeof(*pmb), GFP_KERNEL);
> +	if (!pmb)
> +		return -ENOMEM;
> +
> +	pmb->data = device_get_match_data(dev);
> +	if (!pmb->data) {
> +		dev_err(dev, "Failed to find chipset data\n");
> +		return -EINVAL;
> +	}
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	pmb->base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(pmb->base))
> +		return PTR_ERR(pmb->base);
> +
> +	pmb->dev = dev;
> +
> +	pmb->rcdev.ops = &brcm_pmb_reset_control_ops;
> +	pmb->rcdev.owner = THIS_MODULE;
> +	pmb->rcdev.of_node = dev->of_node;
> +	pmb->rcdev.of_reset_n_cells = 2;
> +	pmb->rcdev.of_xlate = brcm_pmb_reset_xlate;
> +
> +	spin_lock_init(&pmb->lock);
> +
> +	pmb->little_endian = !of_device_is_big_endian(dev->of_node);
> +
> +	return devm_reset_controller_register(dev, &pmb->rcdev);
> +}
> +
> +static struct platform_driver brcm_pmb_reset_driver = {
> +	.probe = brcm_pmb_reset_probe,
> +	.driver = {
> +		.name	= "brcm-pmb",
> +		.of_match_table	= brcm_pmb_reset_of_match,
> +	}
> +};
> +module_platform_driver(brcm_pmb_reset_driver);
> +
> +MODULE_AUTHOR("Rafał Miłecki");
> +MODULE_LICENSE("GPL v2");
> +MODULE_DEVICE_TABLE(of, brcm_pmb_reset_of_match);

regards
Philipp
