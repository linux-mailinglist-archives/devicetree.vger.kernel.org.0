Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8E682F8862
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726239AbhAOWYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:24:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbhAOWYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:24:10 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E76D4C061757
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:23:29 -0800 (PST)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4BEB5BAC;
        Fri, 15 Jan 2021 23:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1610749405;
        bh=eDia7dt4X0zD1uEPb9vkXZpRLPOTnyrNzfdP5UixDSM=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=K2fFlyBYiFNKzxjZ1tiQK9bdBoDUpDcAoMqvSnU9p7LKBP3duBAiMUBn4qRN4Ln8V
         oc/tCE4Sg9Y6thKzXuiX01MDON74S0ENFzx/Q1KclslDndaeSkRxXLIFUKHNFuoDsX
         4GxKvGTn1vWnpdog5otGCVlJS63J5uRcOi3q3/X0=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v3 1/3] dt-bindings: display: mxsfb: Convert binding to YAML
Date:   Sat, 16 Jan 2021 00:23:02 +0200
Message-Id: <20210115222304.5427-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210115222304.5427-1-laurent.pinchart@ideasonboard.com>
References: <20210115222304.5427-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the mxsfb binding to YAML. The deprecated binding is dropped, as
neither the DT sources nor the driver support it anymore. The converted
binding is named fsl,lcdif.yaml to match the usual bindings naming
scheme.

The compatible strings are messy, and DT sources use different kinds of
combination of documented and undocumented values. Keep it simple for
now, and update the example to make it valid. Aligning the binding with
the existing DT sources will be performed separately.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Rob Herring <robh@kernel.org>
--
Changes since v2:

- Use OF graph schema

Changes since v1:

- Drop unneeded quotes in string
- Replace minItems with maxItems in conditional check
- Add blank line before ...
- Squash the rename in this commit
---
 .../bindings/display/fsl,lcdif.yaml           | 101 ++++++++++++++++++
 .../devicetree/bindings/display/mxsfb.txt     |  87 ---------------
 MAINTAINERS                                   |   2 +-
 3 files changed, 102 insertions(+), 88 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/fsl,lcdif.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/mxsfb.txt

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
new file mode 100644
index 000000000000..bbd47d80d253
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -0,0 +1,101 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale/NXP i.MX LCD Interface (LCDIF)
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+  - Stefan Agner <stefan@agner.ch>
+
+description: |
+  (e)LCDIF display controller found in the Freescale/NXP i.MX SoCs.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx23-lcdif
+      - fsl,imx28-lcdif
+      - fsl,imx6sx-lcdif
+      - fsl,imx8mq-lcdif
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Pixel clock
+      - description: Bus clock
+      - description: Display AXI clock
+    minItems: 1
+
+  clock-names:
+    items:
+      - const: pix
+      - const: axi
+      - const: disp_axi
+    minItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: The LCDIF output port
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - port
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx6sx-lcdif
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 3
+        clock-names:
+          minItems: 2
+          maxItems: 3
+      required:
+        - clock-names
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx6sx-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    display-controller@2220000 {
+        compatible = "fsl,imx6sx-lcdif";
+        reg = <0x02220000 0x4000>;
+        interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
+                 <&clks IMX6SX_CLK_LCDIF_APB>,
+                 <&clks IMX6SX_CLK_DISPLAY_AXI>;
+        clock-names = "pix", "axi", "disp_axi";
+
+        port {
+            endpoint {
+                remote-endpoint = <&panel_in>;
+            };
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/mxsfb.txt b/Documentation/devicetree/bindings/display/mxsfb.txt
deleted file mode 100644
index c985871c46b3..000000000000
--- a/Documentation/devicetree/bindings/display/mxsfb.txt
+++ /dev/null
@@ -1,87 +0,0 @@
-* Freescale MXS LCD Interface (LCDIF)
-
-New bindings:
-=============
-Required properties:
-- compatible:	Should be "fsl,imx23-lcdif" for i.MX23.
-		Should be "fsl,imx28-lcdif" for i.MX28.
-		Should be "fsl,imx6sx-lcdif" for i.MX6SX.
-		Should be "fsl,imx8mq-lcdif" for i.MX8MQ.
-- reg:		Address and length of the register set for LCDIF
-- interrupts:	Should contain LCDIF interrupt
-- clocks:	A list of phandle + clock-specifier pairs, one for each
-		entry in 'clock-names'.
-- clock-names:	A list of clock names. For MXSFB it should contain:
-    - "pix" for the LCDIF block clock
-    - (MX6SX-only) "axi", "disp_axi" for the bus interface clock
-
-Required sub-nodes:
-  - port: The connection to an encoder chip.
-
-Example:
-
-	lcdif1: display-controller@2220000 {
-		compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
-		reg = <0x02220000 0x4000>;
-		interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
-			 <&clks IMX6SX_CLK_LCDIF_APB>,
-			 <&clks IMX6SX_CLK_DISPLAY_AXI>;
-		clock-names = "pix", "axi", "disp_axi";
-
-		port {
-			parallel_out: endpoint {
-				remote-endpoint = <&panel_in_parallel>;
-			};
-		};
-	};
-
-Deprecated bindings:
-====================
-Required properties:
-- compatible:	Should be "fsl,imx23-lcdif" for i.MX23.
-		Should be "fsl,imx28-lcdif" for i.MX28.
-- reg:		Address and length of the register set for LCDIF
-- interrupts:	Should contain LCDIF interrupts
-- display:	phandle to display node (see below for details)
-
-* display node
-
-Required properties:
-- bits-per-pixel:	<16> for RGB565, <32> for RGB888/666.
-- bus-width:		number of data lines.  Could be <8>, <16>, <18> or <24>.
-
-Required sub-node:
-- display-timings:	Refer to binding doc display-timing.txt for details.
-
-Examples:
-
-lcdif@80030000 {
-	compatible = "fsl,imx28-lcdif";
-	reg = <0x80030000 2000>;
-	interrupts = <38 86>;
-
-	display: display {
-		bits-per-pixel = <32>;
-		bus-width = <24>;
-
-		display-timings {
-			native-mode = <&timing0>;
-			timing0: timing0 {
-				clock-frequency = <33500000>;
-				hactive = <800>;
-				vactive = <480>;
-				hfront-porch = <164>;
-				hback-porch = <89>;
-				hsync-len = <10>;
-				vback-porch = <23>;
-				vfront-porch = <10>;
-				vsync-len = <10>;
-				hsync-active = <0>;
-				vsync-active = <0>;
-				de-active = <1>;
-				pixelclk-active = <0>;
-			};
-		};
-	};
-};
diff --git a/MAINTAINERS b/MAINTAINERS
index d082757ca672..9d241b832aae 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12180,7 +12180,7 @@ M:	Stefan Agner <stefan@agner.ch>
 L:	dri-devel@lists.freedesktop.org
 S:	Supported
 T:	git git://anongit.freedesktop.org/drm/drm-misc
-F:	Documentation/devicetree/bindings/display/mxsfb.txt
+F:	Documentation/devicetree/bindings/display/fsl,lcdif.yaml
 F:	drivers/gpu/drm/mxsfb/
 
 MYLEX DAC960 PCI RAID Controller
-- 
Regards,

Laurent Pinchart

