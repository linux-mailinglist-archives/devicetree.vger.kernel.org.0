Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81F66431F3F
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 16:16:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231795AbhJROSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 10:18:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233642AbhJRORs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 10:17:48 -0400
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 662E7C033E98
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 06:59:13 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:e87a:7c37:aec5:5884])
        by baptiste.telenet-ops.be with bizsmtp
        id 7RzB2600i22VXnz01RzBx9; Mon, 18 Oct 2021 15:59:11 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mcTAV-005uyu-FW; Mon, 18 Oct 2021 15:59:11 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mcTAV-00Ddit-3j; Mon, 18 Oct 2021 15:59:11 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Ford <aford173@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, patches@opensource.cirrus.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/2] ASoC: dt-bindings: wlf,wm8962: Convert to json-schema
Date:   Mon, 18 Oct 2021 15:59:03 +0200
Message-Id: <b0868d2f62fd57499c79d96298e99e5f9e4fbc76.1634565154.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634565154.git.geert+renesas@glider.be>
References: <cover.1634565154.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Wolfson WM8962 Ultra-Low Power Stereo CODEC Device Tree
binding documentation to json-schema.

Add missing *-supply and port properties.
Update the example.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/sound/wlf,wm8962.yaml | 118 ++++++++++++++++++
 .../devicetree/bindings/sound/wm8962.txt      |  43 -------
 2 files changed, 118 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8962.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/wm8962.txt

diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8962.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8962.yaml
new file mode 100644
index 0000000000000000..0e6249d7c1330f7e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8962.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/wlf,wm8962.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Wolfson WM8962 Ultra-Low Power Stereo CODEC
+
+maintainers:
+  - patches@opensource.cirrus.com
+
+properties:
+  compatible:
+    const: wlf,wm8962
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  AVDD-supply:
+    description: Analogue supply.
+
+  CPVDD-supply:
+    description: Charge pump power supply.
+
+  DBVDD-supply:
+    description: Digital Buffer Supply.
+
+  DCVDD-supply:
+    description: Digital Core Supply.
+
+  MICVDD-supply:
+    description: Microphone bias amp supply.
+
+  PLLVDD-supply:
+    description: PLL Supply
+
+  SPKVDD1-supply:
+    description: Supply for left speaker drivers.
+
+  SPKVDD2-supply:
+    description: Supply for right speaker drivers.
+
+  spk-mono:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      If present, the SPK_MONO bit of R51 (Class D Control 2) gets set,
+      indicating that the speaker is in mono mode.
+
+  mic-cfg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Default register value for R48 (Additional Control 4).
+      If absent, the default should be the register default.
+
+  gpio-cfg:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 6
+    maxItems: 6
+    description:
+      A list of GPIO configuration register values.  If absent, no
+      configuration of these registers is performed.  Note that only values
+      within [0x0, 0xffff] are valid.  Any other value is regarded as setting
+      the GPIO register to its reset value 0x0.
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - AVDD-supply
+  - CPVDD-supply
+  - DBVDD-supply
+  - DCVDD-supply
+  - MICVDD-supply
+  - PLLVDD-supply
+  - SPKVDD1-supply
+  - SPKVDD2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx6qdl-clock.h>
+
+    i2c {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          wm8962: codec@1a {
+                  compatible = "wlf,wm8962";
+                  reg = <0x1a>;
+                  clocks = <&clks IMX6QDL_CLK_CKO>;
+                  DCVDD-supply = <&reg_audio>;
+                  DBVDD-supply = <&reg_audio>;
+                  AVDD-supply = <&reg_audio>;
+                  CPVDD-supply = <&reg_audio>;
+                  MICVDD-supply = <&reg_audio>;
+                  PLLVDD-supply = <&reg_audio>;
+                  SPKVDD1-supply = <&reg_audio>;
+                  SPKVDD2-supply = <&reg_audio>;
+                  gpio-cfg = <
+                          0x0000 /* 0:Default */
+                          0x0000 /* 1:Default */
+                          0x0013 /* 2:FN_DMICCLK */
+                          0x0000 /* 3:Default */
+                          0x8014 /* 4:FN_DMICCDAT */
+                          0x0000 /* 5:Default */
+                  >;
+          };
+    };
diff --git a/Documentation/devicetree/bindings/sound/wm8962.txt b/Documentation/devicetree/bindings/sound/wm8962.txt
deleted file mode 100644
index c36c649ddfd04f37..0000000000000000
--- a/Documentation/devicetree/bindings/sound/wm8962.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-WM8962 audio CODEC
-
-This device supports I2C only.
-
-Required properties:
-
-  - compatible : "wlf,wm8962"
-
-  - reg : the I2C address of the device.
-
-Optional properties:
-
-  - clocks : The clock source of the mclk
-
-  - spk-mono: This is a boolean property. If present, the SPK_MONO bit
-    of R51 (Class D Control 2) gets set, indicating that the speaker is
-    in mono mode.
-
-  - mic-cfg : Default register value for R48 (Additional Control 4).
-    If absent, the default should be the register default.
-
-  - gpio-cfg : A list of GPIO configuration register values. The list must
-    be 6 entries long. If absent, no configuration of these registers is
-    performed. And note that only the value within [0x0, 0xffff] is valid.
-    Any other value is regarded as setting the GPIO register by its reset
-    value 0x0.
-
-Example:
-
-wm8962: codec@1a {
-	compatible = "wlf,wm8962";
-	reg = <0x1a>;
-	clocks = <&clks IMX6QDL_CLK_CKO>;
-
-	gpio-cfg = <
-		0x0000 /* 0:Default */
-		0x0000 /* 1:Default */
-		0x0013 /* 2:FN_DMICCLK */
-		0x0000 /* 3:Default */
-		0x8014 /* 4:FN_DMICCDAT */
-		0x0000 /* 5:Default */
-	>;
-};
-- 
2.25.1

