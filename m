Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC8A9681BDD
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 21:53:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbjA3Uxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 15:53:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230128AbjA3Uxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 15:53:30 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D05C747EC3
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 12:53:27 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h16so12349032wrz.12
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 12:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eD95aqCdSJEb0Js8Lzd6h0iY+25nulsCznDdKF/J8xQ=;
        b=KNtZK3HJ9OFwjslk5YOZk6fEaaT5eRnO7wLRMBb9amscg5rLVNCR/YlKionSxYi1ts
         JG0f3PcoEXTmZVG7hvKQ9A/W0gqpg+FRCrA8/B0ALGAMd8pGMxnTOD4pJ1XN7UspX9LS
         /9m/i//EtWRY7vQzb0waUtA5O3vHnwjrd//7BZ68VaSz4Jngs8uPjkz6dKMpiaHXa2Bc
         fa5gQs9N8GM4SBn37OoHBn0Y7xlP70NW3OBmnU7QONV1XUsAUbS4ZjoxL2MGj6mNoTJh
         7dCtGLfPZ14dxlLbDgdrIAxlrqZ5/129ZFX9RuUFKrpZ5TA/uJSxfQTjw/OW4u1GKjv9
         pQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eD95aqCdSJEb0Js8Lzd6h0iY+25nulsCznDdKF/J8xQ=;
        b=0rbYUYa82W+jVV5ls9sv5iWa9bNytvalvqjt2uOS3RX1B5jTClg18fQAYFFocQZgQy
         Y9+kOD+9RhnNPiNj8WO4zRZ8qF988CF2hBrVV6k9zaRqA3nvJImycPqOdya8JMF78Awg
         WubY5LSQH/A/5ns3jCZucekNxfefDpfZQ9yTuuYtvyVleuDBS6YhQXxVpJxI9BaYSIv+
         r6b1AIkiavIy8Im90WCiajPM8g+Ea99sB9nOqNTH1gDXI1tY4cm9fDODqLEOMXsHRw3H
         7Nrs55fx6ZraH7Z0xCBXxbfh1DTJ/lLu9z54ywmWsJJxN0hEeilcdlSINZ1lvwpwgmlB
         ygZg==
X-Gm-Message-State: AO0yUKX1OAO96xe4tCn9CMpJM4yqIJVni2/8Kp5qFVzSicxOUWcoFJic
        i/JVv50FJUaEADO42RLH1so=
X-Google-Smtp-Source: AK7set8bfU4P4657znncp9j0VJOVmWlSeCiKICa+ROuqXInavn7svHSi+B1+bstl3wZBkKMq43eVtQ==
X-Received: by 2002:a5d:4283:0:b0:2bf:d428:a768 with SMTP id k3-20020a5d4283000000b002bfd428a768mr10636517wrq.49.1675112006273;
        Mon, 30 Jan 2023 12:53:26 -0800 (PST)
Received: from ?IPV6:2a01:c23:c074:7400:d941:3cb5:fa86:8ec8? (dynamic-2a01-0c23-c074-7400-d941-3cb5-fa86-8ec8.c23.pool.telefonica.de. [2a01:c23:c074:7400:d941:3cb5:fa86:8ec8])
        by smtp.googlemail.com with ESMTPSA id b11-20020adfe30b000000b002bfcc940014sm11600285wrj.82.2023.01.30.12.53.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jan 2023 12:53:25 -0800 (PST)
Message-ID: <a1dee1a5-54d4-47ad-c914-8e9a801cd4a0@gmail.com>
Date:   Mon, 30 Jan 2023 21:53:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v3] dt-bindings: interrupt-controller: Convert Amlogic Meson
 GPIO interrupt controller binding
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <cb62dfc0-cb3d-beba-6d0b-8db18583dda0@gmail.com>
Content-Language: en-US
In-Reply-To: <cb62dfc0-cb3d-beba-6d0b-8db18583dda0@gmail.com>
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

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- consider that more than one compatible may be set
- remove bus part from example
v3:
- remove minItem/maxItem properties for compatible
---
 .../amlogic,meson-gpio-intc.txt               | 38 ---------
 .../amlogic,meson-gpio-intc.yaml              | 84 +++++++++++++++++++
 2 files changed, 84 insertions(+), 38 deletions(-)
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
index 000000000..da55a2d25
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
@@ -0,0 +1,84 @@
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
+  a 256 pads to 8 GIC interrupt multiplexer, with a filter block to select edge
+  or level and polarity. It does not expose all 256 mux inputs because the
+  documentation shows that the upper part is not mapped to any pad. The actual
+  number of interrupt exposed depends on the SoC.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - amlogic,meson-gpio-intc
+              - amlogic,meson8-gpio-intc
+              - amlogic,meson8b-gpio-intc
+              - amlogic,meson-gxbb-gpio-intc
+              - amlogic,meson-gxl-gpio-intc
+              - amlogic,meson-axg-gpio-intc
+              - amlogic,meson-g12a-gpio-intc
+              - amlogic,meson-sm1-gpio-intc
+              - amlogic,meson-a1-gpio-intc
+              - amlogic,meson-s4-gpio-intc
+      - items:
+          - enum:
+              - amlogic,meson8-gpio-intc
+              - amlogic,meson-axg-gpio-intc
+              - amlogic,meson-g12a-gpio-intc
+              - amlogic,meson-sm1-gpio-intc
+              - amlogic,meson-s4-gpio-intc
+          - const: amlogic,meson-gpio-intc
+      - items:
+          - const: amlogic,meson-gpio-intc
+          - enum:
+              - amlogic,meson8b-gpio-intc
+              - amlogic,meson-gxbb-gpio-intc
+              - amlogic,meson-gxl-gpio-intc
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
+      compatible = "amlogic,meson-gxbb-gpio-intc";
+      reg = <0x9880 0x10>;
+      interrupt-controller;
+      #interrupt-cells = <2>;
+      amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
+    };
-- 
2.39.1

