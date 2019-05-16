Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38D8C200C5
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 09:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726374AbfEPH7i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 03:59:38 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:49915 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726363AbfEPH7i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 03:59:38 -0400
X-Originating-IP: 80.215.246.107
Received: from localhost (unknown [80.215.246.107])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5B0CC1C000D;
        Thu, 16 May 2019 07:59:28 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: sound: Convert Allwinner SPDIF binding to YAML
Date:   Thu, 16 May 2019 09:59:25 +0200
Message-Id: <706cb97ae45cc9edc49c8709b2189ed786d2c7db.1557993523.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs feature an SPDIF controller across multiple SoC
generations.

However, earlier generations were a bit simpler than the subsequent ones,
and for example would always have RX and TX capabilities, and no reset
lines.

In order to express this, let's create two YAML schemas instead of the free
form text we had before.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v2:
  - Add comments

Changes from v1:
  - Merged the two schemas together and used the draft-7 conditionals
---
 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 101 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt          |  42 +------------------------------
 2 files changed, 101 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
new file mode 100644
index 000000000000..5d72d48e923e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-spdif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 S/PDIF Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Liam Girdwood <lgirdwood@gmail.com>
+  - Mark Brown <broonie@kernel.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#sound-dai-cells":
+    const: 0
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-spdif
+      - const: allwinner,sun6i-a31-spdif
+      - const: allwinner,sun8i-h3-spdif
+      - items:
+          - const: allwinner,sun8i-a83t-spdif
+          - const: allwinner,sun8i-h3-spdif
+      - items:
+          - const: allwinner,sun50i-a64-spdif
+          - const: allwinner,sun8i-h3-spdif
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
+      - const: apb
+      - const: spdif
+
+  dmas:
+    items:
+      - description: RX DMA Channel
+      - description: TX DMA Channel
+
+  dma-names:
+    items:
+      - const: rx
+      - const: tx
+
+  # Even though it only applies to subschemas under the conditionals,
+  # not listing them here will trigger a warning because of the
+  # additionalsProperties set to false.
+  resets:
+    maxItems: 1
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - allwinner,sun6i-a31-spdif
+              - allwinner,sun8i-h3-spdif
+
+    then:
+      required:
+        - resets
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - dmas
+  - dma-names
+
+additionalProperties: false
+
+examples:
+  - |
+    spdif: spdif@1c21000 {
+        #sound-dai-cells = <0>;
+        compatible = "allwinner,sun4i-a10-spdif";
+        reg = <0x01c21000 0x40>;
+        interrupts = <13>;
+        clocks = <&apb0_gates 1>, <&spdif_clk>;
+        clock-names = "apb", "spdif";
+        dmas = <&dma 0 2>, <&dma 0 2>;
+        dma-names = "rx", "tx";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt b/Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt
deleted file mode 100644
index 0c64a209c2e9..000000000000
--- a/Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Allwinner Sony/Philips Digital Interface Format (S/PDIF) Controller
-
-The Allwinner S/PDIF audio block is a transceiver that allows the
-processor to receive and transmit digital audio via an coaxial cable or
-a fibre cable.
-For now only playback is supported.
-
-Required properties:
-
-  - compatible		: should be one of the following:
-    - "allwinner,sun4i-a10-spdif": for the Allwinner A10 SoC
-    - "allwinner,sun6i-a31-spdif": for the Allwinner A31 SoC
-    - "allwinner,sun8i-h3-spdif": for the Allwinner H3 SoC
-
-  - reg			: Offset and length of the register set for the device.
-
-  - interrupts		: Contains the spdif interrupt.
-
-  - dmas		: Generic dma devicetree binding as described in
-			  Documentation/devicetree/bindings/dma/dma.txt.
-
-  - dma-names		: Two dmas have to be defined, "tx" and "rx".
-
-  - clocks		: Contains an entry for each entry in clock-names.
-
-  - clock-names		: Includes the following entries:
-	"apb"		  clock for the spdif bus.
-	"spdif"		  clock for spdif controller.
-
-  - resets		: reset specifier for the ahb reset (A31 and newer only)
-
-Example:
-
-spdif: spdif@1c21000 {
-	compatible = "allwinner,sun4i-a10-spdif";
-	reg = <0x01c21000 0x40>;
-	interrupts = <13>;
-	clocks = <&apb0_gates 1>, <&spdif_clk>;
-	clock-names = "apb", "spdif";
-	dmas = <&dma 0 2>, <&dma 0 2>;
-	dma-names = "rx", "tx";
-};

base-commit: 00c3bc00f0cadbb48f2414370733892676511e79
-- 
git-series 0.9.1
