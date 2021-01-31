Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25930309F97
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 00:55:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbhAaXzP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 18:55:15 -0500
Received: from eu-shark2.inbox.eu ([195.216.236.82]:53892 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbhAaXzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jan 2021 18:55:07 -0500
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id 8AEB6455825;
        Mon,  1 Feb 2021 01:45:21 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1612136721; bh=saXZClH3bBueAJ08VV8oa600CvE1OgBd7t2cJ1O0HLQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=qcMTn67eqp8ZYHCM03MTRnybAiN1FsZgD7XIabl/NQITnOlVX+K07t+1b01TGjpip
         RbTwl99+A1FbZYksTvSZy6OwHuWjSiXBXbncOPiDptSDYIRsgG+wTqE67Nss0wyY8a
         KW96Q8GENqSuEOf6d9bYmfe5+dtRWvyW5NnTxibs=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 7546A4557E5;
        Mon,  1 Feb 2021 01:45:21 +0200 (EET)
Received: from localhost.localdomain (unknown [165.231.161.4])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id B9A6E1BE00BA;
        Mon,  1 Feb 2021 01:45:20 +0200 (EET)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Boris Lysov <arzamas-16@mail.ee>
Subject: [PATCH 2/3] watchdog: mtk_wdt: add support for 16-bit control registers
Date:   Mon,  1 Feb 2021 02:44:24 +0300
Message-Id: <20210131234425.9773-3-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210131234425.9773-1-arzamas-16@mail.ee>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: +d1m4f9SY16pi1ikXXndBBg2qStXWPGWher6j11F/g/3MCuNeEoFVBSznnAUPnG+og==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for 16-bit control registers.
Some old Mediatek SoCs such as mt6577 use 16-bit I/O operations
for controlling watchdog. This commit redefines read/write
functions and some values in mtk_wdt driver depending on the
16-bit register support flag in kernel configuration.
By default, driver still uses 32-bit values and I/O functions, so
currently supported devices are unaffected.

Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
---
 drivers/watchdog/Kconfig   |  9 +++++++++
 drivers/watchdog/mtk_wdt.c | 34 ++++++++++++++++++++++++----------
 2 files changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 7ff941e71b79..83a4b57ede3f 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -865,6 +865,15 @@ config MEDIATEK_WATCHDOG
 	  To compile this driver as a module, choose M here: the
 	  module will be called mtk_wdt.
 
+config MEDIATEK_WATCHDOG_16BIT
+	bool "Support 16-bit control registers"
+	depends on MEDIATEK_WATCHDOG=y
+	help
+	  Some Mediatek SoCs such as mt6577 have 16-bit registers for
+	  controlling watchdog. Newer SoCs usually use 32-bit read/write
+	  operations.
+	  If in doubt, say N.
+
 config DIGICOLOR_WATCHDOG
 	tristate "Conexant Digicolor SoCs watchdog support"
 	depends on ARCH_DIGICOLOR || COMPILE_TEST
diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
index d6a6393f609d..0ab3cbcf0d93 100644
--- a/drivers/watchdog/mtk_wdt.c
+++ b/drivers/watchdog/mtk_wdt.c
@@ -43,13 +43,27 @@
 #define WDT_MODE_IRQ_EN		(1 << 3)
 #define WDT_MODE_AUTO_START	(1 << 4)
 #define WDT_MODE_DUAL_EN	(1 << 6)
-#define WDT_MODE_KEY		0x22000000
 
 #define WDT_SWRST		0x14
 #define WDT_SWRST_KEY		0x1209
 
 #define WDT_SWSYSRST		0x18U
+
+#ifdef CONFIG_MEDIATEK_WATCHDOG_16BIT
+#define WDT_MODE_KEY		0x2200
+#define WDT_SWSYS_RST_KEY	0x8800
+#define mtk_wdt_read(a) readw(a)
+#define mtk_wdt_write(v, a) writew(v, a)
+#define mtk_wdt_ioread(a) ioread16(a)
+#define mtk_wdt_iowrite(v, a) iowrite16(v, a)
+#else
+#define WDT_MODE_KEY		0x22000000
 #define WDT_SWSYS_RST_KEY	0x88000000
+#define mtk_wdt_read(a) readl(a)
+#define mtk_wdt_write(v, a) writel(v, a)
+#define mtk_wdt_ioread(a) ioread32(a)
+#define mtk_wdt_iowrite(v, a) iowrite32(v, a)
+#endif
 
 #define DRV_NAME		"mtk-wdt"
 #define DRV_VERSION		"1.0"
@@ -86,13 +100,13 @@ static int toprgu_reset_update(struct reset_controller_dev *rcdev,
 
 	spin_lock_irqsave(&data->lock, flags);
 
-	tmp = readl(data->wdt_base + WDT_SWSYSRST);
+	tmp = mtk_wdt_read(data->wdt_base + WDT_SWSYSRST);
 	if (assert)
 		tmp |= BIT(id);
 	else
 		tmp &= ~BIT(id);
 	tmp |= WDT_SWSYS_RST_KEY;
-	writel(tmp, data->wdt_base + WDT_SWSYSRST);
+	mtk_wdt_write(tmp, data->wdt_base + WDT_SWSYSRST);
 
 	spin_unlock_irqrestore(&data->lock, flags);
 
@@ -157,7 +171,7 @@ static int mtk_wdt_restart(struct watchdog_device *wdt_dev,
 	wdt_base = mtk_wdt->wdt_base;
 
 	while (1) {
-		writel(WDT_SWRST_KEY, wdt_base + WDT_SWRST);
+		mtk_wdt_write(WDT_SWRST_KEY, wdt_base + WDT_SWRST);
 		mdelay(5);
 	}
 
@@ -169,7 +183,7 @@ static int mtk_wdt_ping(struct watchdog_device *wdt_dev)
 	struct mtk_wdt_dev *mtk_wdt = watchdog_get_drvdata(wdt_dev);
 	void __iomem *wdt_base = mtk_wdt->wdt_base;
 
-	iowrite32(WDT_RST_RELOAD, wdt_base + WDT_RST);
+	mtk_wdt_iowrite(WDT_RST_RELOAD, wdt_base + WDT_RST);
 
 	return 0;
 }
@@ -188,7 +202,7 @@ static int mtk_wdt_set_timeout(struct watchdog_device *wdt_dev,
 	 * The clock has 32 KHz
 	 */
 	reg = WDT_LENGTH_TIMEOUT(timeout << 6) | WDT_LENGTH_KEY;
-	iowrite32(reg, wdt_base + WDT_LENGTH);
+	mtk_wdt_iowrite(reg, wdt_base + WDT_LENGTH);
 
 	mtk_wdt_ping(wdt_dev);
 
@@ -201,10 +215,10 @@ static int mtk_wdt_stop(struct watchdog_device *wdt_dev)
 	void __iomem *wdt_base = mtk_wdt->wdt_base;
 	u32 reg;
 
-	reg = readl(wdt_base + WDT_MODE);
+	reg = mtk_wdt_read(wdt_base + WDT_MODE);
 	reg &= ~WDT_MODE_EN;
 	reg |= WDT_MODE_KEY;
-	iowrite32(reg, wdt_base + WDT_MODE);
+	mtk_wdt_iowrite(reg, wdt_base + WDT_MODE);
 
 	return 0;
 }
@@ -220,10 +234,10 @@ static int mtk_wdt_start(struct watchdog_device *wdt_dev)
 	if (ret < 0)
 		return ret;
 
-	reg = ioread32(wdt_base + WDT_MODE);
+	reg = mtk_wdt_ioread(wdt_base + WDT_MODE);
 	reg &= ~(WDT_MODE_IRQ_EN | WDT_MODE_DUAL_EN);
 	reg |= (WDT_MODE_EN | WDT_MODE_KEY);
-	iowrite32(reg, wdt_base + WDT_MODE);
+	mtk_wdt_iowrite(reg, wdt_base + WDT_MODE);
 
 	return 0;
 }
-- 
2.20.1

