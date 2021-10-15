Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6234B42F67E
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 17:01:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240639AbhJOPDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 11:03:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234976AbhJOPDp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 11:03:45 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [IPv6:2a03:6000:1011::59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9E6A2C061570
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 08:01:38 -0700 (PDT)
Received: from hq-00021.fritz.box (p57bc9963.dip0.t-ipconnect.de [87.188.153.99])
        by mail.bugwerft.de (Postfix) with ESMTPSA id B51F648E469;
        Fri, 15 Oct 2021 15:01:37 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH RESEND v10 1/2] dt-bindings: display: add bindings for newhaven,1.8-128160EF
Date:   Fri, 15 Oct 2021 17:01:30 +0200
Message-Id: <20211015150131.1020878-2-daniel@zonque.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211015150131.1020878-1-daniel@zonque.org>
References: <20211015150131.1020878-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds documentation for a new ILI9163 based, SPI connected display.

Signed-off-by: Daniel Mack <daniel@zonque.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../display/panel/ilitek,ili9163.yaml         | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
new file mode 100644
index 000000000000..7e7a8362b951
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,ili9163.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek ILI9163 display panels device tree bindings
+
+maintainers:
+  - Daniel Mack <daniel@zonque.org>
+
+description:
+  This binding is for display panels using an Ilitek ILI9163 controller in SPI
+  mode.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - newhaven,1.8-128160EF
+      - const: ilitek,ili9163
+
+  spi-max-frequency:
+    maximum: 32000000
+
+  dc-gpios:
+    maxItems: 1
+    description: Display data/command selection (D/CX)
+
+  backlight: true
+  reg: true
+  reset-gpios: true
+  rotation: true
+
+required:
+  - compatible
+  - reg
+  - dc-gpios
+  - reset-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    backlight: backlight {
+            compatible = "gpio-backlight";
+            gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
+    };
+    spi {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            display@0 {
+                    compatible = "newhaven,1.8-128160EF", "ilitek,ili9163";
+                    reg = <0>;
+                    spi-max-frequency = <32000000>;
+                    dc-gpios = <&gpio0 24 GPIO_ACTIVE_HIGH>;
+                    reset-gpios = <&gpio0 25 GPIO_ACTIVE_HIGH>;
+                    rotation = <180>;
+                    backlight = <&backlight>;
+            };
+    };
+
+...
-- 
2.31.1

