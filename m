Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BDAA0D8E39
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 12:44:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389533AbfJPKoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 06:44:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:45862 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389345AbfJPKoD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 16 Oct 2019 06:44:03 -0400
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 20ABB2168B;
        Wed, 16 Oct 2019 10:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1571222641;
        bh=Sg5D34GnHEWc66UOrTDBpqCvV3gIlQjrJcuLuidVbQk=;
        h=From:To:Cc:Subject:Date:From;
        b=OoVBpgu5xWSD6KRAwpxjFGmRsQdb1ZsEZYmSRwhMu6VxTD5JCe/PG4sCz9zWgT8aZ
         D5T6KpfOy8jF20KpsbAaFULilkgW9ud63c03zoyVPFLThXYvFRlaAPYsenVkPsrcdB
         guMIpCXdhYLdzCF1rWbZH07xX6FryErjHgMFk5Os=
From:   Maxime Ripard <mripard@kernel.org>
To:     lgirdwood@gmail.com, broonie@kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] ASoC: dt-bindings: Convert Allwinner A10 codec to a schema
Date:   Wed, 16 Oct 2019 12:43:55 +0200
Message-Id: <20191016104355.65169-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs have an embedded audio codec that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <mripard@kernel.org>

---

Changes from v2:
  - Change the audio-routing values to an enum, and enforce boundaries on
    the size
  - Add restrictions to the possible values of audio-routing

Changes from v1:
  - Fix subject prefix
---
 .../sound/allwinner,sun4i-a10-codec.yaml      | 267 ++++++++++++++++++
 .../devicetree/bindings/sound/sun4i-codec.txt |  94 ------
 2 files changed, 267 insertions(+), 94 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-codec.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
new file mode 100644
index 000000000000..b8f89c7258eb
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
@@ -0,0 +1,267 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-codec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Codec Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#sound-dai-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-codec
+      - allwinner,sun6i-a31-codec
+      - allwinner,sun7i-a20-codec
+      - allwinner,sun8i-a23-codec
+      - allwinner,sun8i-h3-codec
+      - allwinner,sun8i-v3s-codec
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
+      - const: codec
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
+  resets:
+    maxItems: 1
+
+  allwinner,audio-routing:
+    description: |-
+      A list of the connections between audio components.  Each entry
+      is a pair of strings, the first being the connection's sink, the
+      second being the connection's source.
+    allOf:
+      - $ref: /schemas/types.yaml#definitions/non-unique-string-array
+      - minItems: 2
+        maxItems: 18
+        items:
+          enum:
+            # Audio Pins on the SoC
+            - HP
+            - HPCOM
+            - LINEIN
+            - LINEOUT
+            - MIC1
+            - MIC2
+            - MIC3
+
+            # Microphone Biases from the SoC
+            - HBIAS
+            - MBIAS
+
+            # Board Connectors
+            - Headphone
+            - Headset Mic
+            - Line In
+            - Line Out
+            - Mic
+            - Speaker
+
+  allwinner,codec-analog-controls:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the codec analog controls in the PRCM
+
+  allwinner,pa-gpios:
+    description: GPIO to enable the external amplifier
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
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun6i-a31-codec
+            - allwinner,sun8i-a23-codec
+            - allwinner,sun8i-h3-codec
+            - allwinner,sun8i-v3s-codec
+
+    then:
+      if:
+        properties:
+          compatible:
+            const: allwinner,sun6i-a31-codec
+
+      then:
+        required:
+          - resets
+          - allwinner,audio-routing
+
+      else:
+        required:
+          - resets
+          - allwinner,audio-routing
+          - allwinner,codec-analog-controls
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun6i-a31-codec
+
+    then:
+      properties:
+        allwinner,audio-routing:
+          items:
+            enum:
+              - HP
+              - HPCOM
+              - LINEIN
+              - LINEOUT
+              - MIC1
+              - MIC2
+              - MIC3
+              - HBIAS
+              - MBIAS
+              - Headphone
+              - Headset Mic
+              - Line In
+              - Line Out
+              - Mic
+              - Speaker
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun8i-a23-codec
+
+    then:
+      properties:
+        allwinner,audio-routing:
+          items:
+            enum:
+              - HP
+              - HPCOM
+              - LINEIN
+              - MIC1
+              - MIC2
+              - HBIAS
+              - MBIAS
+              - Headphone
+              - Headset Mic
+              - Line In
+              - Line Out
+              - Mic
+              - Speaker
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun8i-h3-codec
+
+    then:
+      properties:
+        allwinner,audio-routing:
+          items:
+            enum:
+              - HP
+              - HPCOM
+              - LINEIN
+              - LINEOUT
+              - MIC1
+              - MIC2
+              - HBIAS
+              - MBIAS
+              - Headphone
+              - Headset Mic
+              - Line In
+              - Line Out
+              - Mic
+              - Speaker
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - allwinner,sun8i-v3s-codec
+
+    then:
+      properties:
+        allwinner,audio-routing:
+          items:
+            enum:
+              - HP
+              - HPCOM
+              - MIC1
+              - HBIAS
+              - Headphone
+              - Headset Mic
+              - Line In
+              - Line Out
+              - Mic
+              - Speaker
+
+additionalProperties: false
+
+examples:
+  - |
+    codec@1c22c00 {
+        #sound-dai-cells = <0>;
+        compatible = "allwinner,sun7i-a20-codec";
+        reg = <0x01c22c00 0x40>;
+        interrupts = <0 30 4>;
+        clocks = <&apb0_gates 0>, <&codec_clk>;
+        clock-names = "apb", "codec";
+        dmas = <&dma 0 19>, <&dma 0 19>;
+        dma-names = "rx", "tx";
+    };
+
+  - |
+    codec@1c22c00 {
+        #sound-dai-cells = <0>;
+        compatible = "allwinner,sun6i-a31-codec";
+        reg = <0x01c22c00 0x98>;
+        interrupts = <0 29 4>;
+        clocks = <&ccu 61>, <&ccu 135>;
+        clock-names = "apb", "codec";
+        resets = <&ccu 42>;
+        dmas = <&dma 15>, <&dma 15>;
+        dma-names = "rx", "tx";
+        allwinner,audio-routing =
+            "Headphone", "HP",
+            "Speaker", "LINEOUT",
+            "LINEIN", "Line In",
+            "MIC1", "MBIAS",
+            "MIC1", "Mic",
+            "MIC2", "HBIAS",
+            "MIC2", "Headset Mic";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun4i-codec.txt b/Documentation/devicetree/bindings/sound/sun4i-codec.txt
deleted file mode 100644
index 66579bbd3294..000000000000
--- a/Documentation/devicetree/bindings/sound/sun4i-codec.txt
+++ /dev/null
@@ -1,94 +0,0 @@
-* Allwinner A10 Codec
-
-Required properties:
-- compatible: must be one of the following compatibles:
-		- "allwinner,sun4i-a10-codec"
-		- "allwinner,sun6i-a31-codec"
-		- "allwinner,sun7i-a20-codec"
-		- "allwinner,sun8i-a23-codec"
-		- "allwinner,sun8i-h3-codec"
-		- "allwinner,sun8i-v3s-codec"
-- reg: must contain the registers location and length
-- interrupts: must contain the codec interrupt
-- dmas: DMA channels for tx and rx dma. See the DMA client binding,
-	Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should include "tx" and "rx".
-- clocks: a list of phandle + clock-specifer pairs, one for each entry
-  in clock-names.
-- clock-names: should contain the following:
-   - "apb": the parent APB clock for this controller
-   - "codec": the parent module clock
-
-Optional properties:
-- allwinner,pa-gpios: gpio to enable external amplifier
-
-Required properties for the following compatibles:
-		- "allwinner,sun6i-a31-codec"
-		- "allwinner,sun8i-a23-codec"
-		- "allwinner,sun8i-h3-codec"
-		- "allwinner,sun8i-v3s-codec"
-- resets: phandle to the reset control for this device
-- allwinner,audio-routing: A list of the connections between audio components.
-			   Each entry is a pair of strings, the first being the
-			   connection's sink, the second being the connection's
-			   source. Valid names include:
-
-			   Audio pins on the SoC:
-			   "HP"
-			   "HPCOM"
-			   "LINEIN"	(not on sun8i-v3s)
-			   "LINEOUT"	(not on sun8i-a23 or sun8i-v3s)
-			   "MIC1"
-			   "MIC2"	(not on sun8i-v3s)
-			   "MIC3"	(sun6i-a31 only)
-
-			   Microphone biases from the SoC:
-			   "HBIAS"
-			   "MBIAS"	(not on sun8i-v3s)
-
-			   Board connectors:
-			   "Headphone"
-			   "Headset Mic"
-			   "Line In"
-			   "Line Out"
-			   "Mic"
-			   "Speaker"
-
-Required properties for the following compatibles:
-		- "allwinner,sun8i-a23-codec"
-		- "allwinner,sun8i-h3-codec"
-		- "allwinner,sun8i-v3s-codec"
-- allwinner,codec-analog-controls: A phandle to the codec analog controls
-				   block in the PRCM.
-
-Example:
-codec: codec@1c22c00 {
-	#sound-dai-cells = <0>;
-	compatible = "allwinner,sun7i-a20-codec";
-	reg = <0x01c22c00 0x40>;
-	interrupts = <0 30 4>;
-	clocks = <&apb0_gates 0>, <&codec_clk>;
-	clock-names = "apb", "codec";
-	dmas = <&dma 0 19>, <&dma 0 19>;
-	dma-names = "rx", "tx";
-};
-
-codec: codec@1c22c00 {
-	#sound-dai-cells = <0>;
-	compatible = "allwinner,sun6i-a31-codec";
-	reg = <0x01c22c00 0x98>;
-	interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&ccu CLK_APB1_CODEC>, <&ccu CLK_CODEC>;
-	clock-names = "apb", "codec";
-	resets = <&ccu RST_APB1_CODEC>;
-	dmas = <&dma 15>, <&dma 15>;
-	dma-names = "rx", "tx";
-	allwinner,audio-routing =
-		"Headphone", "HP",
-		"Speaker", "LINEOUT",
-		"LINEIN", "Line In",
-		"MIC1",	"MBIAS",
-		"MIC1", "Mic",
-		"MIC2", "HBIAS",
-		"MIC2", "Headset Mic";
-};
-- 
2.23.0

