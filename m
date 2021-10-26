Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EA6A43AF31
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 11:37:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232684AbhJZJjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 05:39:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230451AbhJZJjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 05:39:49 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89321C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 02:37:25 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id p16so18886815lfa.2
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 02:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vKFWLSRl10tgQ1BAA/camWrcHhGVWkCvOyqQZ1aZWm4=;
        b=ZXK1k4pBYcr5jb/Oai+oGIp59SN838ETCgJhW3Y5443AzH2W7qh+r6OEzbV1mpp0Fl
         c17lqXzoULzIrV6mvN+acqvEmicr+fsnSErFYlK6f402aE0ptRyjibv5CXx7COz6YZHA
         0XL5vnsIkF2RehilDw4qzvObqhafZZdgC5SaiNjfeIHA0OpCsUWxJ7l/lqesuZCGLWei
         tS6vHm/FfL1u+v+aLrFNyCgtdiIFFUOErn5utAhXLSiV9P+n42ppsFqvdzSKf8vpH7Ye
         r6v4QBMPp0ilh87yLy7MCNLXz3LmhPQ/01bOpcHNMN3Wkfdt/wBEAUAnwsY+WVz4aQaH
         qTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vKFWLSRl10tgQ1BAA/camWrcHhGVWkCvOyqQZ1aZWm4=;
        b=aW624/SzdqLbA3dFAFUW87HlRjQaw+GAgK5obkqRYD1+52ut4c3l3WkpFocLI64FpW
         nrp1M191tT9fo+WKetuojBz514+xSGx/8GdKdYQGPlMwQZPoREg25yYik5kPC8ZKQXe/
         wAVJaBvpSMNPyEGR+msUxN/RaSfE96PJZLR0WXNdWNl3RtGIvVbimiqRlZoTk7RGkCDQ
         qJB+tukHl3tDjFzF5OXUCXCTM41IAv2cgETn97P8L2TO9zGLTawwwKk53RA/B1l8Cji2
         keGIvYuH9h0pZHHW44qfnvzmmM5PXA+BldZlxix81KIBFD1hvnC+3ahho2iTTsjsJY/V
         +5cA==
X-Gm-Message-State: AOAM532EDmULW/S4f/lKlLnq6G1WPR64iHYYZTlckGkw46k1vdUVDtG4
        o2NcVsNsP/E38x78DtgXg3E=
X-Google-Smtp-Source: ABdhPJxhtvBSZIiI+yxopG7DgTgfVaLQi15+YGbGH/tCbj/A+fNOqUTIW8/Y54zRFNqjF0L7oiz4gA==
X-Received: by 2002:a05:6512:4016:: with SMTP id br22mr14257700lfb.132.1635241043910;
        Tue, 26 Oct 2021 02:37:23 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o9sm600438lfk.292.2021.10.26.02.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 02:37:23 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH RESEND] phy: bcm-ns-usb2: support updated DT binding with PHY reg space
Date:   Tue, 26 Oct 2021 11:37:16 +0200
Message-Id: <20211026093716.5567-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Updated DT binding maps just a PHY's register space instead of the whole
DMU block. Accessing a common CRU reg is handled using syscon &
regmap.

The old binding has been deprecated and remains supported as a fallback
method.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This patch has been previously sent in a patchset touching two
subsystems: PHY and MFD. For that reason probably it has been missed.

This adds support for binding added in the commit 55b9b741712d
("dt-bindings: phy: brcm,ns-usb2-phy: bind just a PHY block") (can be
found in linux-phy.git).
---
 drivers/phy/broadcom/phy-bcm-ns-usb2.c | 52 +++++++++++++++++++++-----
 1 file changed, 43 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb2.c b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
index 4b015b8a71c3..98d32729a45d 100644
--- a/drivers/phy/broadcom/phy-bcm-ns-usb2.c
+++ b/drivers/phy/broadcom/phy-bcm-ns-usb2.c
@@ -9,17 +9,23 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/slab.h>
 
 struct bcm_ns_usb2 {
 	struct device *dev;
 	struct clk *ref_clk;
 	struct phy *phy;
+	struct regmap *clkset;
+	void __iomem *base;
+
+	/* Deprecated binding */
 	void __iomem *dmu;
 };
 
@@ -27,7 +33,6 @@ static int bcm_ns_usb2_phy_init(struct phy *phy)
 {
 	struct bcm_ns_usb2 *usb2 = phy_get_drvdata(phy);
 	struct device *dev = usb2->dev;
-	void __iomem *dmu = usb2->dmu;
 	u32 ref_clk_rate, usb2ctl, usb_pll_ndiv, usb_pll_pdiv;
 	int err = 0;
 
@@ -44,7 +49,10 @@ static int bcm_ns_usb2_phy_init(struct phy *phy)
 		goto err_clk_off;
 	}
 
-	usb2ctl = readl(dmu + BCMA_DMU_CRU_USB2_CONTROL);
+	if (usb2->base)
+		usb2ctl = readl(usb2->base);
+	else
+		usb2ctl = readl(usb2->dmu + BCMA_DMU_CRU_USB2_CONTROL);
 
 	if (usb2ctl & BCMA_DMU_CRU_USB2_CONTROL_USB_PLL_PDIV_MASK) {
 		usb_pll_pdiv = usb2ctl;
@@ -58,15 +66,24 @@ static int bcm_ns_usb2_phy_init(struct phy *phy)
 	usb_pll_ndiv = (1920000000 * usb_pll_pdiv) / ref_clk_rate;
 
 	/* Unlock DMU PLL settings with some magic value */
-	writel(0x0000ea68, dmu + BCMA_DMU_CRU_CLKSET_KEY);
+	if (usb2->clkset)
+		regmap_write(usb2->clkset, 0, 0x0000ea68);
+	else
+		writel(0x0000ea68, usb2->dmu + BCMA_DMU_CRU_CLKSET_KEY);
 
 	/* Write USB 2.0 PLL control setting */
 	usb2ctl &= ~BCMA_DMU_CRU_USB2_CONTROL_USB_PLL_NDIV_MASK;
 	usb2ctl |= usb_pll_ndiv << BCMA_DMU_CRU_USB2_CONTROL_USB_PLL_NDIV_SHIFT;
-	writel(usb2ctl, dmu + BCMA_DMU_CRU_USB2_CONTROL);
+	if (usb2->base)
+		writel(usb2ctl, usb2->base);
+	else
+		writel(usb2ctl, usb2->dmu + BCMA_DMU_CRU_USB2_CONTROL);
 
 	/* Lock DMU PLL settings */
-	writel(0x00000000, dmu + BCMA_DMU_CRU_CLKSET_KEY);
+	if (usb2->clkset)
+		regmap_write(usb2->clkset, 0, 0x00000000);
+	else
+		writel(0x00000000, usb2->dmu + BCMA_DMU_CRU_CLKSET_KEY);
 
 err_clk_off:
 	clk_disable_unprepare(usb2->ref_clk);
@@ -90,10 +107,27 @@ static int bcm_ns_usb2_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	usb2->dev = dev;
 
-	usb2->dmu = devm_platform_ioremap_resource_byname(pdev, "dmu");
-	if (IS_ERR(usb2->dmu)) {
-		dev_err(dev, "Failed to map DMU regs\n");
-		return PTR_ERR(usb2->dmu);
+	if (of_find_property(dev->of_node, "brcm,syscon-clkset", NULL)) {
+		usb2->base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(usb2->base)) {
+			dev_err(dev, "Failed to map control reg\n");
+			return PTR_ERR(usb2->base);
+		}
+
+		usb2->clkset = syscon_regmap_lookup_by_phandle(dev->of_node,
+							       "brcm,syscon-clkset");
+		if (IS_ERR(usb2->clkset)) {
+			dev_err(dev, "Failed to lookup clkset regmap\n");
+			return PTR_ERR(usb2->clkset);
+		}
+	} else {
+		usb2->dmu = devm_platform_ioremap_resource_byname(pdev, "dmu");
+		if (IS_ERR(usb2->dmu)) {
+			dev_err(dev, "Failed to map DMU regs\n");
+			return PTR_ERR(usb2->dmu);
+		}
+
+		dev_warn(dev, "using deprecated DT binding\n");
 	}
 
 	usb2->ref_clk = devm_clk_get(dev, "phy-ref-clk");
-- 
2.31.1

