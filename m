Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6BC064E22A
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 21:11:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbiLOULR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 15:11:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229737AbiLOULQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 15:11:16 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEDA628715
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 12:11:12 -0800 (PST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p5uZK-0003LY-5q; Thu, 15 Dec 2022 21:11:02 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Sandor Yu <Sandor.yu@nxp.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date:   Thu, 15 Dec 2022 21:10:59 +0100
Message-Id: <20221215201100.2897501-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2:
- drop minItems from clocks
- add description
---
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
new file mode 100644
index 000000000000..61ffdc4d5792
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI PHY binding
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The HDMI PHY in the i.MX8MP SoC is implemented in 14nm technology and
+  is based on Samsung IP.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ref
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    phy@32fdff00 {
+        compatible = "fsl,imx8mp-hdmi-phy";
+        reg = <0x32fdff00 0x100>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_24M>;
+        clock-names = "apb", "ref";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
-- 
2.30.2

