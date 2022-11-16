Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1B3F62CBCD
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 22:00:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239085AbiKPVAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 16:00:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234348AbiKPVAg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 16:00:36 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5891183A3
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 12:58:30 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id p13-20020a05600c468d00b003cf8859ed1bso17701wmo.1
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 12:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f8coExvmph2ieHx+r6auMeG+A0vCLB4yeE2ROT1XoWQ=;
        b=K6cVvGUi2+aIm7J2fC2DmEi/HhVdrPumBqzK9htqPlG1kOyo8iDev7u1CVepRW/byD
         aQIk1IVx3D+bQ4GRHlPufAqok8bM+Ja1iy58xHZ9+mWo0/h6Rr0Fshit4RteIsETYG7H
         P3fyNz2BloaOw0tZGaorM3BXxDzTGJ3K1PI9lE3GydH2qWDs2D1ZkWq2uEd5/EeWPye6
         uUsuWpLO9/prtrw4LDKVmgDP6StePXa7iszFDboiwX+sXr0vQwFD3eTRCPsrsFQgbWVV
         9rM6reTcBLIKg3bYNOnYUBvNYkCB5w6gAGjH8dmHZCo7My9xPmCQplNtKZuXDNtoB0mj
         SI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f8coExvmph2ieHx+r6auMeG+A0vCLB4yeE2ROT1XoWQ=;
        b=nspEUXDGocHCc5DFh9L+0B6W15NY5jwtQSPrUZG5nT+gciZZCICTo8LOQd6B4QH7UP
         3gbZJMG/SGUJF42+fNO+izilR//uaS/I4cQveDcm1MEx6syKUF0rZY6k8tc1WZCBAG1t
         QdLUSsonaLYhpu0YgQpjo+/Q/8TizgGlZ8ZbvppLhgo3MfayiqStyAQwH1AmrAIinHDi
         s7LI8NDyWpMVhamXSj+pKbkRmUx42BYP09w7jRsq9OluliuTNLO+ZGucK2t8uRt1u2zE
         0mo1F2qrt8HIoh6xyWX2ax9T+u2h6cckMJFWZp4nZsZklVQFNkoMFLDQ++S+zwK7+qZl
         1M7w==
X-Gm-Message-State: ANoB5pk22yHm3abf52+1Umu2+RDRoMSPSd/KBoUjOu63aFh9Rl9X0MRO
        pEiLEGNPoDHK4KhY1w5MEtCWUw==
X-Google-Smtp-Source: AA0mqf6iZbLAVDey6Dy7h9rMup7+HO2tcAlg6VkEXUpD+1kU3AEVHMLQuZhsWC1RoCxpI9eV3N6cLQ==
X-Received: by 2002:a7b:cb5a:0:b0:3b5:477:1e80 with SMTP id v26-20020a7bcb5a000000b003b504771e80mr3318160wmj.200.1668632309289;
        Wed, 16 Nov 2022 12:58:29 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id u11-20020adfdd4b000000b002302dc43d77sm15886098wrm.115.2022.11.16.12.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:58:28 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Patrick Rudolph <patrick.rudolph@9elements.com>
Cc:     Marcello Sylvester Bauer <sylv@sylv.io>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v11 1/2] dt-bindings: mfd: Add MAX5970 and MAX5978
Date:   Wed, 16 Nov 2022 21:58:21 +0100
Message-Id: <20221116205822.1128275-2-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221116205822.1128275-1-Naresh.Solanki@9elements.com>
References: <20221116205822.1128275-1-Naresh.Solanki@9elements.com>
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

From: Marcello Sylvester Bauer <sylv@sylv.io>

The MAX597x is a hot swap controller with configurable fault protection.
It also has 10bit ADC for current & voltage measurements.

Signed-off-by: Marcello Sylvester Bauer <sylv@sylv.io>
Co-developed-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Co-developed-by: Naresh Solanki <Naresh.Solanki@9elements.com>
Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
---
 .../bindings/mfd/maxim,max5970.yaml           | 151 ++++++++++++++++++
 1 file changed, 151 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
new file mode 100644
index 000000000000..6ee269afdab2
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
@@ -0,0 +1,151 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/maxim,max5970.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Regulator for MAX5970 smart switch from Maxim Integrated.
+
+maintainers:
+  - Patrick Rudolph <patrick.rudolph@9elements.com>
+
+description: |
+  The smart switch provides no output regulation, but independent fault protection
+  and voltage and current sensing.
+  Programming is done through I2C bus.
+
+  Datasheets:
+    https://datasheets.maximintegrated.com/en/ds/MAX5970.pdf
+    https://datasheets.maximintegrated.com/en/ds/MAX5978.pdf
+
+properties:
+  compatible:
+    enum:
+      - maxim,max5970
+      - maxim,max5978
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  leds:
+    type: object
+    description:
+      Properties for four LEDS.
+
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+    patternProperties:
+      "^led@[0-3]$":
+        $ref: /schemas/leds/common.yaml#
+        type: object
+
+    additionalProperties: false
+
+  vss1-supply:
+    description: Supply of the first channel.
+
+  vss2-supply:
+    description: Supply of the second channel.
+
+  regulators:
+    type: object
+    description:
+      Properties for both hot swap control/switch.
+
+    patternProperties:
+      "^sw[0-1]$":
+        $ref: /schemas/regulator/regulator.yaml#
+        type: object
+        properties:
+          shunt-resistor-micro-ohms:
+            description: |
+              The value of current sense resistor in microohms.
+
+        required:
+          - shunt-resistor-micro-ohms
+
+        unevaluatedProperties: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - regulators
+  - vss1-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - maxim,max5970
+    then:
+      required:
+        - vss2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        regulator@3a {
+            compatible = "maxim,max5978";
+            reg = <0x3a>;
+            vss1-supply = <&p3v3>;
+
+            regulators {
+                sw0_ref_0: sw0 {
+                    shunt-resistor-micro-ohms = <12000>;
+                };
+            };
+
+            leds {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                led@0 {
+                    reg = <0>;
+                    label = "led0";
+                    default-state = "on";
+                };
+                led@1 {
+                    reg = <1>;
+                    label = "led1";
+                    default-state = "on";
+                };
+            };
+        };
+    };
+
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@3a {
+            compatible = "maxim,max5970";
+            reg = <0x3a>;
+            vss1-supply = <&p3v3>;
+            vss2-supply = <&p5v>;
+
+            regulators {
+                sw0_ref_1: sw0 {
+                    shunt-resistor-micro-ohms = <12000>;
+                };
+                sw1_ref_1: sw1 {
+                    shunt-resistor-micro-ohms = <10000>;
+                };
+            };
+        };
+    };
+...
-- 
2.37.3

