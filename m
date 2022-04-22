Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AFFC50B1A8
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 09:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1444836AbiDVHcI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 03:32:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1444829AbiDVHcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 03:32:06 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A163F5132D
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 00:29:14 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nhnin-0008KK-3v; Fri, 22 Apr 2022 09:28:53 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nhnii-004Vyq-LZ; Fri, 22 Apr 2022 09:28:47 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nhnid-009IUU-HM; Fri, 22 Apr 2022 09:28:43 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v11 23/24] dt-bindings: display: rockchip: Add binding for VOP2
Date:   Fri, 22 Apr 2022 09:28:40 +0200
Message-Id: <20220422072841.2206452-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
The binding differs slightly from the existing VOP binding, so add a new
binding file for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v5:
    - Add Robs Reviewed-by:
    
    Changes since v4:
    - Fix clk names in example
    - Drop unnecessary assigned-clocks, assigned-clock-rates and assigned-clock-parents
    
    Changes since v3:
    - drop redundant _vop suffix from clock names
    
    Changes since v3:
    - new patch

 .../display/rockchip/rockchip-vop2.yaml       | 140 ++++++++++++++++++
 1 file changed, 140 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
new file mode 100644
index 0000000000000..655d9b327f7d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC display controller (VOP2)
+
+description:
+  VOP2 (Video Output Processor v2) is the display controller for the Rockchip
+  series of SoCs which transfers the image data from a video memory
+  buffer to an external LCD interface.
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3566-vop
+      - rockchip,rk3568-vop
+
+  reg:
+    minItems: 1
+    items:
+      - description:
+          Must contain one entry corresponding to the base address and length
+          of the register space.
+      - description:
+          Can optionally contain a second entry corresponding to
+          the CRTC gamma LUT address.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The VOP interrupt is shared by several interrupt sources, such as
+      frame start (VSYNC), line flag and other status interrupts.
+
+  clocks:
+    items:
+      - description: Clock for ddr buffer transfer.
+      - description: Clock for the ahb bus to R/W the phy regs.
+      - description: Pixel clock for video port 0.
+      - description: Pixel clock for video port 1.
+      - description: Pixel clock for video port 2.
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: dclk_vp0
+      - const: dclk_vp1
+      - const: dclk_vp2
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to GRF regs used for misc control
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of VP0
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of VP1
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of VP2
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+        #include <dt-bindings/clock/rk3568-cru.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
+        #include <dt-bindings/power/rk3568-power.h>
+        bus {
+            #address-cells = <2>;
+            #size-cells = <2>;
+            vop: vop@fe040000 {
+                compatible = "rockchip,rk3568-vop";
+                reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
+                interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+                clocks = <&cru ACLK_VOP>,
+                         <&cru HCLK_VOP>,
+                         <&cru DCLK_VOP0>,
+                         <&cru DCLK_VOP1>,
+                         <&cru DCLK_VOP2>;
+                clock-names = "aclk",
+                              "hclk",
+                              "dclk_vp0",
+                              "dclk_vp1",
+                              "dclk_vp2";
+                power-domains = <&power RK3568_PD_VO>;
+                iommus = <&vop_mmu>;
+                vop_out: ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+                    vp0: port@0 {
+                        reg = <0>;
+                        #address-cells = <1>;
+                        #size-cells = <0>;
+                    };
+                    vp1: port@1 {
+                        reg = <1>;
+                        #address-cells = <1>;
+                        #size-cells = <0>;
+                    };
+                    vp2: port@2 {
+                        reg = <2>;
+                        #address-cells = <1>;
+                        #size-cells = <0>;
+                    };
+                };
+            };
+        };
-- 
2.30.2

