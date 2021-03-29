Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4456734C195
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 04:00:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbhC2CAL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Mar 2021 22:00:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230305AbhC2B7r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Mar 2021 21:59:47 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B878C0613B2
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 18:59:47 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso6958999pji.3
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 18:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lEonPZwEeXmihKSqYcFtnrjNQ7/tLKbXJpP3Rx+HiqM=;
        b=F23cGbG1YwLdAFMDZO0iYBH+K1d7cy6+GJAoRwQhgiDV6iW+BNyqo+iYPnqYQUOTQ2
         tfj14BHwgnjBcjAQ4cw70MDvX88g+74TtcbfnNSE+dyubGZEY+Uf9+OMpM5R1TQYzDi8
         uFK/zUUDomBnWEtnEY4WbAGVHyJRfqhlCZAN0J/KVj/k9maJlzhNu3wYCgVktMOYlNfx
         E8fzVcfAWuVzW2WYuSS3BbED01DkDpLjNgmR5M/vzla9E7bH2jTv1P3BrbweArvDM/W3
         TOfzt356v3DpyQ1NRMnJ7svnGW10AIZL4dWAxPjngFvx7atofvsiD74RveOKU/3QbU86
         RDeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lEonPZwEeXmihKSqYcFtnrjNQ7/tLKbXJpP3Rx+HiqM=;
        b=Z2gA16RPl6DUV3prDAxCCxhayfqyh5P6IGxTKn7fdr8eVGFAdYzNa26uSf6Gs8cF07
         d4hVKEVptq9jUrzMyzqJprfTDwcVs8eMZdnKRtOCaNnWQpBevzlrzj+qfBojQUsYw5tC
         9N+wbDVnbeWrRc811ywyKBaLfREB9UQjNJVkYM9B+QyaRYDMpzHrgdCGP4IJX6NR3fte
         iIONHECSqsA7DBC3s98j+7e8848Ke/rRsVJI7QHb6rCK28Ea23BoDD9YTc9FPaU/16Qw
         JdWdTuItlHn1AW/pMfXLXq/wl3Ci/RoDa7Xe3B+8ho2gLTj4i4/rVxB/wGDI0ClLJ9Be
         1d0A==
X-Gm-Message-State: AOAM5322huz6yct0ZKjiSSCNPWzyW3Anttq9iD0ckH7WEZqpvAe9nyx1
        jQUNkxP3YB9GyrQHEtBmRDoyDQ==
X-Google-Smtp-Source: ABdhPJxcWKYSx3w7OxCzzLFtQDbCo5dvZARVQLq0d3ra/WqqivMK3AukxhkoGQW2jbtlRAqfLkfLrw==
X-Received: by 2002:a17:902:7792:b029:e6:caba:f836 with SMTP id o18-20020a1709027792b02900e6cabaf836mr26264364pll.41.1616983186960;
        Sun, 28 Mar 2021 18:59:46 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id w37sm14728027pgl.13.2021.03.28.18.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 18:59:46 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/13] gpio: Add Elba SoC gpio driver for spi cs control
Date:   Sun, 28 Mar 2021 18:59:26 -0700
Message-Id: <20210329015938.20316-2-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210329015938.20316-1-brad@pensando.io>
References: <20210329015938.20316-1-brad@pensando.io>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This GPIO driver is for the Pensando Elba SoC which
provides control of four chip selects on two SPI busses.

Signed-off-by: Brad Larson <brad@pensando.io>
---
 drivers/gpio/Kconfig           |   6 ++
 drivers/gpio/Makefile          |   1 +
 drivers/gpio/gpio-elba-spics.c | 114 +++++++++++++++++++++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 drivers/gpio/gpio-elba-spics.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index e3607ec4c2e8..4720459b24f5 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -241,6 +241,12 @@ config GPIO_EIC_SPRD
 	help
 	  Say yes here to support Spreadtrum EIC device.
 
+config GPIO_ELBA_SPICS
+	bool "Pensando Elba SPI chip-select"
+	depends on (ARCH_PENSANDO_ELBA_SOC || COMPILE_TEST)
+	help
+	  Say yes here to support the Penasndo Elba SoC SPI chip-select driver
+
 config GPIO_EM
 	tristate "Emma Mobile GPIO"
 	depends on (ARCH_EMEV2 || COMPILE_TEST) && OF_GPIO
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index c58a90a3c3b1..c5c7acad371b 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -54,6 +54,7 @@ obj-$(CONFIG_GPIO_DAVINCI)		+= gpio-davinci.o
 obj-$(CONFIG_GPIO_DLN2)			+= gpio-dln2.o
 obj-$(CONFIG_GPIO_DWAPB)		+= gpio-dwapb.o
 obj-$(CONFIG_GPIO_EIC_SPRD)		+= gpio-eic-sprd.o
+obj-$(CONFIG_GPIO_ELBA_SPICS)		+= gpio-elba-spics.o
 obj-$(CONFIG_GPIO_EM)			+= gpio-em.o
 obj-$(CONFIG_GPIO_EP93XX)		+= gpio-ep93xx.o
 obj-$(CONFIG_GPIO_EXAR)			+= gpio-exar.o
diff --git a/drivers/gpio/gpio-elba-spics.c b/drivers/gpio/gpio-elba-spics.c
new file mode 100644
index 000000000000..351bbaeea033
--- /dev/null
+++ b/drivers/gpio/gpio-elba-spics.c
@@ -0,0 +1,114 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Pensando Elba SoC SPI chip select driver
+ *
+ * Copyright (c) 2020-2021, Pensando Systems Inc.
+ */
+
+#include <linux/err.h>
+#include <linux/gpio.h>
+#include <linux/module.h>
+#include <linux/io.h>
+#include <linux/init.h>
+//#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
+
+/*
+ * pin:	     3		  2	   |	   1		0
+ * bit:	 7------6------5------4----|---3------2------1------0
+ *	cs1  cs1_ovr  cs0  cs0_ovr |  cs1  cs1_ovr  cs0	 cs0_ovr
+ *		   ssi1		   |		 ssi0
+ */
+#define SPICS_PIN_SHIFT(pin)	(2 * (pin))
+#define SPICS_MASK(pin)		(0x3 << SPICS_PIN_SHIFT(pin))
+#define SPICS_SET(pin, val)	((((val) << 1) | 0x1) << SPICS_PIN_SHIFT(pin))
+
+struct elba_spics_priv {
+	void __iomem *base;
+	spinlock_t lock;
+	struct gpio_chip chip;
+};
+
+static int elba_spics_get_value(struct gpio_chip *chip, unsigned int pin)
+{
+	return -ENOTSUPP;
+}
+
+static void elba_spics_set_value(struct gpio_chip *chip,
+		unsigned int pin, int value)
+{
+	struct elba_spics_priv *p = gpiochip_get_data(chip);
+	unsigned long flags;
+	u32 tmp;
+
+	/* select chip select from register */
+	spin_lock_irqsave(&p->lock, flags);
+	tmp = readl_relaxed(p->base);
+	tmp = (tmp & ~SPICS_MASK(pin)) | SPICS_SET(pin, value);
+	writel_relaxed(tmp, p->base);
+	spin_unlock_irqrestore(&p->lock, flags);
+}
+
+static int elba_spics_direction_input(struct gpio_chip *chip, unsigned int pin)
+{
+	return -ENOTSUPP;
+}
+
+static int elba_spics_direction_output(struct gpio_chip *chip,
+		unsigned int pin, int value)
+{
+	elba_spics_set_value(chip, pin, value);
+	return 0;
+}
+
+static int elba_spics_probe(struct platform_device *pdev)
+{
+	struct elba_spics_priv *p;
+	struct resource *res;
+	int ret = 0;
+
+	p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
+	if (!p)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	p->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(p->base))
+		return PTR_ERR(p->base);
+	spin_lock_init(&p->lock);
+	platform_set_drvdata(pdev, p);
+
+	p->chip.ngpio = 4;	/* 2 cs pins for spi0, and 2 for spi1 */
+	p->chip.base = -1;
+	p->chip.direction_input = elba_spics_direction_input;
+	p->chip.direction_output = elba_spics_direction_output;
+	p->chip.get = elba_spics_get_value;
+	p->chip.set = elba_spics_set_value;
+	p->chip.label = dev_name(&pdev->dev);
+	p->chip.parent = &pdev->dev;
+	p->chip.owner = THIS_MODULE;
+
+	ret = devm_gpiochip_add_data(&pdev->dev, &p->chip, p);
+	if (ret)
+		dev_err(&pdev->dev, "unable to add gpio chip\n");
+	return ret;
+}
+
+static const struct of_device_id elba_spics_of_match[] = {
+	{ .compatible = "pensando,elba-spics" },
+	{}
+};
+
+static struct platform_driver elba_spics_driver = {
+	.probe = elba_spics_probe,
+	.driver = {
+		.name = "pensando-elba-spics",
+		.of_match_table = elba_spics_of_match,
+	},
+};
+module_platform_driver(elba_spics_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Pensando Elba SoC SPI chip-select driver");
-- 
2.17.1

