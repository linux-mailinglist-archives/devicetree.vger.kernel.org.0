Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33A28682EB6
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 15:03:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231376AbjAaODU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 09:03:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231617AbjAaODP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 09:03:15 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8995F65A3
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 06:03:13 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t7so5945157wrp.5
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 06:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lc8ed0h0ZvjQ5UirrcCDNDRepKtbVnO5U4g4adO99nk=;
        b=hWAOXV+eH0/DS4Hu76lBf7HOJPHyBrLevKwVWzylha4entBU1Yly4+uLlRKu05MBAz
         UYwDYw3EisDTl4Opu0YXG1f4BLhxYLOagWpcFbQsEe2E2QUDzXwIoQaQL5+BXAQtOtXb
         kzYzqe3xaU8zsFKoeZQ+N5HjRVMks5GK0X6YX1Qg/dMTwtlLUVnjC4QIrA5uBNL0qsMW
         BGsZLB9RGwdgnLQCOsFf8BAygt0Ojp28TqtZ3x0iRqB5JcLZtU37e4HOl2EV98DOYAZT
         S+LCcTEbUZyLrFOQ/NZePZZ63ucq8i5UN2YZzdlP3LizkIo7SO+HtqtgCBA9HdX/ySza
         ufOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lc8ed0h0ZvjQ5UirrcCDNDRepKtbVnO5U4g4adO99nk=;
        b=A6z2Rh83OzmaAmn6wM0FwKrJirYC7bougcQ6feWmFmpGpHRbJrPLS79mwd9wR9e0Lc
         3Tl922dtgUzHeTMTufvAu8i1e2lk8ci8qw+5ZTJHSWVF26vZVZZCU7nGSlp5GNqggQeT
         W7kaysG05LRnKTHoEytipavwO8qmvx2NMAo3Lgfml+kPUnoUAH8FkToJL1qKT0OE4XOx
         63CWnRlYj9aeqlkYsOa3bVVZT00MbIFRPBE2uj5AZyClsdzJQYsj5AKoMPJebmPLKIqb
         9w/I3NQOJcTZfGB4ZZ4o/tALptCUtzcRwMKT45Tl1C4Ir1Gmc5BIGbdLUGaqM4HKjge+
         xkcQ==
X-Gm-Message-State: AFqh2krqSam+l5TgQmwSCjBb8z1NwgPzz/ndIcxEaSVgS+xoVKYT8SUn
        bYGIQiwRcHtx0vLHP63eOLvBrw==
X-Google-Smtp-Source: AMrXdXv9M6VOOSiVMhMuDVUhPTRizSby4m22qg+uSqGL9zPq5nQ3Kv3RQkyMEqnq7/OxbkKiJufUMA==
X-Received: by 2002:adf:f0c1:0:b0:2bc:67d:c018 with SMTP id x1-20020adff0c1000000b002bc067dc018mr46749979wro.48.1675173792075;
        Tue, 31 Jan 2023 06:03:12 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z12-20020adff74c000000b00291f1a5ced6sm14950847wrp.53.2023.01.31.06.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Jan 2023 06:03:11 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     lee@kernel.org, linus.walleij@linaro.org, pavel@ucw.cz,
        robh+dt@kernel.org, jacek.anaszewski@gmail.com,
        krzysztof.kozlowski+dt@linaro.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 2/2] leds: remove ide-disk trigger
Date:   Tue, 31 Jan 2023 14:03:04 +0000
Message-Id: <20230131140304.626779-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230131140304.626779-1-clabbe@baylibre.com>
References: <20230131140304.626779-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No user of ide-disk remains, so remove this deprecated trigger.
Only a few platforms used this and were fixed in 2016.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Change since v1:
- remove also DEFINE_LED_TRIGGER(ledtrig_ide)
Changes since v2:
- Added the fact that few platforms used this and it was fixed old ago.
- Added Rob's ack

Change since v3:
- Rebase on top of latest next
Change since v4:
- Rebase on top of latest next

 Documentation/devicetree/bindings/leds/common.yaml | 3 ---
 drivers/leds/trigger/ledtrig-disk.c                | 4 ----
 2 files changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 60c8611c6611..15e3f6645682 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -92,9 +92,6 @@ properties:
           - disk-activity
           - disk-read
           - disk-write
-            # LED indicates IDE disk activity (deprecated), in new implementations
-            # use "disk-activity"
-          - ide-disk
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
2.39.1

