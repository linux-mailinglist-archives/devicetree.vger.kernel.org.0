Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B916735496A
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 01:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241434AbhDEXr2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 19:47:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237853AbhDEXr2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 19:47:28 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C435C06174A
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 16:47:20 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 12so19707587lfq.13
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 16:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=divuDw1Bw8vhpwH95l0qBbQqrq0Vszv0MvP4vrcJ4Ls=;
        b=gSKPkIsuOq8K0ubM4PFzOl0cKa3i6ofssIuICWFCADkUVBA0hdosmO0zrJ/TuIJ8Lv
         wB4vT1MQx9gf7NR5C2CS+sTXf/FVIruuDvuzYbTDdFNkGfvhgujb3hFO0cOeXts/z9XH
         3Ez28GKdecrdgxl/1WqvAIJECXV8S3cKvKbBZkbgz0bACo7k4V9VqaVRPJ0XMIiYvXoM
         cL75+WU55CualEfw6cKLEmmKjdbTL0lTrf00MHPNj/GGPt+PptbIvSR3iQV6HrYJjpeO
         x5W6FVzpUX2d1BRcbsYpL3mZys598WzdoHcwwP/m8bSFm60z7qv2ELgXBs9TVi5Fuyvu
         s6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=divuDw1Bw8vhpwH95l0qBbQqrq0Vszv0MvP4vrcJ4Ls=;
        b=gWRfkcmO6d8m9IXRU2ltpbMigCq2vEdJIWZONUqt5+DxVXDgV8ZrgjOXUYNs5xYuNw
         FERB76D0KuQXP40w+uiPW/OBYjIix4Hr7HAWvzi8y5yp6oyJcCgygJWCLWOQGW3tUfwZ
         /WSX+xSZA6R91JYv1chloy1PaySterLXZmWcumQ44mmxgNrR7JpZaCbegKPT9fR+mxhv
         nSZd1n6LzWlVf/pRrrcv/KHmGVxzP/PYtGgidVlQkAThStF9HmmBw9xBVk/J+trG5Tp+
         pKxb4I7ccQ7Lf7r16pHAYFNv2D0L/zCnSiFmykLYPOHZGKGGWKlbm5/Z15bOfZF1MpRB
         xOlQ==
X-Gm-Message-State: AOAM5312QiudIImp8YjgpaDbybcfz9vxCHL895ochA0C3JrFDY9f7TWW
        bGRrxfIOal5w3D1g1rZF3fJGAA==
X-Google-Smtp-Source: ABdhPJz5ltIW539VopoXIo575cP8e+bzvyS7myP90bj6YwbFgtnQtxwrT9uK4ez9mllrZhFvpM116g==
X-Received: by 2002:a19:4850:: with SMTP id v77mr19172791lfa.6.1617666438832;
        Mon, 05 Apr 2021 16:47:18 -0700 (PDT)
Received: from localhost.localdomain (c-14cb225c.014-348-6c756e10.bbcust.telenor.se. [92.34.203.20])
        by smtp.gmail.com with ESMTPSA id d27sm1941930lfm.203.2021.04.05.16.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 16:47:18 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] drm/panel: Add DT bindings for Samsung LMS397KF04
Date:   Tue,  6 Apr 2021 01:47:12 +0200
Message-Id: <20210405234713.3190693-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Samsung LMS397KF04
RGB DPI display panel.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../display/panel/samsung,lms397kf04.yaml     | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
new file mode 100644
index 000000000000..4cb75a5f2e3a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,lms397kf04.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung LMS397KF04 display panel
+
+description: The datasheet claims this is based around a display controller
+  named DB7430 with a separate backlight controller.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,lms397kf04
+
+  reg: true
+
+  reset-gpios: true
+
+  vci-supply:
+    description: regulator that supplies the VCI analog voltage
+      usually around 3.0 V
+
+  vccio-supply:
+    description: regulator that supplies the VCCIO voltage usually
+      around 1.8 V
+
+  backlight: true
+
+  spi-max-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: inherited as a SPI client node, the datasheet specifies
+      maximum 300 ns minimum cycle which gives around 3 MHz max frequency
+    maximum: 3000000
+
+  port: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      panel@0 {
+        compatible = "samsung,lms397kf04";
+        spi-max-frequency = <3000000>;
+        reg = <0>;
+        vci-supply = <&lcd_3v0_reg>;
+        vccio-supply = <&lcd_1v8_reg>;
+        reset-gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+        backlight = <&ktd259>;
+
+        port {
+          panel_in: endpoint {
+            remote-endpoint = <&display_out>;
+          };
+        };
+      };
+    };
+
+...
-- 
2.29.2

