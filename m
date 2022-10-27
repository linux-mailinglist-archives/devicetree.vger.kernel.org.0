Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A897B6105F1
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 00:50:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234693AbiJ0Wuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 18:50:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234947AbiJ0Wuo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 18:50:44 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D03F15FDEB
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 15:50:41 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8436384ED8;
        Fri, 28 Oct 2022 00:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1666911039;
        bh=FezmuHUbp4qM4cANuPtktdM7Lye1talR43aqCigtsTI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=sXG/DIaSVYlDInCgz87QBZ1AAfk7tEx/M5I647b3jU2ffatVEg6iPgANZnPpJDFm+
         LsUnPeqMcXr3cDzJFvnOqSQFPwYibspN7dO/Q6itPsZvsA9uOX9yBlMsPYjxTVNBqP
         2bGAk6EZh7qUbU8RcK3Qia1BJMJ/y1w939xPeNBsR0GjRUPHYI9rfmC2kIfa8yQQha
         7yuTF9Uv5ek3B220IFwjX6YE52ra8r8AghVL6pgvj6W7wo89Mj0ktNALPgJ8OYsI4n
         KbSNM4u1XtizqU8SQ1pLwOvEuiXxEdn4fem+l/pho3O29xP2M6zrCSXUTsswelcuZ/
         7Rp5ySI7B/8ww==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/3] [RFC] nvmem: syscon: Add syscon backed nvmem driver
Date:   Fri, 28 Oct 2022 00:50:19 +0200
Message-Id: <20221027225020.215149-2-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221027225020.215149-1-marex@denx.de>
References: <20221027225020.215149-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add trivial driver which permits exposing syscon backed register
to userspace. This is useful e.g. to expose U-Boot boot counter
on various platforms where the boot counter is stored in random
volatile register, like STM32MP15xx TAMP_BKPxR register.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Rafał Miłecki <rafal@milecki.pl>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: devicetree@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 drivers/nvmem/Kconfig        |  10 ++++
 drivers/nvmem/Makefile       |   2 +
 drivers/nvmem/nvmem-syscon.c | 105 +++++++++++++++++++++++++++++++++++
 3 files changed, 117 insertions(+)
 create mode 100644 drivers/nvmem/nvmem-syscon.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index ec8a49c040031..cd9a7b00bc1ab 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -290,6 +290,16 @@ config NVMEM_SPRD_EFUSE
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem-sprd-efuse.
 
+config NVMEM_SYSCON
+	tristate "Generic syscon backed nvmem"
+	help
+	  This is a driver for generic syscon backed nvmem. This can be
+	  used to expose arbitrary syscon backed register to user space
+	  via nvmem, like the U-Boot boot counter.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called nvmem-syscon.
+
 config NVMEM_STM32_ROMEM
 	tristate "STMicroelectronics STM32 factory-programmed memory support"
 	depends on ARCH_STM32 || COMPILE_TEST
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index fa80fe17e567e..6e170b30a1d1d 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -59,6 +59,8 @@ obj-$(CONFIG_NVMEM_SPMI_SDAM)		+= nvmem_qcom-spmi-sdam.o
 nvmem_qcom-spmi-sdam-y			+= qcom-spmi-sdam.o
 obj-$(CONFIG_NVMEM_SPRD_EFUSE)		+= nvmem_sprd_efuse.o
 nvmem_sprd_efuse-y			:= sprd-efuse.o
+obj-$(CONFIG_NVMEM_SYSCON)		+= nvmem_syscon.o
+nvmem_syscon-y				:= nvmem-syscon.o
 obj-$(CONFIG_NVMEM_STM32_ROMEM)		+= nvmem_stm32_romem.o
 nvmem_stm32_romem-y 			:= stm32-romem.o
 obj-$(CONFIG_NVMEM_SUNPLUS_OCOTP)	+= nvmem_sunplus_ocotp.o
diff --git a/drivers/nvmem/nvmem-syscon.c b/drivers/nvmem/nvmem-syscon.c
new file mode 100644
index 0000000000000..9a7f9a5e37609
--- /dev/null
+++ b/drivers/nvmem/nvmem-syscon.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2022 Marek Vasut <marex@denx.de>
+ *
+ * Based on snvs_lpgpr.c .
+ */
+
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/of_device.h>
+#include <linux/regmap.h>
+
+struct nvmem_syscon_priv {
+	struct device_d		*dev;
+	struct regmap		*regmap;
+	struct nvmem_config	cfg;
+	unsigned int		off;
+};
+
+static int nvmem_syscon_write(void *context, unsigned int offset, void *val,
+			    size_t bytes)
+{
+	struct nvmem_syscon_priv *priv = context;
+
+	return regmap_bulk_write(priv->regmap, priv->off + offset,
+				 val, bytes / 4);
+}
+
+static int nvmem_syscon_read(void *context, unsigned int offset, void *val,
+			   size_t bytes)
+{
+	struct nvmem_syscon_priv *priv = context;
+
+	return regmap_bulk_read(priv->regmap, priv->off + offset,
+				val, bytes / 4);
+}
+
+static int nvmem_syscon_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct device_node *syscon_node;
+	struct nvmem_syscon_priv *priv;
+	struct nvmem_device *nvmem;
+	struct nvmem_config *cfg;
+	int ret;
+
+	if (!node)
+		return -ENOENT;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	ret = of_property_read_u32_index(node, "reg", 0, &priv->off);
+	if (ret)
+		return ret;
+
+	ret = of_property_read_u32_index(node, "reg", 1, &priv->cfg.size);
+	if (ret)
+		return ret;
+
+	syscon_node = of_get_parent(node);
+	if (!syscon_node)
+		return -ENODEV;
+
+	priv->regmap = syscon_node_to_regmap(syscon_node);
+	of_node_put(syscon_node);
+	if (IS_ERR(priv->regmap))
+		return PTR_ERR(priv->regmap);
+
+	cfg = &priv->cfg;
+	cfg->priv = priv;
+	cfg->name = dev_name(dev);
+	cfg->dev = dev;
+	cfg->stride = 4;
+	cfg->word_size = 4;
+	cfg->owner = THIS_MODULE;
+	cfg->reg_read  = nvmem_syscon_read;
+	cfg->reg_write = nvmem_syscon_write;
+
+	nvmem = devm_nvmem_register(dev, cfg);
+
+	return PTR_ERR_OR_ZERO(nvmem);
+}
+
+static const struct of_device_id nvmem_syscon_dt_ids[] = {
+	{ .compatible = "nvmem-syscon" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, nvmem_syscon_dt_ids);
+
+static struct platform_driver nvmem_syscon_driver = {
+	.probe	= nvmem_syscon_probe,
+	.driver = {
+		.name	= "nvmem-syscon",
+		.of_match_table = nvmem_syscon_dt_ids,
+	},
+};
+module_platform_driver(nvmem_syscon_driver);
+
+MODULE_AUTHOR("Marek Vasut <marex@denx.de>");
+MODULE_DESCRIPTION("Generic syscon nvmem driver");
+MODULE_LICENSE("GPL");
-- 
2.35.1

