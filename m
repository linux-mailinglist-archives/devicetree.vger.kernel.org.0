Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFD5E3D1856
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 22:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbhGUUGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 16:06:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232740AbhGUUGm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 16:06:42 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C279BC0613D3
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 13:47:18 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6J7Y-0004jk-Db; Wed, 21 Jul 2021 22:47:12 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH v2 11/18] dt-bindings: soc: add binding for i.MX8MM DISP blk-ctrl
Date:   Wed, 21 Jul 2021 22:46:56 +0200
Message-Id: <20210721204703.1424034-12-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210721204703.1424034-1-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the DT binding for the i.MX8MM VPU blk-ctrl.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     | 94 +++++++++++++++++++
 1 file changed, 94 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
new file mode 100644
index 000000000000..84887909d01a
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8MM DISP blk-ctrl
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The i.MX8MM DISP blk-ctrl is a top-level peripheral providing access to
+  the NoC and ensuring proper power sequencing of the display and MIPI CSI
+  peripherals located in the DISP domain of the SoC.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx8mm-disp-blk-ctrl
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#power-domains-cells':
+    const: 1
+
+  power-domains:
+    minItems: 5
+    maxItems: 5
+
+  power-domain-names:
+    items:
+      - const: bus
+      - const: csi-bridge
+      - const: lcdif
+      - const: mipi-dsi
+      - const: mipi-csi
+
+  clocks:
+    minItems: 10
+    maxItems: 10
+
+  clock-names:
+    items:
+      - const: csi-bridge-axi
+      - const: csi-bridge-apb
+      - const: csi-bridge-core
+      - const: lcdif-axi
+      - const: lcdif-apb
+      - const: lcdif-pix
+      - const: dsi-pclk
+      - const: dsi-ref
+      - const: csi-aclk
+      - const: csi-pclk
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - power-domain-names
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    #include <dt-bindings/power/imx8mm-power.h>
+
+    disp_blk_ctl: blk_ctrl@32e28000 {
+      compatible = "fsl,imx8mm-disp-blk-ctrl", "syscon";
+      reg = <0x32e28000 0x100>;
+      power-domains = <&pgc_dispmix>, <&pgc_dispmix>, <&pgc_dispmix>,
+                      <&pgc_mipi>, <&pgc_mipi>;
+      power-domain-names = "bus", "csi-bridge", "lcdif",
+                           "mipi-dsi", "mipi-csi";
+      clocks = <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
+               <&clk IMX8MM_CLK_DISP_APB_ROOT>,
+               <&clk IMX8MM_CLK_CSI1_ROOT>,
+               <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
+               <&clk IMX8MM_CLK_DISP_APB_ROOT>,
+               <&clk IMX8MM_CLK_DISP_ROOT>,
+               <&clk IMX8MM_CLK_DSI_CORE>,
+               <&clk IMX8MM_CLK_DSI_PHY_REF>,
+               <&clk IMX8MM_CLK_CSI1_CORE>,
+               <&clk IMX8MM_CLK_CSI1_PHY_REF>;
+       clock-names = "csi-bridge-axi", "csi-bridge-apb", "csi-bridge-core",
+                     "lcdif-axi", "lcdif-apb", "lcdif-pix", "dsi-pclk",
+                     "dsi-ref", "csi-aclk", "csi-pclk";
+       #power-domain-cells = <1>;
+    };
-- 
2.30.2

