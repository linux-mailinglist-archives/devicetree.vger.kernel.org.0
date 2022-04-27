Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDB285115B4
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 13:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232731AbiD0L3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 07:29:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232853AbiD0L3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 07:29:11 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3665F340FF
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 04:26:01 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 064361474;
        Wed, 27 Apr 2022 04:26:01 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E0B83F5A1;
        Wed, 27 Apr 2022 04:25:59 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Brian Starkey <brian.starkey@arm.com>,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 10/11] dt-bindings: display: convert Arm Mali-DP to DT schema
Date:   Wed, 27 Apr 2022 12:25:27 +0100
Message-Id: <20220427112528.4097815-11-andre.przywara@arm.com>
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

The Arm Mali Display Processor (DP) 5xx/6xx is a series of IP that scans
out a framebuffer and hands the pixels over to a digital signal encoder.
It supports multiple layers, scaling and rotation.

Convert the existing DT binding to DT schema.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../bindings/display/arm,malidp.txt           |  68 ----------
 .../bindings/display/arm,malidp.yaml          | 117 ++++++++++++++++++
 2 files changed, 117 insertions(+), 68 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/arm,malidp.txt
 create mode 100644 Documentation/devicetree/bindings/display/arm,malidp.yaml

diff --git a/Documentation/devicetree/bindings/display/arm,malidp.txt b/Documentation/devicetree/bindings/display/arm,malidp.txt
deleted file mode 100644
index 7a97a2b48c2a2..0000000000000
--- a/Documentation/devicetree/bindings/display/arm,malidp.txt
+++ /dev/null
@@ -1,68 +0,0 @@
-ARM Mali-DP
-
-The following bindings apply to a family of Display Processors sold as
-licensable IP by ARM Ltd. The bindings describe the Mali DP500, DP550 and
-DP650 processors that offer multiple composition layers, support for
-rotation and scaling output.
-
-Required properties:
-  - compatible: should be one of
-	"arm,mali-dp500"
-	"arm,mali-dp550"
-	"arm,mali-dp650"
-    depending on the particular implementation present in the hardware
-  - reg: Physical base address and size of the block of registers used by
-    the processor.
-  - interrupts: Interrupt list, as defined in ../interrupt-controller/interrupts.txt,
-    interrupt client nodes.
-  - interrupt-names: name of the engine inside the processor that will
-    use the corresponding interrupt. Should be one of "DE" or "SE".
-  - clocks: A list of phandle + clock-specifier pairs, one for each entry
-    in 'clock-names'
-  - clock-names: A list of clock names. It should contain:
-      - "pclk": for the APB interface clock
-      - "aclk": for the AXI interface clock
-      - "mclk": for the main processor clock
-      - "pxlclk": for the pixel clock feeding the output PLL of the processor.
-  - arm,malidp-output-port-lines: Array of u8 values describing the number
-    of output lines per channel (R, G and B).
-
-Required sub-nodes:
-  - port: The Mali DP connection to an encoder input port. The connection
-    is modelled using the OF graph bindings specified in
-    Documentation/devicetree/bindings/graph.txt
-
-Optional properties:
-  - memory-region: phandle to a node describing memory (see
-    Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt)
-    to be used for the framebuffer; if not present, the framebuffer may
-    be located anywhere in memory.
-  - arm,malidp-arqos-high-level: integer of u32 value describing the ARQoS
-    levels of DP500's QoS signaling.
-
-
-Example:
-
-/ {
-	...
-
-	dp0: malidp@6f200000 {
-		compatible = "arm,mali-dp650";
-		reg = <0 0x6f200000 0 0x20000>;
-		memory-region = <&display_reserved>;
-		interrupts = <0 168 IRQ_TYPE_LEVEL_HIGH>,
-			     <0 168 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "DE", "SE";
-		clocks = <&oscclk2>, <&fpgaosc0>, <&fpgaosc1>, <&fpgaosc1>;
-		clock-names = "pxlclk", "mclk", "aclk", "pclk";
-		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
-		arm,malidp-arqos-high-level = <0xd000d000>;
-		port {
-			dp0_output: endpoint {
-				remote-endpoint = <&tda998x_2_input>;
-			};
-		};
-	};
-
-	...
-};
diff --git a/Documentation/devicetree/bindings/display/arm,malidp.yaml b/Documentation/devicetree/bindings/display/arm,malidp.yaml
new file mode 100644
index 0000000000000..86b636662f803
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/arm,malidp.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/arm,malidp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm Mali Display Processor (Mali-DP) binding
+
+maintainers:
+  - Liviu Dudau <Liviu.Dudau@arm.com>
+  - Andre Przywara <andre.przywara@arm.com>
+
+description: |+
+  The following bindings apply to a family of Display Processors sold as
+  licensable IP by ARM Ltd. The bindings describe the Mali DP500, DP550 and
+  DP650 processors that offer multiple composition layers, support for
+  rotation and scaling output.
+
+properties:
+  compatible:
+    enum:
+      - arm,mali-dp500
+      - arm,mali-dp550
+      - arm,mali-dp650
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description:
+          The interrupt used by the Display Engine (DE). Can be shared with
+          the interrupt for the Scaling Engine (SE), but it will have to be
+          listed individually.
+      - description:
+          The interrupt used by the Scaling Engine (SE). Can be shared with
+          the interrupt for the Display Engine (DE), but it will have to be
+          listed individually.
+
+  interrupt-names:
+    items:
+      - const: DE
+      - const: SE
+
+  clock-names:
+    items:
+      - const: pxlclk
+      - const: mclk
+      - const: aclk
+      - const: pclk
+
+  clocks:
+    items:
+      - description: the pixel clock feeding the output PLL of the processor
+      - description: the main processor clock
+      - description: the AXI interface clock
+      - description: the APB interface clock
+
+  memory-region:
+    maxItems: 1
+    description:
+      Phandle to a node describing memory to be used for the framebuffer.
+      If not present, the framebuffer may be located anywhere in memory.
+
+  arm,malidp-output-port-lines:
+    $ref: /schemas/types.yaml#/definitions/uint8-array
+    description:
+      Number of output lines/bits for each colour channel.
+    items:
+      - description: number of output lines for the red channel (R)
+      - description: number of output lines for the green channel (G)
+      - description: number of output lines for the blue channel (B)
+
+  arm,malidp-arqos-high-level:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      integer describing the ARQoS levels of DP500's QoS signaling
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    unevaluatedProperties: false
+    description:
+      Output endpoint of the controller, connecting the LCD panel signals.
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - port
+  - arm,malidp-output-port-lines
+
+examples:
+  - |
+    dp0: malidp@6f200000 {
+            compatible = "arm,mali-dp650";
+            reg = <0x6f200000 0x20000>;
+            memory-region = <&display_reserved>;
+            interrupts = <168>, <168>;
+            interrupt-names = "DE", "SE";
+            clocks = <&oscclk2>, <&fpgaosc0>, <&fpgaosc1>, <&fpgaosc1>;
+            clock-names = "pxlclk", "mclk", "aclk", "pclk";
+            arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
+            arm,malidp-arqos-high-level = <0xd000d000>;
+
+            port {
+                    dp0_output: endpoint {
+                            remote-endpoint = <&tda998x_2_input>;
+                    };
+            };
+    };
+
+...
-- 
2.25.1

