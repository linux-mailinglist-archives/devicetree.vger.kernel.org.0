Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B96BD1EB92C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2020 12:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727921AbgFBKKC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jun 2020 06:10:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727872AbgFBKJy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jun 2020 06:09:54 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 799BDC05BD43
        for <devicetree@vger.kernel.org>; Tue,  2 Jun 2020 03:09:54 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id fs4so1140362pjb.5
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2020 03:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WQ8tlQ9M2KNVUknmTLJ9Ovy1EUyM0LdAsA5zBG5CPW8=;
        b=ORS0mq6UB6c17FJD3ZPVsoh2rQkYrnxC2efGcLAmVgm9JxOM0HLvsm7j/sOwyROJ1c
         vnHyABy/OWd0dngrfZZAZHJOUrKVHIpKIaGWXt4fQJpPA7eSUdhBWwtuSJ/WNgDZiTR2
         q+73a7K56YfV+d464vmMAIhnaw0kQ1XzUtwbnHJt8bntyPB8/TjQyNpV8OZcVFLsN+xA
         XuWN7H82J/x8TeAcP9O/CX4kEojQS2ePs0lLscli7iplkq+xwOooLL744F9lIHrdVYbk
         OWgEUL+cw4RLGF7Mxc1iW69EIsPbLhgOXQSBmTFxBKuYnWo5dT1OHptHuRwCZfDd4MHG
         LIaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WQ8tlQ9M2KNVUknmTLJ9Ovy1EUyM0LdAsA5zBG5CPW8=;
        b=QX68d9f8C01u4kgwQ3sR+gQe7oxImFjahNRG6Bc15QVdAyesgrWmqeCLQtRPufIPv4
         +SXmbjJzWqzzg9c2PvJNR1X08DpCy1i4KKJWKc2XwT47l5THPMLgqHzyqTA+TUaBQHKa
         ygl0wR82xXf4n1E3O0jpjbjIL/gi9yvveiTAZZ6UH7qQK+lCpw0y76b+u6Lfva+7pBT9
         UOctSZiFPoKlr/AAsWU/PqnGB+JegwrhFm6RxK3NH8nR6bBJWxZWx6k1aQtfqF5mVBya
         /cIU+6yd+sTo4/ajUVlv0MqfJdZzSabY6x3R3FVj0MdoLR9yq4fyES30m7OMuL2yKJRt
         8/cQ==
X-Gm-Message-State: AOAM532/Xr1oaCb8zqV8WEYtJo7ozGyHp0vICK4ag2MOZZJUgDcLAcY0
        Zqev4b6irH2Dg/SKXqB8ukcC1Q==
X-Google-Smtp-Source: ABdhPJzGq/twjlCqJvLiQfkF2b+jVjyBBBs4RdirCbWWigTJMsW87iF0xggNE/eM7YoulQsC4b298A==
X-Received: by 2002:a17:90b:4c91:: with SMTP id my17mr4244853pjb.81.1591092593913;
        Tue, 02 Jun 2020 03:09:53 -0700 (PDT)
Received: from nagraj.local ([49.206.21.239])
        by smtp.gmail.com with ESMTPSA id d8sm1931276pgb.42.2020.06.02.03.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2020 03:09:53 -0700 (PDT)
From:   Sumit Semwal <sumit.semwal@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org
Cc:     nishakumari@codeaurora.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kgunda@codeaurora.org, rnayak@codeaurora.org,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH v4 4/5] regulator: qcom: Add labibb driver
Date:   Tue,  2 Jun 2020 15:39:23 +0530
Message-Id: <20200602100924.26256-5-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602100924.26256-1-sumit.semwal@linaro.org>
References: <20200602100924.26256-1-sumit.semwal@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nisha Kumari <nishakumari@codeaurora.org>

Qualcomm platforms have LAB(LCD AMOLED Boost)/IBB(Inverting Buck Boost)
regulators, labibb for short, which are used as power supply for
LCD Mode displays.

This patch adds labibb regulator driver for pmi8998 PMIC, found on
SDM845 platforms.

Signed-off-by: Nisha Kumari <nishakumari@codeaurora.org>
Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
  [sumits: reworked to driver for more common code, using core regulator
    features, and using newly-added poll_enabled_time functionality
    from core]
--
v2: sumits: reworked the driver for more common code, and addressed
     review comments from v1
v3: sumits: addressed review comments from v2; moved to use core
     regulator features like enable_time, off_on_delay, and the newly
     added poll_enabled_time. Moved the check_enabled functionality
     to core framework via poll_enabled_time.
v4: sumits: address review comments from v3, including cleaning up
     register_labibb_regulator(), and adapted to updated meaning of
     poll_enabled_time.

---
 drivers/regulator/Kconfig                 |  10 ++
 drivers/regulator/Makefile                |   1 +
 drivers/regulator/qcom-labibb-regulator.c | 193 ++++++++++++++++++++++
 3 files changed, 204 insertions(+)
 create mode 100644 drivers/regulator/qcom-labibb-regulator.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index f4b72cb098ef..58704a9fd05d 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -1167,5 +1167,15 @@ config REGULATOR_WM8994
 	  This driver provides support for the voltage regulators on the
 	  WM8994 CODEC.
 
+config REGULATOR_QCOM_LABIBB
+	tristate "QCOM LAB/IBB regulator support"
+	depends on SPMI || COMPILE_TEST
+	help
+	  This driver supports Qualcomm's LAB/IBB regulators present on the
+	  Qualcomm's PMIC chip pmi8998. QCOM LAB and IBB are SPMI
+	  based PMIC implementations. LAB can be used as positive
+	  boost regulator and IBB can be used as a negative boost regulator
+	  for LCD display panel.
+
 endif
 
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 6610ee001d9a..5b313786c0e8 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -87,6 +87,7 @@ obj-$(CONFIG_REGULATOR_MT6323)	+= mt6323-regulator.o
 obj-$(CONFIG_REGULATOR_MT6358)	+= mt6358-regulator.o
 obj-$(CONFIG_REGULATOR_MT6380)	+= mt6380-regulator.o
 obj-$(CONFIG_REGULATOR_MT6397)	+= mt6397-regulator.o
+obj-$(CONFIG_REGULATOR_QCOM_LABIBB) += qcom-labibb-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_RPM) += qcom_rpm-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_RPMH) += qcom-rpmh-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_SMD_RPM) += qcom_smd-regulator.o
diff --git a/drivers/regulator/qcom-labibb-regulator.c b/drivers/regulator/qcom-labibb-regulator.c
new file mode 100644
index 000000000000..33b764ac69d1
--- /dev/null
+++ b/drivers/regulator/qcom-labibb-regulator.c
@@ -0,0 +1,194 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) 2020, The Linux Foundation. All rights reserved.
+
+#include <linux/module.h>
+#include <linux/of_irq.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+
+#define REG_PERPH_TYPE                  0x04
+#define QCOM_LAB_TYPE			0x24
+#define QCOM_IBB_TYPE			0x20
+
+#define REG_LABIBB_STATUS1		0x08
+#define REG_LABIBB_ENABLE_CTL		0x46
+#define LABIBB_STATUS1_VREG_OK_BIT	BIT(7)
+#define LABIBB_CONTROL_ENABLE		BIT(7)
+
+#define LAB_ENABLE_CTL_MASK		BIT(7)
+#define IBB_ENABLE_CTL_MASK		(BIT(7) | BIT(6))
+
+#define LABIBB_OFF_ON_DELAY		1000
+#define LAB_ENABLE_TIME			(LABIBB_OFF_ON_DELAY * 2)
+#define IBB_ENABLE_TIME			(LABIBB_OFF_ON_DELAY * 10)
+#define LABIBB_POLL_ENABLED_TIME	1000
+
+struct labibb_regulator {
+	struct regulator_desc		desc;
+	struct device			*dev;
+	struct regmap			*regmap;
+	struct regulator_dev		*rdev;
+	u16				base;
+	u8				type;
+};
+
+struct labibb_regulator_data {
+	u16				base;
+	const char			*name;
+	u8				type;
+	unsigned int			enable_time;
+	unsigned int			enable_mask;
+};
+
+static int qcom_labibb_regulator_is_enabled(struct regulator_dev *rdev)
+{
+	int ret;
+	unsigned int val;
+	struct labibb_regulator *reg = rdev_get_drvdata(rdev);
+
+	ret = regmap_read(reg->regmap, reg->base + REG_LABIBB_STATUS1, &val);
+	if (ret < 0) {
+		dev_err(reg->dev, "Read register failed ret = %d\n", ret);
+		return ret;
+	}
+	return !!(val & LABIBB_STATUS1_VREG_OK_BIT);
+}
+
+static int qcom_labibb_regulator_enable(struct regulator_dev *rdev)
+{
+	return regulator_enable_regmap(rdev);
+}
+
+static int qcom_labibb_regulator_disable(struct regulator_dev *rdev)
+{
+	return regulator_disable_regmap(rdev);
+}
+
+static struct regulator_ops qcom_labibb_ops = {
+	.enable			= qcom_labibb_regulator_enable,
+	.disable		= qcom_labibb_regulator_disable,
+	.is_enabled		= qcom_labibb_regulator_is_enabled,
+};
+
+static struct regulator_dev *register_labibb_regulator(struct labibb_regulator *reg,
+				const struct labibb_regulator_data *reg_data,
+				struct device_node *of_node)
+{
+	struct regulator_config cfg = {};
+	int ret;
+
+	reg->base = reg_data->base;
+	reg->type = reg_data->type;
+	reg->desc.enable_mask = reg_data->enable_mask;
+	reg->desc.enable_reg = reg->base + REG_LABIBB_ENABLE_CTL;
+	reg->desc.enable_val = LABIBB_CONTROL_ENABLE;
+	reg->desc.of_match = reg_data->name;
+	reg->desc.name = reg_data->name;
+	reg->desc.owner = THIS_MODULE;
+	reg->desc.type = REGULATOR_VOLTAGE;
+	reg->desc.ops = &qcom_labibb_ops;
+
+	reg->desc.enable_time = reg_data->enable_time;
+	reg->desc.poll_enabled_time = LABIBB_POLL_ENABLED_TIME;
+	reg->desc.off_on_delay = LABIBB_OFF_ON_DELAY;
+
+	cfg.dev = reg->dev;
+	cfg.driver_data = reg;
+	cfg.regmap = reg->regmap;
+	cfg.of_node = of_node;
+
+	return devm_regulator_register(reg->dev, &reg->desc, &cfg);
+}
+
+static const struct labibb_regulator_data pmi8998_labibb_data[] = {
+	{0xde00, "lab", QCOM_LAB_TYPE, LAB_ENABLE_TIME, LAB_ENABLE_CTL_MASK},
+	{0xdc00, "ibb", QCOM_IBB_TYPE, IBB_ENABLE_TIME, IBB_ENABLE_CTL_MASK},
+	{ },
+};
+
+static const struct of_device_id qcom_labibb_match[] = {
+	{ .compatible = "qcom,pmi8998-lab-ibb", .data = &pmi8998_labibb_data},
+	{ },
+};
+MODULE_DEVICE_TABLE(of, qcom_labibb_match);
+
+static int qcom_labibb_regulator_probe(struct platform_device *pdev)
+{
+	struct labibb_regulator *labibb_reg;
+	struct device *dev = &pdev->dev;
+	struct device_node *child;
+	const struct of_device_id *match;
+	const struct labibb_regulator_data *reg_data;
+	struct regmap *reg_regmap;
+	unsigned int type;
+	int ret;
+
+	reg_regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!reg_regmap) {
+		dev_err(&pdev->dev, "Couldn't get parent's regmap\n");
+		return -ENODEV;
+	}
+
+	match = of_match_device(qcom_labibb_match, &pdev->dev);
+	if (!match)
+		return -ENODEV;
+
+	for (reg_data = match->data; reg_data->name; reg_data++) {
+		child = of_get_child_by_name(pdev->dev.of_node, reg_data->name);
+
+		if (WARN_ON(child == NULL))
+			return -EINVAL;
+
+		/* Validate if the type of regulator is indeed
+		 * what's mentioned in DT.
+		 */
+		ret = regmap_read(reg_regmap, reg_data->base + REG_PERPH_TYPE,
+				  &type);
+		if (ret < 0) {
+			dev_err(dev,
+				"Peripheral type read failed ret=%d\n",
+				ret);
+			return -EINVAL;
+		}
+
+		if (WARN_ON((type != QCOM_LAB_TYPE) && (type != QCOM_IBB_TYPE)) ||
+		    WARN_ON(type != reg_data->type))
+			return -EINVAL;
+
+		labibb_reg  = devm_kzalloc(&pdev->dev, sizeof(*labibb_reg),
+					   GFP_KERNEL);
+		if (!labibb_reg)
+			return -ENOMEM;
+
+		labibb_reg->regmap = reg_regmap;
+		labibb_reg->dev = dev;
+
+		dev_info(dev, "Registering %s regulator\n", child->full_name);
+
+		labibb_reg->rdev = register_labibb_regulator(labibb_reg, reg_data, child);
+		if (IS_ERR(labibb_reg->rdev)) {
+			dev_err(dev,
+				"qcom_labibb: error registering %s : %d\n",
+				child->full_name, ret);
+			return PTR_ERR(labibb_reg->rdev);
+		}
+	}
+
+	return 0;
+}
+
+static struct platform_driver qcom_labibb_regulator_driver = {
+	.driver	= {
+		.name = "qcom-lab-ibb-regulator",
+		.of_match_table	= qcom_labibb_match,
+	},
+	.probe = qcom_labibb_regulator_probe,
+};
+module_platform_driver(qcom_labibb_regulator_driver);
+
+MODULE_DESCRIPTION("Qualcomm labibb driver");
+MODULE_LICENSE("GPL v2");
-- 
2.26.2

