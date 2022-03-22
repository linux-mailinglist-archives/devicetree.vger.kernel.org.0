Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12FF84E466B
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 20:03:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230281AbiCVTFR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 15:05:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230266AbiCVTFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 15:05:16 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76CB8BF68
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 12:03:48 -0700 (PDT)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B30911209;
        Tue, 22 Mar 2022 20:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1647975826;
        bh=J33j7vlsBg92C3HbYXNpkK0QydSr8+WVCVotVkuiEC0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=pOQ75NCUPDXK+PYCLxEWTK8RsXRnP0jwedET6EvkUNLV9kmjSdtN4GFkuupTs/TOV
         0lQS9IDK4q46zvDAiJEmeqmqCa3EaDg5tnqY5HtCzku6OysqrFTCq3mlLB8i8tMUbF
         zYr6W1qp7vY40CI3U9SxVJyvXc+c3OUMif9Nbv9A=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/4] dt-bindings: soc: Add i.MX8MP media block control DT bindings
Date:   Tue, 22 Mar 2022 21:03:21 +0200
Message-Id: <20220322190324.12589-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322190324.12589-1-laurent.pinchart@ideasonboard.com>
References: <20220322190324.12589-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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
---
Changes since v1:

- Lower reg size to 0x138
- Add ISP2 power domain and rename ISP to ISP1
---
 .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 106 ++++++++++++++++++
 include/dt-bindings/power/imx8mp-power.h      |  11 ++
 2 files changed, 117 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
new file mode 100644
index 000000000000..b6808981de2f
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
@@ -0,0 +1,106 @@
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
+    maxItems: 11
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
+      - const: isp2
+      - const: isp1
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
+                        <&ispdwp_pd>, <&mipi_phy2_pd>;
+        power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
+                             "mipi-csi2", "lcdif2", "isp2", "isp1", "dwe",
+                             "mipi-dsi2";
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
index 9f90c40a2c6c..3f72bf7818fd 100644
--- a/include/dt-bindings/power/imx8mp-power.h
+++ b/include/dt-bindings/power/imx8mp-power.h
@@ -32,4 +32,15 @@
 #define IMX8MP_HSIOBLK_PD_PCIE				3
 #define IMX8MP_HSIOBLK_PD_PCIE_PHY			4
 
+#define IMX8MP_MEDIABLK_PD_MIPI_DSI_1			0
+#define IMX8MP_MEDIABLK_PD_MIPI_CSI2_1			1
+#define IMX8MP_MEDIABLK_PD_LCDIF_1			2
+#define IMX8MP_MEDIABLK_PD_ISI				3
+#define IMX8MP_MEDIABLK_PD_MIPI_CSI2_2			4
+#define IMX8MP_MEDIABLK_PD_LCDIF_2			5
+#define IMX8MP_MEDIABLK_PD_ISP2				6
+#define IMX8MP_MEDIABLK_PD_ISP1				7
+#define IMX8MP_MEDIABLK_PD_DWE				8
+#define IMX8MP_MEDIABLK_PD_MIPI_DSI_2			9
+
 #endif
-- 
Regards,

Laurent Pinchart

