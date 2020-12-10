Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77AFB2D556D
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 09:26:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387999AbgLJIZm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 03:25:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387970AbgLJIZl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 03:25:41 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15A0FC061793
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 00:25:01 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id o4so3552992pgj.0
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 00:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WAhMiurFGcN8lmdrtgL19tRIfj++8c+t8lu8Ts8kGNs=;
        b=w5YXTYLpRbieEZHw1ZdD0M8phTYwkJ/rFVgcgNYu9+jLkMl5Yuuy2pFCe9Xaz6s7T7
         WVRaZCm+m+T/Lc4EtwVAtoQ1/Ft+3+RBMpGdyz04XpewoN7jZADyz2a1MxbBaJGwKwfU
         m/lQ2BpU2JA7rdxex+2lPqv7Gt7iDTWE3WqfXJ+U98G4SPevEgiRmh4TTx0P936bwxUZ
         YHcxRFtB1u7xeRjRzfCf5H3GjaJv4L5WUAZU0M1F2TmtbSO526DJ8YqF4WE/NbQ3DgSr
         7Z6C8TwjZl7gNAqgpRBcdq/GyXg+B7i8nrZ/06RtWaKvmh7Yg9ABWzTJHeV22xlbBt1a
         ozFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WAhMiurFGcN8lmdrtgL19tRIfj++8c+t8lu8Ts8kGNs=;
        b=ObtOK0tbAag9Rg9SW7Fm0VDtE6bAxC3Q97oJ4Jd/PQ7kZlUjOQoWjicHnPw/0IdyFk
         vT38UdplUHbRJDxcjxbHhiK3bB6Z2fwvzzayAvIvXeCImRD5xolpPvPjoKMdPvlN0gt4
         c7QsTbQBJy/MENyI/NYxo1lPoNk/JHiNgxf2OnKTFemOr4CkEhgvqQgeCt3TnW3VD2hq
         DWQsVj3PsboTG1Pi2TrOdxBtNkKVu/UQBmTTQpmWbaBG+qUHyqJBoRUxlNl+VTp3uCK+
         wlcO8kVHcG1NlrAMsDYFcbuYZ0xYFoyN1b/zqRnX+ey3ogA3XWTZcZfNv8qdil3teiA6
         jFcA==
X-Gm-Message-State: AOAM533YUR+s+UerXCN1RCpizX9BEH+dE/rEl+lwR+r634lOppazquI/
        coCRIIh7qcaOpjyh7y/V5uMb
X-Google-Smtp-Source: ABdhPJzaJ2u0zoYG101LIwywJuP8J4uiZGRrEtMHoB3JgSc2Yo0rQ36Idar7qgqWjTMApD+Y8J/SuQ==
X-Received: by 2002:a65:4582:: with SMTP id o2mr5656104pgq.97.1607588700271;
        Thu, 10 Dec 2020 00:25:00 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id e8sm2303861pfn.176.2020.12.10.00.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 00:24:59 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     jacek.anaszewski@gmail.com, pavel@ucw.cz, dmurphy@ti.com,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, thunder.leizhen@huawei.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2] dt-bindings: leds: Document commonly used LED triggers
Date:   Thu, 10 Dec 2020 13:54:49 +0530
Message-Id: <20201210082449.30586-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit documents the LED triggers used commonly in the SoCs. Not
all triggers are documented as some of them are very application specific.
Most of the triggers documented here are currently used in devicetrees
of many SoCs.

While at it, let's also sort the triggers in ascending order.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* Added more triggers, fixed the regex
* Sorted triggers in ascending order

 .../devicetree/bindings/leds/common.yaml      | 78 ++++++++++++++-----
 1 file changed, 60 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index f1211e7045f1..3c2e2208c1da 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -79,24 +79,66 @@ properties:
       the LED.
     $ref: /schemas/types.yaml#definitions/string
 
-    enum:
-        # LED will act as a back-light, controlled by the framebuffer system
-      - backlight
-        # LED will turn on (but for leds-gpio see "default-state" property in
-        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
-      - default-on
-        # LED "double" flashes at a load average based rate
-      - heartbeat
-        # LED indicates disk activity
-      - disk-activity
-        # LED indicates IDE disk activity (deprecated), in new implementations
-        # use "disk-activity"
-      - ide-disk
-        # LED flashes at a fixed, configurable rate
-      - timer
-        # LED alters the brightness for the specified duration with one software
-        # timer (requires "led-pattern" property)
-      - pattern
+    oneOf:
+      - items:
+          - enum:
+                # LED indicates mic mute state
+              - audio-micmute
+                # LED indicates audio mute state
+              - audio-mute
+                # LED will act as a back-light, controlled by the framebuffer system
+              - backlight
+                # LED indicates bluetooth power state
+              - bluetooth-power
+                # LED indicates activity of all CPUs
+              - cpu
+                # LED will turn on (but for leds-gpio see "default-state" property in
+                # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
+              - default-on
+                # LED indicates disk activity
+              - disk-activity
+                # LED indicates disk read activity
+              - disk-read
+                # LED indicates disk write activity
+              - disk-write
+                # LED indicates camera flash state
+              - flash
+                # LED "double" flashes at a load average based rate
+              - heartbeat
+                # LED indicates IDE disk activity (deprecated), in new implementations
+                # use "disk-activity"
+              - ide-disk
+                # LED indicates MTD memory activity
+              - mtd
+                # LED indicates NAND memory activity (deprecated),
+                # in new implementations use "mtd"
+              - nand-disk
+                # No trigger assigned to the LED. This is the default mode
+                # if trigger is absent
+              - none
+                # LED alters the brightness for the specified duration with one software
+                # timer (requires "led-pattern" property)
+              - pattern
+                # LED flashes at a fixed, configurable rate
+              - timer
+                # LED indicates camera torch state
+              - torch
+                # LED indicates USB gadget activity
+              - usb-gadget
+                # LED indicates USB host activity
+              - usb-host
+      - items:
+            # LED indicates activity of [N]th CPU
+          - pattern: "^cpu[0-9]{1,2}$"
+      - items:
+            # LED indicates power status of [N]th Bluetooth HCI device
+          - pattern: "^hci[0-9]{1,2}-power$"
+      - items:
+            # LED indicates [N]th MMC storage activity
+          - pattern: "^mmc[0-9]{1,2}$"
+      - items:
+            # LED indicates [N]th WLAN Tx activity
+          - pattern: "^phy[0-9]{1,2}tx$"
 
   led-pattern:
     description: |
-- 
2.25.1

