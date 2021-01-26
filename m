Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 058A630336F
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:56:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729005AbhAZEyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:54:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729719AbhAZE2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 23:28:22 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98AB0C061786
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 20:26:49 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id w124so17263388oia.6
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 20:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7OfSmxia+d3pqBmg2qua9BIWvPfSArrmZHl7lfwH9bI=;
        b=m/+KjqM5Hx+G7dpkXv2YKNv2H2FKgj16d8e49AOFfqtI8ojbKwxLyV1BwuN3jgH8sR
         2tHPgGOIqQYMqT7VybYxf4p4+QWDfpHsSovRGXaZJS4Kp8EI/AQ8yvIhZssSSfAvkfLw
         ErbX1J+b9l4o0crsP13U33C69sAY0H3Y18Uaoi8tfF7GNgbgibsrVGVzE62Cj5NBiNqL
         sEf5TWbT/ur1c0WXwvpqITkDO8j9cxy1d6M6oItz7DXudrcyiemiBg3aqoJSK7JqhRf+
         WHZnkE91LhaMw4sZjLR1K77jX1zUWW9ewfWV11hYDMISzVGwz8FggRWb1kOsJtI0IA5K
         kIVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7OfSmxia+d3pqBmg2qua9BIWvPfSArrmZHl7lfwH9bI=;
        b=qKo+xuZl8vVZwn7v7Pz/iWzKaQvERfqWRcdtD9RIChO18Lu0G1UvRQD7HaynCTj9zj
         Xcnt7vGUPp2IRX9VF+bWlW8af89LTPpwi5TtntU/Ykgzn5iswftE2SXlnVyqBkeCrVh+
         vs1YqwvULN+K8FNXgHzmO4lY0DR3bH7LqDQlqRRXmBujQj9KMqA+w+4cwagZoORKike3
         s+xaNONcFyttLzjh1VL85G2CQkDIe8/U3zCuLVpWDsl9KzX/UseMDPW944yASxj8MTI9
         W1hTiWGtWknyj3sYkU+kjC6lkv/FyszPFYdd4t9NxiIt7fNy0fPqSHPVmFWrpb0iPb1V
         a3ww==
X-Gm-Message-State: AOAM533CNLBPOi+WtWZAwxG4gYYqT/TmI1Sd7YV6M3Ldx/n9CUMnZDgp
        HuiDElYT7dpgoJkwzHyF5oU0kQ==
X-Google-Smtp-Source: ABdhPJx42pEiS0LPCsrnXU+9YGM8qZfwg0kcwZPz3gbIhhaxDspxI48nk8487EJaDBRxB9leW1KXkQ==
X-Received: by 2002:aca:5088:: with SMTP id e130mr2069256oib.78.1611635208790;
        Mon, 25 Jan 2021 20:26:48 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w129sm3930638oig.23.2021.01.25.20.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 20:26:48 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: pinctrl: qcom: Define common TLMM binding
Date:   Mon, 25 Jan 2021 20:26:48 -0800
Message-Id: <20210126042650.1725176-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Several properties are shared between all TLMM bindings. By providing a
common binding to define these properties each platform's binding can be
reduced to just listing which of these properties should be checked for
- or further specified.

Reviewed-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Dropped "phandle", as Rob pushed this to the dt-schema instead
- Expanded the "TLMM" abbreviation

 .../bindings/pinctrl/qcom,tlmm-common.yaml    | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
new file mode 100644
index 000000000000..3b37cf102d41
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/qcom,tlmm-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. Top Level Mode Multiplexer (TLMM) definitions
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+description:
+  This defines the common properties used to describe all Qualcomm Top Level
+  Mode Multiplexer bindings and pinconf/pinmux states for these.
+
+properties:
+  interrupts:
+    description:
+      Specifies the TLMM summary IRQ
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    description:
+      Specifies the PIN numbers and Flags, as defined in defined in
+      include/dt-bindings/interrupt-controller/irq.h
+    const: 2
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    description:
+      Specifying the pin number and flags, as defined in
+      include/dt-bindings/gpio/gpio.h
+    const: 2
+
+  gpio-ranges:
+    maxItems: 1
+
+  wakeup-parent:
+    description:
+      Specifying the interrupt-controller used to wake up the system when the
+      TLMM block has been powered down.
+    maxItems: 1
+
+  gpio-reserved-ranges:
+    description:
+      Pins can be reserved for trusted applications and thereby unaccessible
+      from the OS.  This property can be used to mark the pins which resources
+      should not be accessed by the OS. Please see the ../gpio/gpio.txt for more
+      information.
+
+required:
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - gpio-controller
+  - '#gpio-cells'
+  - gpio-ranges
+
+additionalProperties: true
+
+$defs:
+  qcom-tlmm-state:
+    allOf:
+      - $ref: pincfg-node.yaml#
+      - $ref: pinmux-node.yaml#
+
+    properties:
+      drive-strength:
+        enum: [2, 4, 6, 8, 10, 12, 14, 16]
+        default: 2
+        description:
+          Selects the drive strength for the specified pins, in mA.
+
+      bias-pull-down: true
+      bias-pull-up: true
+      bias-disable: true
+      input-enable: true
+      output-high: true
+      output-low: true
+
+    additionalProperties: true
+...
-- 
2.29.2

