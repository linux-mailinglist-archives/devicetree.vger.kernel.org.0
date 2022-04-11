Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2798B4FC504
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 21:24:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349588AbiDKT1F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 15:27:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233165AbiDKT1F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 15:27:05 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA60ADF2B
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 12:24:48 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k22so5948986wrd.2
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 12:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dAY/HDr2OeDTCS6+sRG3x2tQWGxxS70z/3Rn/qr2aK8=;
        b=xHhS8pvte1T6tfxc46+ld57g/HMp/HtV6ELqazOcDyQWg58ef+5ighPb52lBAHJl/6
         NNMNeECu/NZ4qUQ7+HT4BOGrotWvk0mN44tWDtDNiwHRj6CYa31eJSaQjxUUiqR16gKx
         H4oIbRSwUD0+NkYaoJBvZ97UsH/6ZoyIx+bFacXTdIIC8AbUMrTm1+bOU3Z02CZIWfma
         nueK2YyQAcoQ/unIBh/WFo+UJGpDV9W+nLOj9DX+fd+HG6+3tupdLQBVBqXWb3EutkrW
         MnxMhGuzuvAYkNdN5mqV5hPgLwnRgveZxb0RfD+JZrKynrBToKmjrOlxb8D6M2227Ecr
         bWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dAY/HDr2OeDTCS6+sRG3x2tQWGxxS70z/3Rn/qr2aK8=;
        b=CiKfngNfwa0r46Y2Tj9ZJIHQB/cg9E5CsFLnXSvACRROfg/iCYi6fqZzUljvkWFEhC
         ygVVQFk2GtA9n1CqLwXj4YmU/eLhfZGDC4TD5qXA7gv32uOAQFXPCfQ/D5pyk2Qa6KvP
         6jI2CdvTCBoOCbSGv2RvVWFw6EtfkBCv637+KvMarLHd/QwOrH+j59hMH9aiqXGFmk3h
         ZfN0Tn+eAF0ZE/6LFTYtW7fiJchdLwqxUfJbrb9jHCvAyoHgcLNZ3JCZdcAZs2JqAKFp
         86tnEP0NwA9cArq7y8jcx5xU5mR/MaURGgNYoUjw/KuNA3CZk7ISWwYMvsRmqt3UyF88
         z/hA==
X-Gm-Message-State: AOAM532KnOgqqx5xM4yZpYAZwfg08v9yPSeKchicNTvz6Ub3zVwcl9OJ
        s4JWtJBtQGTBtJ8v9xJsJIcwrA==
X-Google-Smtp-Source: ABdhPJwg+3g2Bo4WXSUK6cfl1Nnw8dm8b0XLkTInSMP4K3NvYIKMXpcaaV5U1NJ38Xnjh8HsC1Tw5w==
X-Received: by 2002:adf:c547:0:b0:207:9abc:cfa1 with SMTP id s7-20020adfc547000000b002079abccfa1mr12648661wrf.390.1649705087372;
        Mon, 11 Apr 2022 12:24:47 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id k13-20020a7bc40d000000b0038e9edf5e73sm725177wmi.3.2022.04.11.12.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 12:24:46 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     krzysztof.kozlowski+dt@linaro.org, pavel@ucw.cz, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4] leds: remove ide-disk trigger
Date:   Mon, 11 Apr 2022 19:24:34 +0000
Message-Id: <20220411192434.3386384-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
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
 Documentation/devicetree/bindings/leds/common.yaml | 3 ---
 drivers/leds/trigger/ledtrig-disk.c                | 4 ----
 2 files changed, 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 344a6492ba36..1d1f79238a32 100644
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
2.35.1

