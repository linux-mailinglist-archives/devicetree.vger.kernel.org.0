Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB2852AC106
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 17:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730354AbgKIQfw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 11:35:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729570AbgKIQfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 11:35:52 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE51C0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 08:35:51 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id z21so11989998lfe.12
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 08:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qsW6ClYttMXxx/U31AJ46n8VWMxewzECmN5jbh7cKFg=;
        b=UZ2W4DphtJNEJZtaO3FUPAfDE2wEizX7wxPustspQmgLklg4FFQUywGXu2UJfWgefb
         HmbevHm+r5AK21ZqrDs7UDJBDKtUgfGZBTcrsauoT3s0ywGTtBBhoVBEgBhC+whz1krP
         4BKjC2YSNlUcaHvWT01keYxDDvgRfPei6sW0A8Sw7bmt7jLhugsAsk9YltqS9pO6/34V
         3yh8zEgQnH0R2fqHswkBjYu231dElIiVrxOypztxUg5K6eNddT9VDi5/Cp4qvjtgDWL4
         H/nzRrdddNa9nCLOELjcINbnYEjTA2Q1GfFIBwtVz5lhc4ov4etSijbXaGEeE8F5N6V1
         xIeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qsW6ClYttMXxx/U31AJ46n8VWMxewzECmN5jbh7cKFg=;
        b=LiMI1ihldi7/ucm+mUtxxZp6C66xIZMxMay7rRPjHCUxVSy5PNSsF860TckbISyYNT
         h50k6RjkUSRak/jqzYLgX1CRqgheCZ37xH0sKQbjcaZZAJCLJdDodLv/wGsClX2fdrKX
         OpZg2dOSV2WumOBh3rtXNABmXXY/aFeLRpACCNI70YAYc8tU+rzq5IvhBN/D6mLSxOKr
         9Xenbis8dIIiJ/1QIZ4H9kh5pVQlwAgJF1J9nojKgk441ju7PjxQNmpaR5tNGnYb90BO
         bkwfqiWJ4egctj5JfA0u9dRlNHTO+fh8z2L+OOsyhYrhpMa/pkeVOut2Ap1aEGDmdwRP
         qPAg==
X-Gm-Message-State: AOAM532I9b6iTJl+IC6/n4iKC3liBe0P1VytowrV2xq5pj8lFGJIZXcH
        tVdT+IvXlrAEXD4cgNF1quzBBet4dEU=
X-Google-Smtp-Source: ABdhPJxy1apckA8kEpMpT5AGZeh0M7hTUKaUM6Fe0rIU1fHkV1T/+OHF/9tYlDmveIhYRf0S0T1ucw==
X-Received: by 2002:a19:c3c9:: with SMTP id t192mr6429323lff.154.1604939750147;
        Mon, 09 Nov 2020 08:35:50 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x24sm191137ljj.112.2020.11.09.08.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 08:35:49 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] reset: brcm-pmc: add driver for Broadcom's PMC
Date:   Mon,  9 Nov 2020 17:35:19 +0100
Message-Id: <20201109163519.32605-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201109163519.32605-1-zajec5@gmail.com>
References: <20201109163519.32605-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Power Management Controller can be found on BCM4908 and is needed to
power on SoC blocks. It can be controlled using:
1. Firmware calls
2. Direct regs access

Only the later method is supported by this initial driver. It was
successfully tested on BCM4908 using HCD controllers.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 drivers/reset/Kconfig          |   8 +
 drivers/reset/Makefile         |   1 +
 drivers/reset/reset-brcm-pmc.c | 415 +++++++++++++++++++++++++++++++++
 3 files changed, 424 insertions(+)
 create mode 100644 drivers/reset/reset-brcm-pmc.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 84baec01aa30..d27104e7fa24 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -41,6 +41,14 @@ config RESET_BERLIN
 	help
 	  This enables the reset controller driver for Marvell Berlin SoCs.
 
+config RESET_BRCM_PMC
+	tristate "Broadcom PMC reset controller"
+	depends on ARCH_BCM4908 || COMPILE_TEST
+	default ARCH_BCM4908
+	help
+	  This enables the Broadcom PMC (Power Management Controller) reset
+	  controller driver.
+
 config RESET_BRCMSTB
 	tristate "Broadcom STB reset controller"
 	depends on ARCH_BRCMSTB || COMPILE_TEST
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 16947610cc3b..bbab031e9f19 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_RESET_A10SR) += reset-a10sr.o
 obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
 obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
 obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
+obj-$(CONFIG_RESET_BRCM_PMC) += reset-brcm-pmc.o
 obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
 obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
 obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
diff --git a/drivers/reset/reset-brcm-pmc.c b/drivers/reset/reset-brcm-pmc.c
new file mode 100644
index 000000000000..6ab31f5d026c
--- /dev/null
+++ b/drivers/reset/reset-brcm-pmc.c
@@ -0,0 +1,415 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2013 Broadcom
+ * Copyright (C) 2020 Rafał Miłecki <rafal@milecki.pl>
+ */
+
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+
+#define PROCMON_MONITORCTRL			0x00
+#define PROCMON_ROSC				0x20
+#define PROCMON_MISC				0x40
+#define PROCMON_SSBMASTER			0x60
+#define PROCMON_ECTR				0x80
+#define PROCMON_PMBM				0xc0	/* PMB Master bus 0 */
+#define  PROCMON_PMBM_SIZE			0x20
+#define PROCMON_PMBM1				0xe0	/* PMB Master bus 1 */
+
+#define PMBM_CTRL				0x00
+#define  PMC_PMBM_START				(1 << 31)
+#define  PMC_PMBM_TIMEOUT			(1 << 30)
+#define  PMC_PMBM_SLAVE_ERR			(1 << 29)
+#define  PMC_PMBM_BUSY				(1 << 28)
+#define  PMC_PMBM_READ				(0 << 20)
+#define  PMC_PMBM_WRITE				(1 << 20)
+#define PMBM_WR_DATA				0x04
+#define PMBM_TIMEOUT				0x08
+#define PMBM_RD_DATA				0x0c
+
+#define BPCM_ID_REG				0x00
+#define BPCM_CAPABILITIES			0x04
+#define BPCM_CONTROL				0x08
+#define BPCM_STATUS				0x0c
+#define BPCM_ROSC_CONTROL			0x10
+#define BPCM_ROSC_THRESH_H			0x14
+#define BPCM_ROSC_THRESHOLD_BCM6838		0x14
+#define BPCM_ROSC_THRESH_S			0x18
+#define BPCM_ROSC_COUNT_BCM6838			0x18
+#define BPCM_ROSC_COUNT				0x1c
+#define BPCM_PWD_CONTROL_BCM6838		0x1c
+#define BPCM_PWD_CONTROL			0x20
+#define BPCM_SR_CONTROL_BCM6838			0x20
+#define BPCM_PWD_ACCUM_CONTROL			0x24
+#define BPCM_SR_CONTROL				0x28
+#define BPCM_GLOBAL_CONTROL			0x2c
+#define BPCM_MISC_CONTROL			0x30
+#define BPCM_MISC_CONTROL2			0x34
+#define BPCM_SGPHY_CNTL				0x38
+#define BPCM_SGPHY_STATUS			0x3c
+#define BPCM_ZONE0				0x40
+#define  BPCM_ZONE_CONTROL			0x00
+#define  BPCM_ZONE_CONFIG1			0x04
+#define  BPCM_ZONE_CONFIG2			0x08
+#define  BPCM_ZONE_FREQ_SCALAR_CONTROL		0x0c
+#define  BPCM_ZONE_SIZE				0x10
+
+enum brcm_pmc_chipset {
+	BCM4908,
+	BCM6848,
+	BCM6858,
+};
+
+struct brcm_pmc_data {
+	enum brcm_pmc_chipset chipset;
+	int misc_strap_bus_reg;
+	int misc_strap_bus_pmc_rom_boot_bit;
+};
+
+static const struct brcm_pmc_data brcm_pmc_4908_data = {
+	.chipset				= BCM4908,
+	.misc_strap_bus_reg			= 0x00,
+	.misc_strap_bus_pmc_rom_boot_bit	= BIT(11),
+};
+
+union bpcm_capabilities {
+	struct {
+		int num_zones:8;
+		int sr_reg_bits:8;
+		int pllType:2;
+		int reserved0:1;
+		int ubus:1;
+		int reserved1:12;
+	} bits;
+	u32 raw32;
+} __attribute__((__packed__));
+
+union bpcm_zone_control {
+	struct {
+		u32 manual_clk_en:1;
+		u32 manual_reset_ctl:1;
+		u32 freq_scale_used:1;		/* R/O */
+		u32 dpg_capable:1;		/* R/O */
+		u32 manual_mem_pwr:2;
+		u32 manual_iso_ctl:1;
+		u32 manual_ctl:1;
+		u32 dpg_ctl_en:1;
+		u32 pwr_dn_req:1;
+		u32 pwr_up_req:1;
+		u32 mem_pwr_ctl_en:1;
+		u32 blk_reset_assert:1;
+		u32 mem_stby:1;
+		u32 reserved:5;
+		u32 pwr_cntl_state:5;
+		u32 freq_scalar_dyn_sel:1;	/* R/O */
+		u32 pwr_off_state:1;		/* R/O */
+		u32 pwr_on_state:1;		/* R/O */
+		u32 pwr_good:1;			/* R/O */
+		u32 dpg_pwr_state:1;		/* R/O */
+		u32 mem_pwr_state:1;		/* R/O */
+		u32 iso_state:1;		/* R/O */
+		u32 reset_state:1;		/* R/O */
+	} bits;
+	u32 raw32;
+} __attribute__((__packed__));
+
+struct brcm_pmc {
+	const struct brcm_pmc_data *data;
+	void __iomem *base;
+	struct regmap *misc;
+	struct regmap *procmon;
+	struct device *dev;
+	struct reset_controller_dev rcdev;
+	bool direct;
+	bool little_endian;
+};
+
+static DEFINE_SPINLOCK(lock);
+
+#define cpu_to_dev32(pmc, val) \
+	((pmc)->little_endian ? cpu_to_le32(val) : cpu_to_be32(val))
+
+#define dev32_to_cpu(pmc, val) \
+	((pmc)->little_endian ? le32_to_cpu(val) : be32_to_cpu(val))
+
+static int brcm_pmc_bpcm_wait(struct brcm_pmc *pmc, int bus)
+{
+	unsigned long deadline = jiffies + usecs_to_jiffies(1000);
+	int pmbm = PROCMON_PMBM + bus * PROCMON_PMBM_SIZE;
+	u32 val;
+
+	do {
+		regmap_read(pmc->procmon, pmbm + PMBM_CTRL, &val);
+		if (!(val & PMC_PMBM_START))
+			return 0;
+		cpu_relax();
+		udelay(10);
+	} while (!time_after_eq(jiffies, deadline));
+
+	dev_err(pmc->dev, "Timeout waiting for the BPCM\n");
+
+	return -EBUSY;
+}
+
+static int brcm_pmc_bpcm_read(struct brcm_pmc *pmc, u16 addr, int word_offset, u32 *val)
+{
+	int err = 0;
+
+	if (!pmc->direct) {
+		err = -EOPNOTSUPP;
+	} else {
+		u8 device = addr & 0xff;
+		u8 bus = addr >> 8;
+		unsigned long flags;
+		int pmbm;
+		u32 tmp;
+
+		pmbm = PROCMON_PMBM + bus * PROCMON_PMBM_SIZE;
+
+		spin_lock_irqsave(&lock, flags);
+
+		/* TODO: Make sure PMBM is not busy */
+
+		regmap_write(pmc->procmon, pmbm + PMBM_CTRL,
+			     PMC_PMBM_START | PMC_PMBM_READ | (device << 12) | word_offset);
+
+		err = brcm_pmc_bpcm_wait(pmc, bus);
+		if (!err)
+			err = regmap_read(pmc->procmon, pmbm + PMBM_RD_DATA, val);
+
+		spin_unlock_irqrestore(&lock, flags);
+	}
+
+	return err;
+}
+
+static int brcm_pmc_bpcm_write(struct brcm_pmc *pmc, u16 addr, int word_offset, u32 val)
+{
+	int err = 0;
+
+	if (!pmc->direct) {
+		err = -EOPNOTSUPP;
+	} else {
+		u8 device = addr & 0xff;
+		u8 bus = addr >> 8;
+		unsigned long flags;
+		int pmbm;
+		u32 tmp;
+		int err = 0;
+
+		pmbm = PROCMON_PMBM + bus * PROCMON_PMBM_SIZE;
+
+		spin_lock_irqsave(&lock, flags);
+
+		/* TODO: Make sure PMBM is not busy */
+
+		regmap_write(pmc->procmon, pmbm + PMBM_WR_DATA, val);
+		regmap_write(pmc->procmon, pmbm + PMBM_CTRL,
+			     PMC_PMBM_START | PMC_PMBM_WRITE | (device << 12) | word_offset);
+
+		err = brcm_pmc_bpcm_wait(pmc, bus);
+
+		spin_unlock_irqrestore(&lock, flags);
+	}
+
+	return err;
+}
+
+static int brcm_pmc_power_on_zone(struct brcm_pmc *pmc, u16 addr, int zone)
+{
+	int err;
+
+	if ((pmc->data->chipset == BCM6848 || pmc->data->chipset == BCM6858) && !pmc->direct) {
+		err = -EOPNOTSUPP;
+	} else {
+		union bpcm_zone_control control;
+		int offset;
+		int err;
+
+		offset = BPCM_ZONE0 + zone * BPCM_ZONE_SIZE + BPCM_ZONE_CONTROL;
+
+		err = brcm_pmc_bpcm_read(pmc, addr, offset >> 2, (u32 *)&control.raw32);
+		if (err)
+			return err;
+		control.raw32 = dev32_to_cpu(pmc, control.raw32);
+
+		if (control.bits.pwr_on_state == 0) {
+			control.bits.pwr_dn_req = 0;
+			control.bits.dpg_ctl_en = 1;
+			control.bits.pwr_up_req = 1;
+			control.bits.mem_pwr_ctl_en = 1;
+			control.bits.blk_reset_assert = 1;
+
+			control.raw32 = cpu_to_dev32(pmc, control.raw32);
+			err = brcm_pmc_bpcm_write(pmc, addr, offset >> 2, control.raw32);
+		}
+	}
+
+	return err;
+}
+
+static int brcm_pmc_power_off_device(struct brcm_pmc *pmc, u16 addr)
+{
+	int err;
+
+	if (!pmc->direct) {
+		err = -EOPNOTSUPP;
+	} else {
+		/* Entire device can be powered off by powering off the 0th zone */
+		union bpcm_zone_control control;
+		int offset;
+		int err;
+
+		offset = BPCM_ZONE0 + BPCM_ZONE_CONTROL;
+
+		err = brcm_pmc_bpcm_read(pmc, addr, offset >> 2, (u32 *)&control.raw32);
+		if (err)
+			return err;
+		control.raw32 = dev32_to_cpu(pmc, control.raw32);
+
+		if (!control.bits.pwr_off_state) {
+			control.bits.pwr_dn_req = 1;
+
+			control.raw32 = cpu_to_dev32(pmc, control.raw32);
+			err = brcm_pmc_bpcm_write(pmc, addr, offset >> 2, control.raw32);
+		}
+	}
+
+	return err;
+}
+
+static int brcm_pmc_power_on_device(struct brcm_pmc *pmc, u16 addr)
+{
+	int err;
+
+	if (!pmc->direct) {
+		err = -EOPNOTSUPP;
+	} else {
+		union bpcm_capabilities caps;
+		int offset;
+		int err;
+		int i;
+
+		offset = BPCM_CAPABILITIES;
+
+		err = brcm_pmc_bpcm_read(pmc, addr, offset >> 2, (u32 *)&caps.raw32);
+		if (err)
+			return err;
+		caps.raw32 = dev32_to_cpu(pmc, caps.raw32);
+
+		for (i = 0; i < caps.bits.num_zones; i++) {
+			err = brcm_pmc_power_on_zone(pmc, addr, i);
+			if (err)
+				return err;
+		}
+	}
+
+	return err;
+}
+
+static int brcm_pmc_assert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	struct brcm_pmc *pmc = container_of(rcdev, struct brcm_pmc, rcdev);
+
+	return brcm_pmc_power_off_device(pmc, id);
+}
+
+static int brcm_pmc_deassert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	struct brcm_pmc *pmc = container_of(rcdev, struct brcm_pmc, rcdev);
+
+	return brcm_pmc_power_on_device(pmc, id);
+}
+
+static int brcm_pmc_reset_xlate(struct reset_controller_dev *rcdev,
+				const struct of_phandle_args *reset_spec)
+{
+	u8 device = reset_spec->args[1];
+	u8 bus = reset_spec->args[0];
+
+	if (bus > 1)
+		return -EINVAL;
+
+	return (bus << 8) | device;
+}
+
+static const struct reset_control_ops brcm_pmc_reset_control_ops = {
+	.assert = brcm_pmc_assert,
+	.deassert = brcm_pmc_deassert,
+};
+
+static const struct of_device_id brcm_pmc_reset_of_match[] = {
+	{ .compatible = "brcm,bcm4908-pmc", .data = &brcm_pmc_4908_data, },
+	{ },
+};
+
+static int brcm_pmc_reset_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct brcm_pmc *pmc;
+	struct resource *res;
+	unsigned int val;
+	int err;
+
+	pmc = devm_kzalloc(dev, sizeof(*pmc), GFP_KERNEL);
+	if (!pmc)
+		return -ENOMEM;
+
+	pmc->data = of_device_get_match_data(dev);
+	if (!pmc->data) {
+		dev_err(dev, "Failed to find chipset data\n");
+		return -EINVAL;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	pmc->base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(pmc->base))
+		return PTR_ERR(pmc->base);
+
+	pmc->misc = syscon_regmap_lookup_by_phandle(dev->of_node, "syscon-misc");
+	if (IS_ERR(pmc->misc))
+		return PTR_ERR(pmc->misc);
+
+	pmc->procmon = syscon_regmap_lookup_by_phandle(dev->of_node, "syscon-procmon");
+	if (IS_ERR(pmc->procmon))
+		return PTR_ERR(pmc->procmon);
+
+	pmc->dev = dev;
+
+	pmc->rcdev.ops = &brcm_pmc_reset_control_ops;
+	pmc->rcdev.owner = THIS_MODULE;
+	pmc->rcdev.of_node = dev->of_node;
+	pmc->rcdev.of_reset_n_cells = 2;
+	pmc->rcdev.of_xlate = brcm_pmc_reset_xlate;
+
+	err = regmap_read(pmc->misc, pmc->data->misc_strap_bus_reg, &val);
+	if (err)
+		return err;
+	pmc->direct = !(val & pmc->data->misc_strap_bus_pmc_rom_boot_bit);
+	if (!pmc->direct) {
+		dev_err(dev, "detected unsupported access mode, falling back to the direct one\n");
+		pmc->direct = 1;
+	}
+
+	pmc->little_endian = !of_device_is_big_endian(dev->of_node);
+
+	return devm_reset_controller_register(dev, &pmc->rcdev);
+}
+
+static struct platform_driver brcm_pmc_reset_driver = {
+	.probe = brcm_pmc_reset_probe,
+	.driver = {
+		.name	= "brcm-pmc",
+		.of_match_table	= brcm_pmc_reset_of_match,
+	}
+};
+module_platform_driver(brcm_pmc_reset_driver);
+
+MODULE_AUTHOR("Rafał Miłecki");
+MODULE_LICENSE("GPL v2");
+MODULE_DEVICE_TABLE(of, brcm_pmc_reset_of_match);
-- 
2.27.0

