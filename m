Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 518C66CFC9E
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbjC3HWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230081AbjC3HWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:22:39 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33875FC
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:22:37 -0700 (PDT)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id 6E5B0202A3; Thu, 30 Mar 2023 15:22:32 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680160952;
        bh=o+FpLv3HFzq7pP3gp52PeicMr3NtB6BHouRicaH7iN4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=L+dCp439RoOUXvyGlCq05TnLl0JdNWntvL+dfIlPN9qEzvPWvr5vsY5+CS0a720oI
         G2Jtu0Iljhs9pKzWeUcCfaWw/arswWom6KQZjHaLPofXWEr6gEt2stpJDKK/QNKt8L
         htp4ghpMc8CJ9KgvbUDC7hYDJP5GBT/XksY58/lQACY2buhzzr9RJTNGc8M4pEINGd
         lKpMEZ/HrWMqISP5DUA4D0szEBNafofIevgpmjhYcpkFfdN6Vn9QiIcWjAfIr7XeTY
         9Vhe1YbZKQNDBdGrTdPmmZ40kJPza5mVJBmU+R++11itWk2VSObI58OlrGkpVsx4Yf
         3kHZVK8nERdjw==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH v2 3/3] i3c: ast2600: Add AST2600 platform-specific driver
Date:   Thu, 30 Mar 2023 15:22:19 +0800
Message-Id: <d4424535a88f529ca8efa67246ee25a5d810c6c1.1680160851.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680160851.git.jk@codeconstruct.com.au>
References: <cover.1680160851.git.jk@codeconstruct.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have platform-specific infrastructure for the dw i3c driver,
add platform support for the ASPEED AST2600 SoC.

The AST2600 has a small set of "i3c global" registers, providing
platform-level i3c configuration outside of the i3c core.

For the ast2600, we need a couple of extra setup operations:

 - on probe: find the i3c global register set and parse the SDA pullup
   resistor values

 - on init: set the pullups accordingly, and set the i3c instance IDs

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>

---
v2:
 - use new dw platform infrastructure
---
 MAINTAINERS                             |   6 +
 drivers/i3c/master/Kconfig              |  14 ++
 drivers/i3c/master/Makefile             |   1 +
 drivers/i3c/master/ast2600-i3c-master.c | 169 ++++++++++++++++++++++++
 4 files changed, 190 insertions(+)
 create mode 100644 drivers/i3c/master/ast2600-i3c-master.c

diff --git a/MAINTAINERS b/MAINTAINERS
index bd8ebc25afcf..ecadd5ccf771 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9714,6 +9714,12 @@ S:	Orphan
 F:	Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
 F:	drivers/i3c/master/dw*
 
+I3C DRIVER FOR ASPEED AST2600
+M:	Jeremy Kerr <jk@codeconstruct.com.au>
+S:	Maintained
+F:	Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
+F:	drivers/i3c/master/ast2600-i3c-master.c
+
 I3C SUBSYSTEM
 M:	Alexandre Belloni <alexandre.belloni@bootlin.com>
 L:	linux-i3c@lists.infradead.org (moderated for non-subscribers)
diff --git a/drivers/i3c/master/Kconfig b/drivers/i3c/master/Kconfig
index 3b8f95916f46..90dee3ec5520 100644
--- a/drivers/i3c/master/Kconfig
+++ b/drivers/i3c/master/Kconfig
@@ -22,6 +22,20 @@ config DW_I3C_MASTER
 	  This driver can also be built as a module.  If so, the module
 	  will be called dw-i3c-master.
 
+config AST2600_I3C_MASTER
+	tristate "ASPEED AST2600 I3C master driver"
+	depends on DW_I3C_MASTER
+	depends on ARCH_ASPEED || COMPILE_TEST
+	select MFD_SYSCON
+	help
+	  Support for ASPEED AST2600 I3C Controller.
+
+	  This hardware is an instance of the DW I3C controller; this
+	  driver adds platform- specific support for AST2600 hardware.
+
+	  This driver can also be built as a module.  If so, the module
+	  will be called ast2600-i3c-master.
+
 config SVC_I3C_MASTER
 	tristate "Silvaco I3C Dual-Role Master driver"
 	depends on I3C
diff --git a/drivers/i3c/master/Makefile b/drivers/i3c/master/Makefile
index b3fee0f690b2..3e97960160bc 100644
--- a/drivers/i3c/master/Makefile
+++ b/drivers/i3c/master/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_CDNS_I3C_MASTER)		+= i3c-master-cdns.o
 obj-$(CONFIG_DW_I3C_MASTER)		+= dw-i3c-master.o
+obj-$(CONFIG_AST2600_I3C_MASTER)	+= ast2600-i3c-master.o
 obj-$(CONFIG_SVC_I3C_MASTER)		+= svc-i3c-master.o
 obj-$(CONFIG_MIPI_I3C_HCI)		+= mipi-i3c-hci/
diff --git a/drivers/i3c/master/ast2600-i3c-master.c b/drivers/i3c/master/ast2600-i3c-master.c
new file mode 100644
index 000000000000..d3d7b7d19f22
--- /dev/null
+++ b/drivers/i3c/master/ast2600-i3c-master.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023 Code Construct
+ *
+ * Author: Jeremy Kerr <jk@codeconstruct.com.au>
+ */
+
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include "dw-i3c-master.h"
+
+/* AST2600-specific global register set */
+#define AST2600_I3CG_REG0(idx)	(((idx) * 4 * 4) + 0x10)
+#define AST2600_I3CG_REG1(idx)	(((idx) * 4 * 4) + 0x14)
+
+#define AST2600_I3CG_REG0_SDA_PULLUP_EN_MASK	GENMASK(29, 28)
+#define AST2600_I3CG_REG0_SDA_PULLUP_EN_2K	(0x0 << 28)
+#define AST2600_I3CG_REG0_SDA_PULLUP_EN_750	(0x2 << 28)
+
+#define AST2600_I3CG_REG1_I2C_MODE		BIT(0)
+#define AST2600_I3CG_REG1_TEST_MODE		BIT(1)
+#define AST2600_I3CG_REG1_ACT_MODE_MASK		GENMASK(3, 2)
+#define AST2600_I3CG_REG1_ACT_MODE(x)		(((x) << 2) & AST2600_I3CG_REG1_ACT_MODE_MASK)
+#define AST2600_I3CG_REG1_PENDING_INT_MASK	GENMASK(7, 4)
+#define AST2600_I3CG_REG1_PENDING_INT(x)	(((x) << 4) & AST2600_I3CG_REG1_PENDING_INT_MASK)
+#define AST2600_I3CG_REG1_SA_MASK		GENMASK(14, 8)
+#define AST2600_I3CG_REG1_SA(x)			(((x) << 8) & AST2600_I3CG_REG1_SA_MASK)
+#define AST2600_I3CG_REG1_SA_EN			BIT(15)
+#define AST2600_I3CG_REG1_INST_ID_MASK		GENMASK(19, 16)
+#define AST2600_I3CG_REG1_INST_ID(x)		(((x) << 16) & AST2600_I3CG_REG1_INST_ID_MASK)
+
+#define AST2600_DEFAULT_SDA_PULLUP_OHMS		2000
+
+struct ast2600_i3c_platform_data {
+	struct regmap *global_regs;
+	unsigned int global_idx;
+	unsigned int sda_pullup;
+};
+
+static int ast2600_i3c_pullup_to_reg(unsigned int ohms, u32 *regp)
+{
+	u32 reg;
+
+	switch (ohms) {
+	case 2000:
+		reg = AST2600_I3CG_REG0_SDA_PULLUP_EN_2K;
+		break;
+	case 750:
+		reg = AST2600_I3CG_REG0_SDA_PULLUP_EN_750;
+		break;
+	case 545:
+		reg = AST2600_I3CG_REG0_SDA_PULLUP_EN_2K |
+			AST2600_I3CG_REG0_SDA_PULLUP_EN_750;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (regp)
+		*regp = reg;
+
+	return 0;
+}
+
+static int ast2600_i3c_init(struct dw_i3c_master *master)
+{
+	struct ast2600_i3c_platform_data *pdata = master->platform_data;
+	u32 reg = 0;
+	int rc;
+
+	/* reg0: set SDA pullup values */
+	rc = ast2600_i3c_pullup_to_reg(pdata->sda_pullup, &reg);
+	if (rc)
+		return rc;
+
+	rc = regmap_write(pdata->global_regs,
+			  AST2600_I3CG_REG0(pdata->global_idx), reg);
+	if (rc)
+		return rc;
+
+	/* reg1: set up the instance id, but leave everything else disabled,
+	 * as it's all for client mode
+	 */
+	reg = AST2600_I3CG_REG1_INST_ID(pdata->global_idx);
+	rc = regmap_write(pdata->global_regs,
+			  AST2600_I3CG_REG1(pdata->global_idx), reg);
+
+	return rc;
+}
+
+const struct dw_i3c_platform_ops ast2600_i3c_ops = {
+	.init = ast2600_i3c_init,
+};
+
+static int ast2600_i3c_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct ast2600_i3c_platform_data *pdata;
+	struct of_phandle_args gspec;
+	struct dw_i3c_master *dw_i3c;
+	int rc;
+
+	dw_i3c = devm_kzalloc(&pdev->dev, sizeof(*dw_i3c) + sizeof(*pdata),
+			      GFP_KERNEL);
+	if (!dw_i3c)
+		return -ENOMEM;
+
+	pdata = (void *)(dw_i3c + 1);
+
+	rc = of_parse_phandle_with_fixed_args(np, "aspeed,global-regs", 1, 0,
+					      &gspec);
+	if (rc)
+		return -ENODEV;
+
+	pdata->global_regs = syscon_node_to_regmap(gspec.np);
+	of_node_put(gspec.np);
+
+	if (IS_ERR(pdata->global_regs))
+		return PTR_ERR(pdata->global_regs);
+
+	pdata->global_idx = gspec.args[0];
+
+	rc = of_property_read_u32(np, "sda-pullup-ohms", &pdata->sda_pullup);
+	if (rc)
+		pdata->sda_pullup = AST2600_DEFAULT_SDA_PULLUP_OHMS;
+
+	rc = ast2600_i3c_pullup_to_reg(pdata->sda_pullup, NULL);
+	if (rc)
+		dev_err(&dw_i3c->base.dev, "invalid sda-pullup value %d\n",
+			pdata->sda_pullup);
+
+	dw_i3c->platform_ops = &ast2600_i3c_ops;
+	dw_i3c->platform_data = pdata;
+	rc = dw_i3c_common_probe(dw_i3c, pdev);
+
+	return rc;
+}
+
+static int ast2600_i3c_remove(struct platform_device *pdev)
+{
+	struct dw_i3c_master *dw_i3c = platform_get_drvdata(pdev);
+
+	return dw_i3c_common_remove(dw_i3c);
+}
+
+static const struct of_device_id ast2600_i3c_master_of_match[] = {
+	{ .compatible = "aspeed,ast2600-i3c", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, ast2600_i3c_master_of_match);
+
+static struct platform_driver ast2600_i3c_driver = {
+	.probe = ast2600_i3c_probe,
+	.remove = ast2600_i3c_remove,
+	.driver = {
+		.name = "ast2600-i3c-master",
+		.of_match_table = of_match_ptr(ast2600_i3c_master_of_match),
+	},
+};
+module_platform_driver(ast2600_i3c_driver);
+
+MODULE_AUTHOR("Jeremy Kerr <jk@codeconstruct.com.au>");
+MODULE_DESCRIPTION("ASPEED AST2600 I3C driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2

