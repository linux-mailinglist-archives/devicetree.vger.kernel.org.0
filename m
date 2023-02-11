Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F156269315C
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 14:48:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjBKNs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 08:48:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjBKNs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 08:48:28 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 665C52CFE4
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 05:48:07 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id u10so5752181wmj.3
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 05:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FPN1fIKNwenCr+g17limoc+6SEvzIeR24uuY13yy6Ts=;
        b=bkyse87jJ+x659elj3r0wDAD5+kWKv9NU4FubQREBpkpAkiuh6TyEwWJPXzxNVYodr
         YzD++4b/g95XW1ajFyB89vp12q+CWeoLCSMbMeonYl/JlMx6KuRKavDObNxSl9GnKD1s
         Cs7qQhxjycAy1+3vWQ78vshLP77gvoSczzUHJfy+raskrEN+TOZfokwnWyFOnJxA+SFx
         q2GsBuY7s6Zqbx3/n68KvoF7gk2NIOksBxDMBp2pWLuo6+7MVN00ErbASqQ9u2l114tU
         Xw4ZN/kTFT6oWAKq7XeN/9O0W+9n15whbe1lbAigXbY0X6ROcAzx5/SBqvxD1KtF52jl
         9frA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FPN1fIKNwenCr+g17limoc+6SEvzIeR24uuY13yy6Ts=;
        b=hPFQ+ZkajgiMo0p7vI+taQqfWgYTPvtqfbrJHQGeTeQGeSkZr+QzQlpIX9WjiX4qfn
         DSggaOixgfeWgCYipZ0ByvxZTIP3LuKBbc7jcSgK/zkAOgbIJecLVoFpVvD+oYnQZEjD
         gqzG2aOEEJfRFhPwNNWeYFNiugnkQomKo5t9WGPV3uZ/D4bsdJISMnkqpMpOkUKkQ5gB
         0baJPR+Q+UZX0mfAXj/DNttYpvD8xcglfih2+6+WV6GApLbjTO7CBu2MdFiDzq9WrrbL
         pEHDyyTRIBITNVyJV++T/fftuWU7fJ4d74Z1sXUUOovmrhBGlF43PPsGqjBsUg0vwTJk
         YidQ==
X-Gm-Message-State: AO0yUKWW0SebOGeefo63nnJgHDcCzH0+L80JN5tk63LikPUcBg/BpYnO
        4seEh0kHDi9FStaKwdIbpFcZag==
X-Google-Smtp-Source: AK7set9hAdDp/5L04rWBd+pLPbleynZB6ORfeOlNet5AwXo1WxJRr5lGolL4A1cLdRRm9x7g53qNaA==
X-Received: by 2002:a05:600c:1684:b0:3d0:761b:f86 with SMTP id k4-20020a05600c168400b003d0761b0f86mr15004606wmn.28.1676123278201;
        Sat, 11 Feb 2023 05:47:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p24-20020a05600c1d9800b003dd1bd0b915sm11186536wms.22.2023.02.11.05.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Feb 2023 05:47:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: maxim,max98095: Convert to dtschema
Date:   Sat, 11 Feb 2023 14:47:55 +0100
Message-Id: <20230211134755.86061-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Maxim Integrated MAX98095 audio codec bindings to DT schema.
Add missing sound-dai-cells during conversion.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/max98095.txt    | 22 --------
 .../bindings/sound/maxim,max98095.yaml        | 54 +++++++++++++++++++
 2 files changed, 54 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/max98095.txt
 create mode 100644 Documentation/devicetree/bindings/sound/maxim,max98095.yaml

diff --git a/Documentation/devicetree/bindings/sound/max98095.txt b/Documentation/devicetree/bindings/sound/max98095.txt
deleted file mode 100644
index 318a4c82f17f..000000000000
--- a/Documentation/devicetree/bindings/sound/max98095.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-MAX98095 audio CODEC
-
-This device supports I2C only.
-
-Required properties:
-
-- compatible : "maxim,max98095".
-
-- reg : The I2C address of the device.
-
-Optional properties:
-
-- clocks: The phandle of the master clock to the CODEC
-
-- clock-names: Should be "mclk"
-
-Example:
-
-max98095: codec@11 {
-	compatible = "maxim,max98095";
-	reg = <0x11>;
-};
diff --git a/Documentation/devicetree/bindings/sound/maxim,max98095.yaml b/Documentation/devicetree/bindings/sound/maxim,max98095.yaml
new file mode 100644
index 000000000000..77544a9e1587
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/maxim,max98095.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/maxim,max98095.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX98095 audio codec
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - maxim,max98095
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: master clock
+
+  clock-names:
+    items:
+      - const: mclk
+
+  '#sound-dai-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        audio-codec@11 {
+            compatible = "maxim,max98095";
+            reg = <0x11>;
+            clocks = <&i2s0 0>;
+            clock-names = "mclk";
+        };
+    };
-- 
2.34.1

