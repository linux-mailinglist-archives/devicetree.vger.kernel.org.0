Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5CC389557
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbhESSaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:25 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:42593 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbhESSaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:21 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id 16152CB959
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:22 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B3E9DC0012;
        Wed, 19 May 2021 18:26:56 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Helmut Grohne <helmut.grohne@intenta.de>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v20 10/19] dt-binding: memory: pl353-smc: Convert to yaml
Date:   Wed, 19 May 2021 20:26:27 +0200
Message-Id: <20210519182636.1110080-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert this binding file to yaml schema.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../memory-controllers/arm,pl353-smc.yaml     | 124 ++++++++++++++++++
 .../bindings/memory-controllers/pl353-smc.txt |  46 -------
 2 files changed, 124 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt

diff --git a/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml b/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
new file mode 100644
index 000000000000..37cfc877c53c
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
@@ -0,0 +1,124 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/arm,pl353-smc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM PL353 Static Memory Controller (SMC) device-tree bindings
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+  - Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
+
+description:
+  The PL353 Static Memory Controller is a bus where you can connect two kinds
+  of memory interfaces, which are NAND and memory mapped interfaces (such as
+  SRAM or NOR).
+
+properties:
+  $nodename:
+    pattern: "^memory-controller@[0-9a-f]+$"
+
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - arm,pl353-smc-r2p1
+        - enum:
+          - arm,primecell
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 1
+
+  reg:
+    items:
+      - description: configuration registers for the host controller
+      - description: memory bus area for interactions with the device
+
+  clocks:
+    items:
+      - description: the clock for the memory device bus
+      - description: the main clock of the controller
+
+  clock-names:
+    items:
+      - const: memclk
+      - const: apb_pclk
+
+  ranges:
+    minItems: 1
+    maxItems: 3
+    description: |
+      Reflects the memory layout with four integer values following:
+      <cs-number> 0 <offset> <size>
+    items:
+      - description: NAND bank 0
+      - description: NOR/SRAM bank 0
+      - description: NOR/SRAM bank 1
+
+  interrupts: true
+
+patternProperties:
+  ".*@[0-9]+,[0-9]+$":
+    type: object
+    description: |
+      The child device node represents the controller connected to the SMC
+      bus. The controller can be a NAND controller or a pair of any memory
+      mapped controllers such as NOR and SRAM controllers.
+
+    properties:
+      compatible:
+        description:
+          Compatible of memory controller.
+
+      reg:
+        items:
+          - items:
+              - description: |
+                  Chip-select ID, as in the parent range property.
+                minimum: 0
+                maximum: 2
+              - description: |
+                  Offset of the memory region requested by the device.
+              - description: |
+                  Length of the memory region requested by the device.
+
+    required:
+      - compatible
+      - reg
+
+required:
+  - compatible
+  - reg
+  - clock-names
+  - clocks
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    smcc: memory-controller@e000e000 {
+      compatible = "arm,pl353-smc-r2p1", "arm,primecell";
+      reg = <0xe000e000 0x0001000>,
+            <0xe1000000 0x5000000>;
+      clock-names = "memclk", "apb_pclk";
+      clocks = <&clkc 11>, <&clkc 44>;
+      ranges = <0x0 0x0 0xe1000000 0x1000000 /* Nand CS region */
+                0x1 0x0 0xe2000000 0x2000000 /* SRAM/NOR CS0 region */
+                0x2 0x0 0xe4000000 0x2000000>; /* SRAM/NOR CS1 region */
+      #address-cells = <2>;
+      #size-cells = <1>;
+
+      nand0: nand-controller@0,0 {
+        compatible = "arm,pl353-nand-r2p1";
+        reg = <0 0 0x1000000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt b/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
deleted file mode 100644
index d388bb87365f..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
+++ /dev/null
@@ -1,46 +0,0 @@
-Device tree bindings for ARM PL353 static memory controller
-
-PL353 Static Memory Controller is a bus where you can connect two kinds
-of memory interfaces: NAND and memory mapped interfaces (such as SRAM or NOR).
-
-Required properties:
-- compatible		: Should be "arm,pl353-smc-r2p1", "arm,primecell".
-- reg			: Controller registers map and length.
-			  First entry is for the configuration registers,
-			  second entry covers the memory bus transfers.
-- clock-names		: List of input clock names - "memclk", "apb_pclk"
-			  (See clock bindings for details).
-- clocks		: Clock phandles (see clock bindings for details).
-- address-cells		: Must be 2.
-- size-cells		: Must be 1.
-- ranges		: Encodes CS to memory region association.
-
-The child device node represents the controller connected to the SMC
-bus. Only one between: NAND controller, NOR controller and SRAM controller
-is allowed in a single system.
-
-Required device node properties:
-
-- reg:			Contains the chip-select id, the offset and the length
-			of the memory region requested by the device.
-
-Example:
-	smcc: memory-controller@e000e000 {
-		compatible = "arm,pl353-smc-r2p1", "arm,primecell";
-		clock-names = "memclk", "apb_pclk";
-		clocks = <&clkc 11>, <&clkc 44>;
-		reg = <0xe000e000 0x0001000>,
-		      <0xe1000000 0x5000000>;
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0x0 0x0 0xe1000000 0x1000000 /* Nand CS region */
-			  0x1 0x0 0xe2000000 0x2000000 /* SRAM/NOR CS0 region */
-			  0x2 0x0 0xe4000000 0x2000000>; /* SRAM/NOR CS1 region */
-
-		nand0: nand-controller@0,0 {
-			compatible = "arm,pl353-nand-r2p1";
-			reg = <0 0 0x1000000>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-		};
-	};
-- 
2.27.0

