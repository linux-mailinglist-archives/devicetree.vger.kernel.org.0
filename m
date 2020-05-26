Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A6941AD6D5
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2020 09:05:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728322AbgDQHFf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Apr 2020 03:05:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728563AbgDQHFe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Apr 2020 03:05:34 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37337C061A0F
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 00:05:34 -0700 (PDT)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1jPL45-0008Ns-45; Fri, 17 Apr 2020 09:05:29 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1jPL44-00033x-Fu; Fri, 17 Apr 2020 09:05:28 +0200
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rohit Visavalia <rohit.visavalia@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dhaval Shah <dshah@xilinx.com>, kernel@pengutronix.de,
        Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH v3 5/6] soc: xilinx: vcu: use vcu-settings syscon registers
Date:   Fri, 17 Apr 2020 09:05:25 +0200
Message-Id: <20200417070526.7178-6-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417070526.7178-1-m.tretter@pengutronix.de>
References: <20200417070526.7178-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch the "logicoreip" registers to the new xlnx,vcu-settings binding
to be able to read the settings if the settings are specified in a
separate device tree node that is shared with other drivers.

If the driver is not able to find a node with the new binding, fall back
to check for the logicore register bank to be backwards compatible.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2 -> v3:
- none

v1 -> v2:
- none
---
 drivers/soc/xilinx/Kconfig          |  1 +
 drivers/soc/xilinx/xlnx_vcu.c       | 94 ++++++++++++++---------------
 include/linux/mfd/syscon/xlnx-vcu.h | 38 ++++++++++++
 3 files changed, 86 insertions(+), 47 deletions(-)
 create mode 100644 include/linux/mfd/syscon/xlnx-vcu.h

diff --git a/drivers/soc/xilinx/Kconfig b/drivers/soc/xilinx/Kconfig
index 331f124902e8..928e6c0e4926 100644
--- a/drivers/soc/xilinx/Kconfig
+++ b/drivers/soc/xilinx/Kconfig
@@ -4,6 +4,7 @@ menu "Xilinx SoC drivers"
 config XILINX_VCU
 	tristate "Xilinx VCU logicoreIP Init"
 	depends on HAS_IOMEM && COMMON_CLK
+	select REGMAP_MMIO
 	help
 	  Provides the driver to enable and disable the isolation between the
 	  processing system and programmable logic part by using the logicoreIP
diff --git a/drivers/soc/xilinx/xlnx_vcu.c b/drivers/soc/xilinx/xlnx_vcu.c
index 03bf252737aa..ea4ae1e91fb7 100644
--- a/drivers/soc/xilinx/xlnx_vcu.c
+++ b/drivers/soc/xilinx/xlnx_vcu.c
@@ -11,42 +11,15 @@
 #include <linux/device.h>
 #include <linux/errno.h>
 #include <linux/io.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mfd/syscon/xlnx-vcu.h>
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 
 #include <dt-bindings/clock/xlnx-vcu.h>
 
-/* Address map for different registers implemented in the VCU LogiCORE IP. */
-#define VCU_ECODER_ENABLE		0x00
-#define VCU_DECODER_ENABLE		0x04
-#define VCU_MEMORY_DEPTH		0x08
-#define VCU_ENC_COLOR_DEPTH		0x0c
-#define VCU_ENC_VERTICAL_RANGE		0x10
-#define VCU_ENC_FRAME_SIZE_X		0x14
-#define VCU_ENC_FRAME_SIZE_Y		0x18
-#define VCU_ENC_COLOR_FORMAT		0x1c
-#define VCU_ENC_FPS			0x20
-#define VCU_MCU_CLK			0x24
-#define VCU_CORE_CLK			0x28
-#define VCU_PLL_BYPASS			0x2c
-#define VCU_ENC_CLK			0x30
-#define VCU_PLL_CLK			0x34
-#define VCU_ENC_VIDEO_STANDARD		0x38
-#define VCU_STATUS			0x3c
-#define VCU_AXI_ENC_CLK			0x40
-#define VCU_AXI_DEC_CLK			0x44
-#define VCU_AXI_MCU_CLK			0x48
-#define VCU_DEC_VIDEO_STANDARD		0x4c
-#define VCU_DEC_FRAME_SIZE_X		0x50
-#define VCU_DEC_FRAME_SIZE_Y		0x54
-#define VCU_DEC_FPS			0x58
-#define VCU_BUFFER_B_FRAME		0x5c
-#define VCU_WPP_EN			0x60
-#define VCU_PLL_CLK_DEC			0x64
-#define VCU_GASKET_INIT			0x74
-#define VCU_GASKET_VALUE		0x03
-
 /* vcu slcr registers, bitmask and shift */
 #define VCU_PLL_CTRL			0x24
 #define VCU_PLL_CTRL_RESET_MASK		0x01
@@ -109,13 +82,22 @@ struct xvcu_device {
 	struct device *dev;
 	struct clk *pll_ref;
 	struct clk *aclk;
-	void __iomem *logicore_reg_ba;
+	struct regmap *logicore_reg_ba;
 	void __iomem *vcu_slcr_ba;
 	struct clk_onecell_data clk_data;
 	u32 coreclk;
 	u32 mcuclk;
 };
 
+static struct regmap_config vcu_settings_regmap_config = {
+	.name = "regmap",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0xfff,
+	.cache_type = REGCACHE_NONE,
+};
+
 /**
  * struct xvcu_pll_cfg - Helper data
  * @fbdiv: The integer portion of the feedback divider to the PLL
@@ -305,10 +287,12 @@ static int xvcu_set_vcu_pll_info(struct xvcu_device *xvcu)
 	int ret, i;
 	const struct xvcu_pll_cfg *found = NULL;
 
-	inte = xvcu_read(xvcu->logicore_reg_ba, VCU_PLL_CLK);
-	deci = xvcu_read(xvcu->logicore_reg_ba, VCU_PLL_CLK_DEC);
-	coreclk = xvcu_read(xvcu->logicore_reg_ba, VCU_CORE_CLK) * MHZ;
-	mcuclk = xvcu_read(xvcu->logicore_reg_ba, VCU_MCU_CLK) * MHZ;
+	regmap_read(xvcu->logicore_reg_ba, VCU_PLL_CLK, &inte);
+	regmap_read(xvcu->logicore_reg_ba, VCU_PLL_CLK_DEC, &deci);
+	regmap_read(xvcu->logicore_reg_ba, VCU_CORE_CLK, &coreclk);
+	coreclk *= MHZ;
+	regmap_read(xvcu->logicore_reg_ba, VCU_MCU_CLK, &mcuclk);
+	mcuclk *= MHZ;
 	if (!mcuclk || !coreclk) {
 		dev_err(xvcu->dev, "Invalid mcu and core clock data\n");
 		return -EINVAL;
@@ -548,6 +532,7 @@ static int xvcu_probe(struct platform_device *pdev)
 {
 	struct resource *res;
 	struct xvcu_device *xvcu;
+	void __iomem *regs;
 	int ret;
 
 	xvcu = devm_kzalloc(&pdev->dev, sizeof(*xvcu), GFP_KERNEL);
@@ -568,17 +553,32 @@ static int xvcu_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "logicore");
-	if (!res) {
-		dev_err(&pdev->dev, "get logicore memory resource failed.\n");
-		return -ENODEV;
-	}
+	xvcu->logicore_reg_ba =
+		syscon_regmap_lookup_by_compatible("xlnx,vcu-settings");
+	if (IS_ERR(xvcu->logicore_reg_ba)) {
+		dev_info(&pdev->dev,
+			 "could not find xlnx,vcu-settings: trying direct register access\n");
+
+		res = platform_get_resource_byname(pdev,
+						   IORESOURCE_MEM, "logicore");
+		if (!res) {
+			dev_err(&pdev->dev, "get logicore memory resource failed.\n");
+			return -ENODEV;
+		}
 
-	xvcu->logicore_reg_ba = devm_ioremap(&pdev->dev, res->start,
-						     resource_size(res));
-	if (!xvcu->logicore_reg_ba) {
-		dev_err(&pdev->dev, "logicore register mapping failed.\n");
-		return -ENOMEM;
+		regs = devm_ioremap(&pdev->dev, res->start, resource_size(res));
+		if (!regs) {
+			dev_err(&pdev->dev, "logicore register mapping failed.\n");
+			return -ENOMEM;
+		}
+
+		xvcu->logicore_reg_ba =
+			devm_regmap_init_mmio(&pdev->dev, regs,
+					      &vcu_settings_regmap_config);
+		if (IS_ERR(xvcu->logicore_reg_ba)) {
+			dev_err(&pdev->dev, "failed to init regmap\n");
+			return PTR_ERR(xvcu->logicore_reg_ba);
+		}
 	}
 
 	xvcu->aclk = devm_clk_get(&pdev->dev, "aclk");
@@ -610,7 +610,7 @@ static int xvcu_probe(struct platform_device *pdev)
 	 * Bit 0 : Gasket isolation
 	 * Bit 1 : put VCU out of reset
 	 */
-	xvcu_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, VCU_GASKET_VALUE);
+	regmap_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, VCU_GASKET_VALUE);
 
 	/* Do the PLL Settings based on the ref clk,core and mcu clk freq */
 	ret = xvcu_set_pll(xvcu);
@@ -657,7 +657,7 @@ static int xvcu_remove(struct platform_device *pdev)
 	xvcu_unregister_clock_provider(xvcu);
 
 	/* Add the the Gasket isolation and put the VCU in reset. */
-	xvcu_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, 0);
+	regmap_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, 0);
 
 	clk_disable_unprepare(xvcu->pll_ref);
 	clk_disable_unprepare(xvcu->aclk);
diff --git a/include/linux/mfd/syscon/xlnx-vcu.h b/include/linux/mfd/syscon/xlnx-vcu.h
new file mode 100644
index 000000000000..d3edec4b7b1d
--- /dev/null
+++ b/include/linux/mfd/syscon/xlnx-vcu.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Pengutronix, Michael Tretter <kernel@pengutronix.de>
+ */
+
+#ifndef __XLNX_VCU_H
+#define __XLNX_VCU_H
+
+#define VCU_ECODER_ENABLE		0x00
+#define VCU_DECODER_ENABLE		0x04
+#define VCU_MEMORY_DEPTH		0x08
+#define VCU_ENC_COLOR_DEPTH		0x0c
+#define VCU_ENC_VERTICAL_RANGE		0x10
+#define VCU_ENC_FRAME_SIZE_X		0x14
+#define VCU_ENC_FRAME_SIZE_Y		0x18
+#define VCU_ENC_COLOR_FORMAT		0x1c
+#define VCU_ENC_FPS			0x20
+#define VCU_MCU_CLK			0x24
+#define VCU_CORE_CLK			0x28
+#define VCU_PLL_BYPASS			0x2c
+#define VCU_ENC_CLK			0x30
+#define VCU_PLL_CLK			0x34
+#define VCU_ENC_VIDEO_STANDARD		0x38
+#define VCU_STATUS			0x3c
+#define VCU_AXI_ENC_CLK			0x40
+#define VCU_AXI_DEC_CLK			0x44
+#define VCU_AXI_MCU_CLK			0x48
+#define VCU_DEC_VIDEO_STANDARD		0x4c
+#define VCU_DEC_FRAME_SIZE_X		0x50
+#define VCU_DEC_FRAME_SIZE_Y		0x54
+#define VCU_DEC_FPS			0x58
+#define VCU_BUFFER_B_FRAME		0x5c
+#define VCU_WPP_EN			0x60
+#define VCU_PLL_CLK_DEC			0x64
+#define VCU_GASKET_INIT			0x74
+#define VCU_GASKET_VALUE		0x03
+
+#endif /* __XLNX_VCU_H */
-- 
2.20.1

