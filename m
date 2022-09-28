Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F29F5EE98D
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 00:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230431AbiI1Wr0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 18:47:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233713AbiI1WrZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 18:47:25 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D646310E5FC
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 15:47:24 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id DE19A6BE;
        Thu, 29 Sep 2022 00:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1664405243;
        bh=XOEVBAFnPFMh/tyYzRh1ZHo0A71aiIwx9p74RfBRUE8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=b4Kqzl92tQGq2rmNFFzkJ4yMeSeweItBFps5l7+PFW8vOYgtQdS7PZrEkBQrf72JM
         aO7S1EWPEaNc+1gXoeDwAZCjlr21+G1y4URJvkYxqZ9fEVlGZ6arfF2uO4NQtvi+r+
         0+5ojSIW2wDlMTXkdxPRMIAnqoxnaRfZ6LK5koLI=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Michal Simek <michal.simek@xilinx.com>,
        Jianqiang Chen <jianqian@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 01/37] dt-bindings: display: xlnx: zynqmp-dpsub: Add OF graph ports
Date:   Thu, 29 Sep 2022 01:46:43 +0300
Message-Id: <20220928224719.3291-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928224719.3291-1-laurent.pinchart@ideasonboard.com>
References: <20220928224719.3291-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DPSUB doesn't live in isolation, but is connected to the
programmable logic for live inputs and outputs, and also has a
DisplayPort output. Model all those using OF graph.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../display/xlnx/xlnx,zynqmp-dpsub.yaml       | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml b/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
index 10ec78ca1c65..554f9d5809d4 100644
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
                <&psgtr 0 PHY_TYPE_DP 1 3>;
 
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

