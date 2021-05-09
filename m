Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C89903778AC
	for <lists+devicetree@lfdr.de>; Sun,  9 May 2021 23:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229946AbhEIV16 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 17:27:58 -0400
Received: from eu-shark2.inbox.eu ([195.216.236.82]:41322 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229955AbhEIV14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 May 2021 17:27:56 -0400
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id 6C0FC1E00597;
        Mon, 10 May 2021 00:17:10 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1620595030; bh=HJPhtOkkEkTSWC3HD4086A1WQ21l3+OCYoakmAf6iAI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=et9XNSMjHgvv9aay7p2ZzWW9OREmJBN0wXu1aV8IsemWlE5Bu7BMIJJrYMarNLzQL
         yfQdGWk5RRjXEPpmsxXCUALcQ/3CyV7KhVLWhygEz2QLSO05NAerfhhIJ+q1zCrLfS
         b8tSzcoW1FN1JFJ9BnJ72HPkM9q/EXgoMI8t0BPY=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 5D0361E00594;
        Mon, 10 May 2021 00:17:10 +0300 (EEST)
Received: from localhost.localdomain (unknown [196.196.216.231])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 9E7F91BE009C;
        Mon, 10 May 2021 00:17:09 +0300 (EEST)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH v2 3/3] watchdog: mtk_wdt: add support for mt6577
Date:   Mon, 10 May 2021 00:17:02 +0300
Message-Id: <20210509211702.549-4-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210509211702.549-1-arzamas-16@mail.ee>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210509211702.549-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: +dBm1NUOBk3XhyvUXxmqCAcypixLVOnh/+Smsm5UmWeDUSOFd04TURmxg253S2K6vT4X
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for watchdog used by mt6577 and related SoCs such
as mt6575 and mt8317. These watchdogs are known for having shifted WDT_MODE
and SWSYSRST registers and using different SWSYSRST_KEY value.

Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
---
 drivers/watchdog/mtk_wdt.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
index 9d3091b12c06..830113843ce9 100644
--- a/drivers/watchdog/mtk_wdt.c
+++ b/drivers/watchdog/mtk_wdt.c
@@ -54,6 +54,10 @@
 #define MT2712_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
 #define MT2712_SWSYSRST_KEY		0x88
 
+#define MT6577_WDT_MODE_KEY_SHIFT	8		// unlock_key [15:8]
+#define MT6577_SWSYSRST_KEY_SHIFT	8		// unlock_key [15:8]
+#define MT6577_SWSYSRST_KEY		0x15
+
 #define MT6589_WDT_MODE_KEY_SHIFT	24		// unlock_key [31:24]
 #define MT6589_SWSYSRST_KEY_SHIFT	24		// unlock_key [31:24]
 #define MT6589_SWSYSRST_KEY		0x88
@@ -94,6 +98,13 @@ static const struct mtk_wdt_data mt2712_data = {
 	.wdt_swsys_rst_key =		MT2712_SWSYSRST_KEY,
 };
 
+static const struct mtk_wdt_data mt6577_data = {
+	.toprgu_sw_rst_num =		-1,
+	.wdt_mode_key_shift =		MT6577_WDT_MODE_KEY_SHIFT,
+	.wdt_swsys_rst_key_shift =	MT6577_SWSYSRST_KEY_SHIFT,
+	.wdt_swsys_rst_key =		MT6577_SWSYSRST_KEY,
+};
+
 static const struct mtk_wdt_data mt6589_data = {
 	.toprgu_sw_rst_num =		-1,
 	.wdt_mode_key_shift =		MT6589_WDT_MODE_KEY_SHIFT,
@@ -376,6 +387,7 @@ static int mtk_wdt_resume(struct device *dev)
 
 static const struct of_device_id mtk_wdt_dt_ids[] = {
 	{ .compatible = "mediatek,mt2712-wdt", .data = &mt2712_data },
+	{ .compatible = "mediatek,mt6577-wdt", .data = &mt6577_data },
 	{ .compatible = "mediatek,mt6589-wdt", .data = &mt6589_data },
 	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
 	{ .compatible = "mediatek,mt8192-wdt", .data = &mt8192_data },
-- 
2.20.1

