Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CAAD39C787
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 12:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229902AbhFEKvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Jun 2021 06:51:39 -0400
Received: from relay05.th.seeweb.it ([5.144.164.166]:51467 "EHLO
        relay05.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229892AbhFEKvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Jun 2021 06:51:39 -0400
Received: from localhost.localdomain (83.6.168.161.neoplus.adsl.tpnet.pl [83.6.168.161])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 5D8BA3EAD9;
        Sat,  5 Jun 2021 12:49:48 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: Add SONY Synaptics JDI panel
Date:   Sat,  5 Jun 2021 12:49:40 +0200
Message-Id: <20210605104942.39487-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the SONY Synaptics JDI panel used in
Xperia X, X Performance, X Compact, XZ and XZs smartphones.

Due to the nature of phone manufacturing and lack of any docs
whatsoever, replacement names have been used to indicate the
devices that this panel is used on.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
Changes since v1:
- gpio -> gpios
- description: |+ -> description: |
- remove redundant reset-gpio
- fix up indentation in the example

 .../display/panel/sony,synaptics-jdi.yaml     | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sony,synaptics-jdi.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sony,synaptics-jdi.yaml b/Documentation/devicetree/bindings/display/panel/sony,synaptics-jdi.yaml
new file mode 100644
index 000000000000..81d841c049e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sony,synaptics-jdi.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/sony,synaptics-jdi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SONY Synaptics JDI panel
+
+maintainers:
+  - Konrad Dybcio <konrad.dybcio@somainline.org>
+
+description: |+
+  This panel seems to only be found in SONY Xperia
+  X, X Performance, X Compact, XZ and XZs
+  smartphones and we have no straightforward way of
+  actually getting the correct model number,
+  as no schematics are released publicly.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - sony,synaptics-jdi-dora
+          - sony,synaptics-jdi-kagura
+          - sony,synaptics-jdi-keyaki
+          - sony,synaptics-jdi-kugo
+          - sony,synaptics-jdi-suzu
+
+  reg: true
+
+  reset-gpios: true
+
+  avdd-supply:
+    description: avdd supply
+
+  vddio-supply:
+    description: vddio supply
+
+  vsn-supply:
+    description: voltage negative supply
+
+  vsp-supply:
+    description: voltage positive supply
+
+  tvdd-supply:
+    description: tvdd supply
+
+  preset-gpio:
+    description: panel reset pin
+
+  pvddio-gpio:
+    description: panel vddio pin
+
+  treset-gpio:
+    description: touch reset pin
+
+required:
+  - compatible
+  - reg
+  - preset-gpio
+  - pvddio-gpio
+  - treset-gpio
+  - avdd-supply
+  - vddio-supply
+  - vsn-supply
+  - vsp-supply
+  - tvdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            panel: panel@0 {
+                    reg = <0>;
+
+                    pvddio-gpio = <&tlmm 51 GPIO_ACTIVE_HIGH>;
+                    preset-gpio = <&tlmm 8 GPIO_ACTIVE_HIGH>;
+                    treset-gpio = <&tlmm 89 GPIO_ACTIVE_HIGH>;
+
+                    vddio-supply = <&pm8994_s4>;
+                    avdd-supply = <&pm8994_l2>;
+                    tvdd-supply = <&panel_tvdd>;
+
+                    backlight = <&pmi8994_wled>;
+
+                    port {
+                      panel_in: endpoint {
+                        remote-endpoint = <&dsi0_out>;
+                      };
+                    };
+            };
+    };
-- 
2.31.1

