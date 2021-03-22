Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6918A343E01
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 11:34:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230201AbhCVKeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 06:34:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbhCVKdr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 06:33:47 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16EEBC061756
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:33:46 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id o2so6315276plg.1
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QXnyIiVMYouSZkWQ90s00ryOLdRsKNt+1wvSooAsuGs=;
        b=U/FYRH9cjK0YJA4Ob2lEv3co8KkXJ55eiA1vz0msL8PEA2f43kg98n68QIzqr+Vcxh
         7NAeC3vm2NAS4yaIlvZD341i9vy4nIiPg3mkKLvYiMcjFOFJF/gPQZqXLO8kDShuy1oh
         HMEkx+ecRyKrcJgbIa1SjWwdoDIYLgZbk1q9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QXnyIiVMYouSZkWQ90s00ryOLdRsKNt+1wvSooAsuGs=;
        b=jyOzj4lQtgnNu96D0f7Xs0QObiO5DANYiU75NIzm7H2tkvyLXhvh03f55UzDLrbJjO
         st4LHIH/6L+w6gEoWrSg0zAU8m6jbZr01Nbe2do0d0v5sLSzOx083YoReBPqdtRlXxeH
         1UrLOfv5aQzdn2wKFb1Ka9wvYQ/J7olQvtM8zWTxIKn5G7DB2EjTAnEbw6IosHeXOGgo
         xJ9lhRfVSC/MEpeKupveP8nWbTlTozLAh99wFZYhfYMGuAZX6FOwNH8Nq/gPYpb2jNg0
         Vz29qR9RKQvl+wtOR6zVJ5IsDNNBFyYdTLxQClYhc9I+hpHSzELnvnu6Kpv77vrjVsdR
         DqWw==
X-Gm-Message-State: AOAM531yk4g1cBoVN3iZX7aMMpMsBGZrX5sZPR/XzGyNDE7c2njKopmN
        uwB4FXxXXmvhYnePVcbdENMC8w==
X-Google-Smtp-Source: ABdhPJzlkGRSrVgAHY0k1cvQM0ccUJVDmZgoIjp9ZC02h/Bdjce00E7vO3PcuSCyoF4QerNJTj69iA==
X-Received: by 2002:a17:90a:1b08:: with SMTP id q8mr12254370pjq.203.1616409225597;
        Mon, 22 Mar 2021 03:33:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:15c1:9a30:414f:d84b])
        by smtp.gmail.com with ESMTPSA id o13sm12812422pgv.40.2021.03.22.03.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 03:33:45 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>,
        Robert Foss <robert.foss@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/2] dt-bindings: display: bridge: Add Chipone ICN6211 bindings
Date:   Mon, 22 Mar 2021 16:03:26 +0530
Message-Id: <20210322103328.66442-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ICN6211 is MIPI-DSI to RGB Converter bridge from Chipone.

It has a flexible configuration of MIPI DSI signal input and
produces RGB565, RGB666, RGB888 output format.

Add dt-bingings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes for v5:
- rebase drm-misc-next
- collect Rob, Robert review tags
Changes for v4:
- fixed Laurent comments
- added regulators
- replace reset with EN
- fixed warnings pointed by Robert
Changes for v3:
- updated to new dt-bindings style

 .../display/bridge/chipone,icn6211.yaml       | 99 +++++++++++++++++++
 MAINTAINERS                                   |  5 +
 2 files changed, 104 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
new file mode 100644
index 000000000000..62c3bd4cb28d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/chipone,icn6211.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Chipone ICN6211 MIPI-DSI to RGB Converter bridge
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+description: |
+  ICN6211 is MIPI-DSI to RGB Converter bridge from chipone.
+
+  It has a flexible configuration of MIPI DSI signal input and
+  produce RGB565, RGB666, RGB888 output format.
+
+properties:
+  compatible:
+    enum:
+      - chipone,icn6211
+
+  reg:
+    maxItems: 1
+    description: virtual channel number of a DSI peripheral
+
+  enable-gpios:
+    description: Bridge EN pin, chip is reset when EN is low.
+
+  vdd1-supply:
+    description: A 1.8V/2.5V/3.3V supply that power the MIPI RX.
+
+  vdd2-supply:
+    description: A 1.8V/2.5V/3.3V supply that power the PLL.
+
+  vdd3-supply:
+    description: A 1.8V/2.5V/3.3V supply that power the RGB output.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Video port for MIPI DSI input
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Video port for MIPI DPI output (panel or connector).
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
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      bridge@0 {
+        compatible = "chipone,icn6211";
+        reg = <0>;
+        enable-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+
+            bridge_in_dsi: endpoint {
+              remote-endpoint = <&dsi_out_bridge>;
+            };
+          };
+
+          port@1 {
+            reg = <1>;
+
+            bridge_out_panel: endpoint {
+              remote-endpoint = <&panel_out_bridge>;
+            };
+          };
+        };
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 4b705ba51c54..b9d11101d060 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5568,6 +5568,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/display/panel/boe,himax8279d.yaml
 F:	drivers/gpu/drm/panel/panel-boe-himax8279d.c
 
+DRM DRIVER FOR CHIPONE ICN6211 MIPI-DSI to RGB CONVERTER BRIDGE
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
+
 DRM DRIVER FOR FARADAY TVE200 TV ENCODER
 M:	Linus Walleij <linus.walleij@linaro.org>
 S:	Maintained
-- 
2.25.1

