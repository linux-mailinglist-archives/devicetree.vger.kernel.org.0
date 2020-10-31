Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0112A1750
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 13:22:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727288AbgJaMWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 08:22:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726935AbgJaMWy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Oct 2020 08:22:54 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44AD6C0613D5
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 05:22:54 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id w23so5117885wmi.4
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 05:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cq9JVxmQLTFFIglvS9GlnOS573+V/PqV/rMeMr3glAM=;
        b=EqBvTFLaZcXuNP4HDEnII6ZOhYZAhoyLa02Cr3+rhyY8AlHRmnYc/aDBCBvIaD2JK8
         D+xamK38l9HWQByPG3aU2Rv/dNgbu8q8G/sX4ZKco9V4CO/rrNPpZBWd7YQMP7Xzjkn+
         SbKaJfxGGQVmg7zp/pXkp7IJRNYKIb8gStQS6XltSkB13TDrGjgqEOz5ronBupXaasBg
         dWDrY6OYQs8RzhxRwO26gh5lqBeP5jXODYVfWoaEXv+9dJnQfvjGYjETaIBtRe75SVjm
         SaSs1DTtBqa77KFGF5cU/d/KKy6dEJl56a9dCX2jbE1hFlrva/Og4G6sFUwVqF+Dg1pX
         CqlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cq9JVxmQLTFFIglvS9GlnOS573+V/PqV/rMeMr3glAM=;
        b=LyDQFvPO+mdtVqkJNCQfruhlJNkKzAyMliuAgN8k1g8aZKH0TqgPcJIxcJKaI31CFZ
         bk/hJkq7j55as9All8/dZ3VS2yypxF4hfBGlMIXHyYwRDooPG1v6u10BpjFRJBeGkxm4
         epo+0sGkymITX+F8zvLdvO+FPhyaOHji2dkmQZxxltVC7s3l4Mi/k/cwLebnxovq+CI1
         39QQSKs4t1Wb4jOamd5krULppa4HfPofngQ9ey4s6L0fxjlEISW+vj9b4YfA7ZVncgJx
         JrQq91OtvU4J+czvUKCUZPniFPdQ2kpLkxMgi7oAdAhsJ+FOwCYPvT8bvzYvZ2yrePHO
         4DHg==
X-Gm-Message-State: AOAM5319/J2WjNuJkxVrMv91+yALB7Ql1GkcJ34Nr+w6+XFpgHJjE3Vb
        d+EKb601dGh5/FEb36bpJTk=
X-Google-Smtp-Source: ABdhPJyB9RqClfFwKcFsa48pvjk6fW9w6N81ppRO9mezgSeQwIORG+xyxfKQ7wDGhenlE+1ZopEOBQ==
X-Received: by 2002:a1c:a145:: with SMTP id k66mr6955825wme.177.1604146972912;
        Sat, 31 Oct 2020 05:22:52 -0700 (PDT)
Received: from localhost.localdomain (14.red-83-46-194.dynamicip.rima-tde.net. [83.46.194.14])
        by smtp.gmail.com with ESMTPSA id f7sm15299199wrx.64.2020.10.31.05.22.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 05:22:52 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     kishon@ti.com
Cc:     vkoul@kernel.org, robh+dt@kernel.org, gregkh@linuxfoundation.org,
        devicetree@vger.kernel.org, devel@driverdev.osuosl.org,
        neil@brown.name
Subject: [PATCH v4 4/4] staging: mt7621-pci-phy: remove driver from staging
Date:   Sat, 31 Oct 2020 13:22:46 +0100
Message-Id: <20201031122246.16497-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove this driver from staging because it has been moved
into its properly place in the kernel.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/mt7621-pci-phy/Kconfig        |   8 -
 drivers/staging/mt7621-pci-phy/Makefile       |   2 -
 drivers/staging/mt7621-pci-phy/TODO           |   4 -
 .../mediatek,mt7621-pci-phy.yaml              |  36 --
 .../staging/mt7621-pci-phy/pci-mt7621-phy.c   | 373 ------------------
 7 files changed, 426 deletions(-)
 delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
 delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
 delete mode 100644 drivers/staging/mt7621-pci-phy/TODO
 delete mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
 delete mode 100644 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 2d0310448eba..8a03ba56def5 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -94,8 +94,6 @@ source "drivers/staging/pi433/Kconfig"
 
 source "drivers/staging/mt7621-pci/Kconfig"
 
-source "drivers/staging/mt7621-pci-phy/Kconfig"
-
 source "drivers/staging/mt7621-pinctrl/Kconfig"
 
 source "drivers/staging/mt7621-dma/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 757a892ab5b9..39319161301c 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -37,7 +37,6 @@ obj-$(CONFIG_GREYBUS)		+= greybus/
 obj-$(CONFIG_BCM2835_VCHIQ)	+= vc04_services/
 obj-$(CONFIG_PI433)		+= pi433/
 obj-$(CONFIG_PCI_MT7621)	+= mt7621-pci/
-obj-$(CONFIG_PCI_MT7621_PHY)	+= mt7621-pci-phy/
 obj-$(CONFIG_PINCTRL_RT2880)	+= mt7621-pinctrl/
 obj-$(CONFIG_SOC_MT7621)	+= mt7621-dma/
 obj-$(CONFIG_DMA_RALINK)	+= ralink-gdma/
diff --git a/drivers/staging/mt7621-pci-phy/Kconfig b/drivers/staging/mt7621-pci-phy/Kconfig
deleted file mode 100644
index 263e0a91c424..000000000000
--- a/drivers/staging/mt7621-pci-phy/Kconfig
+++ /dev/null
@@ -1,8 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-config PCI_MT7621_PHY
-	tristate "MediaTek MT7621 PCI PHY Driver"
-	depends on RALINK && OF
-	select GENERIC_PHY
-	help
-	  Say 'Y' here to add support for MediaTek MT7621 PCI PHY driver,
-
diff --git a/drivers/staging/mt7621-pci-phy/Makefile b/drivers/staging/mt7621-pci-phy/Makefile
deleted file mode 100644
index b4d99b9119e0..000000000000
--- a/drivers/staging/mt7621-pci-phy/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_PCI_MT7621_PHY)       += pci-mt7621-phy.o
diff --git a/drivers/staging/mt7621-pci-phy/TODO b/drivers/staging/mt7621-pci-phy/TODO
deleted file mode 100644
index a255e8f753eb..000000000000
--- a/drivers/staging/mt7621-pci-phy/TODO
+++ /dev/null
@@ -1,4 +0,0 @@
-
-- general code review and cleanup
-
-Cc:  NeilBrown <neil@brown.name> and Sergio Paracuellos <sergio.paracuellos@gmail.com>
diff --git a/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml b/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
deleted file mode 100644
index cf32bbc45b5d..000000000000
--- a/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
+++ /dev/null
@@ -1,36 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-%YAML 1.2
----
-$id: "http://devicetree.org/schemas/phy/mediatek,mt7621-pci-phy.yaml#"
-$schema: "http://devicetree.org/meta-schemas/core.yaml#"
-
-title: Mediatek Mt7621 PCIe PHY Device Tree Bindings
-
-maintainers:
-  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
-
-properties:
-  compatible:
-    const: mediatek,mt7621-pci-phy
-
-  reg:
-    maxItems: 1
-
-  "#phy-cells":
-    const: 1
-    description: selects if the phy is dual-ported
-
-required:
-  - compatible
-  - reg
-  - "#phy-cells"
-
-additionalProperties: false
-
-examples:
-  - |
-    pcie0_phy: pcie-phy@1e149000 {
-      compatible = "mediatek,mt7621-pci-phy";
-      reg = <0x1e149000 0x0700>;
-      #phy-cells = <1>;
-    };
diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
deleted file mode 100644
index 57743fd22be4..000000000000
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ /dev/null
@@ -1,373 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Mediatek MT7621 PCI PHY Driver
- * Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
- */
-
-#include <dt-bindings/phy/phy.h>
-#include <linux/bitops.h>
-#include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
-#include <linux/phy/phy.h>
-#include <linux/platform_device.h>
-#include <linux/regmap.h>
-#include <linux/sys_soc.h>
-#include <mt7621.h>
-#include <ralink_regs.h>
-
-#define RG_PE1_PIPE_REG				0x02c
-#define RG_PE1_PIPE_RST				BIT(12)
-#define RG_PE1_PIPE_CMD_FRC			BIT(4)
-
-#define RG_P0_TO_P1_WIDTH			0x100
-#define RG_PE1_H_LCDDS_REG			0x49c
-#define RG_PE1_H_LCDDS_PCW			GENMASK(30, 0)
-#define RG_PE1_H_LCDDS_PCW_VAL(x)		((0x7fffffff & (x)) << 0)
-
-#define RG_PE1_FRC_H_XTAL_REG			0x400
-#define RG_PE1_FRC_H_XTAL_TYPE			BIT(8)
-#define RG_PE1_H_XTAL_TYPE			GENMASK(10, 9)
-#define RG_PE1_H_XTAL_TYPE_VAL(x)		((0x3 & (x)) << 9)
-
-#define RG_PE1_FRC_PHY_REG			0x000
-#define RG_PE1_FRC_PHY_EN			BIT(4)
-#define RG_PE1_PHY_EN				BIT(5)
-
-#define RG_PE1_H_PLL_REG			0x490
-#define RG_PE1_H_PLL_BC				GENMASK(23, 22)
-#define RG_PE1_H_PLL_BC_VAL(x)			((0x3 & (x)) << 22)
-#define RG_PE1_H_PLL_BP				GENMASK(21, 18)
-#define RG_PE1_H_PLL_BP_VAL(x)			((0xf & (x)) << 18)
-#define RG_PE1_H_PLL_IR				GENMASK(15, 12)
-#define RG_PE1_H_PLL_IR_VAL(x)			((0xf & (x)) << 12)
-#define RG_PE1_H_PLL_IC				GENMASK(11, 8)
-#define RG_PE1_H_PLL_IC_VAL(x)			((0xf & (x)) << 8)
-#define RG_PE1_H_PLL_PREDIV			GENMASK(7, 6)
-#define RG_PE1_H_PLL_PREDIV_VAL(x)		((0x3 & (x)) << 6)
-#define RG_PE1_PLL_DIVEN			GENMASK(3, 1)
-#define RG_PE1_PLL_DIVEN_VAL(x)			((0x7 & (x)) << 1)
-
-#define RG_PE1_H_PLL_FBKSEL_REG			0x4bc
-#define RG_PE1_H_PLL_FBKSEL			GENMASK(5, 4)
-#define RG_PE1_H_PLL_FBKSEL_VAL(x)		((0x3 & (x)) << 4)
-
-#define	RG_PE1_H_LCDDS_SSC_PRD_REG		0x4a4
-#define RG_PE1_H_LCDDS_SSC_PRD			GENMASK(15, 0)
-#define RG_PE1_H_LCDDS_SSC_PRD_VAL(x)		((0xffff & (x)) << 0)
-
-#define RG_PE1_H_LCDDS_SSC_DELTA_REG		0x4a8
-#define RG_PE1_H_LCDDS_SSC_DELTA		GENMASK(11, 0)
-#define RG_PE1_H_LCDDS_SSC_DELTA_VAL(x)		((0xfff & (x)) << 0)
-#define RG_PE1_H_LCDDS_SSC_DELTA1		GENMASK(27, 16)
-#define RG_PE1_H_LCDDS_SSC_DELTA1_VAL(x)	((0xff & (x)) << 16)
-
-#define RG_PE1_LCDDS_CLK_PH_INV_REG		0x4a0
-#define RG_PE1_LCDDS_CLK_PH_INV			BIT(5)
-
-#define RG_PE1_H_PLL_BR_REG			0x4ac
-#define RG_PE1_H_PLL_BR				GENMASK(18, 16)
-#define RG_PE1_H_PLL_BR_VAL(x)			((0x7 & (x)) << 16)
-
-#define	RG_PE1_MSTCKDIV_REG			0x414
-#define RG_PE1_MSTCKDIV				GENMASK(7, 6)
-#define RG_PE1_MSTCKDIV_VAL(x)			((0x3 & (x)) << 6)
-
-#define RG_PE1_FRC_MSTCKDIV			BIT(5)
-
-#define XTAL_MODE_SEL_SHIFT			6
-#define XTAL_MODE_SEL_MASK			0x7
-
-#define MAX_PHYS	2
-
-/**
- * struct mt7621_pci_phy - Mt7621 Pcie PHY core
- * @dev: pointer to device
- * @regmap: kernel regmap pointer
- * @phy: pointer to the kernel PHY device
- * @port_base: base register
- * @has_dual_port: if the phy has dual ports.
- * @bypass_pipe_rst: mark if 'mt7621_bypass_pipe_rst'
- * needs to be executed. Depends on chip revision.
- */
-struct mt7621_pci_phy {
-	struct device *dev;
-	struct regmap *regmap;
-	struct phy *phy;
-	void __iomem *port_base;
-	bool has_dual_port;
-	bool bypass_pipe_rst;
-};
-
-static inline u32 phy_read(struct mt7621_pci_phy *phy, u32 reg)
-{
-	u32 val;
-
-	regmap_read(phy->regmap, reg, &val);
-
-	return val;
-}
-
-static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
-{
-	regmap_write(phy->regmap, reg, val);
-}
-
-static inline void mt7621_phy_rmw(struct mt7621_pci_phy *phy,
-				  u32 reg, u32 clr, u32 set)
-{
-	u32 val = phy_read(phy, reg);
-
-	val &= ~clr;
-	val |= set;
-	phy_write(phy, val, reg);
-}
-
-static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy)
-{
-	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_RST);
-	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_CMD_FRC);
-
-	if (phy->has_dual_port) {
-		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
-			       0, RG_PE1_PIPE_RST);
-		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
-			       0, RG_PE1_PIPE_CMD_FRC);
-	}
-}
-
-static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
-{
-	struct device *dev = phy->dev;
-	u32 xtal_mode;
-
-	xtal_mode = (rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0)
-		     >> XTAL_MODE_SEL_SHIFT) & XTAL_MODE_SEL_MASK;
-
-	/* Set PCIe Port PHY to disable SSC */
-	/* Debug Xtal Type */
-	mt7621_phy_rmw(phy, RG_PE1_FRC_H_XTAL_REG,
-		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE,
-		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE_VAL(0x00));
-
-	/* disable port */
-	mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG,
-		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-
-	if (phy->has_dual_port) {
-		mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
-			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-	}
-
-	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
-		/* Set Pre-divider ratio (for host mode) */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-			       RG_PE1_H_PLL_PREDIV,
-			       RG_PE1_H_PLL_PREDIV_VAL(0x01));
-		dev_info(dev, "Xtal is 40MHz\n");
-	} else if (xtal_mode >= 6) { /* 25MHz Xal */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-			       RG_PE1_H_PLL_PREDIV,
-			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
-		/* Select feedback clock */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_FBKSEL_REG,
-			       RG_PE1_H_PLL_FBKSEL,
-			       RG_PE1_H_PLL_FBKSEL_VAL(0x01));
-		/* DDS NCPO PCW (for host mode) */
-		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
-			       RG_PE1_H_LCDDS_SSC_PRD,
-			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18000000));
-		/* DDS SSC dither period control */
-		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_PRD_REG,
-			       RG_PE1_H_LCDDS_SSC_PRD,
-			       RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18d));
-		/* DDS SSC dither amplitude control */
-		mt7621_phy_rmw(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG,
-			       RG_PE1_H_LCDDS_SSC_DELTA |
-			       RG_PE1_H_LCDDS_SSC_DELTA1,
-			       RG_PE1_H_LCDDS_SSC_DELTA_VAL(0x4a) |
-			       RG_PE1_H_LCDDS_SSC_DELTA1_VAL(0x4a));
-		dev_info(dev, "Xtal is 25MHz\n");
-	} else { /* 20MHz Xtal */
-		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-			       RG_PE1_H_PLL_PREDIV,
-			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
-
-		dev_info(dev, "Xtal is 20MHz\n");
-	}
-
-	/* DDS clock inversion */
-	mt7621_phy_rmw(phy, RG_PE1_LCDDS_CLK_PH_INV_REG,
-		       RG_PE1_LCDDS_CLK_PH_INV, RG_PE1_LCDDS_CLK_PH_INV);
-
-	/* Set PLL bits */
-	mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
-		       RG_PE1_H_PLL_BC | RG_PE1_H_PLL_BP | RG_PE1_H_PLL_IR |
-		       RG_PE1_H_PLL_IC | RG_PE1_PLL_DIVEN,
-		       RG_PE1_H_PLL_BC_VAL(0x02) | RG_PE1_H_PLL_BP_VAL(0x06) |
-		       RG_PE1_H_PLL_IR_VAL(0x02) | RG_PE1_H_PLL_IC_VAL(0x01) |
-		       RG_PE1_PLL_DIVEN_VAL(0x02));
-
-	mt7621_phy_rmw(phy, RG_PE1_H_PLL_BR_REG,
-		       RG_PE1_H_PLL_BR, RG_PE1_H_PLL_BR_VAL(0x00));
-
-	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
-		/* set force mode enable of da_pe1_mstckdiv */
-		mt7621_phy_rmw(phy, RG_PE1_MSTCKDIV_REG,
-			       RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV,
-			       RG_PE1_MSTCKDIV_VAL(0x01) | RG_PE1_FRC_MSTCKDIV);
-	}
-}
-
-static int mt7621_pci_phy_init(struct phy *phy)
-{
-	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
-
-	if (mphy->bypass_pipe_rst)
-		mt7621_bypass_pipe_rst(mphy);
-
-	mt7621_set_phy_for_ssc(mphy);
-
-	return 0;
-}
-
-static int mt7621_pci_phy_power_on(struct phy *phy)
-{
-	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
-
-	/* Enable PHY and disable force mode */
-	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
-		       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
-
-	if (mphy->has_dual_port) {
-		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
-			       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
-	}
-
-	return 0;
-}
-
-static int mt7621_pci_phy_power_off(struct phy *phy)
-{
-	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
-
-	/* Disable PHY */
-	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
-		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-
-	if (mphy->has_dual_port) {
-		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
-			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
-	}
-
-	return 0;
-}
-
-static int mt7621_pci_phy_exit(struct phy *phy)
-{
-	return 0;
-}
-
-static const struct phy_ops mt7621_pci_phy_ops = {
-	.init		= mt7621_pci_phy_init,
-	.exit		= mt7621_pci_phy_exit,
-	.power_on	= mt7621_pci_phy_power_on,
-	.power_off	= mt7621_pci_phy_power_off,
-	.owner		= THIS_MODULE,
-};
-
-static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
-					    struct of_phandle_args *args)
-{
-	struct mt7621_pci_phy *mt7621_phy = dev_get_drvdata(dev);
-
-	if (WARN_ON(args->args[0] >= MAX_PHYS))
-		return ERR_PTR(-ENODEV);
-
-	mt7621_phy->has_dual_port = args->args[0];
-
-	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
-		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
-
-	return mt7621_phy->phy;
-}
-
-static const struct soc_device_attribute mt7621_pci_quirks_match[] = {
-	{ .soc_id = "mt7621", .revision = "E2" }
-};
-
-static const struct regmap_config mt7621_pci_phy_regmap_config = {
-	.reg_bits = 32,
-	.val_bits = 32,
-	.reg_stride = 4,
-	.max_register = 0x700,
-};
-
-static int mt7621_pci_phy_probe(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	const struct soc_device_attribute *attr;
-	struct phy_provider *provider;
-	struct mt7621_pci_phy *phy;
-	struct resource *res;
-
-	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
-	if (!phy)
-		return -ENOMEM;
-
-	attr = soc_device_match(mt7621_pci_quirks_match);
-	if (attr)
-		phy->bypass_pipe_rst = true;
-
-	phy->dev = dev;
-	platform_set_drvdata(pdev, phy);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res) {
-		dev_err(dev, "failed to get address resource\n");
-		return -ENXIO;
-	}
-
-	phy->port_base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(phy->port_base)) {
-		dev_err(dev, "failed to remap phy regs\n");
-		return PTR_ERR(phy->port_base);
-	}
-
-	phy->regmap = devm_regmap_init_mmio(phy->dev, phy->port_base,
-					    &mt7621_pci_phy_regmap_config);
-	if (IS_ERR(phy->regmap))
-		return PTR_ERR(phy->regmap);
-
-	phy->phy = devm_phy_create(dev, dev->of_node, &mt7621_pci_phy_ops);
-	if (IS_ERR(phy)) {
-		dev_err(dev, "failed to create phy\n");
-		return PTR_ERR(phy);
-	}
-
-	phy_set_drvdata(phy->phy, phy);
-
-	provider = devm_of_phy_provider_register(dev, mt7621_pcie_phy_of_xlate);
-
-	return PTR_ERR_OR_ZERO(provider);
-}
-
-static const struct of_device_id mt7621_pci_phy_ids[] = {
-	{ .compatible = "mediatek,mt7621-pci-phy" },
-	{},
-};
-MODULE_DEVICE_TABLE(of, mt7621_pci_ids);
-
-static struct platform_driver mt7621_pci_phy_driver = {
-	.probe = mt7621_pci_phy_probe,
-	.driver = {
-		.name = "mt7621-pci-phy",
-		.of_match_table = of_match_ptr(mt7621_pci_phy_ids),
-	},
-};
-
-builtin_platform_driver(mt7621_pci_phy_driver);
-
-MODULE_AUTHOR("Sergio Paracuellos <sergio.paracuellos@gmail.com>");
-MODULE_DESCRIPTION("MediaTek MT7621 PCIe PHY driver");
-MODULE_LICENSE("GPL v2");
-- 
2.25.1

