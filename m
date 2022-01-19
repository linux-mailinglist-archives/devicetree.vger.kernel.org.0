Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEE11493B36
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 14:40:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343938AbiASNkh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 08:40:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348781AbiASNkg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 08:40:36 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C70A5C061401
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 05:40:35 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nABCR-0006Kr-3p; Wed, 19 Jan 2022 14:40:31 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH 5/9] dt-bindings: soc: add binding for i.MX8MP HSIO blk-ctrl
Date:   Wed, 19 Jan 2022 14:40:23 +0100
Message-Id: <20220119134027.2931945-6-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220119134027.2931945-1-l.stach@pengutronix.de>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the binding for the HSIO blk-ctrl on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml     | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
new file mode 100644
index 000000000000..e9a9e1676142
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
@@ -0,0 +1,78 @@
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
+  The i.MX8MP HSIO blk-ctrl is a top-level peripheral providing access to
+  the NoC and ensuring proper power sequencing of the high-speed IO
+  (USB an PCIe) peripherals located in the HSIO domain of the SoC.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx8mp-hsio-blk-ctrl
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#power-domain-cells':
+    const: 1
+
+  power-domains:
+    minItems: 6
+    maxItems: 6
+
+  power-domain-names:
+    items:
+      - const: bus
+      - const: usb
+      - const: usb-phy1
+      - const: usb-phy2
+      - const: pcie
+      - const: pcie-phy
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: usb
+      - const: pcie
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
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    hsio_blk_ctrl: blk-ctrl@32f10000 {
+        compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
+        reg = <0x32f10000 0x24>;
+        clocks = <&clk IMX8MP_CLK_USB_ROOT>,
+                 <&clk IMX8MP_CLK_PCIE_ROOT>;
+        clock-names = "usb", "pcie";
+        power-domains = <&pgc_hsiomix>, <&pgc_hsiomix>,
+                        <&pgc_usb1_phy>, <&pgc_usb2_phy>,
+                        <&pgc_hsiomix>, <&pgc_pcie_phy>;
+        power-domain-names = "bus", "usb", "usb-phy1",
+                             "usb-phy2", "pcie", "pcie-phy";
+        #power-domain-cells = <1>;
+    };
-- 
2.30.2

