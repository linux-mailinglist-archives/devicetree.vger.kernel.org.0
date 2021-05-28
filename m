Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98377394745
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 20:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbhE1SzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 14:55:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhE1SzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 14:55:16 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD0D9C06174A
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 11:53:40 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id h3so2637806wmq.3
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 11:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sRnjHlu4aI2d07hk/HFPTPaAgxVdnLCE3C8ZXGG5N2M=;
        b=GR+XdjfnGc7awDATahdRGgpVc3XZlj24DkIFTCqOv/jdG8+D2VF1fJbfKqJRxHOQPE
         0MqykAHqwZKwJHsqwoTNwWTKSrtdfZ5OmXlilQ7s29Op12iKIrhNy5OHfYsBcU+Y4Vij
         yusZ2ZFWNTJVVbixDJE3rgMiJ7VlCauTGRZ5BLMFPUSGfaG9TU2N0WZ5uJ8HfAcUxJUw
         Ka/NbqctdlP7JYohp2FFcYZzOXRmgy2RV38rhRy2Z8itOStaoMDmxZmyJYKDg7VfyM+3
         yArF+nQLAncGtvCNrNWJQcP5BLUvMINdBZgerj3O13Q3S5oRj+6lYXdoRAexh41u8Un2
         yUzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sRnjHlu4aI2d07hk/HFPTPaAgxVdnLCE3C8ZXGG5N2M=;
        b=REHIjnuRlfp+uR9elUtOmpUDaDLc5SP7eKHEU+XVeuIKPfVVGranWuURIdsIJArXta
         Ox+bSCGVv/mv/7hPH/vNoqOCqjQ+APuLPbXX3Smiw4P63p3OuTCTRfcnnuB8ocpOtFm9
         o0FHQbHibhyM919QKMx4FYTLtsGWx9nhzJr8n1xKYfa9oLa9piTZWKZHIIsfU5x9mcXT
         YUuB4EW+x2fNytJHl594WZCY/Hz36l7uQIB1EqtVBxt9RDh8sf4UIea/+bsKPW0VjCr0
         JI6518xVsGL3jTBYi95RjBBKHxy6Pk0ctmBs6dhpR98rWoSIkwC1wsUwwWUduv4kVM3N
         lm3g==
X-Gm-Message-State: AOAM533g6C1aifL4P5fiCP18iSeiOIa59p5hx0tYXJXbRjdLEiuJFbt/
        o2pyiaxgbr3E6kJF/XCFKZCdFHBpbVUCNg==
X-Google-Smtp-Source: ABdhPJwxxq+uI4dgtjIx8P+zA4N9jyp6I+iETPE71li/b1mjFZsVC5xCbLewJOQqXIuDEztz8wFL9Q==
X-Received: by 2002:a1c:e284:: with SMTP id z126mr9720280wmg.108.1622228019204;
        Fri, 28 May 2021 11:53:39 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id r17sm15772020wmh.25.2021.05.28.11.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 11:53:38 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     daniel.lezcano@linaro.org, robh+dt@kernel.org, tglx@linutronix.de
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] dt-bindings: timer: Convert faraday,fttmr010 to yaml
Date:   Fri, 28 May 2021 18:53:29 +0000
Message-Id: <20210528185329.1969688-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Converts timer/faraday,fttmr010.txt to yaml.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../bindings/timer/faraday,fttmr010.txt       | 38 --------
 .../bindings/timer/faraday,fttmr010.yaml      | 86 +++++++++++++++++++
 2 files changed, 86 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/faraday,fttmr010.txt
 create mode 100644 Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml

diff --git a/Documentation/devicetree/bindings/timer/faraday,fttmr010.txt b/Documentation/devicetree/bindings/timer/faraday,fttmr010.txt
deleted file mode 100644
index 3cb2f4c98d64..000000000000
--- a/Documentation/devicetree/bindings/timer/faraday,fttmr010.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Faraday Technology timer
-
-This timer is a generic IP block from Faraday Technology, embedded in the
-Cortina Systems Gemini SoCs and other designs.
-
-Required properties:
-
-- compatible : Must be one of
-  "faraday,fttmr010"
-  "cortina,gemini-timer", "faraday,fttmr010"
-  "moxa,moxart-timer", "faraday,fttmr010"
-  "aspeed,ast2400-timer"
-  "aspeed,ast2500-timer"
-  "aspeed,ast2600-timer"
-
-- reg : Should contain registers location and length
-- interrupts : Should contain the three timer interrupts usually with
-  flags for falling edge
-
-Optionally required properties:
-
-- clocks : a clock to provide the tick rate for "faraday,fttmr010"
-- clock-names : should be "EXTCLK" and "PCLK" for the external tick timer
-  and peripheral clock respectively, for "faraday,fttmr010"
-- syscon : a phandle to the global Gemini system controller if the compatible
-  type is "cortina,gemini-timer"
-
-Example:
-
-timer@43000000 {
-	compatible = "faraday,fttmr010";
-	reg = <0x43000000 0x1000>;
-	interrupts = <14 IRQ_TYPE_EDGE_FALLING>, /* Timer 1 */
-		   <15 IRQ_TYPE_EDGE_FALLING>, /* Timer 2 */
-		   <16 IRQ_TYPE_EDGE_FALLING>; /* Timer 3 */
-	clocks = <&extclk>, <&pclk>;
-	clock-names = "EXTCLK", "PCLK";
-};
diff --git a/Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml b/Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml
new file mode 100644
index 000000000000..a495ea80c0fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/faraday,fttmr010.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0+)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/faraday,fttmr010.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Faraday Technology timer
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  This timer is a generic IP block from Faraday Technology, embedded in the
+  Cortina Systems Gemini SoCs and other designs.
+
+properties:
+  compatible:
+    oneOf:
+      - const: faraday,fttmr010
+      - items:
+          - const: cortina,gemini-timer
+          - const: faraday,fttmr010
+      - items:
+          - const: moxa,moxart-timer
+          - const: faraday,fttmr010
+      - const: aspeed,ast2400-timer
+      - const: aspeed,ast2500-timer
+      - const: aspeed,ast2600-timer
+
+  reg:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 3
+    description: Should contain the three timer interrupts usually with flags for falling edge
+
+  clocks:
+    minItems: 2
+
+  clock-names:
+    items:
+      - const: "PCLK"
+      - const: "EXTCLK"
+
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    maxItems: 1
+
+if:
+  properties:
+    compatible:
+      contains:
+        items:
+          - const: cortina,gemini-timer
+          - const: faraday,fttmr010
+then:
+  required:
+    - syscon
+else:
+  properties:
+    syscon: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    timer@43000000 {
+      compatible = "faraday,fttmr010";
+      reg = <0x43000000 0x1000>;
+      interrupts = <14 IRQ_TYPE_EDGE_FALLING>, /* Timer 1 */
+                   <15 IRQ_TYPE_EDGE_FALLING>, /* Timer 2 */
+                   <16 IRQ_TYPE_EDGE_FALLING>; /* Timer 3 */
+      clocks = <&extclk>, <&pclk>;
+      clock-names = "PCLK", "EXTCLK";
+      syscon = <&syscon>;
+    };
+...
-- 
2.31.1

