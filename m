Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C903D344F18
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 19:51:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230306AbhCVSu6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 14:50:58 -0400
Received: from mail.bugwerft.de ([46.23.86.59]:37854 "EHLO mail.bugwerft.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230251AbhCVSuq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Mar 2021 14:50:46 -0400
Received: from hq-00021.fritz.box (p57bc9f6a.dip0.t-ipconnect.de [87.188.159.106])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 5F0344C35D0;
        Mon, 22 Mar 2021 18:50:43 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     airlied@linux.ie, daniel@ffwll.ch
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH v4 1/2] dt-bindings: display: add bindings for newhaven,1.8-128160EF
Date:   Mon, 22 Mar 2021 19:50:31 +0100
Message-Id: <20210322185032.762277-2-daniel@zonque.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210322185032.762277-1-daniel@zonque.org>
References: <20210322185032.762277-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds documentation for a new ILI9163 based, SPI connected display.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 .../bindings/display/ilitek,ili9163.yaml      | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.yaml

diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9163.yaml b/Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
new file mode 100644
index 0000000000000..b98c6b871b790
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/ilitek,ili9163.yaml#
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
+  - $ref: panel/panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - newhaven,1.8-128160EF
+          - ilitek,ili9163
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
+            display@0{
+                    compatible = "waveshare,rpi-lcd-35", "ilitek,ili9486";
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
2.29.2

