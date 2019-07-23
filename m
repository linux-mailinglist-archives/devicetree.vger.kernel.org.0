Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2D5971926
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 15:27:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390212AbfGWN1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 09:27:06 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:46719 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730591AbfGWN1F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 09:27:05 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 1F503240011;
        Tue, 23 Jul 2019 13:26:59 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
        jason@lakedaemon.net, maz@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 1/2] dt-bindings: irq: Convert Allwinner IRQ Controller to a schema
Date:   Tue, 23 Jul 2019 15:26:57 +0200
Message-Id: <20190723132658.5068-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs have an interrupt controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../allwinner,sun4i-a10-ic.yaml               | 49 +++++++++++++++++++
 .../allwinner,sun4i-ic.txt                    | 20 --------
 2 files changed, 49 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
new file mode 100644
index 000000000000..806cf4770f75
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun4i-a10-ic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Interrupt Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  "#interrupt-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-ic
+      - allwinner,suniv-f1c100s-ic
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+required:
+  - "#interrupt-cells"
+  - compatible
+  - reg
+  - interrupt-controller
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    intc: interrupt-controller {
+        compatible = "allwinner,sun4i-a10-ic";
+        reg = <0x01c20400 0x400>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
deleted file mode 100644
index 404352524c3a..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Allwinner Sunxi Interrupt Controller
-
-Required properties:
-
-- compatible : should be one of the following:
-              "allwinner,sun4i-a10-ic"
-              "allwinner,suniv-f1c100s-ic"
-- reg : Specifies base physical address and size of the registers.
-- interrupt-controller : Identifies the node as an interrupt controller
-- #interrupt-cells : Specifies the number of cells needed to encode an
-  interrupt source. The value shall be 1.
-
-Example:
-
-intc: interrupt-controller {
-	compatible = "allwinner,sun4i-a10-ic";
-	reg = <0x01c20400 0x400>;
-	interrupt-controller;
-	#interrupt-cells = <1>;
-};
-- 
2.21.0

