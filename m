Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD89D31B19F
	for <lists+devicetree@lfdr.de>; Sun, 14 Feb 2021 18:47:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbhBNRp5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Feb 2021 12:45:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbhBNRp5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Feb 2021 12:45:57 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEF02C061756
        for <devicetree@vger.kernel.org>; Sun, 14 Feb 2021 09:45:16 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id o7so2965702pgl.1
        for <devicetree@vger.kernel.org>; Sun, 14 Feb 2021 09:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yf033zbvp9pxo0s9URPAho62aiEWTfxuw67OJFPXTEA=;
        b=PuAAqVaJh5jAn0NamzSuv82QYpI0zmuAO3SMkuF9aOwqyL6Cih2DxG+g1Y2DJpTaEL
         tqyAJP5/Ak0qUzw8zJNTcq/D8WIfDsniRgNVX1WjQFzh6XQ7JQF+GoYg1AiaIpFY1Ynh
         hYRwF20v658pXJihgJqyN5cRf9Yk2nVAqf+nI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yf033zbvp9pxo0s9URPAho62aiEWTfxuw67OJFPXTEA=;
        b=ugI2z6KP8qumFbXqJw2ZVJkCUzOuZRHff5rnaVKNDm7vMJfcoEBDjQ3AsU6vl6bFbF
         CoWQMM8VGf1dBZNVUgAwv6eleYG5IS6+YRd76EJlA9Fd4Zqay1x1hckeBmm9AfqeW+7g
         mAhKsKOsPzAF+viOKVcBrPHRZVWhtWWJx4LTXKCX6g0nPaBimgvzwQTBa5MsezuTiwSF
         ieNTgp5wY4c+aJ2da8EIPA7eUn7C1SoZgVWjxNxpOyBvzG8a7dXJ50YNUV+qf0GoKTQ5
         mI+r+Djqd2QbtM9u2g6cmgQgj9g/6Dc6AZliqGUGCLweNMSGfKT09RVyPBUV5SEKnFKc
         pBHA==
X-Gm-Message-State: AOAM533/WSua4H/mhDMEumStsY+a8Wm4FPn3zGKIattqNbMKHGeHxUjH
        Dct/dPpb6smyNZ5OZ2EBGDYRVw==
X-Google-Smtp-Source: ABdhPJyHUQGyBnnPXCBvYOS14gWTLx7BW3BHq55wj63qQ+hemI+ja+3iq8ue8PjSgKlBfz5XBYFFWw==
X-Received: by 2002:a62:644f:0:b029:1d3:b559:fe7a with SMTP id y76-20020a62644f0000b02901d3b559fe7amr11803213pfb.21.1613324716287;
        Sun, 14 Feb 2021 09:45:16 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id r205sm4794137pfr.128.2021.02.14.09.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Feb 2021 09:45:15 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Marek Vasut <marex@denx.de>
Subject: [PATCH v3 1/2] dt-bindings: display: bridge: Add bindings for SN65DSI83/84/85
Date:   Sun, 14 Feb 2021 23:14:52 +0530
Message-Id: <20210214174453.104616-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SN65DSI83/84/85 devices are MIPI DSI to LVDS based bridge
controller IC's from Texas Instruments.

SN65DSI83 - Single Channel DSI to Single-link LVDS bridge
SN65DSI84 - Single Channel DSI to Dual-link LVDS bridge
SN65DSI85 - Dual Channel DSI to Dual-link LVDS bridge

Right now the bridge driver is supporting Channel A with single
link, so dt-bindings documented according to it.

Cc: Marek Vasut <marex@denx.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- fixed Rob comments
- updated commit message and file name to support all chip variants 
Changes for v2:
- none

 .../bindings/display/bridge/ti,sn65dsi8x.yaml | 122 ++++++++++++++++++
 1 file changed, 122 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi8x.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi8x.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi8x.yaml
new file mode 100644
index 000000000000..7f9f8cd6e786
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi8x.yaml
@@ -0,0 +1,122 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi8x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI SN65DSI83/84/85 MIPI DSI to LVDS bridge bindings
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+description: |
+  SN65DSI83/84/85 devices are MIPI DSI to LVDS based bridge controller
+  IC's from Texas Instruments.
+
+  SN65DSI83 - Single Channel DSI to Single-link LVDS bridge
+  SN65DSI84 - Single Channel DSI to Dual-link LVDS bridge
+  SN65DSI85 - Dual Channel DSI to Dual-link LVDS bridge
+
+  Bridge decodes MIPI DSI 18bpp RGB666 and 240bpp RG888 packets and
+  converts the formatted video data stream to a FlatLink compatible
+  LVDS output operating at pixel clocks operating from 25 MHx to
+  154 MHz.
+
+properties:
+  compatible:
+    enum:
+      - ti,sn65dsi83
+      - ti,sn65dsi84
+
+  reg:
+    const: 0x2c
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier for bridge enable pin (active high).
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: |
+          DSI Input. The remote endpoint phandle should be a
+          reference to a valid mipi_dsi_host device node.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: |
+          Video port for LVDS output (panel or connector).
+
+    required:
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
+    dsi {
+       #address-cells = <1>;
+       #size-cells = <0>;
+
+       ports {
+           #address-cells = <1>;
+           #size-cells = <0>;
+
+           port@0 {
+               reg = <0>;
+               dsi_in: endpoint {
+                   remote-endpoint = <&ltdc_ep0_out>;
+               };
+           };
+
+           port@1 {
+               reg = <1>;
+               dsi_out: endpoint {
+                   remote-endpoint = <&bridge_in>;
+                   data-lanes = <0 1>;
+               };
+           };
+       };
+    };
+
+    i2c6 {
+       #address-cells = <1>;
+       #size-cells = <0>;
+
+       bridge@2c {
+           compatible = "ti,sn65dsi84";
+           reg = <0x2c>;
+           enable-gpios = <&gpiof 15 GPIO_ACTIVE_HIGH>;
+
+           ports {
+               #address-cells = <1>;
+               #size-cells = <0>;
+
+               port@0 {
+                   reg = <0>;
+                   bridge_in: endpoint {
+                        remote-endpoint = <&dsi_out>;
+                   };
+               };
+
+               port@1 {
+                   reg = <1>;
+                   bridge_out: endpoint {
+                        remote-endpoint = <&panel_in_lvds>;
+                   };
+               };
+           };
+       };
+    };
-- 
2.25.1

