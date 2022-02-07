Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AC494AC992
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 20:31:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232809AbiBGTau (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 14:30:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240028AbiBGTZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:25:58 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8249C0401E2
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:25:57 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nH9e4-0001pl-0A; Mon, 07 Feb 2022 20:25:52 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: [PATCH v2 5/9] dt-bindings: soc: add binding for i.MX8MP HSIO blk-ctrl
Date:   Mon,  7 Feb 2022 20:25:43 +0100
Message-Id: <20220207192547.1997549-5-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207192547.1997549-1-l.stach@pengutronix.de>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
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

This adds the binding for the HSIO blk-ctrl on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml     | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml

diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
new file mode 100644
index 000000000000..c1e29d94f40e
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8MP HSIO blk-ctrl
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

