Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 627213720E3
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 21:50:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbhECTvu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 15:51:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbhECTvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 15:51:49 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 426EEC06174A
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 12:50:56 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id n205so3139016wmf.1
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 12:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5dY6juJTnKVCyeyHxi0na9C0HvTuTeBoPvat+PSnF30=;
        b=ZUUPFdWpDU32ff4kT+qpZwNlp9hR4B7EWVkdKHbzR3fV82NwMvMn/7gNu/kU2rr6qJ
         rP9F8NLgEWBcYhixWZS1Nk5KqUANqvZ8Krz+UKI3pPndQhevCu8dEnzsogQ+QJPYmOR3
         lh+Ap7uMLPDpz9HSkPvuhjcN3QGlUVef3zrz5dVbMZXfgAlh9CPCN3TvavSaNzdtjRwQ
         nj7moLV0q9vBO4TgdY+8hrQXHhM0WS57g9hviFJAfYXDbYOKCQ/s2KPvYz3+Kqtx4L9V
         dWY5ZGjTGnVNaNCyF26umTbMPhXWDCZpYIRjmgIOwfWS4zrl8agwtZ9k+gu3ekeWhsIZ
         KboA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5dY6juJTnKVCyeyHxi0na9C0HvTuTeBoPvat+PSnF30=;
        b=blvXfx4pB8UeWI/q9ZOyFgQP8eZyQ+hXbWXu8V/jUmq3apUSJdw3PcNGbUlNf9pJIG
         sKhtg2mSwLZHectgci9q/n3jDA6xCPlC9vNW9e4K8hzBGSXNHL9Z/47uyHyf7fr4E2xY
         Vp8Qd/A3mcY7LuuTpW7sVy2t9HJ84o4ttRvhQLdb+S8oJaay05qeoATKP7Q4dib9CbKP
         h2zFEfIUbIhYr891E+h/9eXn2MRu/dX71JkPGpUz1q80txWh2M83GSsqhMYcPExgjGX0
         9swW3QLfcSEPWvs8w+rahAFLzdl9JBW6noxnHX/PfiAl1SG4Hmd1FXOciP2crE7noWKQ
         x64Q==
X-Gm-Message-State: AOAM530KPGocGpPACytMp/Xv17cu9xkwBapwTQDJUnP1kq7wYz9yUtZZ
        9CFOmiVzcK+qAh5bxZfkbG/Kmg==
X-Google-Smtp-Source: ABdhPJyR/unPQayjrK1V5SC5zPOlNLglGsNCdBalOC4Fg4HGqcGotO9Ayc91ix08jipZN+oqNT6sNw==
X-Received: by 2002:a05:600c:2483:: with SMTP id 3mr23429256wms.106.1620071455023;
        Mon, 03 May 2021 12:50:55 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id d5sm13989429wrv.43.2021.05.03.12.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 12:50:54 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     alexandre.belloni@bootlin.com, a.zummo@towertech.it,
        linus.walleij@linaro.org, robh+dt@kernel.org,
        ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: convert rtc/faraday,ftrtc01 to yaml
Date:   Mon,  3 May 2021 19:50:47 +0000
Message-Id: <20210503195048.1575007-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Converts rtc/faraday,ftrtc01.txt to yaml.
This permits to detect some missing properties: reg, resets, interrupts

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../bindings/rtc/faraday,ftrtc010.txt         | 28 ---------
 .../bindings/rtc/faraday,ftrtc010.yaml        | 59 +++++++++++++++++++
 2 files changed, 59 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/faraday,ftrtc010.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml

diff --git a/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.txt b/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.txt
deleted file mode 100644
index e3938f5e0b6c..000000000000
--- a/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-* Faraday Technology FTRTC010 Real Time Clock
-
-This RTC appears in for example the Storlink Gemini family of
-SoCs.
-
-Required properties:
-- compatible : Should be one of:
-  "faraday,ftrtc010"
-  "cortina,gemini-rtc", "faraday,ftrtc010"
-
-Optional properties:
-- clocks: when present should contain clock references to the
-  PCLK and EXTCLK clocks. Faraday calls the later CLK1HZ and
-  says the clock should be 1 Hz, but implementers actually seem
-  to choose different clocks here, like Cortina who chose
-  32768 Hz (a typical low-power clock).
-- clock-names: should name the clocks "PCLK" and "EXTCLK"
-  respectively.
-
-Examples:
-
-rtc@45000000 {
-	compatible = "cortina,gemini-rtc";
-	reg = <0x45000000 0x100>;
-	interrupts = <17 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&foo 0>, <&foo 1>;
-	clock-names = "PCLK", "EXTCLK";
-};
diff --git a/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml b/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml
new file mode 100644
index 000000000000..6b318650e79f
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/faraday,ftrtc010.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/faraday,ftrtc010.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Faraday Technology FTRTC010 Real Time Clock
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  This RTC appears in for example the Storlink Gemini family of SoCs.
+
+properties:
+  compatible:
+    oneOf:
+      - const: "faraday,ftrtc010"
+      - items:
+          - const: "cortina,gemini-rtc"
+          - const: "faraday,ftrtc010"
+
+  resets:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    description: when present should contain clock references to the
+                 PCLK and EXTCLK clocks. Faraday calls the later CLK1HZ and
+                 says the clock should be 1 Hz, but implementers actually seem
+                 to choose different clocks here, like Cortina who chose
+                 32768 Hz (a typical low-power clock).
+
+  clock-names:
+    items:
+      - const: "PCLK"
+      - const: "EXTCLK"
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    rtc@45000000 {
+      compatible = "cortina,gemini-rtc", "faraday,ftrtc010";
+      reg = <0x45000000 0x100>;
+      interrupts = <17 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&foo 0>, <&foo 1>;
+      clock-names = "PCLK", "EXTCLK";
+    };
-- 
2.26.3

