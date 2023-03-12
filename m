Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0EFA6B6BC5
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 22:29:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230502AbjCLV3T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 17:29:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230304AbjCLV3S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 17:29:18 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0546D18AB4
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 14:29:17 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id s11so41246762edy.8
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 14:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678656555;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ILBZJyBz1q/L98jgfgXRg4/uL4DKnFkFBCa98vRc6CQ=;
        b=mi6ROhZCt7r7YjGunAdd64isK6iQGzIyhEcCPrrjO9xaSUSMA6BHbrQWi3oylZVgCS
         jCYTLHJIRz1IZGl3ksw4zBPdsop838zb4ZA//flBMQF+sAYEWDt/f4MpGgtcsvRdasUw
         Fe4fGpLAcdyzlZWuR74BJgMpRtF9rtTbbrxlgKE9RsL/dzeesVICjwclaREvAw9J4c6m
         DE0dA2CZCIqD5lwE1tR+toMKsJZS3u9xMdWcgurv5O+IbNJkSx3m0dIEVY46MOjDl17V
         44zpJI+mxypCIaRg3jCjb+LGfSJh2A2EnlykPnqJs9mnNndQKxvZJpSxPOt/TmEyFH9Q
         +48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678656555;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ILBZJyBz1q/L98jgfgXRg4/uL4DKnFkFBCa98vRc6CQ=;
        b=CMzYBpa65VdYztvZLslMWpHn39YgBplzqakUJmewzxkqikbECIrAiEmeW2+KDvp5oL
         0HQZwYKAKFJEj8xqaZKX2poAcjqRquXYVbXGUaNf+IYyW3VsBZkAeezoXrqbuQHP6Hje
         3kiFUXD8ui1ukd429MDsy+4LQXeDJj3hmnwmVIklCC7UJ8n9ZHZAHLQShV+4XaNknvM6
         zCXC/lzp0+MQ3f5X65zbV46IJznrOTLaoUq297zHjJZ1H/Npcl9Ryps5vtE84rC8gp68
         ukuZ28FgzsUqnCAA2oBMV1DekyMQCI0cUygf0u1GzrfmBsFwBExo6NZR/tQXdKfV2R1A
         BfRQ==
X-Gm-Message-State: AO0yUKWTTVgGbNCe/FFkW/2uRiL77CR3PuD+ohQp4iAue7yASh4SITl1
        Pl6PyioxHhbmtnWmXH09RwE=
X-Google-Smtp-Source: AK7set9wfz8nYoSr6C8f53CakOVimuzQy2+nLLknKBL28clXqkQhNZU8YcWisGhivsZtRHfT1I3NVQ==
X-Received: by 2002:a17:907:6092:b0:888:b471:8e46 with SMTP id ht18-20020a170907609200b00888b4718e46mr40717483ejc.50.1678656555295;
        Sun, 12 Mar 2023 14:29:15 -0700 (PDT)
Received: from ?IPV6:2a01:c23:b9c8:9800:5093:57c3:81d7:5324? ([2a01:c23:b9c8:9800:5093:57c3:81d7:5324])
        by smtp.googlemail.com with ESMTPSA id b18-20020a17090636d200b008d0dbf15b8bsm2596889ejc.212.2023.03.12.14.29.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 14:29:14 -0700 (PDT)
Message-ID: <e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com>
Date:   Sun, 12 Mar 2023 22:29:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v2] dt-bindings: interrupt-controller: Convert Amlogic Meson
 GPIO interrupt controller binding
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Amlogic Meson GPIO interrupt controller binding to yaml.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
- consider that more than one compatible may be set
- remove bus part from example
- remove minItem/maxItem properties for compatible
- reduce compatible fallback complexity
- add that 8 or 12 GIC interrupts can be used
- fix typo
---
 .../amlogic,meson-gpio-intc.txt               | 38 ----------
 .../amlogic,meson-gpio-intc.yaml              | 72 +++++++++++++++++++
 2 files changed, 72 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
deleted file mode 100644
index bde63f8f0..000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-Amlogic meson GPIO interrupt controller
-
-Meson SoCs contains an interrupt controller which is able to watch the SoC
-pads and generate an interrupt on edge or level. The controller is essentially
-a 256 pads to 8 GIC interrupt multiplexer, with a filter block to select edge
-or level and polarity. It does not expose all 256 mux inputs because the
-documentation shows that the upper part is not mapped to any pad. The actual
-number of interrupt exposed depends on the SoC.
-
-Required properties:
-
-- compatible : must have "amlogic,meson8-gpio-intc" and either
-    "amlogic,meson8-gpio-intc" for meson8 SoCs (S802) or
-    "amlogic,meson8b-gpio-intc" for meson8b SoCs (S805) or
-    "amlogic,meson-gxbb-gpio-intc" for GXBB SoCs (S905) or
-    "amlogic,meson-gxl-gpio-intc" for GXL SoCs (S905X, S912)
-    "amlogic,meson-axg-gpio-intc" for AXG SoCs (A113D, A113X)
-    "amlogic,meson-g12a-gpio-intc" for G12A SoCs (S905D2, S905X2, S905Y2)
-    "amlogic,meson-sm1-gpio-intc" for SM1 SoCs (S905D3, S905X3, S905Y3)
-    "amlogic,meson-a1-gpio-intc" for A1 SoCs (A113L)
-    "amlogic,meson-s4-gpio-intc" for S4 SoCs (S802X2, S905Y4, S805X2G, S905W2)
-- reg : Specifies base physical address and size of the registers.
-- interrupt-controller : Identifies the node as an interrupt controller.
-- #interrupt-cells : Specifies the number of cells needed to encode an
-   interrupt source. The value must be 2.
-- meson,channel-interrupts: Array with the 8 upstream hwirq numbers. These
-   are the hwirqs used on the parent interrupt controller.
-
-Example:
-
-gpio_interrupt: interrupt-controller@9880 {
-	compatible = "amlogic,meson-gxbb-gpio-intc",
-		     "amlogic,meson-gpio-intc";
-	reg = <0x0 0x9880 0x0 0x10>;
-	interrupt-controller;
-	#interrupt-cells = <2>;
-	meson,channel-interrupts = <64 65 66 67 68 69 70 71>;
-};
diff --git a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
new file mode 100644
index 000000000..fe7ef1916
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/amlogic,meson-gpio-intc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Meson GPIO interrupt controller
+
+maintainers:
+  - Heiner Kallweit <hkallweit1@gmail.com>
+
+description: |
+  Meson SoCs contains an interrupt controller which is able to watch the SoC
+  pads and generate an interrupt on edge or level. The controller is essentially
+  a 256 pads to 8 or 12 GIC interrupt multiplexer, with a filter block to select
+  edge or level and polarity. It does not expose all 256 mux inputs because the
+  documentation shows that the upper part is not mapped to any pad. The actual
+  number of interrupts exposed depends on the SoC.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: amlogic,meson-gpio-intc
+      - items:
+          - enum:
+              - amlogic,meson8-gpio-intc
+              - amlogic,meson8b-gpio-intc
+              - amlogic,meson-gxbb-gpio-intc
+              - amlogic,meson-gxl-gpio-intc
+              - amlogic,meson-axg-gpio-intc
+              - amlogic,meson-g12a-gpio-intc
+              - amlogic,meson-sm1-gpio-intc
+              - amlogic,meson-a1-gpio-intc
+              - amlogic,meson-s4-gpio-intc
+          - const: amlogic,meson-gpio-intc
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  amlogic,channel-interrupts:
+    description: Array with the upstream hwirq numbers
+    minItems: 8
+    maxItems: 12
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - "#interrupt-cells"
+  - amlogic,channel-interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller@9880 {
+      compatible = "amlogic,meson-gxbb-gpio-intc",
+                   "amlogic,meson-gpio-intc";
+      reg = <0x9880 0x10>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+      amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
+    };
-- 
2.39.1


