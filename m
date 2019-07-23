Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 57EDF71927
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 15:27:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730591AbfGWN1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 09:27:06 -0400
Received: from relay3-d.mail.gandi.net ([217.70.183.195]:50325 "EHLO
        relay3-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390198AbfGWN1G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 09:27:06 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 086C860018;
        Tue, 23 Jul 2019 13:27:02 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
        jason@lakedaemon.net, maz@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller to a schema
Date:   Tue, 23 Jul 2019 15:26:58 +0200
Message-Id: <20190723132658.5068-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723132658.5068-1-maxime.ripard@bootlin.com>
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs have an interrupt controller called NMI supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
 .../allwinner,sunxi-nmi.txt                   | 29 -------
 2 files changed, 83 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
new file mode 100644
index 000000000000..cb8077b0c8dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - allwinner,sun6i-a31-r-intc
+          - allwinner,sun7i-a20-sc-nmi
+          - allwinner,sun9i-a80-sc-nmi
+
+          # Deprecated
+          - allwinner,sun6i-a31-sc-nmi
+
+  required:
+    - compatible
+
+properties:
+  "#interrupt-cells":
+    const: 2
+    description:
+      The first cell is the IRQ number, the second cell the trigger
+      type as defined in interrupt.txt in this directory.
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun6i-a31-r-intc
+      - const: allwinner,sun7i-a20-sc-nmi
+      - items:
+        - const: allwinner,sun8i-a83t-r-intc
+        - const: allwinner,sun6i-a31-r-intc
+      - const: allwinner,sun9i-a80-sc-nmi
+      - items:
+        - const: allwinner,sun50i-a64-r-intc
+        - const: allwinner,sun6i-a31-r-intc
+      - items:
+        - const: allwinner,sun50i-h6-r-intc
+        - const: allwinner,sun6i-a31-r-intc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+required:
+  - "#interrupt-cells"
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    interrupt-controller@1c00030 {
+        compatible = "allwinner,sun7i-a20-sc-nmi";
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        reg = <0x01c00030 0x0c>;
+        interrupt-parent = <&gic>;
+        interrupts = <0 0 4>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
deleted file mode 100644
index 24beadf7ba83..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Allwinner Sunxi NMI Controller
-==============================
-
-Required properties:
-
-- compatible : should be one of the following:
-  - "allwinner,sun7i-a20-sc-nmi"
-  - "allwinner,sun6i-a31-sc-nmi" (deprecated)
-  - "allwinner,sun6i-a31-r-intc"
-  - "allwinner,sun9i-a80-nmi"
-- reg : Specifies base physical address and size of the registers.
-- interrupt-controller : Identifies the node as an interrupt controller
-- #interrupt-cells : Specifies the number of cells needed to encode an
-  interrupt source. The value shall be 2. The first cell is the IRQ number, the
-  second cell the trigger type as defined in interrupt.txt in this directory.
-- interrupts: Specifies the interrupt line (NMI) which is handled by
-  the interrupt controller in the parent controller's notation. This value
-  shall be the NMI.
-
-Example:
-
-sc-nmi-intc@1c00030 {
-	compatible = "allwinner,sun7i-a20-sc-nmi";
-	interrupt-controller;
-	#interrupt-cells = <2>;
-	reg = <0x01c00030 0x0c>;
-	interrupt-parent = <&gic>;
-	interrupts = <0 0 4>;
-};
-- 
2.21.0

