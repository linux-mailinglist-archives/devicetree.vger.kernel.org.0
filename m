Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86BD82D53AE
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 07:16:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733156AbgLJGPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 01:15:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733155AbgLJGPZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 01:15:25 -0500
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11DDC061794
        for <devicetree@vger.kernel.org>; Wed,  9 Dec 2020 22:14:45 -0800 (PST)
Received: by mail-pg1-x543.google.com with SMTP id w16so3227495pga.9
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 22:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MqeM3I8rabKhAIEdk1wwGjmL1P9GZYH14bcbbNjM89o=;
        b=Sm+XVhMiBcu2Y0owzP9+IkqVAcH3SQUqbeMaKb6I84kiDIZ9R3OpBHfVnJ6hR6IbMv
         Mjbs0UyL4MZ8UUo7b1HcbmQXbcWg8dbSFESMae/pKh/9gF8DDqWCoDkHvrEfwQ3ScwR0
         aI/YLTvUxu2gLWW1hOuI0XmWieZQiBD+Ybs9B62upawpUmtgxDGG9JGXCCHI9p6gV4Jl
         qbPQSK9gMvtGnRD0j/+o/7b8GhHG+dlsak2IMQbCoYXgumDdv+hXt9VYhKwOdqtYAyRk
         VTra7XtDnXbai55arYFn1qlzFHFZWQoj/VuVuRmq+SkY5LZHL82jzgFMjqTY4H47d09t
         5Xkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MqeM3I8rabKhAIEdk1wwGjmL1P9GZYH14bcbbNjM89o=;
        b=cM0fJoX0fhDONi7qkQagMu950GFb1EnTOB2YDIRja8OFO5og2T5XufK8XVVede9oxp
         sXBpDb6oHkumj0AvU8ETq5yiWcRT8inV1tvarLLlXE9Mrs4Hv6OrXHgAGvhl/xSzJvqN
         UIAUqflHG6mZZ0bg5230vQgNU3Xo0B9vqDQEOxa9cl7YyZHNvMENchCDZ1N9+XUQ+MWx
         h1SIrXT6b6XW5ecsBQzAMps6PigK+W/+FHndR0gtVrpmws9E6fxP/8BIE8nKAGJgDnmK
         BoMVbH3eGxA4I1TrWINU4rO8p60sv67tRgHaMHG5nnHSn0wJh1bGhIopHCbJXxgKoaO+
         Jbpw==
X-Gm-Message-State: AOAM530X2klUP7m1keBU3fzyCeVYXiD2cIkjQOFYjzwqWRztbduhsWhT
        h/hzyJ/++bso+41rp83NEI5v
X-Google-Smtp-Source: ABdhPJxuBIEiPbMTblacsQFD6iV9B6VDy2R38bS3mMhHr3l5GQl93NvJ0Wv9l96KG3TTwYPODwy2AQ==
X-Received: by 2002:a62:de01:0:b029:19e:a3f6:8eef with SMTP id h1-20020a62de010000b029019ea3f68eefmr3919519pfg.48.1607580884833;
        Wed, 09 Dec 2020 22:14:44 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id e2sm4492694pjv.10.2020.12.09.22.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 22:14:44 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     jacek.anaszewski@gmail.com, pavel@ucw.cz, dmurphy@ti.com,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, thunder.leizhen@huawei.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH] dt-bindings: leds: Document commonly used LED triggers
Date:   Thu, 10 Dec 2020 11:44:31 +0530
Message-Id: <20201210061431.23144-1-manivannan.sadhasivam@linaro.org>
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/leds/common.yaml      | 72 ++++++++++++++-----
 1 file changed, 54 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index f1211e7045f1..eee4eb7a4535 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -79,24 +79,60 @@ properties:
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
+                # LED will act as a back-light, controlled by the framebuffer system
+              - backlight
+                # LED will turn on (but for leds-gpio see "default-state" property in
+                # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
+              - default-on
+                # LED "double" flashes at a load average based rate
+              - heartbeat
+                # LED indicates disk activity
+              - disk-activity
+                # LED indicates IDE disk activity (deprecated), in new implementations
+                # use "disk-activity"
+              - ide-disk
+                # LED flashes at a fixed, configurable rate
+              - timer
+                # LED alters the brightness for the specified duration with one software
+                # timer (requires "led-pattern" property)
+              - pattern
+                # LED indicates camera flash state
+              - flash
+                # LED indicates camera torch state
+              - torch
+                # LED indicates audio mute state
+              - audio-mute
+                # LED indicates mic mute state
+              - audio-micmute
+                # LED indicates bluetooth power state
+              - bluetooth-power
+                # LED indicates USB gadget activity
+              - usb-gadget
+                # LED indicates USB host activity
+              - usb-host
+                # LED indicates MTD memory activity
+              - mtd
+                # LED indicates NAND memory activity (deprecated),
+                # in new implementations use "mtd"
+              - nand-disk
+                # LED indicates disk read activity
+              - disk-read
+                # LED indicates disk write activity
+              - disk-write
+                # No trigger assigned to the LED. This is the default mode
+                # if trigger is absent
+              - none
+                # LED indicates activity of all CPUs
+              - cpu
+      - items:
+            # LED indicates activity of [N]th CPU
+          - pattern: "^cpu[0-9][0-9]$"
+      - items:
+            # LED indicates [N]th MMC storage activity
+          - pattern: '^mmc[0-9][0-9]$'
 
   led-pattern:
     description: |
-- 
2.25.1

