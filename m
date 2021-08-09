Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 187703E3D8F
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 03:35:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232521AbhHIBfY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Aug 2021 21:35:24 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39004 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbhHIBfY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Aug 2021 21:35:24 -0400
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7144B49A;
        Mon,  9 Aug 2021 03:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1628472903;
        bh=uCBShDtLpso1PQR1G9Zecj3wg6s5dGIqupTC1B356Eg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=N7AJi5LOEfNDk530uvAewKgnVehMMY8lbHqAP/K0sQqxbZZN4NMcJqiAQ5Qx0anS7
         pbZL+/nCqYDymY07SRFgVpyQPUaG/he8enOBCsUU5jaDavRVtZ0+FlCum5LNEJH1hK
         LCTmKOlc0Mx7Rxm5c6XsJoWlYkfDjjK3UJBaa98E=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Michal Simek <michal.simek@xilinx.com>,
        Jianqiang Chen <jianqian@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 01/36] dt-bindings: display: xlnx: zynqmp-dpsub: Add OF graph ports
Date:   Mon,  9 Aug 2021 04:34:22 +0300
Message-Id: <20210809013457.11266-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210809013457.11266-1-laurent.pinchart@ideasonboard.com>
References: <20210809013457.11266-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DPSUB doesn't live in isolation, but is connected to the
programmable logic for live inputs and outputs, and also has a
DisplayPort output. Model all those using OF graph.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../display/xlnx/xlnx,zynqmp-dpsub.yaml       | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml b/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
index d88bd93f4b80..5000c5fda027 100644
--- a/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
+++ b/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
@@ -117,6 +117,45 @@ properties:
       - const: dp-phy0
       - const: dp-phy1
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description: |
+      Connections to the programmable logic and the DisplayPort PHYs. Each port
+      shall have a single endpoint.
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The live video input from the programmable logic
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The live graphics input from the programmable logic
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The live audio input from the programmable logic
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The blended video output to the programmable logic
+
+      port@4:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The mixed audio output to the programmable logic
+
+      port@5:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: The DisplayPort output
+
+    required:
+      - port@0
+      - port@1
+      - port@2
+      - port@3
+      - port@4
+      - port@5
+
 required:
   - compatible
   - reg
@@ -130,6 +169,7 @@ required:
   - dma-names
   - phys
   - phy-names
+  - ports
 
 additionalProperties: false
 
@@ -164,6 +204,33 @@ examples:
                <&psgtr 0 PHY_TYPE_DP 1 3 27000000>;
 
         phy-names = "dp-phy0", "dp-phy1";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+            };
+            port@1 {
+                reg = <1>;
+            };
+            port@2 {
+                reg = <2>;
+            };
+            port@3 {
+                reg = <3>;
+            };
+            port@4 {
+                reg = <4>;
+            };
+            port@5 {
+                reg = <5>;
+                dpsub_dp_out: endpoint {
+                    remote-endpoint = <&dp_connector>;
+                };
+            };
+        };
     };
 
 ...
-- 
Regards,

Laurent Pinchart

