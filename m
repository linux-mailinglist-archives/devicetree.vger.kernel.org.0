Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4663965405
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2019 11:41:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728285AbfGKJla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jul 2019 05:41:30 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:35057 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728024AbfGKJla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jul 2019 05:41:30 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 94CF06001F;
        Thu, 11 Jul 2019 09:40:37 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: bus: Convert Allwinner DE2 bus to a schema
Date:   Thu, 11 Jul 2019 11:40:36 +0200
Message-Id: <20190711094036.21777-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs using the second generation of the display engine have a
bus for that display engine. The bus is supported in Linux, with a matching
Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../bus/allwinner,sun50i-a64-de2.yaml         | 84 +++++++++++++++++++
 .../bindings/bus/sun50i-de2-bus.txt           | 40 ---------
 2 files changed, 84 insertions(+), 40 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt

diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
new file mode 100644
index 000000000000..b9734f8109c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/allwinner,sun50i-a64-de2.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: GPL2
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/allwinner,sun50i-a64-de2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A64 Display Engine Bus Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  $nodename:
+    pattern: "^bus(@[0-9a-f]+)?$"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun50i-a64-de2
+      - items:
+          - const: allwinner,sun50i-h6-de3
+          - const: allwinner,sun50i-a64-de2
+
+  reg:
+    maxItems: 1
+
+  allwinner,sram:
+    allOf:
+      - $ref: /schemas/types.yaml#definitions/phandle-array
+      - maxItems: 1
+    description:
+      The SRAM that needs to be claimed to access the display engine
+      bus.
+
+  ranges: true
+
+patternProperties:
+  # All other properties should be child nodes with unit-address and 'reg'
+  "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+$":
+    properties:
+      reg:
+        maxItems: 1
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+  - allwinner,sram
+
+additionalProperties: false
+
+examples:
+  - |
+    bus@1000000 {
+        compatible = "allwinner,sun50i-a64-de2";
+        reg = <0x1000000 0x400000>;
+        allwinner,sram = <&de2_sram 1>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x1000000 0x400000>;
+
+        display_clocks: clock@0 {
+            compatible = "allwinner,sun50i-a64-de2-clk";
+            reg = <0x0 0x100000>;
+            clocks = <&ccu 52>, <&ccu 99>;
+            clock-names = "bus", "mod";
+            resets = <&ccu 30>;
+            #clock-cells = <1>;
+            #reset-cells = <1>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt b/Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt
deleted file mode 100644
index b9d533717dff..000000000000
--- a/Documentation/devicetree/bindings/bus/sun50i-de2-bus.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Device tree bindings for Allwinner DE2/3 bus
-
-The Allwinner A64 DE2 is on a special bus, which needs a SRAM region (SRAM C)
-to be claimed for enabling the access. The DE3 on Allwinner H6 is at the same
-situation, and the binding also applies.
-
-Required properties:
-
- - compatible:		Should be one of:
-				- "allwinner,sun50i-a64-de2"
-				- "allwinner,sun50i-h6-de3", "allwinner,sun50i-a64-de2"
- - reg:			A resource specifier for the register space
- - #address-cells:	Must be set to 1
- - #size-cells:		Must be set to 1
- - ranges:		Must be set up to map the address space inside the
-			DE2, for the sub-blocks of DE2.
- - allwinner,sram:	the SRAM that needs to be claimed
-
-Example:
-
-	de2@1000000 {
-		compatible = "allwinner,sun50i-a64-de2";
-		reg = <0x1000000 0x400000>;
-		allwinner,sram = <&de2_sram 1>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0x1000000 0x400000>;
-
-		display_clocks: clock@0 {
-			compatible = "allwinner,sun50i-a64-de2-clk";
-			reg = <0x0 0x100000>;
-			clocks = <&ccu CLK_DE>,
-				 <&ccu CLK_BUS_DE>;
-			clock-names = "mod",
-				      "bus";
-			resets = <&ccu RST_BUS_DE>;
-			#clock-cells = <1>;
-			#reset-cells = <1>;
-		};
-	};
-- 
2.21.0

