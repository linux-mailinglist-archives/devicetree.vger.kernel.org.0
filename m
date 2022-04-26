Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8706510933
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 21:37:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350664AbiDZTkN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 15:40:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352459AbiDZTkM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 15:40:12 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F2113F893
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 12:37:03 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E7A1383B63;
        Tue, 26 Apr 2022 21:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1651001820;
        bh=DLpyodc0IH5QXZ+/4a9WOF+KrLBrMkntojqAv7H1l4U=;
        h=From:To:Cc:Subject:Date:From;
        b=np+jDBWg6xcMeYLovDbP43SdwZRF0TO57DQhrrqoa/hrVeUcFyKplGc1o7WaLBjpg
         ICZ9NbE9T4cTT4fvm54GSB+dtH9SFrnKXA/ot+2o3EtcsHOYZPdAw0zT5BqaIWrp7n
         TSzEHTb12VJMJcI9UwVfME3ucHu1qn4BcjLl2EB9ZHjSC6NPRL1P2FrEQ3YZSkS9LL
         9Y57xTvG7ACTGuwmdcv6L97vJRxMVrrJtj7OgxNVFTOnPghH+inIyARhcUxtkY1Y7T
         89g8RWWAylc2HlVZtgKbZNQbClGsrkoEZlOxac9qENoYag71CvutJontyEfOgS2Es0
         YQCDPHn43jlkQ==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: display: bridge: ldb: Implement simple Freescale i.MX8MP LDB bridge
Date:   Tue, 26 Apr 2022 21:36:44 +0200
Message-Id: <20220426193645.244792-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8MP contains two syscon registers which are responsible
for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
which represents this serializer as a bridge.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Maxime Ripard <maxime@cerno.tech>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robby Cai <robby.cai@nxp.com>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V2: - Consistently use fsl,imx8mp-ldb as compatible
    - Drop items: from compatible:
    - Replace minItems with maxItems in clocks:
    - Drop quotes from clock-names const: ldb
    - Rename syscon to fsl,syscon
    - Use generic name of ldb-lvds in example
V3: - Add AB from Sam
    - Consistently use MX8MP
V4: - Rename to fsl-ldb all over the place
    - Put the LDB node under media block controller in the example
---
 .../bindings/display/bridge/fsl,ldb.yaml      | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
new file mode 100644
index 000000000000..77f174eee424
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/fsl,ldb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP DPI to LVDS bridge chip
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+description: |
+  The i.MX8MP mediamix contains two registers which are responsible
+  for configuring the on-SoC DPI-to-LVDS serializer. This describes
+  those registers as bridge within the DT.
+
+properties:
+  compatible:
+    const: fsl,imx8mp-ldb
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: ldb
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for DPI input.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for LVDS Channel-A output (panel or bridge).
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for LVDS Channel-B output (panel or bridge).
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - clocks
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+
+    blk-ctrl {
+        bridge {
+            compatible = "fsl,imx8mp-ldb";
+            clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
+            clock-names = "ldb";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    ldb_from_lcdif2: endpoint {
+                        remote-endpoint = <&lcdif2_to_ldb>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    ldb_lvds_ch0: endpoint {
+                        remote-endpoint = <&ldb_to_lvdsx4panel>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+
+                    ldb_lvds_ch1: endpoint {
+                    };
+                };
+            };
+        };
+    };
-- 
2.35.1

