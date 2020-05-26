Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F06121B6E88
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2020 08:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726520AbgDXGyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Apr 2020 02:54:32 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:36956 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725868AbgDXGyc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Apr 2020 02:54:32 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id D08062A2A5E
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     devicetree@vger.kernel.org
Cc:     kernel@collabora.com, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org, enric.balletbo@collabora.com
Subject: [PATCH] dt-bindings: display: anx7814.txt: convert to yaml
Date:   Fri, 24 Apr 2020 08:53:54 +0200
Message-Id: <20200424065354.23781-1-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This converts the Analogix ANX7814 bridge DT binding to yaml. Port
definitions and descriptions were expanded, apart from that it's a
direct translation from the original binding.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
---
Tested with:
make dt_binding_check ARCH=arm64 DT_SCHEMA_FILES=<.../anx7814.yaml>
make dtbs_check ARCH=arm64 DT_SCHEMA_FILES=<.../anx7814.yaml>

 .../bindings/display/bridge/anx7814.txt       |  42 ------
 .../bindings/display/bridge/anx7814.yaml      | 133 ++++++++++++++++++
 2 files changed, 133 insertions(+), 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/bridge/anx7814.txt
 create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7814.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/anx7814.txt b/Documentation/devicetree/bindings/display/bridge/anx7814.txt
deleted file mode 100644
index 17258747fff6..000000000000
--- a/Documentation/devicetree/bindings/display/bridge/anx7814.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Analogix ANX7814 SlimPort (Full-HD Transmitter)
------------------------------------------------
-
-The ANX7814 is an ultra-low power Full-HD (1080p60) SlimPort transmitter
-designed for portable devices.
-
-Required properties:
-
- - compatible		: Must be one of:
-			  "analogix,anx7808"
-			  "analogix,anx7812"
-			  "analogix,anx7814"
-			  "analogix,anx7818"
- - reg			: I2C address of the device
- - interrupts		: Should contain the INTP interrupt
- - hpd-gpios		: Which GPIO to use for hpd
- - pd-gpios		: Which GPIO to use for power down
- - reset-gpios		: Which GPIO to use for reset
-
-Optional properties:
-
- - dvdd10-supply	: Regulator for 1.0V digital core power.
- - Video port for HDMI input, using the DT bindings defined in [1].
-
-[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
-
-Example:
-
-	anx7814: anx7814@38 {
-		compatible = "analogix,anx7814";
-		reg = <0x38>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <99 IRQ_TYPE_LEVEL_LOW>;   /* INTP */
-		hpd-gpios = <&pio 36 GPIO_ACTIVE_HIGH>;
-		pd-gpios = <&pio 33 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&pio 98 GPIO_ACTIVE_HIGH>;
-		port {
-			anx7814_in: endpoint {
-				remote-endpoint = <&hdmi0_out>;
-			};
-		};
-	};
diff --git a/Documentation/devicetree/bindings/display/bridge/anx7814.yaml b/Documentation/devicetree/bindings/display/bridge/anx7814.yaml
new file mode 100644
index 000000000000..53d3c778c893
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/anx7814.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/anx7814.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analogix ANX7814 SlimPort (Full-HD Transmitter)
+
+maintainers:
+  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
+
+description: |
+  The ANX7814 is an ultra-low power Full-HD (1080p60) SlimPort transmitter
+  designed for portable devices.
+
+properties:
+  compatible:
+    enum:
+      - analogix,anx7808
+      - analogix,anx7812
+      - analogix,anx7814
+      - analogix,anx7818
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device.
+
+  interrupts:
+    maxItems: 1
+    description: Should contain the INTP interrupt.
+
+  hpd-gpios:
+    maxItems: 1
+    description: Which GPIO to use for hpd.
+
+  pd-gpios:
+    maxItems: 1
+    description: Which GPIO to use for power down.
+
+  reset-gpios:
+    maxItems: 1
+    description: Which GPIO to use for reset.
+
+  dvdd10-supply:
+    maxItems: 1
+    description: Regulator for 1.0V digital core power.
+
+  ports:
+    type: object
+    description:
+      A node containing input and output port nodes with endpoint
+      definitions as documented in
+      Documentation/devicetree/bindings/media/video-interfaces.txt
+      Documentation/devicetree/bindings/graph.txt
+
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        type: object
+        description: Video port for HDMI input.
+
+        properties:
+          reg:
+            const: 0
+
+      port@1:
+        type: object
+        description:
+          Video port for SlimPort, DisplayPort, eDP or MyDP output.
+
+        properties:
+          reg:
+            const: 1
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - hpd-gpios
+  - pd-gpios
+  - reset-gpios
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        anx7814: anx7814@38 {
+            compatible = "analogix,anx7814";
+            reg = <0x38>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <99 IRQ_TYPE_LEVEL_LOW>;   /* INTP */
+            hpd-gpios = <&pio 36 GPIO_ACTIVE_HIGH>;
+            pd-gpios = <&pio 33 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&pio 98 GPIO_ACTIVE_HIGH>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    anx7814_in: endpoint {
+                        remote-endpoint = <&hdmi0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    anx7814_out: endpoint {
+                        remote-endpoint = <&edp_out>;
+                    };
+                };
+            };
+        };
+    };
+...
-- 
2.18.0

