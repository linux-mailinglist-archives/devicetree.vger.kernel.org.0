Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E38E686D6E
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 18:54:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230207AbjBARyM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 12:54:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229851AbjBARyL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 12:54:11 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CB347BBE5
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 09:54:10 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id dr8so32180776ejc.12
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 09:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8ap3SgLgteZF/8WdEckswPZaYBHI0YNKX/dzmMwZiQ=;
        b=CeiRkE4HZ91nkhnqKXD89CkqJ+lJgmfpk7ipEdCIAvKLK6rxg6J/szMbRWg4It9eu8
         1tz8QzcErkbtajk8L8AaFL4nbYJ00zc9cdBTx5+EobQ3+UNt6spKEOkZVo0omQFHhLNi
         2ujaw/7sofsFyTE5s+z4fmYH3OjIuHXuKNDmHSmlPHnKIQYBzTZTZlTtpe9WWwqitZ2P
         e1oUL8VL2CvGtGAokymB1sOAz0W112rOS6dWhRPHxk/0H0oz8XvtFJuXkIYc3BKYq4gl
         4AkkyhjbZ4Qpj2v5OABcPnePSekhEklomExURazP5wg14+8qn60xC7HMbPj0f0kRedjd
         iKlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n8ap3SgLgteZF/8WdEckswPZaYBHI0YNKX/dzmMwZiQ=;
        b=pdVaSIcbhkdkK1ch7L7xMGaqQ1NWcX1BFDenbF7amyyqDLNyFmVzzaXgBWsxHW3zwa
         1b4BNF/w2vODb++nKRkse+7b8hH6DIENAInJx3qXS/ujTK3rpIxsBZC1NqY/SdN4GdSw
         qCHS/DBKz/2kwRnw9CzYt3NtWhifFlm/bxvbpA2pfqRIlFTIccY8OrykoCE//O1KUirE
         bz7SVMeVXdAV1VaI5n0qXzQwF7LOCQdM6KF7PX+YMr0Yvlgt70RUQ2tcUL3zz0JJGIk4
         WuEg3bq+yp7zr2tNtdvKnoCXF4BV2qXr32bBDsBpifN3b4Q/E0ab5LbVC9wwQPJlxwhS
         vCGQ==
X-Gm-Message-State: AO0yUKVjeZUpatePaYH9faHD8ACOZFoIjlND7S1nFJv/rylHk9tx1dB6
        juCnX1zX9QMTt5Z2VEr4Ex4=
X-Google-Smtp-Source: AK7set/akvpcX1Y5UxRRrNHlE4CtK2yiOvZxBvaVxy7VwrPT6j1I8Z/9UUmULW/eHoD2wKDndHMS9w==
X-Received: by 2002:a17:906:bcf6:b0:84d:4493:c83f with SMTP id op22-20020a170906bcf600b0084d4493c83fmr3355489ejb.6.1675274048622;
        Wed, 01 Feb 2023 09:54:08 -0800 (PST)
Received: from ?IPV6:2a01:c23:b912:d400:3963:7bc4:12b:ddb3? (dynamic-2a01-0c23-b912-d400-3963-7bc4-012b-ddb3.c23.pool.telefonica.de. [2a01:c23:b912:d400:3963:7bc4:12b:ddb3])
        by smtp.googlemail.com with ESMTPSA id es12-20020a056402380c00b00488117821ffsm10088037edb.31.2023.02.01.09.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 09:54:08 -0800 (PST)
Message-ID: <fd8ad23c-4d9e-d3a4-d817-efa6389ae9ad@gmail.com>
Date:   Wed, 1 Feb 2023 18:54:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH v4] dt-bindings: interrupt-controller: Convert Amlogic Meson
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

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
v2:
- consider that more than one compatible may be set
- remove bus part from example
v3:
- remove minItem/maxItem properties for compatible
v4:
- sent separate patch to fix order of some compatibles in dts.
- this reduces compatible fallbacks complexity
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

