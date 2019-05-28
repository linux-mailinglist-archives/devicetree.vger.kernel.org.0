Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA3A92C997
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2019 17:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727084AbfE1PHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 11:07:08 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:42848 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726980AbfE1PHI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 11:07:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
        Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
        List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
        List-Archive; bh=50UF5NrIgTV94h2lmtoHlHIleHK4ai5jgUswsShESRU=; b=P+hrYHLLCJn/
        Y7ptg4w+HgOPPs3EAFacc8mjpi4YJ6DDhgq7owPzTnVxYaNfZFonJGP+xSvV22gDP6lHsLgoCPjJY
        gBm28iBepZgjmZ6u6VCuS9aMXGZ0/ihKCNYqcFk/tAHNsIdWwt4fz/iSGEcW2Qn+BC5ALKZGo9Ts7
        hdG1s=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hVdgn-0002nl-2u; Tue, 28 May 2019 15:06:57 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id 5B5C3440049; Tue, 28 May 2019 16:06:56 +0100 (BST)
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Applied "dt-bindings: sound: Convert Allwinner I2S binding to YAML" to the asoc tree
In-Reply-To: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190528150656.5B5C3440049@finisterre.sirena.org.uk>
Date:   Tue, 28 May 2019 16:06:56 +0100 (BST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch

   dt-bindings: sound: Convert Allwinner I2S binding to YAML

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 0a0ca8e94ca36d2153c2fbea69a31f792bfc5831 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Fri, 24 May 2019 14:57:58 +0200
Subject: [PATCH] dt-bindings: sound: Convert Allwinner I2S binding to YAML

The Allwinner SoCs feature an I2S controller across multiple SoC
generations.

However, earlier generations were a bit simpler than the subsequent ones,
and for example would always have RX and TX capabilities, and no reset
lines.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../sound/allwinner,sun4i-a10-i2s.yaml        | 100 ++++++++++++++++++
 .../devicetree/bindings/sound/sun4i-i2s.txt   |  45 --------
 2 files changed, 100 insertions(+), 45 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-i2s.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
new file mode 100644
index 000000000000..85b2d6d84055
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 I2S Controller Device Tree Bindings
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
+    oneOf:
+      - const: allwinner,sun4i-a10-i2s
+      - const: allwinner,sun6i-a31-i2s
+      - const: allwinner,sun8i-a83t-i2s
+      - const: allwinner,sun8i-h3-i2s
+      - const: allwinner,sun50i-a64-codec-i2s
+      - items:
+          - const: allwinner,sun50i-a64-i2s
+          - const: allwinner,sun8i-h3-i2s
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
+      - const: mod
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
+              - allwinner,sun6i-a31-i2s
+              - allwinner,sun8i-a83t-i2s
+              - allwinner,sun8i-h3-i2s
+              - allwinner,sun50i-a64-codec-i2s
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
+    i2s0: i2s@1c22400 {
+        #sound-dai-cells = <0>;
+        compatible = "allwinner,sun4i-a10-i2s";
+        reg = <0x01c22400 0x400>;
+        interrupts = <0 16 4>;
+        clocks = <&apb0_gates 3>, <&i2s0_clk>;
+        clock-names = "apb", "mod";
+        dmas = <&dma 0 3>, <&dma 0 3>;
+        dma-names = "rx", "tx";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun4i-i2s.txt b/Documentation/devicetree/bindings/sound/sun4i-i2s.txt
deleted file mode 100644
index 61e71c1729e0..000000000000
--- a/Documentation/devicetree/bindings/sound/sun4i-i2s.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Allwinner A10 I2S controller
-
-The I2S bus (Inter-IC sound bus) is a serial link for digital
-audio data transfer between devices in the system.
-
-Required properties:
-
-- compatible: should be one of the following:
-   - "allwinner,sun4i-a10-i2s"
-   - "allwinner,sun6i-a31-i2s"
-   - "allwinner,sun8i-a83t-i2s"
-   - "allwinner,sun8i-h3-i2s"
-   - "allwinner,sun50i-a64-codec-i2s"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: should contain the I2S interrupt.
-- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
-	Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: should include "tx" and "rx".
-- clocks: a list of phandle + clock-specifer pairs, one for each entry in clock-names.
-- clock-names: should contain the following:
-   - "apb" : clock for the I2S bus interface
-   - "mod" : module clock for the I2S controller
-- #sound-dai-cells : Must be equal to 0
-
-Required properties for the following compatibles:
-	- "allwinner,sun6i-a31-i2s"
-	- "allwinner,sun8i-a83t-i2s"
-	- "allwinner,sun8i-h3-i2s"
-	- "allwinner,sun50i-a64-codec-i2s"
-- resets: phandle to the reset line for this codec
-
-Example:
-
-i2s0: i2s@1c22400 {
-	#sound-dai-cells = <0>;
-	compatible = "allwinner,sun4i-a10-i2s";
-	reg = <0x01c22400 0x400>;
-	interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&apb0_gates 3>, <&i2s0_clk>;
-	clock-names = "apb", "mod";
-	dmas = <&dma SUN4I_DMA_NORMAL 3>,
-	       <&dma SUN4I_DMA_NORMAL 3>;
-	dma-names = "rx", "tx";
-};
-- 
2.20.1

