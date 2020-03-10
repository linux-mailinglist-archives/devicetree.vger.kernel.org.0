Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4C518001B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2020 15:28:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726976AbgCJO23 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Mar 2020 10:28:29 -0400
Received: from mail-lj1-f169.google.com ([209.85.208.169]:40766 "EHLO
        mail-lj1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726423AbgCJO23 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Mar 2020 10:28:29 -0400
Received: by mail-lj1-f169.google.com with SMTP id 19so11535264ljj.7
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2020 07:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oq2TUuJgjX8T14WhhZPEa3jJeXtGZIthBibLM1uWq8A=;
        b=B4y7OjNpycQJv6Tb/xr1QLVim7t9Rw8XWToJWkDcaNxG9b31kY9FLflt0xSCgHsr3p
         4OxOscuD7+1WlZM8Z6yPR2FEv3jPoRS3BQh0ooPAh9DUlGyC5MTCQ5EPBNwe9DllzIgq
         43qutTr/l56boxw/0lKLbeVMmuVym8k8PciM8NQkBo9uPWvV1cDjRLyTosojKZzHa/8+
         FCmfAi9SMgZORKu86H/xYV+Fa67I4Mx7fHK7ebJB4h0PkG/VVU7pKf0G3X7S6hSxjeOT
         BCn12Zs4J90U/OXN0cuNiwshEEG3wiUi6C5MhXNFrHixo7S3rp+X9lXS30w/rqdO8BWD
         Hnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oq2TUuJgjX8T14WhhZPEa3jJeXtGZIthBibLM1uWq8A=;
        b=MGF1vsM0Nuaf1CK7PQ3beM3rtEBajp8vZoqnz5PbQus3A1lWagMY76jTdJCpOnzfir
         qTAbvRc1AwNH4anSPT13e5zenxYXFn/ULcVGb3YMZXxx5OiFz5JEKY2TZJL757RrWQ5R
         rW8Ldjkvr033iLxlmoeuW4m6CS7fB2mntlA5i70iOKlOoFnK7LqV+8/Oe0ie+dHPrxqL
         qW8W5PpJite2oTqb01RTCy9atVVZt8DfzX2QQjCDlmIYWJwMLLFCOzmqaJlSPmfW10rX
         CeZePZ9KV4e9/4+5yPYTbJaZ4+XfRIVcKsSI465k4vDjKX/lYrxkBzrFhspkY9ClIRB0
         PZ1Q==
X-Gm-Message-State: ANhLgQ2u+jatQzJunrtadk6BFMLaIoSYtN+9sJttgD6kNjBKHKhD7Z3l
        CNrTfMx0DHlCkBk9zF+o6O6VgA==
X-Google-Smtp-Source: ADFU+vvWFKIWGUtl92EE1gL69n4Km/arGy5lK3kwV/k5xtRJ9+eceWgnrlqtuXL4yqKtwzeQnFUQZQ==
X-Received: by 2002:a2e:9590:: with SMTP id w16mr12879556ljh.113.1583850507090;
        Tue, 10 Mar 2020 07:28:27 -0700 (PDT)
Received: from localhost.bredbandsbolaget (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
        by smtp.gmail.com with ESMTPSA id w24sm22794505ljh.26.2020.03.10.07.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 07:28:26 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Ferruh Yigit <fery@cypress.com>,
        Henrik Rydberg <rydberg@bitmath.org>
Subject: [PATCH 1/2 v1] dt-bindings: touchscreen: Add CY8CTMA140 bindings
Date:   Tue, 10 Mar 2020 15:28:17 +0100
Message-Id: <20200310142818.15415-1-linus.walleij@linaro.org>
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
Cc: Ferruh Yigit <fery@cypress.com>
Cc: Henrik Rydberg <rydberg@bitmath.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../input/touchscreen/cypress,cy8ctma140.yaml | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma140.yaml
new file mode 100644
index 000000000000..66b488e48b74
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
+    description: I2C client address, defined by hardware
+    const: 0x20
+
+  clock-frequency:
+    description: I2C client max frequency, defined by hardware
+    const: 400000
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
+    i2c@00000000 {
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

