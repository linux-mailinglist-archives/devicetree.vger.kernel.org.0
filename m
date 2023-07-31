Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04FA1769CE7
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 18:39:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233410AbjGaQjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 12:39:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233455AbjGaQjH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 12:39:07 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC68D270A
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 09:38:38 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b9d07a8d84so49578031fa.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 09:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690821517; x=1691426317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LsanXy8k3EumbMnHWgiWkn8DzzFx1eum1pbJ+kZJ9sk=;
        b=ZR2yqUtaKyrfAHirBD+QMQu25SdfFhbHrp7Bo6qir3Htx8jZ5B2s9Qvb193N6dyjgo
         HjzODJ0n/kgZvvcZZc+VYonmYtOtp9VCtKoWb6PYk93q08t0/r/KXecl1PV1bQ0Vm0Kr
         Z8yeaAj3u/dmY0MeNe8UWaoPtbSaI+1s6U+GpuJrXqGZwbWoBGitD5cndQKIDejyDleQ
         d1ucCdpzVxWdTPc+1S2PvLDwxkRQPkp5ljKUX8In331Al9D3iSoXN7+FbhNgvOPPitTn
         yATQ40SZlHP7Y673OtEKHKgaW82hMEPTi8UaeaBXCas+aj5FrEAf2sPDcD2m6oDEJce0
         NlQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690821517; x=1691426317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LsanXy8k3EumbMnHWgiWkn8DzzFx1eum1pbJ+kZJ9sk=;
        b=Bx8NVOFRtKBGlaLXDSlCws3hXZmAcnS8r3BrBAsUMMN0qkzC5X/NqYvJej8F3Qxqdl
         cz+aqOwAY22LrvP55qYXjBwREX3pLN3rYfxW4uhCy5xiVVkQYJayqDmM2HWurzstZYhy
         VcxTBDvYGrRZxAgCB2Z1ojR2Mn/xqzGTYki/uZ57f/Vo/C2TN0xLfQjTxep28kD4GjBA
         aF6dIBH1+v6aLVf7m1vhesrjH4u5p9wE0nPLhaQAR1qJjEo5QDk/dLR0iZOgMreRtB1a
         PumObyViZ2p4o9q8T87FAUNJy4Jl2YS2EM0s36+Ol8ZNKffrivTYLDWytBIjn2A6RrT1
         dGVA==
X-Gm-Message-State: ABy/qLbR8SsA7gETUK0B9Q48bbdS2R1H5e+2K/VjgIrexzA8zeYxIzBo
        zXmzxMqK5shnjXDC0m9mFdYbyw==
X-Google-Smtp-Source: APBJJlEphxuDpI4mRHiYZpwGe2gegJkIAfr2OFqa5KQLvvvJBMzr2amzftrwIzMEblpkKcawDQxbWg==
X-Received: by 2002:a2e:8ec3:0:b0:2b9:ec57:c330 with SMTP id e3-20020a2e8ec3000000b002b9ec57c330mr406548ljl.7.1690821516817;
        Mon, 31 Jul 2023 09:38:36 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id n22-20020a170906841600b009934707378fsm6350775ejx.87.2023.07.31.09.38.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 09:38:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/2] dt-bindings: i2c: nxp,pca9541: convert to DT schema
Date:   Mon, 31 Jul 2023 18:38:32 +0200
Message-Id: <20230731163833.319258-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the bindings for NXP PCA9541 I2C bus master selector to DT
schema.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Peter Rosin <peda@axentia.se>
Acked-by: Andi Shyti <andi.shyti@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v3:
1. Add acks.

Changes in v2:
1. New patch (Doug).
---
 .../devicetree/bindings/i2c/nxp,pca9541.txt   | 29 ----------
 .../devicetree/bindings/i2c/nxp,pca9541.yaml  | 56 +++++++++++++++++++
 2 files changed, 56 insertions(+), 29 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/nxp,pca9541.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/nxp,pca9541.yaml

diff --git a/Documentation/devicetree/bindings/i2c/nxp,pca9541.txt b/Documentation/devicetree/bindings/i2c/nxp,pca9541.txt
deleted file mode 100644
index 42bfc09c8918..000000000000
--- a/Documentation/devicetree/bindings/i2c/nxp,pca9541.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-* NXP PCA9541 I2C bus master selector
-
-Required Properties:
-
-  - compatible: Must be "nxp,pca9541"
-
-  - reg: The I2C address of the device.
-
-  The following required properties are defined externally:
-
-  - I2C arbitration bus node. See i2c-arb.txt in this directory.
-
-
-Example:
-
-	i2c-arbitrator@74 {
-		compatible = "nxp,pca9541";
-		reg = <0x74>;
-
-		i2c-arb {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			eeprom@54 {
-				compatible = "atmel,24c08";
-				reg = <0x54>;
-			};
-		};
-	};
diff --git a/Documentation/devicetree/bindings/i2c/nxp,pca9541.yaml b/Documentation/devicetree/bindings/i2c/nxp,pca9541.yaml
new file mode 100644
index 000000000000..b65c25c1a435
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/nxp,pca9541.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/nxp,pca9541.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP PCA9541 I2C bus master selector
+
+maintainers:
+  - Peter Rosin <peda@axentia.se>
+
+properties:
+  compatible:
+    const: nxp,pca9541
+
+  reg:
+    maxItems: 1
+
+  i2c-arb:
+    type: object
+    $ref: /schemas/i2c/i2c-controller.yaml
+    unevaluatedProperties: false
+    description:
+      I2C arbitration bus node.
+
+required:
+  - compatible
+  - reg
+  - i2c-arb
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        i2c-arbitrator@74 {
+            compatible = "nxp,pca9541";
+            reg = <0x74>;
+
+            i2c-arb {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                eeprom@54 {
+                    compatible = "atmel,24c08";
+                    reg = <0x54>;
+                };
+            };
+        };
+    };
-- 
2.34.1

