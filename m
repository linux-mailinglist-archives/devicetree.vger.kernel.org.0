Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 791C928CEFE
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 15:16:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727526AbgJMNQK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 09:16:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726648AbgJMNQJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 09:16:09 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394EFC0613D0
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 06:16:08 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id i1so17878526wro.1
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 06:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VU2ZxqifLVfdvXSsHtiP10MIVpWQnhcB7qzC0l8n27Q=;
        b=UufO7gbvHGhekdd1ajNHDbaSed4SdIC7Spgf6zXceCSYOf/ADkjmmkC9V23bqUMbB1
         ZsrrCkmtKhTx4DbLS4KY8QwRW2CIP8POGiUetpNpMGWyvu2xayQN3CmH/y6R+UkzFZOk
         y8YrUg4kpIWXTd2gNzWGuF0gER7c7i3EQnJexjIkYzTIZnfAxw8SehnLQOBDKkmNdeFk
         NXrJ3liIsKToDluLopfwwND95b7h+vHBVPoOKOYPmhOTpJspfjGU4ZUip8DoRN4/k4yZ
         BKICBEMee6dlz2O01Gebr2Y2B/VhlrIQKrfs/AgiXMR+TqUbTk7P30Fiu+WgLznCVNAU
         YGWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VU2ZxqifLVfdvXSsHtiP10MIVpWQnhcB7qzC0l8n27Q=;
        b=nml/vSGXPly3OpMBQf+bIaWAtbFzPUDA7S+Grc3Y/oGkLwz9v7U4v96P0vpH8zi5IN
         b+UM45BkTf+zIGSrh0sO+t8dwkmT7sZx9C5k/St4DccCfmk+5L084Pw8PRPqRDAStUjX
         Z2MgdgBi8g50DCm2r5ORPug6epR+flOkyK3o1xx69DM9AXTFJUj60Mw0xHNA4HLfC3Qj
         x+pIXQn9CtYZ2XDDSZHeHHuAphr7d5NrmwO9FhWX/OIu55fujdw7abNFVjfxmkVJnUhd
         It2ghiyzfcqghaX8JYH2oL5geay1b0vUHaITGpxP7p5GwmtBhCNYpnvPzx0bDecoOXsV
         ijSA==
X-Gm-Message-State: AOAM531xB0LCQz+hCDHSYQN2U1/qncC2+YnUzwg1lDlsqGWPy3ZueiUE
        p6GOIx09b2BL3lI3c9Z1QzRQkQ==
X-Google-Smtp-Source: ABdhPJyrMGbPezIyjxdtuy1W66p9EYHvfNv74EcrgGuUCuA1A4K2B3PooNGWh648/iYuSDfIvVd8pQ==
X-Received: by 2002:a5d:480a:: with SMTP id l10mr34477948wrq.238.1602594966785;
        Tue, 13 Oct 2020 06:16:06 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id u63sm27362883wmb.13.2020.10.13.06.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 06:16:04 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
X-Google-Original-From: Rui Miguel Silva <rmfrfs@gmail.com>
To:     Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rmfrfs@gmail.com>
Subject: [PATCH] dt-bindings: fxas21002c: convert bindings to yaml
Date:   Tue, 13 Oct 2020 14:15:45 +0100
Message-Id: <20201013131545.503434-1-rmfrfs@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert fxas21002c gyroscope sensor bindings documentation to
yaml schema and remove the textual bindings document.

Signed-off-by: Rui Miguel Silva <rmfrfs@gmail.com>
---
 .../bindings/iio/gyroscope/nxp,fxas21002c.txt | 31 --------
 .../iio/gyroscope/nxp,fxas21002c.yaml         | 77 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 78 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.txt
 create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml

diff --git a/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.txt b/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.txt
deleted file mode 100644
index 465e104bbf14..000000000000
--- a/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-* NXP FXAS21002C Gyroscope device tree bindings
-
-http://www.nxp.com/products/sensors/gyroscopes/3-axis-digital-gyroscope:FXAS21002C
-
-Required properties:
-  - compatible : should be "nxp,fxas21002c"
-  - reg : the I2C address of the sensor or SPI chip select number for the
-          device.
-  - vdd-supply: phandle to the regulator that provides power to the sensor.
-  - vddio-supply: phandle to the regulator that provides power to the bus.
-
-Optional properties:
-  - reset-gpios : gpio used to reset the device, see gpio/gpio.txt
-  - interrupts : device support 2 interrupts, INT1 and INT2,
-                 the interrupts can be triggered on rising or falling edges.
-                 See interrupt-controller/interrupts.txt
-  - interrupt-names: should contain "INT1" or "INT2", the gyroscope interrupt
-                     line in use.
-  - drive-open-drain: the interrupt/data ready line will be configured
-                      as open drain, which is useful if several sensors share
-                      the same interrupt line. This is a boolean property.
-                      (This binding is taken from pinctrl/pinctrl-bindings.txt)
-
-Example:
-
-gyroscope@20 {
-	compatible = "nxp,fxas21002c";
-	reg = <0x20>;
-	vdd-supply = <&reg_peri_3p15v>;
-	vddio-supply = <&reg_peri_3p15v>;
-};
diff --git a/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml b/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml
new file mode 100644
index 000000000000..7680e97cf1d9
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/gyroscope/nxp,fxas21002c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP FXAS21002C Gyroscope Unit
+
+maintainers:
+  - Rui Miguel Silva <rmfrfs@gmail.com>
+
+description: |
+  3 axis digital gyroscope device with an I2C and SPI interface.
+  http://www.nxp.com/products/sensors/gyroscopes/3-axis-digital-gyroscope:FXAS21002C
+
+properties:
+  compatible:
+    enum:
+      - nxp,fxas21002c
+
+  reg:
+    maxItems: 1
+    description: base address of the device
+
+  vdd-supply:
+    description: Regulator that provides power to the sensor
+
+  vddio-supply:
+    description: Regulator that provides power to the bus
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to reset
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    description: device support 2 interrupts, INT1 and INT2, the interrupts can
+                 be triggered on rising or falling edges.
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - INT1
+        - INT2
+    description: gyroscope interrupt line in use.
+
+  drive-open-drain:
+    type: boolean
+    description: the interrupt/data ready line will be configured as open drain,
+                 which is useful if several sensors share the same interrupt
+                 line.
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - vddio-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        gyroscope@20 {
+          compatible = "nxp,fxas21002c";
+          reg = <0x20>;
+
+          vdd-supply = <&reg_peri_3p15v>;
+          vddio-supply = <&reg_peri_3p15v>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 6594f0966716..2e85e114c9c3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12469,7 +12469,7 @@ NXP FXAS21002C DRIVER
 M:	Rui Miguel Silva <rmfrfs@gmail.com>
 L:	linux-iio@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.txt
+F:	Documentation/devicetree/bindings/iio/gyroscope/nxp,fxas21002c.yaml
 F:	drivers/iio/gyro/fxas21002c.h
 F:	drivers/iio/gyro/fxas21002c_core.c
 F:	drivers/iio/gyro/fxas21002c_i2c.c
-- 
2.28.0

