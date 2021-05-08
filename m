Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ACFB3773FA
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 22:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbhEHUZO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 16:25:14 -0400
Received: from phobos.denx.de ([85.214.62.61]:48508 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229523AbhEHUZO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 8 May 2021 16:25:14 -0400
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A9DD482ABA;
        Sat,  8 May 2021 22:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1620505450;
        bh=ZFFYGHTfPYXigvDlaVH32POd7dC+6TCwBLmFE6vLqxI=;
        h=From:To:Cc:Subject:Date:From;
        b=dAx5mWD+fE+NIeGnGCB4KeVWABWyRXTLIOo+rfPxfVX5aLZvZagiJ4qUaMn3o8gdE
         m2pxKKtGxM6gTnRuNIPgQQMLLxZmhYZYs8NVRO6qqHTcn20TCpItsJ/cozho8LO3Qx
         eCD9aayk4L75thmQ3FqNxIPDchR1GoiB7YvVISOdlvJFGHKfviV41W7LePtt86iYYr
         e07v2gp1Dfk+i6nQSpM2jh8eOiGtZ62BoY11KESTojXQrWSS43jnSutYhtlzyL+Hne
         8Ced1otqqJplscjq4usHu1VhpNFSJhROLQm3hppIVY1wjD8ONbunjdeu5AkHyGteig
         XjuM8ZcrR/QTw==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     ch@denx.de, Marek Vasut <marex@denx.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org
Subject: [PATCH V4 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI SN65DSI83 and SN65DSI84 bindings
Date:   Sat,  8 May 2021 22:22:50 +0200
Message-Id: <20210508202251.474729-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT binding document for TI SN65DSI83 and SN65DSI84 DSI to LVDS bridge.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V2: Add compatible string for SN65DSI84, since this is now tested on it
V3: - Add 0x2c as valid i2c address
    - Switch to schemas/graph.yaml
    - Constraint data-lanes to <1>, <1 2>, <1 2 3>, <1 2 3 4> only
    - Indent example by 4 spaces
    - Handle dual-link LVDS with two ports and describe the second DSI
      channel-B port as well. Based on the register defaults of DSI83
      and DSI84, it is likely that the LVDS-channel-B and DSI-channel-B
      hardware is present in all the chips, so just reuse port@0 and 2
      for DSI83, port@0,2,3 for DSI84 and all of 0,1,2,3 for DSI85 when
      that is supported
V4: - Fix typo in port@3 description
    - Add RB from Linus Walleij
    - Replace oneOf: and const with enum:
    - ref /schemas/media/video-interfaces.yaml#
    - Drop empty endpoint: and properties:
---
 .../bindings/display/bridge/ti,sn65dsi83.yaml | 159 ++++++++++++++++++
 1 file changed, 159 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
new file mode 100644
index 000000000000..d101233ae17f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -0,0 +1,159 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SN65DSI83 and SN65DSI84 DSI to LVDS bridge chip
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+description: |
+  Texas Instruments SN65DSI83 1x Single-link MIPI DSI
+  to 1x Single-link LVDS
+  https://www.ti.com/lit/gpn/sn65dsi83
+  Texas Instruments SN65DSI84 1x Single-link MIPI DSI
+  to 1x Dual-link or 2x Single-link LVDS
+  https://www.ti.com/lit/gpn/sn65dsi84
+
+properties:
+  compatible:
+    enum:
+      - ti,sn65dsi83
+      - ti,sn65dsi84
+
+  reg:
+    enum:
+      - 0x2c
+      - 0x2d
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier for bridge_en pin (active high).
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for MIPI DSI Channel-A input
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: array of physical DSI data lane indexes.
+                minItems: 1
+                maxItems: 4
+                items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for MIPI DSI Channel-B input
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: array of physical DSI data lane indexes.
+                minItems: 1
+                maxItems: 4
+                items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for LVDS Channel-A output (panel or bridge).
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for LVDS Channel-B output (panel or bridge).
+
+    required:
+      - port@0
+      - port@2
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - ports
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,sn65dsi83
+    then:
+      properties:
+        ports:
+          properties:
+            port@1: false
+            port@3: false
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,sn65dsi84
+    then:
+      properties:
+        ports:
+          properties:
+            port@1: false
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bridge@2d {
+            compatible = "ti,sn65dsi83";
+            reg = <0x2d>;
+
+            enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    endpoint {
+                        remote-endpoint = <&dsi0_out>;
+                        data-lanes = <1 2 3 4>;
+                    };
+                };
+
+                port@2 {
+                    reg = <2>;
+
+                    endpoint {
+                        remote-endpoint = <&panel_in_lvds>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.30.2

