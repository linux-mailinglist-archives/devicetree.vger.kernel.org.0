Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 854615115C4
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 13:33:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232728AbiD0L3Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 07:29:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232833AbiD0L3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 07:29:09 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 07C26340FC
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 04:25:58 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C93FAED1;
        Wed, 27 Apr 2022 04:25:57 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 758EE3F5A1;
        Wed, 27 Apr 2022 04:25:56 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 08/11] dt-bindings: display: convert PL110/PL111 to DT schema
Date:   Wed, 27 Apr 2022 12:25:25 +0100
Message-Id: <20220427112528.4097815-9-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220427112528.4097815-1-andre.przywara@arm.com>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arm PL110 and PL111 are IP blocks that provide a display engine with
an LCD interface, being able to drive a variety of LC panels.

Convert the binding over to DT schema, to the DTs can be automatically
checked.
This still contains the deprecated "arm,pl11x,tft-r0g0b0-pads" property,
because this is used by several DTs in the tree.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/display/arm,pl11x.txt | 110 -----------
 .../bindings/display/arm,pl11x.yaml           | 174 ++++++++++++++++++
 2 files changed, 174 insertions(+), 110 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/arm,pl11x.txt
 create mode 100644 Documentation/devicetree/bindings/display/arm,pl11x.yaml

diff --git a/Documentation/devicetree/bindings/display/arm,pl11x.txt b/Documentation/devicetree/bindings/display/arm,pl11x.txt
deleted file mode 100644
index 3f977e72a2005..0000000000000
--- a/Documentation/devicetree/bindings/display/arm,pl11x.txt
+++ /dev/null
@@ -1,110 +0,0 @@
-* ARM PrimeCell Color LCD Controller PL110/PL111
-
-See also Documentation/devicetree/bindings/arm/primecell.yaml
-
-Required properties:
-
-- compatible: must be one of:
-	"arm,pl110", "arm,primecell"
-	"arm,pl111", "arm,primecell"
-
-- reg: base address and size of the control registers block
-
-- interrupt-names: either the single entry "combined" representing a
-	combined interrupt output (CLCDINTR), or the four entries
-	"mbe", "vcomp", "lnbu", "fuf" representing the individual
-	CLCDMBEINTR, CLCDVCOMPINTR, CLCDLNBUINTR, CLCDFUFINTR interrupts
-
-- interrupts: contains an interrupt specifier for each entry in
-	interrupt-names
-
-- clock-names: should contain "clcdclk" and "apb_pclk"
-
-- clocks: contains phandle and clock specifier pairs for the entries
-	in the clock-names property. See
-	Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Optional properties:
-
-- memory-region: phandle to a node describing memory (see
-	Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt)
-	to be used for the framebuffer; if not present, the framebuffer
-	may be located anywhere in the memory
-
-- max-memory-bandwidth: maximum bandwidth in bytes per second that the
-	cell's memory interface can handle; if not present, the memory
-	interface is fast enough to handle all possible video modes
-
-Required sub-nodes:
-
-- port: describes LCD panel signals, following the common binding
-	for video transmitter interfaces; see
-	Documentation/devicetree/bindings/media/video-interfaces.txt
-
-Deprecated properties:
-	The port's endbpoint subnode had this, now deprecated property
-	in the past. Drivers should be able to survive without it:
-
-	- arm,pl11x,tft-r0g0b0-pads: an array of three 32-bit values,
-		defining the way CLD pads are wired up; first value
-		contains index of the "CLD" external pin (pad) used
-		as R0 (first bit of the red component), second value
-	        index of the pad used as G0, third value index of the
-		pad used as B0, see also "LCD panel signal multiplexing
-		details" paragraphs in the PL110/PL111 Technical
-		Reference Manuals; this implicitly defines available
-		color modes, for example:
-		- PL111 TFT 4:4:4 panel:
-			arm,pl11x,tft-r0g0b0-pads = <4 15 20>;
-		- PL110 TFT (1:)5:5:5 panel:
-			arm,pl11x,tft-r0g0b0-pads = <1 7 13>;
-		- PL111 TFT (1:)5:5:5 panel:
-			arm,pl11x,tft-r0g0b0-pads = <3 11 19>;
-		- PL111 TFT 5:6:5 panel:
-			arm,pl11x,tft-r0g0b0-pads = <3 10 19>;
-		- PL110 and PL111 TFT 8:8:8 panel:
-			arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
-		- PL110 and PL111 TFT 8:8:8 panel, R & B components swapped:
-			arm,pl11x,tft-r0g0b0-pads = <16 8 0>;
-
-
-Example:
-
-	clcd@10020000 {
-		compatible = "arm,pl111", "arm,primecell";
-		reg = <0x10020000 0x1000>;
-		interrupt-names = "combined";
-		interrupts = <0 44 4>;
-		clocks = <&oscclk1>, <&oscclk2>;
-		clock-names = "clcdclk", "apb_pclk";
-		max-memory-bandwidth = <94371840>; /* Bps, 1024x768@60 16bpp */
-
-		port {
-			clcd_pads: endpoint {
-				remote-endpoint = <&clcd_panel>;
-			};
-		};
-
-	};
-
-	panel {
-		compatible = "panel-dpi";
-
-		port {
-			clcd_panel: endpoint {
-				remote-endpoint = <&clcd_pads>;
-			};
-		};
-
-		panel-timing {
-			clock-frequency = <25175000>;
-			hactive = <640>;
-			hback-porch = <40>;
-			hfront-porch = <24>;
-			hsync-len = <96>;
-			vactive = <480>;
-			vback-porch = <32>;
-			vfront-porch = <11>;
-			vsync-len = <2>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/display/arm,pl11x.yaml b/Documentation/devicetree/bindings/display/arm,pl11x.yaml
new file mode 100644
index 0000000000000..43b86c2827723
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/arm,pl11x.yaml
@@ -0,0 +1,174 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/arm,pl11x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm PrimeCell Color LCD Controller PL110/PL111
+
+maintainers:
+  - Liviu Dudau <Liviu.Dudau@arm.com>
+  - Andre Przywara <andre.przywara@arm.com>
+
+description: |+
+  The Arm Primcell PL010/PL111 is an LCD controller IP, than scans out
+  a framebuffer region in system memory, and creates timed signals for
+  a variety of LCD panels.
+
+# We need a select here so we don't match all nodes with 'arm,primecell'
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - arm,pl110
+          - arm,pl111
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - arm,pl110
+          - arm,pl111
+      - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  interrupt-names:
+    oneOf:
+      - const: combined
+        description:
+          The IP provides four individual interrupt lines, but also one
+          combined line. If the integration only connects this line to the
+          interrupt controller, this single interrupt is noted here.
+      - items:
+          - const: mbe        # CLCDMBEINTR
+          - const: vcomp      # CLCDVCOMPINTR
+          - const: lnbu       # CLCDLNBUINTR
+          - const: fuf        # CLCDFUFINTR
+
+  interrupts:
+    minItems: 1
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: clcdclk
+      - const: apb_pclk
+
+  clocks:
+    items:
+      - description: The CLCDCLK reference clock for the controller.
+      - description: The HCLK AHB slave clock for the register access.
+
+  memory-region:
+    maxItems: 1
+    description:
+      Phandle to a node describing memory to be used for the framebuffer.
+      If not present, the framebuffer may be located anywhere in memory.
+
+  max-memory-bandwidth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Maximum bandwidth in bytes per second that the cell's memory interface
+      can handle.
+      If not present, the memory interface is fast enough to handle all
+      possible video modes.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    description:
+      Output endpoint of the controller, connecting the LCD panel signals.
+
+    properties:
+      endpoint:
+        $ref: /schemas/graph.yaml#/$defs/endpoint-base
+        unevaluatedProperties: false
+
+        properties:
+          arm,pl11x,tft-r0g0b0-pads:
+            $ref: /schemas/types.yaml#/definitions/uint32-array
+            items:
+              - description: index of CLD pad used for first red bit (R0)
+              - description: index of CLD pad used for first green bit (G0)
+              - description: index of CLD pad used for first blue bit (G0)
+            deprecated: true
+            description: |
+              DEPRECATED. An array of three 32-bit values, defining the way
+              CLD[23:0] pads are wired up.
+              The first value contains the index of the "CLD" external pin (pad)
+              used as R0 (first bit of the red component), the second value for
+              green, the third value for blue.
+              See also "LCD panel signal multiplexing details" paragraphs in the
+              PL110/PL111 Technical Reference Manuals.
+              This implicitly defines available color modes, for example:
+              - PL111 TFT 4:4:4 panel:
+                  arm,pl11x,tft-r0g0b0-pads = <4 15 20>;
+              - PL110 TFT (1:)5:5:5 panel:
+                  arm,pl11x,tft-r0g0b0-pads = <1 7 13>;
+              - PL111 TFT (1:)5:5:5 panel:
+                  arm,pl11x,tft-r0g0b0-pads = <3 11 19>;
+              - PL111 TFT 5:6:5 panel:
+                  arm,pl11x,tft-r0g0b0-pads = <3 10 19>;
+              - PL110 and PL111 TFT 8:8:8 panel:
+                  arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
+              - PL110 and PL111 TFT 8:8:8 panel, R & B components swapped:
+                  arm,pl11x,tft-r0g0b0-pads = <16 8 0>;
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupt-names
+  - interrupts
+  - clock-names
+  - clocks
+  - port
+
+examples:
+  - |
+    clcd@10020000 {
+            compatible = "arm,pl111", "arm,primecell";
+            reg = <0x10020000 0x1000>;
+            interrupt-names = "combined";
+            interrupts = <44>;
+            clocks = <&oscclk1>, <&oscclk2>;
+            clock-names = "clcdclk", "apb_pclk";
+            max-memory-bandwidth = <94371840>; /* Bps, 1024x768@60 16bpp */
+
+            port {
+                    clcd_pads: endpoint {
+                            remote-endpoint = <&clcd_panel>;
+                    };
+            };
+    };
+
+    panel {
+            compatible = "arm,rtsm-display", "panel-dpi";
+            power-supply = <&vcc_supply>;
+
+            port {
+                    clcd_panel: endpoint {
+                            remote-endpoint = <&clcd_pads>;
+                    };
+            };
+
+            panel-timing {
+                    clock-frequency = <25175000>;
+                    hactive = <640>;
+                    hback-porch = <40>;
+                    hfront-porch = <24>;
+                    hsync-len = <96>;
+                    vactive = <480>;
+                    vback-porch = <32>;
+                    vfront-porch = <11>;
+                    vsync-len = <2>;
+            };
+    };
+...
-- 
2.25.1

