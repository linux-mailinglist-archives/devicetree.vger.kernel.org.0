Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A625F37F12E
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 04:13:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230009AbhEMCPB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 22:15:01 -0400
Received: from eu-shark1.inbox.eu ([195.216.236.81]:46290 "EHLO
        eu-shark1.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbhEMCPA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 22:15:00 -0400
Received: from eu-shark1.inbox.eu (localhost [127.0.0.1])
        by eu-shark1-out.inbox.eu (Postfix) with ESMTP id 3A9186C00896;
        Thu, 13 May 2021 05:13:49 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1620872029; bh=3wLB08fq9NSSwxvzfBo2mqWPmaGRQULHTC2u8gKK8Eg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=pmktNKL01jMtzuePOktWB1BcfY82WqnVtd/ygar12/pYAXLrBy7HD2jAcupwTw75N
         +5LSTZXZdZ1jmgrnauidmCC1/PWqP2FPGfTZc6V3VdTQcfnKs8Gs6TROFPeYz1QaqW
         aMELRr8KgaraRvKEvMo+ZA1DtcJUm4aRYRiuk65A=
Received: from localhost (localhost [127.0.0.1])
        by eu-shark1-in.inbox.eu (Postfix) with ESMTP id 21A8F6C00889;
        Thu, 13 May 2021 05:13:49 +0300 (EEST)
Received: from eu-shark1.inbox.eu ([127.0.0.1])
        by localhost (eu-shark1.inbox.eu [127.0.0.1]) (spamfilter, port 35)
        with ESMTP id W5pSN36srbjt; Thu, 13 May 2021 05:13:48 +0300 (EEST)
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark1-in.inbox.eu (Postfix) with ESMTP id A56EE6C00896;
        Thu, 13 May 2021 05:13:48 +0300 (EEST)
Received: from localhost.localdomain (unknown [134.19.185.34])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 4D98E1BE00D1;
        Thu, 13 May 2021 04:35:20 +0300 (EEST)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH v3 1/3] watchdog: mtk_wdt: Refactor code to support more SoCs
Date:   Thu, 13 May 2021 04:35:13 +0300
Message-Id: <20210513013515.31329-2-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210513013515.31329-1-arzamas-16@mail.ee>
References: <20210513013515.31329-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: 6NpmlY9HHDysjlqlQGetewt38GpVJY3o+uS+zhxQgnryNDCHelRvIx2ygR8FQALEog==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch makes some constants SoC-dependent to support more watchdogs
in the future. It adds shifts of WDT_MODE_KEY and SWSYSRST_KEY to
mtk_wdt_data struct. This is done to bring support for various Mediatek
watchdogs which use same register structure but slightly different field
offsets in the UNLOCK_KEY registers. For example, mt6577 watchdog has
WDT_MODE_KEY and SWSYSRST_KEY at [15:8] instead of currently (and only)
supported [31:24].
Moreover, this patch adds SWSYSRST_KEY value to mtk_wdt_data because this
value also depends on specific SoC watchdog, for example mt6577 uses 0x15
instead of 0x88.

Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
---
Changes since v2 [3]:
- rename the newly introduced structure element ('data' -> 'config') to
  avoid changing the names of already existing variables; suggested [4]
  by Guenter Roeck.

Changes since v1 [1]:
- a complete rewrite to get rid of the configuration flags which made
  the watchdog not support other SoCs; suggested [2] by Guenter Roeck.

[1] https://lore.kernel.org/linux-mediatek/20210131234425.9773-3-arzamas-16@mail.ee/
[2] https://lore.kernel.org/linux-mediatek/050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net/
[3] https://lore.kernel.org/linux-mediatek/20210509211702.549-2-arzamas-16@mail.ee/
[4] https://lore.kernel.org/linux-mediatek/efdce3a5-e5b4-19a8-35f1-8a536220bb3f@roeck-us.net/

 drivers/watchdog/mtk_wdt.c | 66 ++++++++++++++++++++++++++++++--------
 1 file changed, 52 insertions(+), 14 deletions(-)

diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
index 97ca993bd009..0878fa33dffe 100644
--- a/drivers/watchdog/mtk_wdt.c
+++ b/drivers/watchdog/mtk_wdt.c
@@ -44,13 +44,27 @@
 #define WDT_MODE_IRQ_EN		(1 << 3)
 #define WDT_MODE_AUTO_START	(1 << 4)
 #define WDT_MODE_DUAL_EN	(1 << 6)
-#define WDT_MODE_KEY		0x22000000
+#define WDT_MODE_KEY		0x22
 
 #define WDT_SWRST		0x14
 #define WDT_SWRST_KEY		0x1209
-
 #define WDT_SWSYSRST		0x18U
-#define WDT_SWSYS_RST_KEY	0x88000000
+
+#define MT2712_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT2712_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT2712_SWSYSRST_KEY		0x88
+
+#define MT6589_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT6589_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT6589_SWSYSRST_KEY		0x88
+
+#define MT8183_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT8183_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT8183_SWSYSRST_KEY		0x88
+
+#define MT8192_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT8192_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
+#define MT8192_SWSYSRST_KEY		0x88
 
 #define DRV_NAME		"mtk-wdt"
 #define DRV_VERSION		"1.0"
@@ -60,6 +74,7 @@ static unsigned int timeout;
 
 struct mtk_wdt_dev {
 	struct watchdog_device wdt_dev;
+	const struct mtk_wdt_data *config;
 	void __iomem *wdt_base;
 	spinlock_t lock; /* protects WDT_SWSYSRST reg */
 	struct reset_controller_dev rcdev;
@@ -67,18 +82,37 @@ struct mtk_wdt_dev {
 
 struct mtk_wdt_data {
 	int toprgu_sw_rst_num;
+	u8 wdt_mode_key_shift;
+	u8 wdt_swsys_rst_key;
+	u8 wdt_swsys_rst_key_shift;
 };
 
 static const struct mtk_wdt_data mt2712_data = {
-	.toprgu_sw_rst_num = MT2712_TOPRGU_SW_RST_NUM,
+	.toprgu_sw_rst_num =		MT2712_TOPRGU_SW_RST_NUM,
+	.wdt_mode_key_shift =		MT2712_WDT_MODE_KEY_SHIFT,
+	.wdt_swsys_rst_key_shift =	MT2712_SWSYSRST_KEY_SHIFT,
+	.wdt_swsys_rst_key =		MT2712_SWSYSRST_KEY,
+};
+
+static const struct mtk_wdt_data mt6589_data = {
+	.toprgu_sw_rst_num =		-1,
+	.wdt_mode_key_shift =		MT6589_WDT_MODE_KEY_SHIFT,
+	.wdt_swsys_rst_key_shift =	MT6589_SWSYSRST_KEY_SHIFT,
+	.wdt_swsys_rst_key =		MT6589_SWSYSRST_KEY,
 };
 
 static const struct mtk_wdt_data mt8183_data = {
-	.toprgu_sw_rst_num = MT8183_TOPRGU_SW_RST_NUM,
+	.toprgu_sw_rst_num =		MT8183_TOPRGU_SW_RST_NUM,
+	.wdt_mode_key_shift =		MT8183_WDT_MODE_KEY_SHIFT,
+	.wdt_swsys_rst_key_shift =	MT8183_SWSYSRST_KEY_SHIFT,
+	.wdt_swsys_rst_key =		MT8183_SWSYSRST_KEY,
 };
 
 static const struct mtk_wdt_data mt8192_data = {
-	.toprgu_sw_rst_num = MT8192_TOPRGU_SW_RST_NUM,
+	.toprgu_sw_rst_num =		MT8192_TOPRGU_SW_RST_NUM,
+	.wdt_mode_key_shift =		MT8192_WDT_MODE_KEY_SHIFT,
+	.wdt_swsys_rst_key_shift =	MT8192_SWSYSRST_KEY_SHIFT,
+	.wdt_swsys_rst_key =		MT8192_SWSYSRST_KEY,
 };
 
 static int toprgu_reset_update(struct reset_controller_dev *rcdev,
@@ -96,7 +130,7 @@ static int toprgu_reset_update(struct reset_controller_dev *rcdev,
 		tmp |= BIT(id);
 	else
 		tmp &= ~BIT(id);
-	tmp |= WDT_SWSYS_RST_KEY;
+	tmp |= data->config->wdt_swsys_rst_key << data->config->wdt_swsys_rst_key_shift;
 	writel(tmp, data->wdt_base + WDT_SWSYSRST);
 
 	spin_unlock_irqrestore(&data->lock, flags);
@@ -221,7 +255,7 @@ static int mtk_wdt_stop(struct watchdog_device *wdt_dev)
 
 	reg = readl(wdt_base + WDT_MODE);
 	reg &= ~WDT_MODE_EN;
-	reg |= WDT_MODE_KEY;
+	reg |= WDT_MODE_KEY << mtk_wdt->config->wdt_mode_key_shift;
 	iowrite32(reg, wdt_base + WDT_MODE);
 
 	return 0;
@@ -240,7 +274,7 @@ static int mtk_wdt_start(struct watchdog_device *wdt_dev)
 
 	reg = ioread32(wdt_base + WDT_MODE);
 	reg &= ~(WDT_MODE_IRQ_EN | WDT_MODE_DUAL_EN);
-	reg |= (WDT_MODE_EN | WDT_MODE_KEY);
+	reg |= (WDT_MODE_EN | (WDT_MODE_KEY << mtk_wdt->config->wdt_mode_key_shift));
 	iowrite32(reg, wdt_base + WDT_MODE);
 
 	return 0;
@@ -266,7 +300,6 @@ static int mtk_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct mtk_wdt_dev *mtk_wdt;
-	const struct mtk_wdt_data *wdt_data;
 	int err;
 
 	mtk_wdt = devm_kzalloc(dev, sizeof(*mtk_wdt), GFP_KERNEL);
@@ -279,6 +312,12 @@ static int mtk_wdt_probe(struct platform_device *pdev)
 	if (IS_ERR(mtk_wdt->wdt_base))
 		return PTR_ERR(mtk_wdt->wdt_base);
 
+	mtk_wdt->config = of_device_get_match_data(dev);
+	if (!mtk_wdt->config) {
+		dev_err(dev, "watchdog data is not defined\n");
+		return -EINVAL;
+	}
+
 	mtk_wdt->wdt_dev.info = &mtk_wdt_info;
 	mtk_wdt->wdt_dev.ops = &mtk_wdt_ops;
 	mtk_wdt->wdt_dev.timeout = WDT_MAX_TIMEOUT;
@@ -302,10 +341,9 @@ static int mtk_wdt_probe(struct platform_device *pdev)
 	dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
 		 mtk_wdt->wdt_dev.timeout, nowayout);
 
-	wdt_data = of_device_get_match_data(dev);
-	if (wdt_data) {
+	if (mtk_wdt->config->toprgu_sw_rst_num > -1) {
 		err = toprgu_register_reset_controller(pdev,
-						       wdt_data->toprgu_sw_rst_num);
+						       mtk_wdt->config->toprgu_sw_rst_num);
 		if (err)
 			return err;
 	}
@@ -338,7 +376,7 @@ static int mtk_wdt_resume(struct device *dev)
 
 static const struct of_device_id mtk_wdt_dt_ids[] = {
 	{ .compatible = "mediatek,mt2712-wdt", .data = &mt2712_data },
-	{ .compatible = "mediatek,mt6589-wdt" },
+	{ .compatible = "mediatek,mt6589-wdt", .data = &mt6589_data },
 	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
 	{ .compatible = "mediatek,mt8192-wdt", .data = &mt8192_data },
 	{ /* sentinel */ }
-- 
2.20.1

