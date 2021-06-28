Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DC003B68F2
	for <lists+devicetree@lfdr.de>; Mon, 28 Jun 2021 21:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234142AbhF1TTx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Jun 2021 15:19:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233356AbhF1TTx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Jun 2021 15:19:53 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3771EC061574
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 12:17:27 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id u11so22543858wrw.11
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 12:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aVDOoSwsEqFnt7m177UdWRoEvgZeeb+7aORURgAHeO0=;
        b=aW5A7/HTlwu7afrmKWijmi6EQCPWv348Ei9iI8BRY/qjcMnnQqatxEHlM7+j6wT1r8
         gyK9hmlrKx96syJ/pcbmMXkcKdqcEZl1U5fhhtnJRMdkzrFp01RY7jCkDa6dafWm9J5g
         HStGHtgS9MMX9sotxLbVJmz5ytR4g+4JiAgwoH2x+knmjua8ppLjFGQMhgPqqPGT/r88
         NqSOpzA9wCLD4kmslWQePAL9JvXkeq+NcJNor/L/O4c10wrcYAWM9JM03Hig5XeKOyiL
         HSx1IReUv2bgpI7YRzoECSLmvDhhYmJJHNVAIh8ivCVUAgxgGPPspmdoKmyCwRS/0ikJ
         wjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aVDOoSwsEqFnt7m177UdWRoEvgZeeb+7aORURgAHeO0=;
        b=Qq4mtmDE4cxLjGiGsSwx4OnEtFR1FDOyYx2AIEL+ISQd3fnZyrKQ1B6NiBrUml4Zip
         9WZqnFEVlJokS2FmEkDV5GNV4vqsJneI1Jxy0jznHQcqxFKInLRxKYSG52YJnmAtaL96
         T8MBlg6L0+L0CIW+P6WWTnHM5snbRk+34Q4mK31v4uAoiTxEVwVHLAccmaStOj8TzjNR
         es/cjyNSnF45lgdGQmRwQswI0jmYk8XS4K7QASpJW0s/izxW/7FS1fT0bYD2mHIZ+QHZ
         N4Wz+sWuH0hvqo+J0X4pdGA1hkdHYHZ0bflwllBm4zF3uzyG8CEVvwv2F3dMJZ9B3x2m
         ye8w==
X-Gm-Message-State: AOAM531FJLhvAovinRsjWaHS0CjJejOhK6fuuCSjTdlJ1t/5Xbud6dJK
        vs0S1S9Wmc6qEzUAtf0akPKlcA==
X-Google-Smtp-Source: ABdhPJzLJyg3lju7n1j6bePPTjj3oCBn/d+c5mXFM96aBCrOhY+nDEm7WOhSUszNmuojhhlSGCeyKg==
X-Received: by 2002:a5d:5004:: with SMTP id e4mr4565045wrt.205.1624907845800;
        Mon, 28 Jun 2021 12:17:25 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i5sm4352391wrr.4.2021.06.28.12.17.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 12:17:25 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     pavel@ucw.cz, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] leds: remove ide-disk trigger
Date:   Mon, 28 Jun 2021 19:17:19 +0000
Message-Id: <20210628191719.2823947-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No user of ide-disk remains, so remove this deprecated trigger.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/leds/common.yaml | 3 ---
 drivers/leds/trigger/ledtrig-disk.c                | 1 -
 2 files changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index a9b8c21779e3..2d3d4af1d35e 100644
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
index 0741910785bb..38a5c21c0466 100644
--- a/drivers/leds/trigger/ledtrig-disk.c
+++ b/drivers/leds/trigger/ledtrig-disk.c
@@ -40,7 +40,6 @@ static int __init ledtrig_disk_init(void)
 	led_trigger_register_simple("disk-activity", &ledtrig_disk);
 	led_trigger_register_simple("disk-read", &ledtrig_disk_read);
 	led_trigger_register_simple("disk-write", &ledtrig_disk_write);
-	led_trigger_register_simple("ide-disk", &ledtrig_ide);
 
 	return 0;
 }
-- 
2.31.1

