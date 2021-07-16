Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 241B43CBFBE
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 01:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238130AbhGPXc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 19:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238186AbhGPXcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 19:32:24 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A93FC06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 16:29:29 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m4XGl-0002Kr-7f; Sat, 17 Jul 2021 01:29:23 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH 07/17] dt-bindings: soc: add binding for i.MX8MM VPU blk-ctrl
Date:   Sat, 17 Jul 2021 01:29:06 +0200
Message-Id: <20210716232916.3572966-8-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210716232916.3572966-1-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
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
 .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
new file mode 100644
index 000000000000..eea52eba2fa5
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mm-vpu-blk-ctrl#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8MM VPU blk-ctrl
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The i.MX8MM VPU blk-ctrl is a top-level peripheral providing access to
+  the NoC and ensuring proper power sequencing of the VPU peripherals
+  located in the VPU domain of the SoC.
+
+properties:
+  compatible:
+    - const: fsl,imx8mm-vpu-blk-ctrl
+    - const: syscon
+
+  reg:
+    maxItems: 1
+
+  "#power-domains-cells":
+    const: 1
+
+  power-domains:
+    minItems: 4
+    maxItems: 4
+
+  power-domain-names:
+    minItems: 4
+    maxItems: 4
+    items:
+      - bus
+      - g1
+      - g1
+      - h1
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    minItems: 3
+    maxItems: 3
+    items:
+      - g1
+      - g2
+      - h1
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
+    #include <dt-bindings/power/imx8mm-power.h
+
+    vpu_blk_ctrl: blk-ctrl@38330000 {
+      compatible = "fsl,imx8mm-vpu-blk-ctrl", "syscon";
+      reg = <0x38330000 0x100>;
+      power-domains = <&pgc_vpumix>, <&pgc_vpu_g1>,
+                      <&pgc_vpu_g2>, <&pgc_vpu_h1>;
+      power-domain-names = "bus", "g1", "g2", "h1";
+      clocks = <&clk IMX8MM_CLK_VPU_G1_ROOT>,
+               <&clk IMX8MM_CLK_VPU_G2_ROOT>,
+               <&clk IMX8MM_CLK_VPU_H1_ROOT>;
+      clock-names = "g1", "g2", "h1";
+      #power-domain-cells = <1>;
+    };
-- 
2.30.2

