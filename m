Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6BD6309F98
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 00:55:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbhAaXzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 18:55:10 -0500
Received: from eu-shark2.inbox.eu ([195.216.236.82]:53898 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbhAaXzG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jan 2021 18:55:06 -0500
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id E2F87455893;
        Mon,  1 Feb 2021 01:45:25 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1612136725; bh=ziNv5yTQEvgB8g+LyxeI2jLANRQPqirJDaJkZ244bEY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=jkb+Au6QGgbGi/uX3WrJXQjXueoz1/n4WoHitYCS5WbkJ8juZAGvbpf3SxJ9zkFO0
         3xdNtISuxS5WMU45keLc2+gtplfiSQ4aMK8JnuM8ofXYNucq+hRPJzI7NUm/9y5r0K
         fAh7zzW+JiX2Uv4voNKNomANYXUsBgk4L91nAv+Y=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id C40CF455847;
        Mon,  1 Feb 2021 01:45:25 +0200 (EET)
Received: from localhost.localdomain (unknown [165.231.161.4])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 1ABDD1BE00BA;
        Mon,  1 Feb 2021 01:45:25 +0200 (EET)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Boris Lysov <arzamas-16@mail.ee>
Subject: [PATCH 3/3] watchdog: mtk_wdt: declare compatibility with mt6577
Date:   Mon,  1 Feb 2021 02:44:25 +0300
Message-Id: <20210131234425.9773-4-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210131234425.9773-1-arzamas-16@mail.ee>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: 6N1mkpY3ejOljFu/QXjfGwcxrjRNQJ6b9qflkAE76Hb7NCeCfEAJVBS0gR8FQAnNog==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Support binding the mt6577 watchdog from OF.

Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
---
 drivers/watchdog/mtk_wdt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
index 0ab3cbcf0d93..a6abb4e12fce 100644
--- a/drivers/watchdog/mtk_wdt.c
+++ b/drivers/watchdog/mtk_wdt.c
@@ -334,6 +334,7 @@ static int mtk_wdt_resume(struct device *dev)
 
 static const struct of_device_id mtk_wdt_dt_ids[] = {
 	{ .compatible = "mediatek,mt2712-wdt", .data = &mt2712_data },
+	{ .compatible = "mediatek,mt6577-wdt" },
 	{ .compatible = "mediatek,mt6589-wdt" },
 	{ .compatible = "mediatek,mt8183-wdt", .data = &mt8183_data },
 	{ /* sentinel */ }
-- 
2.20.1

