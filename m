Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 778482C6E16
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 02:11:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729309AbgK1BJC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 20:09:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731419AbgK1Aks (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 19:40:48 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3932C0613D4
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 16:40:42 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id o24so7726353ljj.6
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 16:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i4MNSv4gC+pj1p9yYQOx1CnSc25gU9FzxQHw5nZNAz8=;
        b=p2ZmCu99QuXp11puTEU9+0EBkB2vn2swUXMkZh7xaXqLDfbom0RMT0HZzICgtfJmPP
         kPFOrc7bjeILmS2Z9biQ9mvQnUEYzQ9f/QpRfto0v0SgLWue7bdfvyYOT0BdWcJsHbtK
         OweCNZcyyH2jhu6WS1/NDGX7ibuDRPoHh8FZV3am+zTPtraYavzv7ZHVlxDb6HVLSv8y
         xA5Mx0+WP7PkMtZzCymF2vqrxxoQGwD6nkPHjIdKV17tv3TAHJQk6xnytnk9Dzv1V+hQ
         pRRWMiTX9sRQg00Melsl/RzraO89ysAHYbYY5yFveOaT0Jcr5Ryf+ZHeAYL1tj216pZL
         oEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i4MNSv4gC+pj1p9yYQOx1CnSc25gU9FzxQHw5nZNAz8=;
        b=pm+rFyvZIRvuBytFzccWszxY2zODLPsVy2cKuOakLm7A2IWrR00ayOcFWkSyeWnCQW
         h4B09+nlz5HhxnFzWILhT0MK6quY80tjrn9Rc0z2gpynSSYEECQcZu35IdK2A/OAUmIw
         5BgpSo/0EFE6BedK4HPS5xouaO+T6NdGzAGOLl9rLberbI8nPUxiqGW5nGJHb7Bxx54z
         s6nvr6XoWU7p1uGCCABth0z361IwiHTHKxOm02KUjgKr47NYLXojfU+ynTu+anIRlHsn
         7/X8/bEL8GUfSQSXHC5omNOzpD3mRmjpYSdXcresHOCy1O6PSwpEXDG+0+ksZM03dx1e
         Bg+g==
X-Gm-Message-State: AOAM532tUBQ36Rz/98Q+l5YKCRNgeu9ol3c8CN1cVx/aR0XECvAQuqY1
        HmZkNXTIifbTAq3R0eq5LiI7Uw==
X-Google-Smtp-Source: ABdhPJxtQfnTIdZMpyl/YY61Q2nkfdUYtJUK36a6HJf004y0Fx3S3eosiEoVeEqUVrMqrFFV59Cbdw==
X-Received: by 2002:a2e:a202:: with SMTP id h2mr5079119ljm.346.1606524041071;
        Fri, 27 Nov 2020 16:40:41 -0800 (PST)
Received: from localhost.bredbandsbolaget (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
        by smtp.gmail.com with ESMTPSA id z7sm906892lfq.50.2020.11.27.16.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 16:40:40 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org
Cc:     Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org
Subject: [PATCH 1/2 v2] iio: accel: yamaha-yas53x: Add DT bindings
Date:   Sat, 28 Nov 2020 01:40:37 +0100
Message-Id: <20201128004038.883289-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Yamaha YAS53x
magnetometers/compass sensors.

Cc: devicetree@vger.kernel.org
Cc: phone-devel@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Restrict to cover the YAS53x variants, it turns out that
  YAS529 is a very different component from the others so
  keep that for a separate document when/if needed.
- Rename the file and binding yamaha,53x.yaml
- Use - if: clauses to restrict some properties.
- Fix some spelling mistakes.
- Restrict the nodename to be "magnetometer@[0-9a-f]"
ChangeLog v1->v2:
- Add Yamaha to the vendor list, I was surprised to find
  they were not yet listed.

I am still working on the actual driver for the magnetometer
but why not send out the DT bindings for review, the
hardware variants are easy to describe. This makes it possibe
for people to include these magnetometers in device
trees.
---
 .../iio/magnetometer/yamaha,yas53x.yaml       | 116 ++++++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 2 files changed, 118 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas53x.yaml

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas53x.yaml b/Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas53x.yaml
new file mode 100644
index 000000000000..e14668a6388d
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/magnetometer/yamaha,yas53x.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/magnetometer/yamaha,yas53x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Yamaha YAS53x magnetometer sensors
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description:
+  The Yamaha YAS53x magnetometers is a line of 3-axis magnetometers
+  first introduced by Yamaha in 2009 with the YAS530. They are successors
+  of Yamaha's first magnetometer YAS529. Over the years this magnetometer
+  has been miniaturized and appeared in a number of different variants.
+
+properties:
+  $nodename:
+    pattern: '^magnetometer@[0-9a-f]+$'
+
+  compatible:
+    items:
+      - enum:
+          - yamaha,yas530
+          - yamaha,yas532
+          - yamaha,yas533
+          - yamaha,yas535
+          - yamaha,yas536
+          - yamaha,yas537
+          - yamaha,yas539
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    description: The YAS530 sensor has a RSTN pin used to reset
+      the logic inside the sensor. This GPIO line should connect
+      to that pin and be marked as GPIO_ACTIVE_LOW.
+
+  interrupts:
+    description: Interrupt for INT pin for interrupt generation.
+      The polarity, whether the interrupt is active on the rising
+      or the falling edge, is software-configurable in the hardware.
+
+  vdd-supply:
+    description: An optional regulator providing core power supply
+      on the VDD pin, typically 1.8 V or 3.0 V.
+
+  iovdd-supply:
+    description: An optional regulator providing I/O power supply
+      for the I2C interface on the IOVDD pin, typically 1.8 V.
+
+  mount-matrix:
+    description: An optional 3x3 mounting rotation matrix.
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          items:
+            const: yamaha,yas530
+    then:
+      properties:
+        reset-gpios:
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - yamaha,yas530
+            - yamaha,yas532
+            - yamaha,yas533
+            - yamaha,yas535
+            - yamaha,yas536
+            - yamaha,yas537
+    then:
+      properties:
+        interrupts:
+          maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    i2c-0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        magnetometer@2e {
+          compatible = "yamaha,yas530";
+          reg = <0x2e>;
+          vdd-supply = <&ldo1_reg>;
+          iovdd-supply = <&ldo2_reg>;
+          reset-gpios = <&gpio6 12 GPIO_ACTIVE_LOW>;
+          interrupts = <&gpio6 13 IRQ_TYPE_EDGE_RISING>;
+        };
+    };
+
+    i2c-1 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        magnetometer@2e {
+          compatible = "yamaha,yas539";
+          reg = <0x2e>;
+          vdd-supply = <&ldo1_reg>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2735be1a8470..0340674c72bd 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1210,6 +1210,8 @@ patternProperties:
     description: Shenzhen Xunlong Software CO.,Limited
   "^xylon,.*":
     description: Xylon
+  "^yamaha,.*":
+    description: Yamaha Corporation
   "^ylm,.*":
     description: Shenzhen Yangliming Electronic Technology Co., Ltd.
   "^yna,.*":
-- 
2.26.2

