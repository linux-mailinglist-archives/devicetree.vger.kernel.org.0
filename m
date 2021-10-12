Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1701742AC18
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 20:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234368AbhJLSh7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 14:37:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234343AbhJLSh5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 14:37:57 -0400
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E467BC061767
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 11:35:22 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:9c93:91ff:d58:ecfb])
        by xavier.telenet-ops.be with bizsmtp
        id 56ZX260030KW32a016ZX0W; Tue, 12 Oct 2021 20:33:33 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1maMag-004RTp-NW; Tue, 12 Oct 2021 20:33:30 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1maMaf-002j5h-O5; Tue, 12 Oct 2021 20:33:29 +0200
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Miguel Ojeda <ojeda@kernel.org>
Cc:     Robin van der Gracht <robin@protonic.nl>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Burton <paulburton@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Pavel Machek <pavel@ucw.cz>, Marek Behun <marek.behun@nic.cz>,
        devicetree@vger.kernel.org, linux-leds@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v7 05/21] auxdisplay: img-ascii-lcd: Convert device attribute to sysfs_emit()
Date:   Tue, 12 Oct 2021 20:33:11 +0200
Message-Id: <20211012183327.649865-6-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012183327.649865-1-geert@linux-m68k.org>
References: <20211012183327.649865-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the "message" device attribute from sprintf() to sysfs_emit(),
as the latter is aware of the PAGE_SIZE buffer.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
v7:
  - No changes,

v6:
  - No changes,

v5:
  - No changes,

v4:
  - No changes,

v3:
  - No changes,

v2:
  - No changes.
---
 drivers/auxdisplay/img-ascii-lcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/auxdisplay/img-ascii-lcd.c b/drivers/auxdisplay/img-ascii-lcd.c
index 2b6e41ec57544faa..2b5640b638900a90 100644
--- a/drivers/auxdisplay/img-ascii-lcd.c
+++ b/drivers/auxdisplay/img-ascii-lcd.c
@@ -326,7 +326,7 @@ static ssize_t message_show(struct device *dev, struct device_attribute *attr,
 {
 	struct img_ascii_lcd_ctx *ctx = dev_get_drvdata(dev);
 
-	return sprintf(buf, "%s\n", ctx->message);
+	return sysfs_emit(buf, "%s\n", ctx->message);
 }
 
 /**
-- 
2.25.1

