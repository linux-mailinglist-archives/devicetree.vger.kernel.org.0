Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83A25428A11
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:46:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235612AbhJKJsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235729AbhJKJsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:48:36 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8C9DC06161C
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:36 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id m22so54310140wrb.0
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TKBtSG8UaZGVcUDYGZ7ORHWsZWhXkekg1wlJ0XBn+Ak=;
        b=IGEQ5Cdign3iteWQCDTEPfRpPv+glKGQ7VkJP9v/1/Ce8tFkzAI4cmSLXtIH8rPEED
         cU3oS9Ww1fhe1LV+xZI7cguaKXPfIprSMc91jHR2AdDpXghBkRISCGLFFf3fYF5GTaEv
         9Rv6yNqlgG/MgbkgR/8nkMP5+hXFmNx3NvN2Z7RY33xGSeIpDwXWEaUFwMiWl64ZYDw7
         f5V8S/hki++Z2vePHLTU+dWDiafdqsu2K8UPuCq0WD1B+E1kI6gxfo/Ay+AKvebAheDX
         qCMpxRkoV/VjgP5kWoVE+WYmFOgtqcDtf6XcRrA9rtuLwvYE+6f1WJxIdL7tYKbLpA81
         8+bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TKBtSG8UaZGVcUDYGZ7ORHWsZWhXkekg1wlJ0XBn+Ak=;
        b=VWXmJDWjCjixoX8SNX2cRiRLNpGeglsAeaopGO2Z2RMdxpDUoXZAZ/zOn9YCCcINyJ
         SbEOFDMrHiIMQSXRfuu3/bILYgduFagiewzNP6nVpUPwpunZRC8lApEKiZ153Pb9Q97D
         8aVlGIEN+kXO5dYyRLRGIAY2xbZVXc+Flh7RhZ17jJB8YvPVzLcfLGqwcIguXe55a3I2
         F1c3iYYCdccWzpSGh1VHKy9iIPdofVe3zX95HUIX2m+kD1K010gv7cDmmaD5hU1cLBqZ
         SWZQzRmyhXpmIUUZH2v9yTOS6hQ43e3GLAMQ27VPQS7gInRhU8IWQsdyOvs3+ASiHQCB
         1Ayw==
X-Gm-Message-State: AOAM531dTaJi0VV+QxgPUlF7qduGlYP7QjHYFZAuTISTapoyhZeblFsC
        md8lc7W8AlTVn7o5E0nE/nk4rg==
X-Google-Smtp-Source: ABdhPJxi5qQ1uJHGZVFVi1M5XDzyWYzJZPm4s1KE371yLBE2G+SXoPOSD5CUksBxN64Y06axqWaAcA==
X-Received: by 2002:a1c:7e04:: with SMTP id z4mr20140402wmc.95.1633945595265;
        Mon, 11 Oct 2021 02:46:35 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 02:46:35 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 6/7] phy: phy-mtk-dp: Add driver for DP phy
Date:   Mon, 11 Oct 2021 11:46:23 +0200
Message-Id: <20211011094624.3416029-7-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011094624.3416029-1-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a new driver that supports the integrated DisplayPort phy for
mediatek SoCs, especially the mt8195. The phy is integrated into the
DisplayPort controller and will be created by the mtk-dp driver. This
driver expects a struct regmap to be able to work on the same registers
as the DisplayPort controller. It sets the device data to be the struct
phy so that the DisplayPort controller can easily work with it.

The driver does not have any devicetree bindings because the datasheet
does not list the controller and the phy as distinct units.

The interaction with the controller can be covered by the configure
callback of the phy framework and its displayport parameters.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v3 -> v4:
    - Split DP controller driver and phy driver into separate patches.
    - Add entry to MAINTAINERS for this phy driver

 MAINTAINERS                       |   1 +
 drivers/phy/mediatek/Kconfig      |   8 ++
 drivers/phy/mediatek/Makefile     |   1 +
 drivers/phy/mediatek/phy-mtk-dp.c | 218 ++++++++++++++++++++++++++++++
 4 files changed, 228 insertions(+)
 create mode 100644 drivers/phy/mediatek/phy-mtk-dp.c

diff --git a/MAINTAINERS b/MAINTAINERS
index eeb4c70b3d5b..8a47eb628734 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6276,6 +6276,7 @@ L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
 F:	Documentation/devicetree/bindings/display/mediatek/
 F:	drivers/gpu/drm/mediatek/
+F:	drivers/phy/mediatek/phy-mtk-dp.c
 F:	drivers/phy/mediatek/phy-mtk-hdmi*
 F:	drivers/phy/mediatek/phy-mtk-mipi*
 
diff --git a/drivers/phy/mediatek/Kconfig b/drivers/phy/mediatek/Kconfig
index 55f8e6c048ab..f7ec86059049 100644
--- a/drivers/phy/mediatek/Kconfig
+++ b/drivers/phy/mediatek/Kconfig
@@ -55,3 +55,11 @@ config PHY_MTK_MIPI_DSI
 	select GENERIC_PHY
 	help
 	  Support MIPI DSI for Mediatek SoCs.
+
+config PHY_MTK_DP
+	tristate "MediaTek DP-PHY Driver"
+	depends on ARCH_MEDIATEK || COMPILE_TEST
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Support DisplayPort PHY for Mediatek SoCs.
diff --git a/drivers/phy/mediatek/Makefile b/drivers/phy/mediatek/Makefile
index ace660fbed3a..4ba1e0650434 100644
--- a/drivers/phy/mediatek/Makefile
+++ b/drivers/phy/mediatek/Makefile
@@ -3,6 +3,7 @@
 # Makefile for the phy drivers.
 #
 
+obj-$(CONFIG_PHY_MTK_DP)		+= phy-mtk-dp.o
 obj-$(CONFIG_PHY_MTK_TPHY)		+= phy-mtk-tphy.o
 obj-$(CONFIG_PHY_MTK_UFS)		+= phy-mtk-ufs.o
 obj-$(CONFIG_PHY_MTK_XSPHY)		+= phy-mtk-xsphy.o
diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
new file mode 100644
index 000000000000..7a1141715ea2
--- /dev/null
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -0,0 +1,218 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2021 BayLibre
+ * Author: Markus Schneider-Pargmann <msp@baylibre.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define PHY_OFFSET 0x1000
+
+#define MTK_DP_PHY_DIG_PLL_CTL_1		(PHY_OFFSET + 0x014)
+# define TPLL_SSC_EN				BIT(3)
+
+#define MTK_DP_PHY_DIG_BIT_RATE			(PHY_OFFSET + 0x03C)
+# define BIT_RATE_RBR				0
+# define BIT_RATE_HBR				1
+# define BIT_RATE_HBR2				2
+# define BIT_RATE_HBR3				3
+
+#define MTK_DP_PHY_DIG_SW_RST			(PHY_OFFSET + 0x038)
+# define DP_GLB_SW_RST_PHYD			BIT(0)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_3		(PHY_OFFSET + 0x138)
+#define MTK_DP_LANE1_DRIVING_PARAM_3		(PHY_OFFSET + 0x238)
+#define MTK_DP_LANE2_DRIVING_PARAM_3		(PHY_OFFSET + 0x338)
+#define MTK_DP_LANE3_DRIVING_PARAM_3		(PHY_OFFSET + 0x438)
+# define XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT	0x10
+# define XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT	(0x14 << 8)
+# define XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT	(0x18 << 16)
+# define XTP_LN_TX_LCTXC0_SW0_PRE3_DEFAULT	(0x20 << 24)
+# define DRIVING_PARAM_3_DEFAULT		(XTP_LN_TX_LCTXC0_SW0_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW0_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW0_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW0_PRE3_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_4		(PHY_OFFSET + 0x13C)
+#define MTK_DP_LANE1_DRIVING_PARAM_4		(PHY_OFFSET + 0x23C)
+#define MTK_DP_LANE2_DRIVING_PARAM_4		(PHY_OFFSET + 0x33C)
+#define MTK_DP_LANE3_DRIVING_PARAM_4		(PHY_OFFSET + 0x43C)
+# define XTP_LN_TX_LCTXC0_SW1_PRE0_DEFAULT	0x18
+# define XTP_LN_TX_LCTXC0_SW1_PRE1_DEFAULT	(0x1e << 8)
+# define XTP_LN_TX_LCTXC0_SW1_PRE2_DEFAULT	(0x24 << 16)
+# define XTP_LN_TX_LCTXC0_SW2_PRE0_DEFAULT	(0x20 << 24)
+# define DRIVING_PARAM_4_DEFAULT		(XTP_LN_TX_LCTXC0_SW1_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW1_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW1_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW2_PRE0_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_5		(PHY_OFFSET + 0x140)
+#define MTK_DP_LANE1_DRIVING_PARAM_5		(PHY_OFFSET + 0x240)
+#define MTK_DP_LANE2_DRIVING_PARAM_5		(PHY_OFFSET + 0x340)
+#define MTK_DP_LANE3_DRIVING_PARAM_5		(PHY_OFFSET + 0x440)
+# define XTP_LN_TX_LCTXC0_SW2_PRE1_DEFAULT	0x28
+# define XTP_LN_TX_LCTXC0_SW3_PRE0_DEFAULT	(0x30 << 8)
+# define DRIVING_PARAM_5_DEFAULT		(XTP_LN_TX_LCTXC0_SW2_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXC0_SW3_PRE0_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_6		(PHY_OFFSET + 0x144)
+#define MTK_DP_LANE1_DRIVING_PARAM_6		(PHY_OFFSET + 0x244)
+#define MTK_DP_LANE2_DRIVING_PARAM_6		(PHY_OFFSET + 0x344)
+#define MTK_DP_LANE3_DRIVING_PARAM_6		(PHY_OFFSET + 0x444)
+# define XTP_LN_TX_LCTXCP1_SW0_PRE0_DEFAULT	0x00
+# define XTP_LN_TX_LCTXCP1_SW0_PRE1_DEFAULT	(0x04 << 8)
+# define XTP_LN_TX_LCTXCP1_SW0_PRE2_DEFAULT	(0x08 << 16)
+# define XTP_LN_TX_LCTXCP1_SW0_PRE3_DEFAULT	(0x10 << 24)
+# define DRIVING_PARAM_6_DEFAULT		(XTP_LN_TX_LCTXCP1_SW0_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW0_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW0_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW0_PRE3_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_7		(PHY_OFFSET + 0x148)
+#define MTK_DP_LANE1_DRIVING_PARAM_7		(PHY_OFFSET + 0x248)
+#define MTK_DP_LANE2_DRIVING_PARAM_7		(PHY_OFFSET + 0x348)
+#define MTK_DP_LANE3_DRIVING_PARAM_7		(PHY_OFFSET + 0x448)
+# define XTP_LN_TX_LCTXCP1_SW1_PRE0_DEFAULT	0x00
+# define XTP_LN_TX_LCTXCP1_SW1_PRE1_DEFAULT	(0x06 << 8)
+# define XTP_LN_TX_LCTXCP1_SW1_PRE2_DEFAULT	(0x0c << 16)
+# define XTP_LN_TX_LCTXCP1_SW2_PRE0_DEFAULT	(0x00 << 24)
+# define DRIVING_PARAM_7_DEFAULT		(XTP_LN_TX_LCTXCP1_SW1_PRE0_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW1_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW1_PRE2_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW2_PRE0_DEFAULT)
+
+#define MTK_DP_LANE0_DRIVING_PARAM_8		(PHY_OFFSET + 0x14C)
+#define MTK_DP_LANE1_DRIVING_PARAM_8		(PHY_OFFSET + 0x24C)
+#define MTK_DP_LANE2_DRIVING_PARAM_8		(PHY_OFFSET + 0x34C)
+#define MTK_DP_LANE3_DRIVING_PARAM_8		(PHY_OFFSET + 0x44C)
+# define XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT	0x08
+# define XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT	(0x00 << 8)
+# define DRIVING_PARAM_8_DEFAULT		(XTP_LN_TX_LCTXCP1_SW2_PRE1_DEFAULT | \
+						 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
+
+struct mtk_dp_phy {
+	struct regmap *regs;
+};
+
+static int mtk_dp_phy_init(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	u32 driving_params[] = {
+		DRIVING_PARAM_3_DEFAULT,
+		DRIVING_PARAM_4_DEFAULT,
+		DRIVING_PARAM_5_DEFAULT,
+		DRIVING_PARAM_6_DEFAULT,
+		DRIVING_PARAM_7_DEFAULT,
+		DRIVING_PARAM_8_DEFAULT
+	};
+
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE0_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE1_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE2_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE3_DRIVING_PARAM_3,
+			  driving_params, ARRAY_SIZE(driving_params));
+
+	return 0;
+}
+
+static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+	u32 val;
+
+	if (opts->dp.set_rate) {
+		switch (opts->dp.link_rate) {
+		default:
+			dev_err(&phy->dev,
+				"Implementation error, unknown linkrate %x\n",
+				opts->dp.link_rate);
+			return -EINVAL;
+		case 1620:
+			val = BIT_RATE_RBR;
+			break;
+		case 2700:
+			val = BIT_RATE_HBR;
+			break;
+		case 5400:
+			val = BIT_RATE_HBR2;
+			break;
+		case 8100:
+			val = BIT_RATE_HBR3;
+			break;
+		}
+		regmap_write(dp_phy->regs, MTK_DP_PHY_DIG_BIT_RATE, val);
+	}
+
+	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_BIT_RATE,
+			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
+
+	return 0;
+}
+
+static int mtk_dp_phy_reset(struct phy *phy)
+{
+	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
+
+	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+			   DP_GLB_SW_RST_PHYD, 0);
+	usleep_range(50, 200);
+	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+			   DP_GLB_SW_RST_PHYD, 1);
+
+	return 0;
+}
+
+static const struct phy_ops mtk_dp_phy_dev_ops = {
+	.init = mtk_dp_phy_init,
+	.configure = mtk_dp_phy_configure,
+	.reset = mtk_dp_phy_reset,
+	.owner = THIS_MODULE,
+};
+
+static int mtk_dp_phy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_dp_phy *dp_phy;
+	struct phy *phy;
+
+	dp_phy = devm_kzalloc(dev, sizeof(*dp_phy), GFP_KERNEL);
+	if (!dp_phy)
+		return -ENOMEM;
+
+	dp_phy->regs = *(struct regmap **)dev->platform_data;
+	if (!dp_phy->regs) {
+		dev_err(dev, "No data passed, requires struct regmap**\n");
+		return -EINVAL;
+	}
+
+	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "Failed to create DP PHY: %ld\n", PTR_ERR(phy));
+		return PTR_ERR(phy);
+	}
+	phy_set_drvdata(phy, dp_phy);
+
+	// Set device data to the phy so that mtk-dp can get it easily
+	dev_set_drvdata(dev, phy);
+
+	return 0;
+}
+
+struct platform_driver mtk_dp_phy_driver = {
+	.probe = mtk_dp_phy_probe,
+	.driver = {
+		.name = "mediatek-dp-phy",
+	},
+};
+module_platform_driver(mtk_dp_phy_driver);
+
+MODULE_DESCRIPTION("MediaTek DP PHY Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.33.0

