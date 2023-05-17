Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F013706C9D
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 17:25:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232183AbjEQPZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 11:25:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232225AbjEQPZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 11:25:43 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF6BD2134
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 08:25:33 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B815486215;
        Wed, 17 May 2023 17:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684337132;
        bh=mBKgSqcaDPJHY/Ht41NbZ6ZqlpAt6dlamz8EHZBQHfI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ugX9L8XEgFrcI10d1/oUWGprw5yNCtWeN3GpFvsiJHoNqhRL+J2Kn4odcwV6r6KDp
         ia8vDcCWibrQPajzkDmiwsRmGNNQN7m4qVLYXg9BJoZNXUjKBWGOD1iH5DoJ6V1meX
         VeOVlMz/TrsaG4+pV0748OZyuUlyJXJDH7DbcoSoplfG7OSCH3UMc96xQlGLa4qokV
         EeghtAgs4dz4uVeV3YJOvTaMPJbLY9cMxi1GUEW4xsHWMVKZH9It+9BIdNLfvAJ/6c
         dRnKs7ztszJ+4Xc+Vu7fT8YAIglszRcxxZXGTeMBqQTxnS0xfjupY12NVg3KG0xRtj
         upDsIT88k7QQA==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 2/3] nvmem: syscon: Add syscon backed nvmem driver
Date:   Wed, 17 May 2023 17:25:12 +0200
Message-Id: <20230517152513.27922-2-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517152513.27922-1-marex@denx.de>
References: <20230517152513.27922-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
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
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
V2: No change
---
 drivers/nvmem/Kconfig        |  10 ++++
 drivers/nvmem/Makefile       |   2 +
 drivers/nvmem/nvmem-syscon.c | 105 +++++++++++++++++++++++++++++++++++
 3 files changed, 117 insertions(+)
 create mode 100644 drivers/nvmem/nvmem-syscon.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index b291b27048c76..4e4aecdd9c293 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -303,6 +303,16 @@ config NVMEM_STM32_BSEC_OPTEE_TA
 	  This library is a used by stm32-romem driver or included in the module
 	  called nvmem-stm32-romem.
 
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
index f82431ec8aef0..d10e478e6a6c9 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -60,6 +60,8 @@ obj-$(CONFIG_NVMEM_SPMI_SDAM)		+= nvmem_qcom-spmi-sdam.o
 nvmem_qcom-spmi-sdam-y			+= qcom-spmi-sdam.o
 obj-$(CONFIG_NVMEM_SPRD_EFUSE)		+= nvmem_sprd_efuse.o
 nvmem_sprd_efuse-y			:= sprd-efuse.o
+obj-$(CONFIG_NVMEM_SYSCON)		+= nvmem_syscon.o
+nvmem_syscon-y				:= nvmem-syscon.o
 obj-$(CONFIG_NVMEM_STM32_ROMEM)		+= nvmem_stm32_romem.o
 nvmem_stm32_romem-y 			:= stm32-romem.o
 nvmem_stm32_romem-$(CONFIG_NVMEM_STM32_BSEC_OPTEE_TA) += stm32-bsec-optee-ta.o
diff --git a/drivers/nvmem/nvmem-syscon.c b/drivers/nvmem/nvmem-syscon.c
new file mode 100644
index 0000000000000..e0aa5af0300d3
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
+			      size_t bytes)
+{
+	struct nvmem_syscon_priv *priv = context;
+
+	return regmap_bulk_write(priv->regmap, priv->off + offset,
+				 val, bytes / 4);
+}
+
+static int nvmem_syscon_read(void *context, unsigned int offset, void *val,
+			     size_t bytes)
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
2.39.2

