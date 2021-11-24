Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5E4C45CAFD
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 18:26:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243077AbhKXR3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 12:29:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241353AbhKXR3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 12:29:22 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69EAEC061574
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 09:26:12 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id np3so3081742pjb.4
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 09:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ODX0ZjJmyHGUcMXQPTbTnl3S63FnL3kepW5lX1cGeNY=;
        b=DHvsXg/+r78mH1qh76abKGzlH/qF19jhs2yZOpILIqAAqOj4DDV9umjGTFITzUU7jB
         XjKw545y4dkUxA00IrhFSQuVomJn+KmswabcoCsGZglQL32CgCkQzSL3YJcWZ9lY+FGZ
         TOBnQsguh6LAy6WoQ/yCqhoKtWzmhpHqAgbeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ODX0ZjJmyHGUcMXQPTbTnl3S63FnL3kepW5lX1cGeNY=;
        b=0P0Ix/SFR40Sai/Ye6LBabqcNQ1/bQZZXYhtNo8Xxk/qstG6at0/Rv0lryMg519QoQ
         orzPcLvsa0CyC/QkO8y9xhN36jFARpD0a2WQ53c8TIj2XwFFNFF4DvhfyOGpzVOWqlsA
         d1dLyyBCbubVeKjllLs5o6x39FppmuKqPBhUL7efXi63emMi1CSZEGCntdDDJnIC2stk
         2kW95zvD6+eYPPSSdpJreeWUGcWiBkJJ1rgd6OifpdR/rURrDjVRfKDf7bxDsppocmod
         5bbkFtZ5x+gfZJS4bq9bDOc4gf2+4g9P82wkjXv2ariKaFLunJ2h+2EhnhOIJZYGNmVX
         tpyQ==
X-Gm-Message-State: AOAM5313DYoP3pqVyZhXgGe+wyR3hMjtfEp26vneFlWaciyhK31ejYEB
        6ZqLu5wP2bAyvQ8DlQ7NOBgwTg==
X-Google-Smtp-Source: ABdhPJzeqt4umbVvn7VbSHx9cMq9BUa8sVx4pV9RIIAAFXfGZ4bjhGirVGeErOuHZhddz512bRW6Zw==
X-Received: by 2002:a17:902:ec90:b0:142:269:4691 with SMTP id x16-20020a170902ec9000b0014202694691mr20396873plg.48.1637774771908;
        Wed, 24 Nov 2021 09:26:11 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:d111:e958:d982:546e])
        by smtp.gmail.com with ESMTPSA id s19sm334618pfu.104.2021.11.24.09.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Nov 2021 09:26:11 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Christopher Vollo <chris@renewoutreach.org>
Subject: [PATCH 1/2] dt-bindings: display: bridge: Add TI DLPC3433 bindings
Date:   Wed, 24 Nov 2021 22:55:52 +0530
Message-Id: <20211124172553.519309-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TI DLPC3433 is a MIPI DSI based display controller bridge
for processing high resolution DMD based projectors.

It has a flexible configuration of MIPI DSI signal input
produces RGB565, RGB666, RGB888 output format with maximum
of 720p resolution in 60 and 120 Hz refresh rates.

Add dt-bingings for it.

Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/display/bridge/ti,dlpc3433.yaml  | 112 ++++++++++++++++++
 MAINTAINERS                                   |   6 +
 2 files changed, 118 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
new file mode 100644
index 000000000000..3ade3a575c3e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
@@ -0,0 +1,112 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ti,dlpc3433.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI DLPC3433 Display Controller
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+  - Christopher Vollo <chris@renewoutreach.org>
+
+description: |
+  The DLPC3433 or DLPC3438 controllers provide a convenient,
+  multi-functional interface between system electronics and
+  the DMD, enabling small form factor, low power, and high
+  resolution HD displays.
+
+properties:
+  compatible:
+    enum:
+      - ti,dlpc3433
+
+  reg:
+    maxItems: 1
+    description: virtual channel number of a DSI peripheral
+
+  enable-gpios:
+    description: PROJ_EN pin, chip powers up PROJ_EN is high.
+
+  vcc_intf-supply:
+    description: A 1.8V/3.3V supply that power the Host I/O.
+
+  vcc_flsh-supply:
+    description: A 1.8V/3.3V supply that power the Flash I/O.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: Video port for MIPI DSI input.
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
+                items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video port for DPI output (DMD Projector).
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
+    i2c1 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        bridge@1d {
+            compatible = "ti,dlpc3433";
+            reg = <0x1d>;
+            enable-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    bridge_in_dsi: endpoint {
+                        remote-endpoint = <&dsi_out_bridge>;
+                        data-lanes = <1 2 3 4>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    bridge_out_panel: endpoint {
+                        remote-endpoint = <&panel_out_bridge>;
+                    };
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index f32c7d733255..a3019399dec0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6198,6 +6198,12 @@ DRM DRIVER FOR TDFX VIDEO CARDS
 S:	Orphan / Obsolete
 F:	drivers/gpu/drm/tdfx/
 
+DRM DRIVER FOR TI DLPC3433 MIPI DSI DISPLAY CONTROLLER BRIDGE
+M:	Jagan Teki <jagan@amarulasolutions.com>
+M:	Christopher Vollo <chris@renewoutreach.org>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
+
 DRM DRIVER FOR TPO TPG110 PANELS
 M:	Linus Walleij <linus.walleij@linaro.org>
 S:	Maintained
-- 
2.25.1

