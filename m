Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AA8622DA00
	for <lists+devicetree@lfdr.de>; Sat, 25 Jul 2020 23:15:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727923AbgGYVPI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jul 2020 17:15:08 -0400
Received: from mail-out.m-online.net ([212.18.0.10]:51465 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727039AbgGYVPI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jul 2020 17:15:08 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4BDf3Y1rNzz1tBxZ;
        Sat, 25 Jul 2020 23:15:05 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4BDf3Y1dd8z1qxpQ;
        Sat, 25 Jul 2020 23:15:05 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 74yM-soCC0Il; Sat, 25 Jul 2020 23:15:03 +0200 (CEST)
X-Auth-Info: ejvp1sharnWNbykzn+OC2bNTTXSNZ8ghRmj48G5R1H8=
Received: from desktop.lan (ip-86-49-101-166.net.upcbroadband.cz [86.49.101.166])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sat, 25 Jul 2020 23:15:03 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Eric Anholt <eric@anholt.net>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: Add DT bindings for Toshiba TC358762 DSI-to-DPI bridge
Date:   Sat, 25 Jul 2020 23:14:56 +0200
Message-Id: <20200725211457.5772-1-marex@denx.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT bindings for Toshiba TC358762 DSI-to-DPI bridge, this
one is used in the Raspberry Pi 7" touchscreen display unit.

Signed-off-by: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Eric Anholt <eric@anholt.net>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
---
 .../display/bridge/toshiba,tc358762.yaml      | 116 ++++++++++++++++++
 1 file changed, 116 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
new file mode 100644
index 000000000000..40098ca761a3
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/toshiba,tc358762.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Toshiba TC358762 MIPI DSI to MIPI DPI bridge
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+description: |
+  The TC358762 is bridge device which converts MIPI DSI to MIPI DPI.
+
+properties:
+  compatible:
+    enum:
+      - toshiba,tc358762
+
+  reg:
+    maxItems: 1
+    description: virtual channel number of a DSI peripheral
+
+  vddc-supply:
+    description: Regulator for 1.2V internal core power.
+
+  ports:
+    type: object
+
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        type: object
+        additionalProperties: false
+
+        description: |
+          Video port for MIPI DSI input
+
+        properties:
+          reg:
+            const: 0
+
+        patternProperties:
+          endpoint:
+            type: object
+            additionalProperties: false
+
+            properties:
+              remote-endpoint: true
+
+        required:
+          - reg
+
+      port@1:
+        type: object
+        additionalProperties: false
+
+        description: |
+          Video port for MIPI DPI output (panel or connector).
+
+        properties:
+          reg:
+            const: 1
+
+        patternProperties:
+          endpoint:
+            type: object
+            additionalProperties: false
+
+            properties:
+              remote-endpoint: true
+
+        required:
+          - reg
+
+    required:
+      - "#address-cells"
+      - "#size-cells"
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - vddc-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    bridge@0 {
+        reg = <0>;
+        compatible = "toshiba,tc358762";
+        vddc-supply = <&vcc_1v2_reg>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        port@0 {
+            reg = <0>;
+            bridge_in: endpoint {
+                remote-endpoint = <&dsi_out>;
+            };
+        };
+
+        port@1 {
+            reg = <1>;
+            bridge_out: endpoint {
+                remote-endpoint = <&panel_in>;
+            };
+        };
+    };
-- 
2.27.0

