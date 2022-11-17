Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F7A562E654
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 22:05:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240571AbiKQVFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 16:05:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240562AbiKQVE4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 16:04:56 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E2CD90587
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:12 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id ud5so8250809ejc.4
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cOZMxW37BY8Yd9fEGMThaSEaaYa1HlPqz2FtFLwUuYk=;
        b=kR8n89044TBqJ54l4lMHOxRV7EqoXki+eLerysd/jNKPYGrAgxT799qR28Qvy/LCJX
         in49v01xRAuavqdSJSNE+XvSNP9EjMvNp4AM++hjjJD5029gwjysKmNLLwPmk2gbblOt
         Bcz4U54Rv+ENpz/1P74mPIQ1ZwCj8reBpQwVGykfGJ64rXJ0az+imp5MWD+EukriXf2f
         xD6ikXLo/tzc+bODI2IFP+DDOXZnuq0i8gR+Pup1MdF3McRAG/9SYACWT3BSzGPsfxuO
         HohqWTodc3G+LuF6Q0LMJfM8QLl0NCQmXDVFI6YirVVTX0IMKc/KkHe2VvvCyKD/8TWm
         T3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cOZMxW37BY8Yd9fEGMThaSEaaYa1HlPqz2FtFLwUuYk=;
        b=ekKfWyEg8ydO7fUpIaF9QEyBBWS6piYIJmpNG03EF6R+QEGtLdVTkMk1zzwq9k8nc9
         UMYgkgxxijSTNMB4pZ1fuLlPXfC60LrD1czSvcum69/H6BfeaRn1VbTkMGOa8t6QkgF8
         QKBgOSP37f6hRdYHjHxn/XoaNF2e3UoVV3ySX32pht2CYuaFfukkkv4NBjP1iiGX9wKQ
         f92tVfP2qEMV7K7KwaKpYHj0ftIveEBhRZg+pvQvUjOEaeW8tdu0JMFuPZWDUAkowzbC
         GqWV16muLUbM7SCRVuFZCgsnCkPSpBKb5oYPUN0HKKM6fOMp+ScMYUVcKHqNvb+UIX9g
         QNKg==
X-Gm-Message-State: ANoB5plOdl+1gxzPSG4x4lxT7ksz48xJRnyP2BOHtMKbM4TehBUWv9HN
        Rha4M2vVYMzjGiMQ6ls1XKC6qA==
X-Google-Smtp-Source: AA0mqf7GVJmPGe5w3OiV7GSu8z66QxmncDwrO3Radqx3bd+fbpsX4JPWp837tyt8F7gTqW3iiR3Cfg==
X-Received: by 2002:a17:906:ef1:b0:78d:260d:a6e4 with SMTP id x17-20020a1709060ef100b0078d260da6e4mr3532130eji.93.1668719047430;
        Thu, 17 Nov 2022 13:04:07 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7cc8f000000b00461c6e8453dsm970807edt.23.2022.11.17.13.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 13:04:06 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogiocchino.delregno@collabora.com
Subject: [PATCH v3 4/7] dt-bindings: pinctrl: add bindings for Mediatek MT8365 SoC
Date:   Thu, 17 Nov 2022 22:03:53 +0100
Message-Id: <20221117210356.3178578-5-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117210356.3178578-1-bero@baylibre.com>
References: <20221117210356.3178578-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for Mediatek MT8365 pinctrl driver.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../pinctrl/mediatek,mt8365-pinctrl.yaml      | 202 ++++++++++++++++++
 1 file changed, 202 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
new file mode 100644
index 0000000000000..7758644da302a
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
@@ -0,0 +1,202 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/mediatek,mt8365-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek MT8365 Pin Controller
+
+maintainers:
+  - Zhiyong Tao <zhiyong.tao@mediatek.com>
+  - Bernhard Rosenkränzer <bero@baylibre.com>
+
+description: |+
+  The MediaTek's MT8365 Pin controller is used to control SoC pins.
+
+properties:
+  compatible:
+    const: mediatek,mt8365-pinctrl
+
+  reg:
+    maxItems: 1
+
+  mediatek,pctl-regmap:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      maxItems: 1
+    minItems: 1
+    maxItems: 2
+    description: |
+      Should be phandles of the syscfg node.
+
+  pins-are-numbered:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      Specify the subnodes are using numbered pinmux to specify pins.
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+    description: |
+      Number of cells in GPIO specifier. Since the generic GPIO
+      binding is used, the amount of cells must be specified as 2. See the below
+      mentioned gpio binding representation for description of particular cells.
+
+  interrupt-controller: true
+
+  interrupts:
+    maxItems: 1
+
+  "#interrupt-cells":
+    const: 2
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - "#gpio-cells"
+
+allOf:
+  - $ref: pinctrl.yaml#
+
+patternProperties:
+  '-pins$':
+    type: object
+    additionalProperties: false
+    patternProperties:
+      'pins':
+        type: object
+        additionalProperties: false
+        description: |
+          A pinctrl node should contain at least one subnode representing the
+          pinctrl groups available on the machine. Each subnode will list the
+          pins it needs, and how they should be configured, with regard to muxer
+          configuration, pullups, drive strength, input enable/disable and input
+          schmitt.
+        $ref: "/schemas/pinctrl/pincfg-node.yaml"
+
+        properties:
+          pinmux:
+            description:
+              integer array, represents gpio pin number and mux setting.
+              Supported pin number and mux varies for different SoCs, and are
+              defined as macros in <soc>-pinfunc.h directly.
+
+          bias-disable: true
+
+          bias-pull-up:
+            description: |
+              Besides generic pinconfig options, it can be used as the pull up
+              settings for 2 pull resistors, R0 and R1. User can configure those
+              special pins.
+
+          bias-pull-down: true
+
+          input-enable: true
+
+          input-disable: true
+
+          output-low: true
+
+          output-high: true
+
+          input-schmitt-enable: true
+
+          input-schmitt-disable: true
+
+          mediatek,drive-strength-adv:
+            description: |
+              Describe the specific driving setup property.
+              For I2C pins, the existing generic driving setup can only support
+              2/4/6/8/10/12/14/16mA driving. But in specific driving setup, they
+              can support 0.125/0.25/0.5/1mA adjustment. If we enable specific
+              driving setup, the existing generic setup will be disabled.
+              The specific driving setup is controlled by E1E0EN.
+              When E1=0/E0=0, the strength is 0.125mA.
+              When E1=0/E0=1, the strength is 0.25mA.
+              When E1=1/E0=0, the strength is 0.5mA.
+              When E1=1/E0=1, the strength is 1mA.
+              EN is used to enable or disable the specific driving setup.
+              Valid arguments are described as below:
+              0: (E1, E0, EN) = (0, 0, 0)
+              1: (E1, E0, EN) = (0, 0, 1)
+              2: (E1, E0, EN) = (0, 1, 0)
+              3: (E1, E0, EN) = (0, 1, 1)
+              4: (E1, E0, EN) = (1, 0, 0)
+              5: (E1, E0, EN) = (1, 0, 1)
+              6: (E1, E0, EN) = (1, 1, 0)
+              7: (E1, E0, EN) = (1, 1, 1)
+              So the valid arguments are from 0 to 7.
+            $ref: /schemas/types.yaml#/definitions/uint32
+            enum: [0, 1, 2, 3, 4, 5, 6, 7]
+
+          mediatek,pull-up-adv:
+            description: |
+              Pull up setings for 2 pull resistors, R0 and R1. User can
+              configure those special pins. Valid arguments are described as below:
+              0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
+              1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
+              2: (R1, R0) = (1, 0) which means R1 enabled and R0 disabled.
+              3: (R1, R0) = (1, 1) which means R1 enabled and R0 enabled.
+            $ref: /schemas/types.yaml#/definitions/uint32
+            enum: [0, 1, 2, 3]
+
+          mediatek,pull-down-adv:
+            description: |
+              Pull down settings for 2 pull resistors, R0 and R1. User can
+              configure those special pins. Valid arguments are described as below:
+              0: (R1, R0) = (0, 0) which means R1 disabled and R0 disabled.
+              1: (R1, R0) = (0, 1) which means R1 disabled and R0 enabled.
+              2: (R1, R0) = (1, 0) which means R1 enabled and R0 disabled.
+              3: (R1, R0) = (1, 1) which means R1 enabled and R0 enabled.
+            $ref: /schemas/types.yaml#/definitions/uint32
+            enum: [0, 1, 2, 3]
+
+          mediatek,tdsel:
+            description: |
+              An integer describing the steps for output level shifter duty
+              cycle when asserted (high pulse width adjustment). Valid arguments
+              are from 0 to 15.
+            $ref: /schemas/types.yaml#/definitions/uint32
+
+          mediatek,rdsel:
+            description: |
+              An integer describing the steps for input level shifter duty cycle
+              when asserted (high pulse width adjustment). Valid arguments are
+              from 0 to 63.
+            $ref: /schemas/types.yaml#/definitions/uint32
+
+        required:
+          - pinmux
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/pinctrl/mt8365-pinfunc.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pio: pinctrl@1000b000 {
+          compatible = "mediatek,mt8365-pinctrl";
+          reg = <0 0x1000b000 0 0x1000>;
+          mediatek,pctl-regmap = <&syscfg_pctl>;
+          pins-are-numbered;
+          gpio-controller;
+          #gpio-cells = <2>;
+          interrupt-controller;
+          #interrupt-cells = <2>;
+          interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+          pio-pins {
+            pins {
+              pinmux = <MT8365_PIN_59_SDA1__FUNC_SDA1_0>, <MT8365_PIN_60_SCL1__FUNC_SCL1_0>;
+              mediatek,pull-up-adv = <3>;
+              mediatek,drive-strength-adv = <00>;
+              bias-pull-up;
+            };
+          };
+        };
+    };
-- 
2.38.1

