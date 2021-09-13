Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 303034085F9
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 10:00:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237775AbhIMIBz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 04:01:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237796AbhIMIBz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 04:01:55 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8491C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:39 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id g1so7758111lfj.12
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 01:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8Y5f7mSG/Z4kpKHyPCOHxfNeioXgmOEZEZUSqKOsaYE=;
        b=MOvB4u7DxrRG7GkuoSJRj4wpNAKnTOeqOwRc//qPvxb/IRzRrmzB9442GS8q32GPQ7
         rUyffWyQHt6jhfwciVi5YscsZFFJExuTzSqHxox7Tzznwb/0JZLiowNuMHuoOP21CvTy
         TUVWzwfpgnx5ztrve/gNVenPJdy1ebq8yLWbdNuaR08XmzdLaDC4GxrItTMvHbrsEEU7
         +6wAV4ab/J2HfYEZUHn9ybpb9K4gxbJyjomeCjN48851sT5HhgA/lEo23gT7+bVSX7uQ
         UOno0QDQUB/CbylaiaLwaPwUid6uwaewz5GcFlZ+vhxORjiudNO/QVmP++lMn1vffxwW
         sMtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8Y5f7mSG/Z4kpKHyPCOHxfNeioXgmOEZEZUSqKOsaYE=;
        b=ttDllUdfRbBk0YOxboZgr637st08yHYGXrFi39xDLz5mK/ezNTMMu5EAi8dEo6ra7Y
         Puo2pkDlIKhSVgvjSghdoGIRaeMwo8JtODl3hVrwAajQtoFZCOfVPwMrwvf41WiX+5Zh
         TUPOIYZHKH8Q1zCBBVrZqwZigpE1YnzNB02w+yVdWU5kOduqLbWCGnBEG4KvWGW+zDvg
         Xls3BIXt3iuQP+y7fR6k9tws3L4MoblFu6g9rLLmq8ZLhZk+NTDDiXb/7LjREJy/ruAE
         QnCAQlCMbE7fedX7x0Aoc7VbC7xnyk+AlHv+Mtp0EYbsMLgAqDRGydWazYQtMEVzKNP6
         2TRA==
X-Gm-Message-State: AOAM530DpAO0iIhvUZBakfuCpYqrQprExnK7ZVOzU5P1ZMJFxssSP/Yc
        gIWCc/kqVvafuk9pg+fOiJ0=
X-Google-Smtp-Source: ABdhPJyPCwAiyRpWpSima2Twrhc/9WwN43NHYTDarTV3e5vdg9OWv7I4NVTpYnicJ9h8qzcGAzDEMg==
X-Received: by 2002:a05:6512:3c99:: with SMTP id h25mr7946722lfv.640.1631520038031;
        Mon, 13 Sep 2021 01:00:38 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id t13sm747059lff.46.2021.09.13.01.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 01:00:37 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 4/4] phy: bcm-ns-usb2: support updated DT binding with PHY reg space
Date:   Mon, 13 Sep 2021 10:00:24 +0200
Message-Id: <20210913080024.6951-4-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
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
2.26.2

