Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23D302030D4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2020 09:52:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731441AbgFVHvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jun 2020 03:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731412AbgFVHvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jun 2020 03:51:54 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C83FC061795
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 00:51:54 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id g10so13869409wmh.4
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 00:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QTuLGDAKLQ1Z7g8fXJchyqvgmbmB4NfIDwdx7WTUmsQ=;
        b=nSHrYKXboG0wFFDJynXzj7E1KRwytxRW7dd8pgu+nOg36+lL/4WzmQd7epfE9Rawpv
         ByvkVu2gG9iyOGINNuM5x1hy0mLv22y/B0NfKwrar3hKyeKrZKS31znfjNPCPCR6nppX
         rr2FjJgKgXRJyPrRjXhsS5UDBtmPEffW6phgoShkrY91reQ9SAlo8Nrso1ldZLWjiJuB
         cz41m8LAMipq0NPLiOXarRCb2DOZBK2AEOekbRDsrq6hyJykInc0MFqHSeTc6ql722P+
         y6iQJeYpaTrwfbqWn74EkxBjtgfpndQF2VyKZEdboXsI2j7Ki29j8oUEeqWSY5Eyoak9
         K5JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QTuLGDAKLQ1Z7g8fXJchyqvgmbmB4NfIDwdx7WTUmsQ=;
        b=tG7YAHfQED2Saxq+GXbL+2CpFDOmyzbuqKh+Ud0xl7DxteJRyiM12ilyOATxmUDz6p
         OrgcyGZ1aGiIzqW7cldjWQO/F6mqaCZLfr7EO8Tm4nYMf+sApI2pnE3L1fSmjiC9njO8
         62ICN1dZBfeJp0GolUG5d86aAPrglSYbC0dbjuro14auEaKMS1izbjyql/t1XfjUwwlQ
         m94n0J1XHFLGkWmp/s2cB+BhIwj6AiQme+KnR6zHr8H23zypp7Sj6LOa9LAGmkhgCUbV
         0A4Z0qgfFmDef5NrTYmDKhrlDBNNYH68NzG+e4oAmKgh9TFDeTeI8xlGavV4lg2lgyW3
         kMrQ==
X-Gm-Message-State: AOAM532vwXnb+D/zbfr+9fTSTAJkNR6Qwumnug45gjI1hKS9INDxNLKD
        1CDWy5zdAMvxhLyEMvm2TXO9oQ==
X-Google-Smtp-Source: ABdhPJwLg53SxkWdmcm1slo2fuly5OwDsgykYfhRARHNgCj8bLeu5QmCyVvT8aXmiQNkKf0v1TNCog==
X-Received: by 2002:a1c:5603:: with SMTP id k3mr17456667wmb.116.1592812312680;
        Mon, 22 Jun 2020 00:51:52 -0700 (PDT)
Received: from localhost.localdomain ([2.27.35.144])
        by smtp.gmail.com with ESMTPSA id s8sm10888723wru.38.2020.06.22.00.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 00:51:51 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     michael@walle.cc, robh+dt@kernel.org, broonie@kernel.org,
        gregkh@linuxfoundation.org, andriy.shevchenko@linux.intel.com,
        devicetree@vger.kernel.org, linus.walleij@linaro.org,
        bgolaszewski@baylibre.com, arnd@arndb.de
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v4 1/1] mfd: Add I2C based System Configuaration (SYSCON) access
Date:   Mon, 22 Jun 2020 08:51:45 +0100
Message-Id: <20200622075145.1464020-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The existing SYSCON implementation only supports MMIO (memory mapped)
accesses, facilitated by Regmap.  This extends support for registers
held behind I2C busses.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
Changelog:

v3 => v4
  - Add ability to provide a non-default Regmap configuration

v2 => v3
  - Change 'is CONFIG' present check to include loadable modules
    - s/#ifdef CONFIG_MFD_SYSCON_I2C/#if IS_ENABLED(CONFIG_MFD_SYSCON_I2C)/

v1 => v2
  - Remove legacy references to OF
  - Allow building as a module (fixes h8300 0-day issue)

drivers/mfd/Kconfig            |   7 +++
 drivers/mfd/Makefile           |   1 +
 drivers/mfd/syscon-i2c.c       | 104 +++++++++++++++++++++++++++++++++
 include/linux/mfd/syscon-i2c.h |  36 ++++++++++++
 4 files changed, 148 insertions(+)
 create mode 100644 drivers/mfd/syscon-i2c.c
 create mode 100644 include/linux/mfd/syscon-i2c.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 0a59249198d34..f25f80f68edca 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1300,6 +1300,13 @@ config MFD_SYSCON
 	  Select this option to enable accessing system control registers
 	  via regmap.
 
+config MFD_SYSCON_I2C
+	tristate "System Controller Register R/W Based on I2C Regmap"
+	select REGMAP_I2C
+	help
+	  Select this option to enable accessing system control registers
+	  via I2C using regmap.
+
 config MFD_DAVINCI_VOICECODEC
 	tristate
 	select MFD_CORE
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index f935d10cbf0fc..0aec1f42ac979 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -219,6 +219,7 @@ obj-$(CONFIG_MFD_RK808)		+= rk808.o
 obj-$(CONFIG_MFD_RN5T618)	+= rn5t618.o
 obj-$(CONFIG_MFD_SEC_CORE)	+= sec-core.o sec-irq.o
 obj-$(CONFIG_MFD_SYSCON)	+= syscon.o
+obj-$(CONFIG_MFD_SYSCON_I2C)	+= syscon-i2c.o
 obj-$(CONFIG_MFD_LM3533)	+= lm3533-core.o lm3533-ctrlbank.o
 obj-$(CONFIG_MFD_VEXPRESS_SYSREG)	+= vexpress-sysreg.o
 obj-$(CONFIG_MFD_RETU)		+= retu-mfd.o
diff --git a/drivers/mfd/syscon-i2c.c b/drivers/mfd/syscon-i2c.c
new file mode 100644
index 0000000000000..f6b429dff2ab1
--- /dev/null
+++ b/drivers/mfd/syscon-i2c.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * System Control Driver accessed over I2C
+ *
+ * Copyright (C) 2020 Linaro Ltd.
+ *
+ * Author: Lee Jones <lee.jones@linaro.org>
+ */
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/list.h>
+#include <linux/mfd/syscon-i2c.h>
+#include <linux/regmap.h>
+
+static DEFINE_SPINLOCK(syscon_i2c_list_slock);
+static LIST_HEAD(syscon_i2c_list);
+
+struct syscon {
+	struct device *dev;
+	struct regmap *regmap;
+	struct list_head list;
+};
+
+static struct regmap_config syscon_i2c_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
+static struct syscon *syscon_i2c_register(struct i2c_client *client,
+					  struct regmap_config *regmap_config)
+{
+	struct device *dev = &client->dev;
+	struct syscon *syscon;
+	struct regmap *regmap;
+	int ret;
+
+	if (!regmap_config) {
+		dev_err(dev, "No Regmap configuration supplied\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	syscon = devm_kzalloc(dev, sizeof(*syscon), GFP_KERNEL);
+	if (!syscon)
+		return ERR_PTR(-ENOMEM);
+
+	if (!regmap_config->name)
+		regmap_config->name = dev_name(dev);
+
+	regmap = devm_regmap_init_i2c(client, regmap_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Failed to initialise Regmap I2C\n");
+		ret = PTR_ERR(regmap);
+		return ERR_PTR(ret);
+	}
+
+	syscon->regmap = regmap;
+	syscon->dev = dev;
+
+	spin_lock(&syscon_i2c_list_slock);
+	list_add_tail(&syscon->list, &syscon_i2c_list);
+	spin_unlock(&syscon_i2c_list_slock);
+
+	return syscon;
+}
+
+static struct regmap *syscon_i2c_get_regmap(struct i2c_client *client,
+					    struct regmap_config *regmap_config)
+{
+	struct device *dev = &client->dev;
+	struct syscon *entry, *syscon = NULL;
+
+	spin_lock(&syscon_i2c_list_slock);
+
+	list_for_each_entry(entry, &syscon_i2c_list, list)
+		if (entry->dev == dev) {
+			syscon = entry;
+			break;
+		}
+
+	spin_unlock(&syscon_i2c_list_slock);
+
+	if (!syscon)
+		syscon = syscon_i2c_register(client, regmap_config);
+
+	if (IS_ERR(syscon))
+		return ERR_CAST(syscon);
+
+	return syscon->regmap;
+}
+
+struct regmap *syscon_i2c_to_regmap_config(struct i2c_client *client,
+					   struct regmap_config *regmap_config)
+{
+	return syscon_i2c_get_regmap(client, regmap_config);
+}
+EXPORT_SYMBOL_GPL(syscon_i2c_to_regmap_config);
+
+struct regmap *syscon_i2c_to_regmap(struct i2c_client *client)
+{
+	return syscon_i2c_get_regmap(client, &syscon_i2c_regmap_config);
+}
+EXPORT_SYMBOL_GPL(syscon_i2c_to_regmap);
diff --git a/include/linux/mfd/syscon-i2c.h b/include/linux/mfd/syscon-i2c.h
new file mode 100644
index 0000000000000..4507572bc4f86
--- /dev/null
+++ b/include/linux/mfd/syscon-i2c.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * System Control Driver accessed via I2C
+ *
+ * Copyright (C) 2020 Linaro Ltd.
+ *
+ * Author: Lee Jones <lee.jones@linaro.org>
+ */
+
+#ifndef __LINUX_MFD_SYSCON_I2C_H__
+#define __LINUX_MFD_SYSCON_I2C_H__
+
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/i2c.h>
+#include <linux/regmap.h>
+
+#if IS_ENABLED(CONFIG_MFD_SYSCON_I2C)
+extern struct regmap *syscon_i2c_to_regmap(struct i2c_client *client);
+extern
+struct regmap *syscon_i2c_to_regmap_config(struct i2c_client *client,
+					   struct regmap_config *regmap_config);
+#else
+static inline struct regmap *syscon_i2c_to_regmap(struct i2c_client *client)
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+static inline
+struct regmap *syscon_i2c_to_regmap_config(struct i2c_client *client,
+					   struct regmap_config *regmap_config);
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+#endif
+
+#endif /* __LINUX_MFD_SYSCON_I2C_H__ */
-- 
2.25.1

