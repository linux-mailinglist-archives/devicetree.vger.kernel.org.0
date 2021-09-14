Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 815E240AB60
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 12:04:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbhINKFp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 06:05:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231240AbhINKFo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 06:05:44 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80C95C061766
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:27 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id w19-20020a17090aaf9300b00191e6d10a19so2336783pjq.1
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vHkk05mDrsY3KSWdrb6INb6B11AEbP7JuzmBb5hOuY4=;
        b=ecFBrR0fSOfE9+OGSU8GT73gk99SCkl+JeI8eT/FHSXpr0mtqxU42PRa/Nb8UKFCQc
         ZmMKT7zI0JnhXqO5qxumXEmU0zSYmHs7xEYyen6S+jKHcUkhciACz1NxnkwNfGrZ1jel
         rAHwng9Cx5atuLc90M8VD2zyLmG0ilkb0cAeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vHkk05mDrsY3KSWdrb6INb6B11AEbP7JuzmBb5hOuY4=;
        b=O73VkRp5slo6KkOS/aywzq+sCWm5BPayNbXnYpAmI7VQvCqL97+NdEzejuGNRC+9BY
         O+8bShxlCCgtsQFcY/U5AJiym+99sJjy1VV1D8YPDaLLBk7NFrqTT5jWOMSh/qJ1TrIf
         BZHzGkDcxOYraUL0jiBIQhmPflt/26c3IgjJwet5rDZ/i0MWITv5cewLQILf71pjwLmp
         LpYP1fq5aK84jBdIWibfd/xRntxLXntYpxyv1Nlk2BlkrgMC3fCQBPVcfUOwi3aKajlW
         av1U24orWNx4aeKU9kTjq4xv+w3LMRjkuPLio/0nGHnN6o2XzMETR0K9IFDCjGSATJWw
         055A==
X-Gm-Message-State: AOAM5326uoksw4H/0vUqDz3ctrUm6EbOc39hI/9yb/NdHZABIOrGzDdl
        XI/I5cJe8nzWzMkFh74a6ho0GmZixo2UYA==
X-Google-Smtp-Source: ABdhPJzFkUyVSzv8/bupd/h8mqoFQH/4MV5egQzmJw3d6Llp+KaZZZt6L04XsAkAl2X1fW8UuWCPkQ==
X-Received: by 2002:a17:90b:616:: with SMTP id gb22mr1132136pjb.191.1631613866810;
        Tue, 14 Sep 2021 03:04:26 -0700 (PDT)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id b5sm1193140pjq.2.2021.09.14.03.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 03:04:26 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, robh+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de
Cc:     linux-arm-kernel@lists.infradead.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
Date:   Tue, 14 Sep 2021 19:04:14 +0900
Message-Id: <20210914100415.1549208-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210914100415.1549208-1-daniel@0x0f.com>
References: <20210914100415.1549208-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the SigmaStar GPIO interrupt controller, gpi,
that is present in SSD201 and SSD202D SoCs.

This routes interrupts from many interrupts into a single
interrupt that is connected to the peripheral interrupt
controller.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                       |   1 +
 drivers/irqchip/Kconfig           |  11 ++
 drivers/irqchip/Makefile          |   2 +
 drivers/irqchip/irq-ssd20xd-gpi.c | 211 ++++++++++++++++++++++++++++++
 4 files changed, 225 insertions(+)
 create mode 100644 drivers/irqchip/irq-ssd20xd-gpi.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 3004c0f735b6..487d5e62c287 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2248,6 +2248,7 @@ F:	arch/arm/boot/dts/mstar-*
 F:	arch/arm/mach-mstar/
 F:	drivers/clk/mstar/
 F:	drivers/gpio/gpio-msc313.c
+F:	drivers/irqchip/irq-ssd20xd-gpi.c
 F:	drivers/watchdog/msc313e_wdt.c
 F:	include/dt-bindings/clock/mstar-*
 F:	include/dt-bindings/gpio/msc313-gpio.h
diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 4d5924e9f766..8786aed7f776 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -582,6 +582,17 @@ config MST_IRQ
 	help
 	  Support MStar Interrupt Controller.
 
+config SSD20XD_GPI
+	bool "SigmaStar SSD20xD GPIO Interrupt Controller"
+	depends on ARCH_MSTARV7 || COMPILE_TEST
+	default ARCH_MSTARV7
+	select IRQ_DOMAIN
+	select IRQ_DOMAIN_HIERARCHY
+	select REGMAP
+	help
+	  Support for the SigmaStar GPIO interrupt controller
+	  found in SSD201, SSD202D and others.
+
 config WPCM450_AIC
 	bool "Nuvoton WPCM450 Advanced Interrupt Controller"
 	depends on ARCH_WPCM450
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index f88cbf36a9d2..1a6c3dbd67a8 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -116,3 +116,5 @@ obj-$(CONFIG_MACH_REALTEK_RTL)		+= irq-realtek-rtl.o
 obj-$(CONFIG_WPCM450_AIC)		+= irq-wpcm450-aic.o
 obj-$(CONFIG_IRQ_IDT3243X)		+= irq-idt3243x.o
 obj-$(CONFIG_APPLE_AIC)			+= irq-apple-aic.o
+obj-$(CONFIG_SSD20XD_GPI)		+= irq-ssd20xd-gpi.o
+
diff --git a/drivers/irqchip/irq-ssd20xd-gpi.c b/drivers/irqchip/irq-ssd20xd-gpi.c
new file mode 100644
index 000000000000..c34f41380717
--- /dev/null
+++ b/drivers/irqchip/irq-ssd20xd-gpi.c
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include <linux/irq.h>
+#include <linux/irqchip.h>
+#include <linux/irqdomain.h>
+#include <linux/irqchip/chained_irq.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/mfd/syscon.h>
+#include <linux/regmap.h>
+#include <linux/interrupt.h>
+
+#define NUM_IRQ		76
+#define IRQS_PER_REG	16
+#define STRIDE		4
+
+#define REG_MASK	0x0
+#define REG_ACK		0x28
+#define REG_TYPE	0x40
+#define REG_STATUS	0xc0
+
+struct ssd20xd_gpi {
+	struct regmap *regmap;
+	struct irq_domain *domain;
+};
+
+#define REG_OFFSET(_hwirq) ((hwirq >> 4) * STRIDE)
+#define BIT_OFFSET(_hwirq) (1 << (hwirq & 0xf))
+
+static void ssd20xd_gpi_mask_irq(struct irq_data *data)
+{
+	irq_hw_number_t hwirq = irqd_to_hwirq(data);
+	struct ssd20xd_gpi *gpi = irq_data_get_irq_chip_data(data);
+	int offset_reg = REG_OFFSET(hwirq);
+	int offset_bit = BIT_OFFSET(hwirq);
+
+	regmap_update_bits(gpi->regmap, REG_MASK + offset_reg, offset_bit, offset_bit);
+}
+
+static void ssd20xd_gpi_unmask_irq(struct irq_data *data)
+{
+	irq_hw_number_t hwirq = irqd_to_hwirq(data);
+	struct ssd20xd_gpi *gpi = irq_data_get_irq_chip_data(data);
+	int offset_reg = REG_OFFSET(hwirq);
+	int offset_bit = BIT_OFFSET(hwirq);
+
+	regmap_update_bits(gpi->regmap, REG_MASK + offset_reg, offset_bit, 0);
+}
+
+static void ssd20xd_gpi_irq_eoi(struct irq_data *data)
+{
+	struct ssd20xd_gpi *gpi = irq_data_get_irq_chip_data(data);
+	irq_hw_number_t hwirq = irqd_to_hwirq(data);
+	int offset_reg = REG_OFFSET(hwirq);
+	int offset_bit = BIT_OFFSET(hwirq);
+
+	regmap_update_bits_base(gpi->regmap, REG_ACK + offset_reg,
+			offset_bit, offset_bit, NULL, false, true);
+}
+
+static int ssd20xd_gpi_set_type_irq(struct irq_data *data, unsigned int flow_type)
+{
+	irq_hw_number_t hwirq = irqd_to_hwirq(data);
+	struct ssd20xd_gpi *gpi = irq_data_get_irq_chip_data(data);
+	int offset_reg = REG_OFFSET(hwirq);
+	int offset_bit = BIT_OFFSET(hwirq);
+
+	switch (flow_type) {
+	case IRQ_TYPE_EDGE_FALLING:
+		regmap_update_bits(gpi->regmap, REG_TYPE + offset_reg, offset_bit, offset_bit);
+		break;
+	case IRQ_TYPE_EDGE_RISING:
+		regmap_update_bits(gpi->regmap, REG_TYPE + offset_reg, offset_bit, 0);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static struct irq_chip ssd20xd_gpi_chip = {
+	.name		= "GPI",
+	.irq_mask	= ssd20xd_gpi_mask_irq,
+	.irq_unmask	= ssd20xd_gpi_unmask_irq,
+	.irq_eoi	= ssd20xd_gpi_irq_eoi,
+	.irq_set_type	= ssd20xd_gpi_set_type_irq,
+};
+
+static int ssd20xd_gpi_domain_alloc(struct irq_domain *domain, unsigned int virq,
+				    unsigned int nr_irqs, void *arg)
+{
+	struct ssd20xd_gpi *intc = domain->host_data;
+	struct irq_fwspec *fwspec = arg;
+	int i;
+
+	for (i = 0; i < nr_irqs; i++)
+		irq_domain_set_info(domain, virq + i, fwspec->param[0] + i,
+				&ssd20xd_gpi_chip, intc, handle_fasteoi_irq, NULL, NULL);
+
+	return 0;
+}
+
+static void ssd20xd_gpi_domain_free(struct irq_domain *domain, unsigned int virq,
+				    unsigned int nr_irqs)
+{
+	int i;
+
+	for (i = 0; i < nr_irqs; i++) {
+		struct irq_data *d = irq_domain_get_irq_data(domain, virq + i);
+
+		irq_set_handler(virq + i, NULL);
+		irq_domain_reset_irq_data(d);
+	}
+}
+
+static const struct irq_domain_ops ssd20xd_gpi_domain_ops = {
+	.alloc = ssd20xd_gpi_domain_alloc,
+	.free = ssd20xd_gpi_domain_free,
+};
+
+static const struct regmap_config ssd20xd_gpi_regmap_config = {
+	.reg_bits = 16,
+	.val_bits = 16,
+	.reg_stride = 4,
+};
+
+static void ssd20x_gpi_chainedhandler(struct irq_desc *desc)
+{
+	struct ssd20xd_gpi *intc = irq_desc_get_handler_data(desc);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	unsigned int irqbit, hwirq, virq, status;
+	int i;
+
+	chained_irq_enter(chip, desc);
+
+	for (i = 0; i < NUM_IRQ / IRQS_PER_REG; i++) {
+		int offset_reg = STRIDE * i;
+		int offset_irq = IRQS_PER_REG * i;
+
+		regmap_read(intc->regmap, REG_STATUS + offset_reg, &status);
+
+		while (status) {
+			irqbit = __ffs(status);
+			hwirq = offset_irq + irqbit;
+			virq = irq_find_mapping(intc->domain, hwirq);
+			if (virq)
+				generic_handle_irq(virq);
+			status &= ~BIT(irqbit);
+		}
+	}
+
+	chained_irq_exit(chip, desc);
+}
+
+static int __init ssd20xd_gpi_of_init(struct device_node *node,
+				      struct device_node *parent)
+{
+	struct ssd20xd_gpi *intc;
+	void __iomem *base;
+	int irq, ret;
+
+	intc = kzalloc(sizeof(*intc), GFP_KERNEL);
+	if (!intc)
+		return -ENOMEM;
+
+	base = of_iomap(node, 0);
+	if (!base) {
+		ret = -ENODEV;
+		goto out_free;
+	}
+
+	intc->regmap = regmap_init_mmio(NULL, base, &ssd20xd_gpi_regmap_config);
+	if (IS_ERR(intc->regmap)) {
+		ret = PTR_ERR(intc->regmap);
+		goto out_unmap;
+	}
+
+	intc->domain = irq_domain_add_linear(node, NUM_IRQ, &ssd20xd_gpi_domain_ops, intc);
+	if (!intc->domain) {
+		ret = -ENOMEM;
+		goto out_free_regmap;
+	}
+
+	irq = of_irq_get(node, 0);
+	if (irq <= 0) {
+		ret = irq;
+		goto out_free_domain;
+	}
+
+	irq_set_chained_handler_and_data(irq, ssd20x_gpi_chainedhandler,
+			intc);
+
+	return 0;
+
+out_free_domain:
+	irq_domain_remove(intc->domain);
+out_free_regmap:
+	regmap_exit(intc->regmap);
+out_unmap:
+	iounmap(base);
+out_free:
+	kfree(intc);
+	return ret;
+}
+
+IRQCHIP_DECLARE(ssd20xd_gpi, "sstar,ssd20xd-gpi", ssd20xd_gpi_of_init);
-- 
2.33.0

