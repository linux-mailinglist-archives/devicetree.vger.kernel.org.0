Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9338816B84
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 21:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726492AbfEGTi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 15:38:57 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:42755 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726336AbfEGTi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 15:38:57 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AF4A2E0008;
        Tue,  7 May 2019 19:38:53 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: bus: Convert Allwinner RSB to a schema
Date:   Tue,  7 May 2019 21:38:48 +0200
Message-Id: <20190507193848.22205-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The newer Allwinner SoCs feature a bus designed for the PMIC, similar to
I2C called RSB. Let's convert the device tree bindings for that bus over to
a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../bindings/bus/allwinner,sun8i-a23-rsb.yaml | 79 +++++++++++++++++++
 .../devicetree/bindings/bus/sunxi-rsb.txt     | 47 -----------
 2 files changed, 79 insertions(+), 47 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
 delete mode 100644 Documentation/devicetree/bindings/bus/sunxi-rsb.txt

diff --git a/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
new file mode 100644
index 000000000000..fc2f63860cc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/allwinner,sun8i-a23-rsb.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/allwinner,sun8i-a23-rsb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A23 RSB Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun8i-a23-rsb
+      - items:
+        - const: allwinner,sun8i-a83t-rsb
+        - const: allwinner,sun8i-a23-rsb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clock-frequency:
+    minimum: 1
+    maximum: 20000000
+
+patternProperties:
+  "^.*@[0-9a-fA-F]+$":
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
+  - interrupts
+  - clocks
+  - resets
+
+examples:
+  - |
+    rsb@1f03400 {
+        compatible = "allwinner,sun8i-a23-rsb";
+        reg = <0x01f03400 0x400>;
+        interrupts = <0 39 4>;
+        clocks = <&apb0_gates 3>;
+        clock-frequency = <3000000>;
+        resets = <&apb0_rst 3>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        pmic@3e3 {
+            compatible = "...";
+            reg = <0x3e3>;
+
+            /* ... */
+        };
+    };
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/bus/sunxi-rsb.txt b/Documentation/devicetree/bindings/bus/sunxi-rsb.txt
deleted file mode 100644
index eb3ed628c6f1..000000000000
--- a/Documentation/devicetree/bindings/bus/sunxi-rsb.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-Allwinner Reduced Serial Bus (RSB) controller
-
-The RSB controller found on later Allwinner SoCs is an SMBus like 2 wire
-serial bus with 1 master and up to 15 slaves. It is represented by a node
-for the controller itself, and child nodes representing the slave devices.
-
-Required properties :
-
- - reg             : Offset and length of the register set for the controller.
- - compatible      : Shall be "allwinner,sun8i-a23-rsb".
- - interrupts      : The interrupt line associated to the RSB controller.
- - clocks          : The gate clk associated to the RSB controller.
- - resets          : The reset line associated to the RSB controller.
- - #address-cells  : shall be 1
- - #size-cells     : shall be 0
-
-Optional properties :
-
- - clock-frequency : Desired RSB bus clock frequency in Hz. Maximum is 20MHz.
-		     If not set this defaults to 3MHz.
-
-Child nodes:
-
-An RSB controller node can contain zero or more child nodes representing
-slave devices on the bus.  Child 'reg' properties should contain the slave
-device's hardware address. The hardware address is hardwired in the device,
-which can normally be found in the datasheet.
-
-Example:
-
-	rsb@1f03400 {
-		compatible = "allwinner,sun8i-a23-rsb";
-		reg = <0x01f03400 0x400>;
-		interrupts = <0 39 4>;
-		clocks = <&apb0_gates 3>;
-		clock-frequency = <3000000>;
-		resets = <&apb0_rst 3>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pmic@3e3 {
-			compatible = "...";
-			reg = <0x3e3>;
-
-			/* ... */
-		};
-	};
-- 
2.21.0

