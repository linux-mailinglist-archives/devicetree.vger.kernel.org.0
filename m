Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8782139F6E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2020 03:19:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729262AbgANCTu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jan 2020 21:19:50 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:36751 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729235AbgANCTu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jan 2020 21:19:50 -0500
Received: by mail-pl1-f196.google.com with SMTP id a6so4603500plm.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2020 18:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dqEckbXPcfEUqWhZqBJ6PLYPFoSJZMoENeqIIUphVrg=;
        b=FDVtaIks8h5cHACCyLs3Pmb5QWY44/zulF/aRPl1D/iQVlGOHgHWhMcujCAbxWLo4d
         GkROgNx+6EvrBGFuryyXlEFFt6UOrwco+BG171HX85xqiS6PkyxeWtjV7FpAtLx9v0Ze
         ufbcWFSvCR2evHRpsKVeQwCpoKy/sm1WVQ8qs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dqEckbXPcfEUqWhZqBJ6PLYPFoSJZMoENeqIIUphVrg=;
        b=cCWnfSPzkj6uDPfKoeohukorb6U610cQ75g1+kb6akAenbjXA4S1/3zFTJIARb70j5
         OMQ3bfKu5nLjnDQvr5CmelzNKJz7SqZ9Y9cz26iii+rnaY1d6XDsZqRXSywb+10VnxIm
         PHjsA62HFAR9Q8rNFknUBlRxM+DySIQee5SGRGUVn6tASKwKkVWkuQkLOYMf87b6bho3
         P+0xTAKubixB6v7Cf3jm9ukTMz+exRXtexhfRpr9h2b2ymJGbIV+xtNn91fZ27DLew7K
         cRn4R/SUxU62++fBbO3NttcB6+6UVrU1IVmlxwouSkSt3hqvtWHczhhWw57G4ZMv7dYr
         GI7w==
X-Gm-Message-State: APjAAAVGqVQPU5XxlLgokd4AG7ms/xjMr5fiHBM6LEeEgK0w8A9ZB/Sv
        a7i8c2hN8Bb4NdcmueU7dk747dmqMAU=
X-Google-Smtp-Source: APXvYqwlGH3Ognm6z0tQ+Au+E2DQFBMhX51rM1Vy+V6FDYSrDbwBvzchGYk5q8S/YQoLJsxpgjH9jw==
X-Received: by 2002:a17:902:8e87:: with SMTP id bg7mr17654652plb.279.1578968389360;
        Mon, 13 Jan 2020 18:19:49 -0800 (PST)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:254e:2b40:ef8:ee17])
        by smtp.gmail.com with ESMTPSA id e15sm4080353pja.13.2020.01.13.18.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 18:19:48 -0800 (PST)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Nicolas Boitchat <drinkcat@chromium.org>,
        linux-input@vger.kernel.org, Ikjoon Jang <ikjn@chromium.org>
Subject: [PATCH] dt-bindings: mfd: Convert ChromeOS EC bindings to json-schema
Date:   Tue, 14 Jan 2020 10:19:34 +0800
Message-Id: <20200114021934.178057-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the ChromeOS EC bindings to json-schema.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---
 .../devicetree/bindings/mfd/cros-ec.txt       |  76 ----------
 .../devicetree/bindings/mfd/cros-ec.yaml      | 138 ++++++++++++++++++
 2 files changed, 138 insertions(+), 76 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/cros-ec.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/cros-ec.yaml

diff --git a/Documentation/devicetree/bindings/mfd/cros-ec.txt b/Documentation/devicetree/bindings/mfd/cros-ec.txt
deleted file mode 100644
index 4860eabd0f72..000000000000
--- a/Documentation/devicetree/bindings/mfd/cros-ec.txt
+++ /dev/null
@@ -1,76 +0,0 @@
-ChromeOS Embedded Controller
-
-Google's ChromeOS EC is a Cortex-M device which talks to the AP and
-implements various function such as keyboard and battery charging.
-
-The EC can be connect through various means (I2C, SPI, LPC, RPMSG) and the
-compatible string used depends on the interface. Each connection method has
-its own driver which connects to the top level interface-agnostic EC driver.
-Other Linux driver (such as cros-ec-keyb for the matrix keyboard) connect to
-the top-level driver.
-
-Required properties (I2C):
-- compatible: "google,cros-ec-i2c"
-- reg: I2C slave address
-
-Required properties (SPI):
-- compatible: "google,cros-ec-spi"
-- reg: SPI chip select
-
-Required properties (RPMSG):
-- compatible: "google,cros-ec-rpmsg"
-
-Optional properties (SPI):
-- google,cros-ec-spi-pre-delay: Some implementations of the EC need a little
-  time to wake up from sleep before they can receive SPI transfers at a high
-  clock rate. This property specifies the delay, in usecs, between the
-  assertion of the CS to the start of the first clock pulse.
-- google,cros-ec-spi-msg-delay: Some implementations of the EC require some
-  additional processing time in order to accept new transactions. If the delay
-  between transactions is not long enough the EC may not be able to respond
-  properly to subsequent transactions and cause them to hang. This property
-  specifies the delay, in usecs, introduced between transactions to account
-  for the time required by the EC to get back into a state in which new data
-  can be accepted.
-
-Required properties (LPC):
-- compatible: "google,cros-ec-lpc"
-- reg: List of (IO address, size) pairs defining the interface uses
-
-Optional properties (all):
-- google,has-vbc-nvram: Some implementations of the EC include a small
-  nvram space used to store verified boot context data. This boolean flag
-  is used to specify whether this nvram is present or not.
-
-Example for I2C:
-
-i2c@12ca0000 {
-	cros-ec@1e {
-		reg = <0x1e>;
-		compatible = "google,cros-ec-i2c";
-		interrupts = <14 0>;
-		interrupt-parent = <&wakeup_eint>;
-		wakeup-source;
-	};
-
-
-Example for SPI:
-
-spi@131b0000 {
-	ec@0 {
-		compatible = "google,cros-ec-spi";
-		reg = <0x0>;
-		interrupts = <14 0>;
-		interrupt-parent = <&wakeup_eint>;
-		wakeup-source;
-		spi-max-frequency = <5000000>;
-		controller-data {
-		cs-gpio = <&gpf0 3 4 3 0>;
-		samsung,spi-cs;
-		samsung,spi-feedback-delay = <2>;
-		};
-	};
-};
-
-
-Example for LPC is not supplied as it is not yet implemented.
diff --git a/Documentation/devicetree/bindings/mfd/cros-ec.yaml b/Documentation/devicetree/bindings/mfd/cros-ec.yaml
new file mode 100644
index 000000000000..ea430f0a553b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/cros-ec.yaml
@@ -0,0 +1,138 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/cros-ec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ChromeOS Embedded Controller
+
+maintainers:
+  - Benson Leung <bleung@chromium.org>
+  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
+  - Guenter Roeck <groeck@chromium.org>
+
+description: |
+  Google's ChromeOS EC is a Cortex-M device which talks to the AP and
+  implements various function such as keyboard and battery charging.
+  The EC can be connect through various means (I2C, SPI, LPC, RPMSG)
+  and the compatible string used depends on the interface.
+  Each connection method has its own driver which connects to the
+  top level interface-agnostic EC driver. Other Linux driver
+  (such as cros-ec-keyb for the matrix keyboard) connect to the
+  top-level driver.
+
+properties:
+  compatible:
+    oneOf:
+      - description:
+          For implementations of the EC is connected through I2C.
+        const: google,cros-ec-i2c
+      - description:
+          For implementations of the EC is connected through SPI.
+        const: google,cros-ec-spi
+      - description:
+          For implementations of the EC is connected through LPC.
+        const: google,cros-ec-lpc
+      - description:
+          For implementations of the EC is connected through RPMSG.
+        const: google,cros-ec-rpmsg
+
+  google,has-vbc-nvram:
+    description: |
+      Some implementations of the EC include a small
+      nvram space used to store verified boot context data.
+      This boolean flag is used to specify whether this nvram is present or not.
+    type: boolean
+
+required:
+  - compatible
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          const: google,cros-ec-i2c
+    then:
+      properties:
+        reg:
+          description: I2C slave address
+          maxItems: 1
+      required:
+        - reg
+  - if:
+      properties:
+        compatible:
+          const: google,cros-ec-spi
+    then:
+      properties:
+        reg:
+          description: SPI chip select
+          maxItems: 1
+        google,cros-ec-spi-pre-delay:
+          description: |
+            Some implementations of the EC need a little time to wake up
+            from sleep before they can receive SPI transfers
+            at a high clock rate. This property specifies the delay,
+            in usecs, between the assertion of the CS to the start of
+            the first clock pulse.
+        google,cros-ec-spi-msg-delay:
+          description: |
+            Some implementations of the EC require some additional
+            processing time in order to accept new transactions.
+            If the delay between transactions is not long enough
+            the EC may not be able to respond properly to
+            subsequent transactions and cause them to hang.
+            This property specifies the delay, in usecs,
+            introduced between transactions to account for the
+            time required by the EC to get back into a state
+            in which new data can be accepted.
+      required:
+        - reg
+
+  - if:
+      properties:
+        compatible:
+          const: google,cros-ec-lpc
+    then:
+      properties:
+        reg:
+          description: |
+            List of (IO address, size) pairs defining the interface uses
+      required:
+        - reg
+
+examples:
+  - |+
+    // Example for I2C
+    i2c@12ca0000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        cros-ec@1e {
+            reg = <0x1e>;
+            compatible = "google,cros-ec-i2c";
+            interrupts = <14 0>;
+            interrupt-parent = <&wakeup_eint>;
+            wakeup-source;
+        };
+    };
+  - |+
+    // Example for SPI
+    spi@131b0000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        ec@0 {
+            compatible = "google,cros-ec-spi";
+            reg = <0x0>;
+            interrupts = <14 0>;
+            interrupt-parent = <&wakeup_eint>;
+            wakeup-source;
+            spi-max-frequency = <5000000>;
+            controller-data {
+                cs-gpio = <&gpf0 3 4 3 0>;
+                samsung,spi-cs;
+                samsung,spi-feedback-delay = <2>;
+            };
+        };
+    };
+
+...
-- 
2.25.0.rc1.283.g88dfdc4193-goog

