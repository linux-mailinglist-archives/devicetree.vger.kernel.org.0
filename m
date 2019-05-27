Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 73A9C2B475
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 14:09:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726063AbfE0MJW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 08:09:22 -0400
Received: from relay10.mail.gandi.net ([217.70.178.230]:35891 "EHLO
        relay10.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725858AbfE0MJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 08:09:22 -0400
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay10.mail.gandi.net (Postfix) with ESMTPSA id 27EA2240015;
        Mon, 27 May 2019 12:09:11 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Sean Paul <seanpaul@chromium.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
Date:   Mon, 27 May 2019 14:09:10 +0200
Message-Id: <20190527120910.18964-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 100 ++++++++++++++++++
 .../bindings/display/sunxi/sun6i-dsi.txt      |  93 ----------------
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  57 ++++++++++
 3 files changed, 157 insertions(+), 93 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
new file mode 100644
index 000000000000..47950fced28d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/allwinner,sun6i-a31-mipi-dsi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 MIPI-DSI Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    const: allwinner,sun6i-a31-mipi-dsi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: dphy
+
+  port:
+    type: object
+    description:
+      A port node with endpoint definitions as defined in
+      Documentation/devicetree/bindings/media/video-interfaces.txt. That
+      port should be the input endpoint, usually coming from the
+      associated TCON.
+
+patternProperties:
+  "^panel@[0-9]+$": true
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - phys
+  - phy-names
+  - resets
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi0: dsi@1ca0000 {
+        compatible = "allwinner,sun6i-a31-mipi-dsi";
+        reg = <0x01ca0000 0x1000>;
+        interrupts = <0 89 4>;
+        clocks = <&ccu 23>, <&ccu 96>;
+        clock-names = "bus", "mod";
+        resets = <&ccu 4>;
+        phys = <&dphy0>;
+        phy-names = "dphy";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+                compatible = "bananapi,lhr050h41", "ilitek,ili9881c";
+                reg = <0>;
+                power-gpios = <&pio 1 7 0>; /* PB07 */
+                reset-gpios = <&r_pio 0 5 1>; /* PL05 */
+                backlight = <&pwm_bl>;
+        };
+
+        port {
+            dsi0_in_tcon0: endpoint {
+                remote-endpoint = <&tcon0_out_dsi0>;
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
deleted file mode 100644
index 6a6cf5de08b0..000000000000
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ /dev/null
@@ -1,93 +0,0 @@
-Allwinner A31 DSI Encoder
-=========================
-
-The DSI pipeline consists of two separate blocks: the DSI controller
-itself, and its associated D-PHY.
-
-DSI Encoder
------------
-
-The DSI Encoder generates the DSI signal from the TCON's.
-
-Required properties:
-  - compatible: value must be one of:
-    * allwinner,sun6i-a31-mipi-dsi
-  - reg: base address and size of memory-mapped region
-  - interrupts: interrupt associated to this IP
-  - clocks: phandles to the clocks feeding the DSI encoder
-    * bus: the DSI interface clock
-    * mod: the DSI module clock
-  - clock-names: the clock names mentioned above
-  - phys: phandle to the D-PHY
-  - phy-names: must be "dphy"
-  - resets: phandle to the reset controller driving the encoder
-
-  - ports: A ports node with endpoint definitions as defined in
-    Documentation/devicetree/bindings/media/video-interfaces.txt. The
-    first port should be the input endpoint, usually coming from the
-    associated TCON.
-
-Any MIPI-DSI device attached to this should be described according to
-the bindings defined in ../mipi-dsi-bus.txt
-
-D-PHY
------
-
-Required properties:
-  - compatible: value must be one of:
-    * allwinner,sun6i-a31-mipi-dphy
-  - reg: base address and size of memory-mapped region
-  - clocks: phandles to the clocks feeding the DSI encoder
-    * bus: the DSI interface clock
-    * mod: the DSI module clock
-  - clock-names: the clock names mentioned above
-  - resets: phandle to the reset controller driving the encoder
-
-Example:
-
-dsi0: dsi@1ca0000 {
-	compatible = "allwinner,sun6i-a31-mipi-dsi";
-	reg = <0x01ca0000 0x1000>;
-	interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&ccu CLK_BUS_MIPI_DSI>,
-		 <&ccu CLK_DSI_SCLK>;
-	clock-names = "bus", "mod";
-	resets = <&ccu RST_BUS_MIPI_DSI>;
-	phys = <&dphy0>;
-	phy-names = "dphy";
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	panel@0 {
-		compatible = "bananapi,lhr050h41", "ilitek,ili9881c";
-		reg = <0>;
-		power-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* PB07 */
-		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_LOW>; /* PL05 */
-		backlight = <&pwm_bl>;
-	};
-
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		port@0 {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			reg = <0>;
-
-			dsi0_in_tcon0: endpoint {
-				remote-endpoint = <&tcon0_out_dsi0>;
-			};
-		};
-	};
-};
-
-dphy0: d-phy@1ca1000 {
-	compatible = "allwinner,sun6i-a31-mipi-dphy";
-	reg = <0x01ca1000 0x1000>;
-	clocks = <&ccu CLK_BUS_MIPI_DSI>,
-		 <&ccu CLK_DSI_DPHY>;
-	clock-names = "bus", "mod";
-	resets = <&ccu RST_BUS_MIPI_DSI>;
-	#phy-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
new file mode 100644
index 000000000000..250f9d5aabdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/allwinner,sun6i-a31-mipi-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 MIPI D-PHY Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun6i-a31-mipi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    dphy0: d-phy@1ca1000 {
+        compatible = "allwinner,sun6i-a31-mipi-dphy";
+        reg = <0x01ca1000 0x1000>;
+        clocks = <&ccu 23>, <&ccu 97>;
+        clock-names = "bus", "mod";
+        resets = <&ccu 4>;
+        #phy-cells = <0>;
+    };
+
+...
-- 
2.21.0

