Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 565C44F6719
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239065AbiDFRbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239057AbiDFRax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:30:53 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F9E52156DC
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:34:15 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc7fZ-0005jN-8g; Wed, 06 Apr 2022 17:34:05 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 03/11] dt-bindings: soc: Add i.MX8MP media block control DT bindings
Date:   Wed,  6 Apr 2022 17:33:54 +0200
Message-Id: <20220406153402.1265474-4-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406153402.1265474-1-l.stach@pengutronix.de>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
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

From: Paul Elder <paul.elder@ideasonboard.com>

The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level
peripheral providing access to the NoC and ensuring proper power
sequencing of the peripherals within the MEDIAMIX domain. Add DT
bindings for it.

There is already a driver for block controls of other SoCs in the i.MX8M
family, so these bindings will expand upon that.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Marek Vasut <marex@denx.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 104 ++++++++++++++++++
 include/dt-bindings/power/imx8mp-power.h      |  10 ++
 2 files changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
new file mode 100644
index 000000000000..21d3ee486295
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8MP Media Block Control
+
+maintainers:
+  - Paul Elder <paul.elder@ideasonboard.com>
+
+description:
+  The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level peripheral
+  providing access to the NoC and ensuring proper power sequencing of the
+  peripherals within the MEDIAMIX domain.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx8mp-media-blk-ctrl
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#power-domain-cells':
+    const: 1
+
+  power-domains:
+    maxItems: 10
+
+  power-domain-names:
+    items:
+      - const: bus
+      - const: mipi-dsi1
+      - const: mipi-csi1
+      - const: lcdif1
+      - const: isi
+      - const: mipi-csi2
+      - const: lcdif2
+      - const: isp
+      - const: dwe
+      - const: mipi-dsi2
+
+  clocks:
+    items:
+      - description: The APB clock
+      - description: The AXI clock
+      - description: The pixel clock for the first CSI2 receiver (aclk)
+      - description: The pixel clock for the second CSI2 receiver (aclk)
+      - description: The pixel clock for the first LCDIF (pix_clk)
+      - description: The pixel clock for the second LCDIF (pix_clk)
+      - description: The core clock for the ISP (clk)
+      - description: The MIPI-PHY reference clock used by DSI
+
+  clock-names:
+    items:
+      - const: apb
+      - const: axi
+      - const: cam1
+      - const: cam2
+      - const: disp1
+      - const: disp2
+      - const: isp
+      - const: phy
+
+required:
+  - compatible
+  - reg
+  - '#power-domain-cells'
+  - power-domains
+  - power-domain-names
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    media_blk_ctl: blk-ctl@32ec0000 {
+        compatible = "fsl,imx8mp-media-blk-ctrl", "syscon";
+        reg = <0x32ec0000 0x138>;
+        power-domains = <&mediamix_pd>, <&mipi_phy1_pd>, <&mipi_phy1_pd>,
+                        <&mediamix_pd>, <&mediamix_pd>, <&mipi_phy2_pd>,
+                        <&mediamix_pd>, <&ispdwp_pd>, <&ispdwp_pd>,
+                        <&mipi_phy2_pd>;
+        power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
+                             "mipi-csi2", "lcdif2", "isp1", "dwe", "mipi-dsi2";
+        clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+                 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+                 <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
+                 <&clk IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
+                 <&clk IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT>,
+                 <&clk IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT>,
+                 <&clk IMX8MP_CLK_MEDIA_ISP_ROOT>,
+                 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>;
+        clock-names = "apb", "axi", "cam1", "cam2", "disp1", "disp2",
+                      "isp", "phy";
+        #power-domain-cells = <1>;
+    };
+...
diff --git a/include/dt-bindings/power/imx8mp-power.h b/include/dt-bindings/power/imx8mp-power.h
index 9f90c40a2c6c..bc8458f1e725 100644
--- a/include/dt-bindings/power/imx8mp-power.h
+++ b/include/dt-bindings/power/imx8mp-power.h
@@ -32,4 +32,14 @@
 #define IMX8MP_HSIOBLK_PD_PCIE				3
 #define IMX8MP_HSIOBLK_PD_PCIE_PHY			4
 
+#define IMX8MP_MEDIABLK_PD_MIPI_DSI_1			0
+#define IMX8MP_MEDIABLK_PD_MIPI_CSI2_1			1
+#define IMX8MP_MEDIABLK_PD_LCDIF_1			2
+#define IMX8MP_MEDIABLK_PD_ISI				3
+#define IMX8MP_MEDIABLK_PD_MIPI_CSI2_2			4
+#define IMX8MP_MEDIABLK_PD_LCDIF_2			5
+#define IMX8MP_MEDIABLK_PD_ISP				6
+#define IMX8MP_MEDIABLK_PD_DWE				7
+#define IMX8MP_MEDIABLK_PD_MIPI_DSI_2			8
+
 #endif
-- 
2.30.2

