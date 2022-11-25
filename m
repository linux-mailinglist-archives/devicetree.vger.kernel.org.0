Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDF24638C37
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:33:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229998AbiKYOdm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:33:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbiKYOdh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:33:37 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F71B2E698
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:33:36 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id b3so7191761lfv.2
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uCo1AkWD2FgarCrXoedmAiqLbycN5G3SgzmeYSK7Dpg=;
        b=a/b4t6mqId1FZXTFhl4/ax7IXwC4KMoBiYwDBaG4hEAaEj3DvhfNLxJxcO1aQ9SwJU
         aPmaVgbczdckQp+p5lKzgrpjtk3BFmpgfw3crNADB9wxbgtIn4p8jwcSTyaz1hDvD8Fn
         31UbcmABDzolszp2S1jCH+B2kNFVfz/ZI5NEvyLNTP8v40XPSt56SjWTfXBDqk+5ZyHn
         UmdTd3a380vjjtdIZ3Z92/4yXq+nWNgp58lzn0J3Vuucd0UclrtEYt8r2MQRI+KpyP+y
         Q03LywMGzMuqlSIZBCB+0KQN6/cBnrQ2FwO5LDK19hdS8SDl0dzm+xbbpS8StMeofjGR
         4Cew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uCo1AkWD2FgarCrXoedmAiqLbycN5G3SgzmeYSK7Dpg=;
        b=LxsTUubkYZzAAiRD1nVgi1Elt4drRKmuXJt0+bjUJjz/2LeXWCXSbvjlG3nraorJCa
         NJ9JoXfoRn6tkgwL/vwR7asISQ0YH86vZ940klh/cK8OVLTIboeyXdfhWtUvlYyngQxF
         RAwtP9dE0J66U/Vc0cNukrVggmjWScDNlGMAGEymtisq5l4fZNSz5RDUKdtyZAsgdH94
         vsSzH1Gd2H6dwX3Ca4px0at2mQoKU/6Hx6bCKQYucXnPqLNNc8XSiulPreONZrOg09ce
         twd18Aggj0vTlBrqjZlWUTPfyVE+7vRqRoV4EsFeMVAF+gwqLE6dKyEc8EJVHrWryEAA
         lr0Q==
X-Gm-Message-State: ANoB5pkx02RkXK/mn6Ow/OdGRnYnOPOGF4Gza7jLh6AIPZfcBsI9Sm3V
        kxfdNsKO3wOCbKGeRy9H8IxdPw==
X-Google-Smtp-Source: AA0mqf6Rd9gAylZPO0BsMvX4isZrBhJUtCKjJEwTluwuo3wuSqJwydGCt/yxnzAAVFeHwEbVRikulg==
X-Received: by 2002:ac2:4189:0:b0:4b1:2447:6971 with SMTP id z9-20020ac24189000000b004b124476971mr8011706lfh.83.1669386814361;
        Fri, 25 Nov 2022 06:33:34 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k26-20020a05651c10ba00b002798ab42fffsm312966ljn.129.2022.11.25.06.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:33:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vincent Knecht <vincent.knecht@mailoo.org>,
        Nikita Travkin <nikitos.tr@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Andrew Davis <afd@ti.com>, Gene Chen <gene_chen@richtek.com>,
        Bjorn Andersson <andersson@kernel.org>,
        ChiYuan Huang <cy_huang@richtek.com>,
        Luca Weiss <luca@z3ntu.xyz>, - NeilBrown <neilb@suse.de>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] dt-bindings: leds: use unevaluatedProperties for common.yaml
Date:   Fri, 25 Nov 2022 15:33:28 +0100
Message-Id: <20221125143331.473981-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The common.yaml schema allows further properties, so the bindings using
it should restrict it with unevaluatedProperties:false.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/leds/issi,is31fl319x.yaml    |  1 +
 .../devicetree/bindings/leds/leds-aw2013.yaml        |  1 +
 .../devicetree/bindings/leds/leds-gpio.yaml          |  2 +-
 .../devicetree/bindings/leds/leds-lp50xx.yaml        |  8 ++++++++
 Documentation/devicetree/bindings/leds/leds-pwm.yaml |  2 +-
 .../devicetree/bindings/leds/leds-qcom-lpg.yaml      | 12 +++++++++++-
 .../devicetree/bindings/leds/leds-rt4505.yaml        |  1 +
 .../devicetree/bindings/leds/leds-sgm3140.yaml       |  1 +
 .../devicetree/bindings/leds/ti,tca6507.yaml         |  2 +-
 9 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
index 940333f2d69c..2929382625b6 100644
--- a/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
+++ b/Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml
@@ -57,6 +57,7 @@ patternProperties:
   "^led@[1-9]$":
     type: object
     $ref: common.yaml#
+    unevaluatedProperties: false
 
     properties:
       reg:
diff --git a/Documentation/devicetree/bindings/leds/leds-aw2013.yaml b/Documentation/devicetree/bindings/leds/leds-aw2013.yaml
index e24b0d15ef01..6c3ea0f06cef 100644
--- a/Documentation/devicetree/bindings/leds/leds-aw2013.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-aw2013.yaml
@@ -33,6 +33,7 @@ patternProperties:
   "^led@[0-2]$":
     type: object
     $ref: common.yaml#
+    unevaluatedProperties: false
 
     properties:
       reg:
diff --git a/Documentation/devicetree/bindings/leds/leds-gpio.yaml b/Documentation/devicetree/bindings/leds/leds-gpio.yaml
index 7ad2baeda0b0..7e11703acbd6 100644
--- a/Documentation/devicetree/bindings/leds/leds-gpio.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-gpio.yaml
@@ -23,8 +23,8 @@ patternProperties:
   # node name to at least catch some child nodes.
   "(^led-[0-9a-f]$|led)":
     type: object
-
     $ref: common.yaml#
+    unevaluatedProperties: false
 
     properties:
       gpios:
diff --git a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
index 63da380748bf..402c25424525 100644
--- a/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-lp50xx.yaml
@@ -77,6 +77,14 @@ patternProperties:
       "^led@[0-9a-f]+$":
         type: object
         $ref: common.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          reg:
+            maxItems: 1
+
+        required:
+          - reg
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/leds/leds-pwm.yaml b/Documentation/devicetree/bindings/leds/leds-pwm.yaml
index fe4d5fd25913..7de6da58be3c 100644
--- a/Documentation/devicetree/bindings/leds/leds-pwm.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-pwm.yaml
@@ -20,8 +20,8 @@ properties:
 patternProperties:
   "^led(-[0-9a-f]+)?$":
     type: object
-
     $ref: common.yaml#
+    unevaluatedProperties: false
 
     properties:
       pwms:
diff --git a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
index 497db289169d..1df837798249 100644
--- a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
@@ -72,14 +72,24 @@ properties:
       "^led@[0-9a-f]$":
         type: object
         $ref: common.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          reg:
+            maxItems: 1
+
+        required:
+          - reg
 
 patternProperties:
   "^led@[0-9a-f]$":
     type: object
     $ref: common.yaml#
+    unevaluatedProperties: false
 
     properties:
-      reg: true
+      reg:
+        maxItems: 1
 
     required:
       - reg
diff --git a/Documentation/devicetree/bindings/leds/leds-rt4505.yaml b/Documentation/devicetree/bindings/leds/leds-rt4505.yaml
index 5b0c74aa6723..cb71fec173c1 100644
--- a/Documentation/devicetree/bindings/leds/leds-rt4505.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-rt4505.yaml
@@ -27,6 +27,7 @@ properties:
   led:
     type: object
     $ref: common.yaml#
+    unevaluatedProperties: false
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/leds/leds-sgm3140.yaml b/Documentation/devicetree/bindings/leds/leds-sgm3140.yaml
index f68259619488..56b2b2630108 100644
--- a/Documentation/devicetree/bindings/leds/leds-sgm3140.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-sgm3140.yaml
@@ -34,6 +34,7 @@ properties:
   led:
     type: object
     $ref: common.yaml#
+    unevaluatedProperties: false
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/leds/ti,tca6507.yaml b/Documentation/devicetree/bindings/leds/ti,tca6507.yaml
index 32c600387895..9ce5c0f16e17 100644
--- a/Documentation/devicetree/bindings/leds/ti,tca6507.yaml
+++ b/Documentation/devicetree/bindings/leds/ti,tca6507.yaml
@@ -38,8 +38,8 @@ properties:
 patternProperties:
   "^led@[0-6]$":
     type: object
-
     $ref: common.yaml#
+    unevaluatedProperties: false
 
     properties:
       reg:
-- 
2.34.1

