Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B95FC53CB4C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 16:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235832AbiFCOEt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 10:04:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235790AbiFCOEt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 10:04:49 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 291F42C671
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 07:04:47 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id q18so6877730pln.12
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 07:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VFYLNsNT7RLI558EnjAePReuPZvewMRdNogIkoXHGkk=;
        b=gYavTQEl65z/19Lk38kZAaQItQor3wW419r9GWMXJ/fGDBT5nFI4uMdd4PseY0ss9f
         aal4c9vcGfLb6UiWfpafVcagZYiocR1ZC392S16EFZv0i6L8LDoYD2jdk9WQ3+agwekO
         S8BcWc0Sz8Q0oaLE0E12MVmtSst54165/hnzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VFYLNsNT7RLI558EnjAePReuPZvewMRdNogIkoXHGkk=;
        b=0+dXPuTNK4hrkXI14BVREmLXtmJITUYdAImjAye37ffji8lhRNK790HJz1p2zh9WaK
         vwaSfeOZER98/Qgpl0c9D9X3acveZ7W7C1xIfWqz/MuzOm1AfX6DSU7sqGSvekRoz7yQ
         XbUBuO53zDx6MnxoyY71vOHDWUi3L5Mte9JjZ8GtVWIwdg6CRpLn+POqFdOkTPANp/lK
         v75TJM1BpbEgfnVYE8oRyOw9H7y/JzvR2tc2I9ZnMTZB8B+6MHiU8P7zwa7P8Yd1c61I
         8hAxJTGUkTJEi+L/6ljv2vOmiCcHd22jW5gUwxNzspG5VjwHhSX2ESjDZ3iyx2zoN05J
         67jw==
X-Gm-Message-State: AOAM530rPNRCw1Lqtq//Tjo2i5qx3/PHUpXr5Whza4nzyug9GYYFF0dO
        Y4I5knqEOOcdDRD9eFCzuCipLQ==
X-Google-Smtp-Source: ABdhPJwYpHp4xO80k8ZwZ4Wui9ZmMLdJFLqLVNlWgCTIJyFtjef8CmleDGSZEHIgPV2JqEjOYxuoxw==
X-Received: by 2002:a17:902:ef47:b0:156:646b:58e7 with SMTP id e7-20020a170902ef4700b00156646b58e7mr10285825plx.57.1654265086627;
        Fri, 03 Jun 2022 07:04:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a190:29ee:e543:950e:2acb])
        by smtp.gmail.com with ESMTPSA id w14-20020aa7954e000000b005189f7ab7aesm5736487pfq.19.2022.06.03.07.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 07:04:46 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Christopher Vollo <chris@renewoutreach.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: display: bridge: Add TI DLPC3433 DSI to DMD
Date:   Fri,  3 Jun 2022 19:33:48 +0530
Message-Id: <20220603140349.3563612-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TI DLPC3433 is a MIPI DSI based display controller bridge
for processing high resolution DMD based projectors.

It has a flexible configuration of MIPI DSI and DPI signal
input that produces a DMD output in RGB565, RGB666, RGB888
formats.

It supports upto 720p resolution with 60 and 120 Hz refresh
rates.

Add dt-bingings for it.

Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes for v3:
- collect Rob r-b
Changes for v2:
- fix compatible
- drop reg description
- fix enable_gpio description
- fix port@2

 .../bindings/display/bridge/ti,dlpc3433.yaml  | 117 ++++++++++++++++++
 MAINTAINERS                                   |   5 +
 2 files changed, 122 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
new file mode 100644
index 000000000000..542193d77cdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/ti,dlpc3433.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI DLPC3433 MIPI DSI to DMD bridge
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+  - Christopher Vollo <chris@renewoutreach.org>
+
+description: |
+  TI DLPC3433 is a MIPI DSI based display controller bridge
+  for processing high resolution DMD based projectors.
+
+  It has a flexible configuration of MIPI DSI and DPI signal
+  input that produces a DMD output in RGB565, RGB666, RGB888
+  formats.
+
+  It supports upto 720p resolution with 60 and 120 Hz refresh
+  rates.
+
+properties:
+  compatible:
+    const: ti,dlpc3433
+
+  reg:
+    enum:
+      - 0x1b
+      - 0x1d
+
+  enable-gpios:
+    description: PROJ_ON pin, chip powers up PROJ_ON is high.
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
+        description: Video port for DMD output.
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
+        bridge@1b {
+            compatible = "ti,dlpc3433";
+            reg = <0x1b>;
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
index 11da16bfa123..aea0fe5156af 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6431,6 +6431,11 @@ DRM DRIVER FOR TDFX VIDEO CARDS
 S:	Orphan / Obsolete
 F:	drivers/gpu/drm/tdfx/
 
+DRM DRIVER FOR TI DLPC3433 MIPI DSI TO DMD BRIDGE
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/bridge/ti,dlpc3433.yaml
+
 DRM DRIVER FOR TI SN65DSI86 BRIDGE CHIP
 R:	Douglas Anderson <dianders@chromium.org>
 F:	Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
-- 
2.25.1

