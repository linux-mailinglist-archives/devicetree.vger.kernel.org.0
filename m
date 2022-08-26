Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 231CD5A2FE5
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 21:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237072AbiHZTZD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 15:25:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232426AbiHZTYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 15:24:46 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2DEEDDB65
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 12:24:36 -0700 (PDT)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1oRewN-0000At-LF; Fri, 26 Aug 2022 21:24:27 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
        kernel@pengutronix.de
Subject: [PATCH 3/4] dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
Date:   Fri, 26 Aug 2022 21:24:23 +0200
Message-Id: <20220826192424.3216734-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220826192424.3216734-1-l.stach@pengutronix.de>
References: <20220826192424.3216734-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
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

Add binding for the i.MX8MP HDMI parallel video interface block.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Marek Vasut <marex@denx.de>
---
 .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
new file mode 100644
index 000000000000..bf25d29c03ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi-pvi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI Parallel Video Interface
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description: |
+  The HDMI parallel video interface is timing and sync generator block in the
+  i.MX8MP SoC, that sits between the video source and the HDMI TX controller.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-pvi
+
+  reg:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description: |
+      This device has two video ports.
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input from the LCDIF controller.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output to the HDMI TX controller
+
+    anyOf:
+      - required:
+          - port@0
+      - required:
+          - port@1
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    display-bridge@32fc4000 {
+        compatible = "fsl,imx8mp-hdmi-pvi";
+        reg = <0x32fc4000 0x40>;
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PVI>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                pvi_from_lcdif3: endpoint {
+                    remote-endpoint = <&lcdif3_to_pvi>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                pvi_to_hdmi_tx: endpoint {
+                    remote-endpoint = <&hdmi_tx_from_pvi>;
+                };
+            };
+        };
+    };
-- 
2.30.2

