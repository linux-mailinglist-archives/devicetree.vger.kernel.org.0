Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB84A4B9B08
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 09:30:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236826AbiBQIae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 03:30:34 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237723AbiBQIac (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 03:30:32 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CD8F1F6B87
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 00:30:18 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKcAw-0002EK-JZ; Thu, 17 Feb 2022 09:30:06 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nKcAq-00ClU0-AM; Thu, 17 Feb 2022 09:30:00 +0100
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
Subject: [PATCH v6 22/23] dt-bindings: display: rockchip: Add binding for VOP2
Date:   Thu, 17 Feb 2022 09:29:53 +0100
Message-Id: <20220217082954.2967889-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220217082954.2967889-1-s.hauer@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
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

