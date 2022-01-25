Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6E3349BDAC
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 22:05:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232871AbiAYVFp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 16:05:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232922AbiAYVFo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 16:05:44 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27784C061747
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 13:05:44 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id v13so22137648wrv.10
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 13:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jEGTwOTFazzFopYdwsjasSMs2TPOCsagXB4GLqvfljg=;
        b=QpYfzczbBNquLA8XZcf2BgM2f8cTh8rvgYszpa/SnQF0TVCIDCkb3TpEy7LPrJkTi9
         DHL6v4c/QVxERmf8g8k+VjcGLCLKdZ9xDVN6V5hjkOoH8UwmDp5rXLHb6HgfycdIQdkW
         oip4zBgaNrVaXTetar96dGlt4kxszqcNKb1dxgnPWJwU/E2xx0228JAObDpyxbnS5466
         w84p6MLbh+XLIPG51bEJQUoyVKoLsclCoupq1b3XqVvJuALKA+5LEEyAxTA38xtYXuuw
         dGP5JMmtfoM40yH458XuKlIW6rBO/vUOnLz4Ru24OAAyfI9Z3amxuWMVDmY/+oUgZhEh
         4onQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jEGTwOTFazzFopYdwsjasSMs2TPOCsagXB4GLqvfljg=;
        b=QDxSOIn5w8jyb45AyKWBjYHwjsvojIHW0zewoUo+KLiCU4qm18RFAsj+hXTgfOqEeL
         mYlbOk7Poy+N42eCQb3zZprqnTyyB49W4678EFzTeXE1T2pUQxBuDlviwhWAU2qN+Z3O
         A9skj1M5knECU2y4PEc4CTruhkdRVjRkH438Ceg7HNY+XW5YWJfQzCJU9PZKugaXAMgl
         Nei+WhdY6YlINM17+gMf0aEdVuIhhfuQTzShVxVnSRM5DJx/aZctwh3BAKnwmuMi4Cig
         Tzh1QbqOPQm2za6vQfibNWvZZV5N1y42yse32Plz3OQMP5z0tXWBSE4rZBgvmQz4RLo6
         wxVw==
X-Gm-Message-State: AOAM532z35EMjzjtJ0ROPtX986FX0z0BGI+X7rNBXe3rSpfwXpHkLOya
        uWAUOqeHwPGEXr+xrzZbBRPp7w==
X-Google-Smtp-Source: ABdhPJxpd2Oy5zDR55D4p7MVX1/ub9Estu7VolmuKLbwZDdBW4kgP/pBBpByn8un8Kg/h5XCBgIFVQ==
X-Received: by 2002:a5d:5043:: with SMTP id h3mr19447429wrt.280.1643144742766;
        Tue, 25 Jan 2022 13:05:42 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id o10sm4258214wri.19.2022.01.25.13.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 13:05:42 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     pavel@ucw.cz, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2] leds: remove ide-disk trigger
Date:   Tue, 25 Jan 2022 21:05:37 +0000
Message-Id: <20220125210537.54036-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No user of ide-disk remains, so remove this deprecated trigger.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Changes since v1:
- remove also DEFINE_LED_TRIGGER(ledtrig_ide)

 Documentation/devicetree/bindings/leds/common.yaml | 3 ---
 drivers/leds/trigger/ledtrig-disk.c                | 4 ----
 2 files changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 37f8a6fd6518..c89f430df4a0 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -91,9 +91,6 @@ properties:
       - disk-activity
       - disk-read
       - disk-write
-        # LED indicates IDE disk activity (deprecated), in new implementations
-        # use "disk-activity"
-      - ide-disk
         # LED flashes at a fixed, configurable rate
       - timer
         # LED alters the brightness for the specified duration with one software
diff --git a/drivers/leds/trigger/ledtrig-disk.c b/drivers/leds/trigger/ledtrig-disk.c
index 0741910785bb..0b7dfbd04273 100644
--- a/drivers/leds/trigger/ledtrig-disk.c
+++ b/drivers/leds/trigger/ledtrig-disk.c
@@ -16,7 +16,6 @@
 DEFINE_LED_TRIGGER(ledtrig_disk);
 DEFINE_LED_TRIGGER(ledtrig_disk_read);
 DEFINE_LED_TRIGGER(ledtrig_disk_write);
-DEFINE_LED_TRIGGER(ledtrig_ide);
 
 void ledtrig_disk_activity(bool write)
 {
@@ -24,8 +23,6 @@ void ledtrig_disk_activity(bool write)
 
 	led_trigger_blink_oneshot(ledtrig_disk,
 				  &blink_delay, &blink_delay, 0);
-	led_trigger_blink_oneshot(ledtrig_ide,
-				  &blink_delay, &blink_delay, 0);
 	if (write)
 		led_trigger_blink_oneshot(ledtrig_disk_write,
 					  &blink_delay, &blink_delay, 0);
@@ -40,7 +37,6 @@ static int __init ledtrig_disk_init(void)
 	led_trigger_register_simple("disk-activity", &ledtrig_disk);
 	led_trigger_register_simple("disk-read", &ledtrig_disk_read);
 	led_trigger_register_simple("disk-write", &ledtrig_disk_write);
-	led_trigger_register_simple("ide-disk", &ledtrig_ide);
 
 	return 0;
 }
-- 
2.34.1

