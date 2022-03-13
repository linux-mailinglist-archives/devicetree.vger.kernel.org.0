Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 987404D7528
	for <lists+devicetree@lfdr.de>; Sun, 13 Mar 2022 13:39:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232158AbiCMMkX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Mar 2022 08:40:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230181AbiCMMkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Mar 2022 08:40:23 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 909EB2AE01
        for <devicetree@vger.kernel.org>; Sun, 13 Mar 2022 05:39:11 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 11A7281433;
        Sun, 13 Mar 2022 13:39:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1647175148;
        bh=LK+ARCLO1yZxkrjYPI63A8wdNuhim6lXBXdwZnoeA6U=;
        h=From:To:Cc:Subject:Date:From;
        b=z6vCE3FZvouhBLwBDVlxirrPV2rmWQnCfO0dOxXQxV+ddSOAKl18oVizkaj7zSjdO
         UXCsnbUKkpUOjuXkK+cYq+EA4E0hXKutpBzZZkeEP0Hy/ZJbQUKs93U/r5moJWPjcA
         dzOfSFr5M2rmfKfWVAhaa+rmyIgGJj5BIgiFplAXmzzCHmOhT/u+bZ/ZogzEBSrZxQ
         hoVRYlxWEyl1zZNo0+4NLZHsbBoQU6wXEBPbuyTlcliJIozc0Uz1rpSIOQCDfWRZ0K
         XdB2w7ItbNKAI/KU6DBE5Q9TwYh9UmN+xpfvL4wvYlfS+Gu3ly6Q7PMKmPc8J5ASrb
         4EZ6QcV3VWfVg==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robby Cai <robby.cai@nxp.com>,
        Robert Foss <robert.foss@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: bridge: ldb: Implement simple NXP i.MX8M LDB bridge
Date:   Sun, 13 Mar 2022 13:38:51 +0100
Message-Id: <20220313123852.207257-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8MP contains two syscon registers which are responsible
for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
which represents this serializer as a bridge.

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
 .../bindings/display/bridge/nxp,ldb.yaml      | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
new file mode 100644
index 0000000000000..a05dd05547836
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/nxp,ldb.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/nxp,ldb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8M DPI to LVDS bridge chip
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+description: |
+  The i.MX8MP contains two syscon registers which are responsible
+  for configuring the on-SoC DPI-to-LVDS serializer. This describes
+  those registers as bridge within the DT.
+
+properties:
+  compatible:
+    items:
+      - const: nxp,imx8mp-ldb
+
+  clocks:
+    minItems: 1
+
+  clock-names:
+    const: "ldb"
+
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: A phandle to media block controller.
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
+  - syscon
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+
+    lvds-ldb {
+        #address-cells = <0>;
+        #size-cells = <0>;
+        compatible = "fsl,imx8mp-ldb";
+        clocks = <&clk IMX8MP_CLK_MEDIA_LDB>;
+        clock-names = "ldb";
+        syscon = <&media_blk_ctrl>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+
+                ldb_from_lcdif2: endpoint {
+                    remote-endpoint = <&lcdif2_to_ldb>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+
+                ldb_lvds_ch0: endpoint {
+                    remote-endpoint = <&ldb_to_lvdsx4panel>;
+                };
+            };
+
+            port@2 {
+                reg = <2>;
+
+                ldb_lvds_ch1: endpoint {
+                };
+            };
+        };
+    };
-- 
2.35.1

