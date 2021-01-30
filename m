Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B8A630977C
	for <lists+devicetree@lfdr.de>; Sat, 30 Jan 2021 19:12:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230085AbhA3SLb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Jan 2021 13:11:31 -0500
Received: from mail-out.m-online.net ([212.18.0.9]:59922 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbhA3SLa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Jan 2021 13:11:30 -0500
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DSj1B237sz1qrg9;
        Sat, 30 Jan 2021 19:10:22 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DSj1B18STz1tYTW;
        Sat, 30 Jan 2021 19:10:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id AyVOjtfBXXVS; Sat, 30 Jan 2021 19:10:20 +0100 (CET)
X-Auth-Info: l9tz3IwHnR7ol2YSdAVe1iHdlvPABt/QJq2F4Cka6hU=
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sat, 30 Jan 2021 19:10:20 +0100 (CET)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Douglas Anderson <dianders@chromium.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI SN65DSI83 bindings
Date:   Sat, 30 Jan 2021 19:10:13 +0100
Message-Id: <20210130181014.161457-1-marex@denx.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT binding document for TI SN65DSI83 DSI to LVDS bridge.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Stephen Boyd <swboyd@chromium.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 .../bindings/display/bridge/ti,sn65dsi83.yaml | 128 ++++++++++++++++++
 1 file changed, 128 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
new file mode 100644
index 000000000000..77e1bafd8cd8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SN65DSI83 DSI to LVDS bridge chip
+
+maintainers:
+  - Marek Vasut <marex@denx.de>
+
+description: |
+  The Texas Instruments SN65DSI83 bridge takes MIPI DSI in and outputs LVDS.
+  https://www.ti.com/general/docs/lit/getliterature.tsp?genericPartNumber=sn65dsi83&fileType=pdf
+
+properties:
+  compatible:
+    const: ti,sn65dsi83
+
+  reg:
+    const: 0x2d
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier for bridge_en pin (active high).
+
+  ports:
+    type: object
+    additionalProperties: false
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
+        description:
+          Video port for MIPI DSI input
+
+        properties:
+          reg:
+            const: 0
+
+          endpoint:
+            type: object
+            additionalProperties: false
+            properties:
+              remote-endpoint: true
+              data-lanes:
+                description: array of physical DSI data lane indexes.
+
+        required:
+          - reg
+
+      port@1:
+        type: object
+        additionalProperties: false
+
+        description:
+          Video port for LVDS output (panel or bridge).
+
+        properties:
+          reg:
+            const: 1
+
+          endpoint:
+            type: object
+            additionalProperties: false
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
+  - enable-gpios
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      bridge@2d {
+        compatible = "ti,sn65dsi83";
+        reg = <0x2d>;
+
+        enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+            endpoint {
+              remote-endpoint = <&dsi0_out>;
+              data-lanes = <1 2 3 4>;
+            };
+          };
+
+          port@1 {
+            reg = <1>;
+            endpoint {
+              remote-endpoint = <&panel_in_lvds>;
+            };
+          };
+        };
+      };
+    };
-- 
2.29.2

