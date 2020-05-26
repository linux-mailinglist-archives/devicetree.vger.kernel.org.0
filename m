Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 961B21B2113
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2020 10:06:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727801AbgDUIG6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Apr 2020 04:06:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726403AbgDUIG4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Apr 2020 04:06:56 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A698C061A0F
        for <devicetree@vger.kernel.org>; Tue, 21 Apr 2020 01:06:56 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id k28so10356517lfe.10
        for <devicetree@vger.kernel.org>; Tue, 21 Apr 2020 01:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mzFEPeMdiYfPEUHylv58dh/en7nprJe45mS8FlBWrSs=;
        b=P5Cau5mcQb/dtxGn3vL82In9QZ528aUybqggqzAW5oOE4pVtlM/87cSFIP7ckq64Bt
         AOOJ03WBRUmGqaCWf3c+Dyt0Amdxgzc5FFqUxWtRxfGjQ/WseU5Of/NkdQdK4681B/cO
         IFKdr1pOx7JGOuXgJ5QVok/yhhEUwc1291J/PdaznYicvdIO26oUhYuuXQ2SFjUbViwj
         mTiG2c13HUqNfBN8CtvJGlSK8fVFwaQsdccXeXGSlZ18wBobcsNS+uaqijATh3z4nE5k
         I3544BK9BADwcyi/F7moT0tm+4xMKGBwCV30dQPq+DO/fhjCik+quQYM2LwAJ+0YYYM3
         rxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mzFEPeMdiYfPEUHylv58dh/en7nprJe45mS8FlBWrSs=;
        b=STWinlhepRIjk0D3r08p0SqxvMCrOATHRLcqMPHQqY3KwObOBPrIAUouv6fTC7DO6h
         xigZ+t3OH2Oi3P+rmJUeM0goCMKLKq2uBhYkevoG1MjYljaCY/WGMZtRL1+rZ8mDmx/b
         fV1l6w6XDCA5wbW2RJNKoMVeeKQb1BSVkVpa4kNSfyW1Ozqw9cqetE/M7Htq9h0UnInS
         OA9d/pc4GKDp+4D4NIkpkLHXPrlsZjrJePEFdsJVw+EbMsJIHx6FIA4iunqjrg6W0DFN
         xuSayd7wAtQ/zYdIAdGrMqZ6uC8ZZtPYzcj2Ia/tQDXX4OLvWqVeCc27KulFdGtQIwMM
         bRcQ==
X-Gm-Message-State: AGi0PubzSyGxxlN1wPnHK04PHbN00bROke/SytuzpLDfgHzXaUWcklTJ
        jH2O/LjO3FEVJKHZDBjjQdEIxw==
X-Google-Smtp-Source: APiQypIJ9t3IHnaYjxUeYE5Td3lSXQcm6adIbo1v8gUyy4SPuihBVp3IOoHYhNHdMrhC4zz60ch7gQ==
X-Received: by 2002:a05:6512:1c5:: with SMTP id f5mr12814889lfp.138.1587456414746;
        Tue, 21 Apr 2020 01:06:54 -0700 (PDT)
Received: from localhost.bredbandsbolaget (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
        by smtp.gmail.com with ESMTPSA id v15sm1318091ljd.33.2020.04.21.01.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2020 01:06:53 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Henrik Rydberg <rydberg@bitmath.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 1/2 v5] dt-bindings: touchscreen: Add CY8CTMA140 bindings
Date:   Tue, 21 Apr 2020 10:06:49 +0200
Message-Id: <20200421080650.25514-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Cypress CY8CTMA140
touchscreen.

Cc: devicetree@vger.kernel.org
Cc: Henrik Rydberg <rydberg@bitmath.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v4->v5:
- Fix the unit name in the I2C controller after the building
  bot complained that it cannot be at @00000000 and that it does
  not contain a reg. Just call it "i2c".
ChangeLog v1->v4:
- Drop the description of 'reg', it's surplus.
- Set the I2C frequency to the span 100k to 400k instead
  of hardcoding 400k.
- Collect Rob's review tag.
---
 .../input/touchscreen/cypress,cy8ctma140.yaml | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml
new file mode 100644
index 000000000000..8c73e5264312
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/cypress,cy8ctma140.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cypress CY8CTMA140 series touchscreen controller bindings
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    const: cypress,cy8ctma140
+
+  reg:
+    const: 0x20
+
+  clock-frequency:
+    description: I2C client clock frequency, defined for host
+    minimum: 100000
+    maximum: 400000
+
+  interrupts:
+    maxItems: 1
+
+  vcpin-supply:
+    description: Analog power supply regulator on VCPIN pin
+
+  vdd-supply:
+    description: Digital power supply regulator on VDD pin
+
+  touchscreen-inverted-x: true
+  touchscreen-inverted-y: true
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-swapped-x-y: true
+  touchscreen-max-pressure: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - touchscreen-size-x
+  - touchscreen-size-y
+  - touchscreen-max-pressure
+
+examples:
+- |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      touchscreen@20 {
+        compatible = "cypress,cy8ctma140";
+        reg = <0x20>;
+        touchscreen-size-x = <480>;
+        touchscreen-size-y = <800>;
+        touchscreen-max-pressure = <255>;
+        interrupt-parent = <&gpio6>;
+        interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+        vdd-supply = <&ab8500_ldo_aux2_reg>;
+        vcpin-supply = <&ab8500_ldo_aux2_reg>;
+      };
+    };
+
+...
-- 
2.21.1

