Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 335ED6ADE76
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 13:14:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbjCGMOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 07:14:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231489AbjCGMOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 07:14:06 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BEBD574C6
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 04:13:19 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id l7-20020a05600c4f0700b003e79fa98ce1so7055478wmq.2
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 04:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1678191172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UfDnMsccuY/ndGZVL6qcJSsEfgpizqVf8lX2ZPdvjCc=;
        b=NL//aG3TEBgwiHffCL3u8qcMw8vS+7iOjQ+KzdUAf7AI1T/ny3XDqIRLkzZOw6Sj72
         6/VQCiw87jHpCSuRp/EIdFPo8Q7KJau/eBCB3IMp0m2Lh94w5sA6zYm5impW78R5IxCg
         DCeRhasQo8ihxa5cYl2ddDxfOQnstG+nVXRyZilOFH95i82pvIhj0tgDp3q80QrGsSUG
         b7Sa2rvbtgWiQbVOmNADGkjAvxaBhE/ezSr7MNA7lrk0sOR5lB9yFa1aqY66mR6xN+OF
         +ZMU7xU4q2rQsZn3bv1zcAM+ITP2s0+5o2Q0IAlI52bpnZ5kPdrVihtTz5gLrwFdOHcu
         aAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678191172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UfDnMsccuY/ndGZVL6qcJSsEfgpizqVf8lX2ZPdvjCc=;
        b=zwq17X1RU+JFrUanWxL91Z7VNH/4gFGOcmhcEFYrF5Ln17D9XbtoNWHEIx/sFbSzmu
         2ijMF02r/UZd/SGTT9hjMKw7Axhwjz8z4M/2bBkwi9wflc/B/m0rWfv54QIJkjY9M0w+
         Q0ToQ4Gu6wgw30zGCxcUMb2n82UAcgL/WkTNVRcTsGM26WuluXUPEZlhbQlQP1y/6xy1
         v70jr2zK4Us6lNwPS8Vh2llGeS3wHullZKCrS8NiCbVEYP6/yLCYO96Ia7uIgUwsVbhO
         jQnGw6QqeMPdLJHEV3XZYMAN7ndetP3liyXUz7kQRi3B1GTDl89awoBGiIpTSKxeSvX/
         KV9Q==
X-Gm-Message-State: AO0yUKXmDAAlBsUJemrdsgKuefGLJQ8H+kj3AeR64tnvLRlmT+SEXaHo
        ffY43KJQhFzu8RKh5aJ3hQGXNw==
X-Google-Smtp-Source: AK7set/hJgYNt+V+wmfFWOKqxiB443oqj8JKv6nkGeZo0JVWIt0Dcgnx0Bc/zvsy06vjv37EUpmE2Q==
X-Received: by 2002:a05:600c:3c9d:b0:3eb:4150:a476 with SMTP id bg29-20020a05600c3c9d00b003eb4150a476mr12269132wmb.0.1678191171979;
        Tue, 07 Mar 2023 04:12:51 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id ip21-20020a05600ca69500b003eb596cbc54sm12954925wmb.0.2023.03.07.04.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Mar 2023 04:12:51 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Patrick Rudolph <patrick.rudolph@9elements.com>
Cc:     Marcello Sylvester Bauer <sylv@sylv.io>,
        Naresh Solanki <Naresh.Solanki@9elements.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v12 1/2] dt-bindings: mfd: Add MAX5970 and MAX5978
Date:   Tue,  7 Mar 2023 13:12:44 +0100
Message-Id: <20230307121246.127425-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
...
Changes in V12:
- Update title
---
 .../bindings/mfd/maxim,max5970.yaml           | 151 ++++++++++++++++++
 1 file changed, 151 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
new file mode 100644
index 000000000000..da67742c5aa9
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
@@ -0,0 +1,151 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/maxim,max5970.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Regulator for MAX5970 Smart Switch from Maxim Integrated
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

base-commit: e3ba37699d8ffef2aae8b672c3b87fc1c045eaca
-- 
2.39.1

