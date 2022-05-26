Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57B6253555B
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 23:12:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347163AbiEZVMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 17:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238132AbiEZVMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 17:12:53 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0A27580E3
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 14:12:50 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id u7so3012045ljd.11
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 14:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e5hOXIzlhiwwCk7tfvy3AEbwir/duD3JObyJ/KABOIY=;
        b=QB1NbkhDt0yY9zu9xv6UVgLlzNiSG7BzcLzX9ngtmkYPWvCH8CO7baHkIFWY0KSpO0
         33+TbWWFVFVc8DzK186AuIv6M0BERPewdA2mJAIrzCdj4hE8TQiG+ot0RslaA0k0bs/d
         FvXZmI6ADo2rL66SMZazIKHcIOktfEIjlQW5WH8prYR7aHqhFuZFRwB0lO3D58dqjwxJ
         4GOXAs/cuNHj9ae9h+Ff/QT5mgofHDXCeNum8DOU6VNYPiim3/TfH5pwaBpxNsrGtmnZ
         M8yN0+v6faUgsDkSlEVHnhsX/E4h+pvb8XWgt/HIfvNUU72Md0RDl9wfSw6Wvhooc2dq
         BNeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e5hOXIzlhiwwCk7tfvy3AEbwir/duD3JObyJ/KABOIY=;
        b=QHKG7AhAuOwezGOyfbW9sMFOGZKSy36brrXSRpbbVNweEgaoAMET5ULbAd1zBtGN2/
         czHef1Vx6Fa4BG7jwVXUbsb95J0oscsxaG7iPfG8qbaqUK3holWkl+2qTg6bqhhJaJxf
         OSw1iW3GYSYfDVc+bYJf381PFsp8WNzSu15qZsupYf2S095RCXgBJHiaICLxngz5EVCc
         taZB2vmoMTvQGODZCa2byaUj6F1INmGA06xqVYJDJ/RcJIsSs4dZJTWTHBfCd5pEphMf
         0OO59TTeq57W/8sg25jleQ2K/RMgu79qLLVLggpPeIfV2hs/ftOGZRjtLTAB72s23m31
         FDEQ==
X-Gm-Message-State: AOAM530MbkTpRofxhX53G4jUCPL+wc+Wch5PbeXH1TkfV3IdmhLKMf/4
        RAHdv+JXQ4C5x6xHqrfelcUvhw==
X-Google-Smtp-Source: ABdhPJzI8Mvtsy5umM58n/IUF+Er9MY5uO6i5lCnHr2Yk2lvQGYJFKQ6WHyNm+31xTIADA6Oxxw6fA==
X-Received: by 2002:a2e:82c5:0:b0:247:e81f:8b02 with SMTP id n5-20020a2e82c5000000b00247e81f8b02mr23197207ljh.90.1653599568929;
        Thu, 26 May 2022 14:12:48 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id t2-20020a2e8e62000000b0024f3d1dae7esm651286ljk.6.2022.05.26.14.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 14:12:48 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: i2c: Rewrite Nomadik I2C bindings in YAML
Date:   Thu, 26 May 2022 23:10:46 +0200
Message-Id: <20220526211046.367938-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This rewrites the Nomadik I2C bindings in YAML, some extra
tweaks were needed because of the way the original nomadik
names the compatible with two compatibles and the DB8500
with three, and the two main variants use a different clock
name.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/i2c/i2c-nomadik.txt   |  23 ----
 .../bindings/i2c/st,nomadik-i2c.yaml          | 113 ++++++++++++++++++
 MAINTAINERS                                   |   2 +-
 3 files changed, 114 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-nomadik.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-nomadik.txt b/Documentation/devicetree/bindings/i2c/i2c-nomadik.txt
deleted file mode 100644
index 72065b0ff680..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-nomadik.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-I2C for Nomadik based systems
-
-Required (non-standard) properties:
- - Nil
-
-Recommended (non-standard) properties:
- - clock-frequency : Maximum bus clock frequency for the device
-
-Optional (non-standard) properties:
- - Nil
-
-Example :
-
-i2c@80004000 {
-        compatible = "stericsson,db8500-i2c", "st,nomadik-i2c";
-        reg = <0x80004000 0x1000>;
-        interrupts = <0 21 0x4>;
-        #address-cells = <1>;
-        #size-cells = <0>;
-        v-i2c-supply = <&db8500_vape_reg>;
-
-        clock-frequency = <400000>;
-};
diff --git a/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml b/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
new file mode 100644
index 000000000000..eec502c57047
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/st,nomadik-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST Microelectronics Nomadik I2C Bindings
+
+description: The Nomadik I2C host controller began its life in the ST
+  Microelectronics STn8800 SoC, and was then inherited into STn8810 and
+  STn8815. It was part of the prototype STn8500 which then became ST-Ericsson
+  DB8500 after the merge of these two companies wireless divisions.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+# Need a custom select here or 'arm,primecell' will match on lots of nodes
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - st,nomadik-i2c
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      # The variant found in STn8815
+      - items:
+          - const: st,nomadik-i2c
+          - const: arm,primecell
+      # The variant found in DB8500
+      - items:
+          - const: stericsson,db8500-i2c
+          - const: st,nomadik-i2c
+          - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    oneOf:
+      # Clock name in STn8815
+      - items:
+          - const: mclk
+          - const: apb_pclk
+      # Clock name in DB8500
+      - items:
+          - const: i2cclk
+          - const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  clock-frequency:
+    minimum: 1
+    maximum: 400000
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/stericsson,db8500-prcc-reset.h>
+    #include <dt-bindings/arm/ux500_pm_domains.h>
+    i2c@80004000 {
+      compatible = "stericsson,db8500-i2c", "st,nomadik-i2c", "arm,primecell";
+      reg = <0x80004000 0x1000>;
+      interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+      v-i2c-supply = <&db8500_vape_reg>;
+
+      clock-frequency = <400000>;
+      clocks = <&prcc_kclk 3 3>, <&prcc_pclk 3 3>;
+      clock-names = "i2cclk", "apb_pclk";
+      power-domains = <&pm_domains DOMAIN_VAPE>;
+      resets = <&prcc_reset DB8500_PRCC_3 DB8500_PRCC_3_RESET_I2C0>;
+    };
+
+    i2c@101f8000 {
+      compatible = "st,nomadik-i2c", "arm,primecell";
+      reg = <0x101f8000 0x1000>;
+      interrupt-parent = <&vica>;
+      interrupts = <20>;
+      clock-frequency = <100000>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      clocks = <&i2c0clk>, <&pclki2c0>;
+      clock-names = "mclk", "apb_pclk";
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index fd768d43e048..0d1816f26ccc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2398,7 +2398,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-nomadik.git
 F:	Documentation/devicetree/bindings/arm/ste-*
 F:	Documentation/devicetree/bindings/arm/ux500.yaml
 F:	Documentation/devicetree/bindings/arm/ux500/
-F:	Documentation/devicetree/bindings/i2c/i2c-nomadik.txt
+F:	Documentation/devicetree/bindings/i2c/st,nomadik-i2c.yaml
 F:	arch/arm/boot/dts/ste-*
 F:	arch/arm/mach-nomadik/
 F:	arch/arm/mach-ux500/
-- 
2.35.3

