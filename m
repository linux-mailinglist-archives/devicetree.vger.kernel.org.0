Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09BE66D28EE
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 21:58:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232650AbjCaT6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 15:58:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232270AbjCaT6F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 15:58:05 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C84A23FFA
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:57:54 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-69f00c18059so732345a34.0
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680292673; x=1682884673;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6/zyqvzgiVtvCKGVvDia/ZfqrjRXqcppkBdv/KcTCeU=;
        b=MCFgod5oJt+bBRiND+l0pbeTnHOu3gulcP4SAZvpoVTlLKj3E2Wzi4iErSu/tsRCXq
         rJrwt7mxNfAeLn/4dJVxPbcS7eTJTG52afoJAP75HA8cgsAxp52e0VJKHUREZmkQS+xd
         lIl4QcyXCRbi4JNq4hhoCn/iMUSGqZdEnrmshL1h2rlsHOqGar4JnObNd92efYGHw5r7
         o8w10npVIDo8FxD2ZHV5VY2aAJ6JQDYsdglDTRrMXPQsqkp+JYpjY7BBP1R9CLauWljV
         djStJFWvaSE2gc4KMrn9JjEKN1dRpusQUL6b0hUxneD9ppCbQ0nXkzPx+f/VBps92KFB
         yyDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292673; x=1682884673;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6/zyqvzgiVtvCKGVvDia/ZfqrjRXqcppkBdv/KcTCeU=;
        b=sjaA156nzDaTzKJLwgUtkFt1LoL/Ee3aaeMJDCaqEdYRANF88pmhGD7/yw7rMLMVcR
         dssygub8h8zQZqG2ZeZvAlXTzVS+0btVb1qCZAHN01B/qVLtdtCUjcVL49yEaAZp5Ww8
         qQVW5SHz8NLAfoPZLJDDNGqGTjx0Q8PHbkPHXrGLH9Ru5F3ZJ558ttaqdvoi7Z3Txu6i
         B1ghB2MzunkiDpqsUIlvyYX+3PSBVJGdP1ti8TffUSMaCqn3q8BiZRRiYFJ2icAmf7Q0
         AEsU0nDLT1iPwqtZ7FSr0dloXfhcg5r0nyF/oDTHS72rHj5crr55rhkJzFOPNuE0GFP6
         Lf/Q==
X-Gm-Message-State: AAQBX9dq8LQGZruGQ1f05zAuPE1ksFv6mhoj8rAUTSTT5FLtwUqcibQo
        O90znmCguagZrVg/3SaSP28=
X-Google-Smtp-Source: AKy350a5xENGD1f6eHltm2PHEEo09XcNmO47DC6+ceVhMEooVZz4auXqVw9+gFUPvjnq03avJ9mi/g==
X-Received: by 2002:a4a:db99:0:b0:525:1e3f:6c9b with SMTP id s25-20020a4adb99000000b005251e3f6c9bmr3017494oou.0.1680292672854;
        Fri, 31 Mar 2023 12:57:52 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:9e54:3f96:106f:135d])
        by smtp.gmail.com with ESMTPSA id f5-20020a9d6c05000000b006a154373578sm1483677otq.39.2023.03.31.12.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 12:57:52 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, jagan@amarulasolutions.com,
        inki.dae@samsung.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to yaml
Date:   Fri, 31 Mar 2023 16:57:46 -0300
Message-Id: <20230331195746.114840-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jagan Teki <jagan@amarulasolutions.com>

Samsung MIPI DSIM bridge can be found on Exynos and NXP's
i.MX8M Mini and Nano SoC's.

Convert exynos_dsim.txt to yaml.

Used the example node from latest Exynos SoC instead of
the one used in legacy exynos_dsim.txt.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../display/bridge/samsung,mipi-dsim.yaml     | 275 ++++++++++++++++++
 .../bindings/display/exynos/exynos_dsim.txt   |  92 ------
 2 files changed, 275 insertions(+), 92 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
new file mode 100644
index 000000000000..c131bd879caf
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -0,0 +1,275 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/samsung,mipi-dsim.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung MIPI DSIM bridge controller
+
+maintainers:
+  - Inki Dae <inki.dae@samsung.com>
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+description: |
+  Samsung MIPI DSIM bridge controller can be found it on Exynos
+  and i.MX8M Mini and Nano SoC's.
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos3250-mipi-dsi
+      - samsung,exynos4210-mipi-dsi
+      - samsung,exynos5410-mipi-dsi
+      - samsung,exynos5422-mipi-dsi
+      - samsung,exynos5433-mipi-dsi
+      - fsl,imx8mm-mipi-dsim
+      - fsl,imx8mp-mipi-dsim
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 5
+
+  clock-names:
+    minItems: 2
+    maxItems: 5
+
+  phys:
+    maxItems: 1
+    description: phandle to the phy module representing the DPHY
+
+  phy-names:
+    items:
+      - const: dsim
+
+  samsung,phy-type:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: phandle to the samsung phy-type
+
+  power-domains:
+    description: phandle to the associated power domain
+    maxItems: 1
+
+  samsung,power-domain:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the associated samsung power domain
+
+  vddcore-supply:
+    description: MIPI DSIM Core voltage supply (e.g. 1.1V)
+
+  vddio-supply:
+    description: MIPI DSIM I/O and PLL voltage supply (e.g. 1.8V)
+
+  samsung,burst-clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      DSIM high speed burst mode frequency.
+
+  samsung,esc-clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      DSIM escape mode frequency.
+
+  samsung,pll-clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      DSIM oscillator clock frequency.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Input port node to receive pixel data from the
+          display controller. Exactly one endpoint must be
+          specified.
+        properties:
+          endpoint@0:
+            $ref: /schemas/graph.yaml#/properties/endpoint
+            description: sub-node describing the input from MIC
+
+        unevaluatedProperties: false
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DSI output port node to the panel or the next bridge
+          in the chain
+
+required:
+  - '#address-cells'
+  - '#size-cells'
+  - clock-names
+  - clocks
+  - compatible
+  - interrupts
+  - phy-names
+  - phys
+  - reg
+  - samsung,burst-clock-frequency
+  - samsung,esc-clock-frequency
+  - samsung,pll-clock-frequency
+
+allOf:
+  - $ref: ../dsi-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos5433-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          minItems: 5
+
+        clock-names:
+          items:
+            - const: bus_clk
+            - const: phyclk_mipidphy0_bitclkdiv8
+            - const: phyclk_mipidphy0_rxclkesc0
+            - const: sclk_rgb_vclk_to_dsim0
+            - const: sclk_mipi
+
+        ports:
+          required:
+            - port@0
+
+      required:
+        - ports
+        - vddcore-supply
+        - vddio-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos5410-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+
+        clock-names:
+          items:
+            - const: bus_clk
+            - const: pll_clk
+
+      required:
+        - vddcore-supply
+        - vddio-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos4210-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+
+        clock-names:
+          items:
+            - const: bus_clk
+            - const: sclk_mipi
+
+      required:
+        - vddcore-supply
+        - vddio-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos3250-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+
+        clock-names:
+          items:
+            - const: bus_clk
+            - const: pll_clk
+
+      required:
+        - vddcore-supply
+        - vddio-supply
+        - samsung,phy-type
+
+additionalProperties:
+  type: object
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5433.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    dsi@13900000 {
+       compatible = "samsung,exynos5433-mipi-dsi";
+       reg = <0x13900000 0xC0>;
+       interrupts = <GIC_SPI 205 IRQ_TYPE_LEVEL_HIGH>;
+       phys = <&mipi_phy 1>;
+       phy-names = "dsim";
+       clocks = <&cmu_disp CLK_PCLK_DSIM0>,
+                <&cmu_disp CLK_PHYCLK_MIPIDPHY0_BITCLKDIV8>,
+                <&cmu_disp CLK_PHYCLK_MIPIDPHY0_RXCLKESC0>,
+                <&cmu_disp CLK_SCLK_RGB_VCLK_TO_DSIM0>,
+                <&cmu_disp CLK_SCLK_DSIM0>;
+       clock-names = "bus_clk",
+                     "phyclk_mipidphy0_bitclkdiv8",
+                     "phyclk_mipidphy0_rxclkesc0",
+                     "sclk_rgb_vclk_to_dsim0",
+                     "sclk_mipi";
+       power-domains = <&pd_disp>;
+       vddcore-supply = <&ldo6_reg>;
+       vddio-supply = <&ldo7_reg>;
+       samsung,burst-clock-frequency = <512000000>;
+       samsung,esc-clock-frequency = <16000000>;
+       samsung,pll-clock-frequency = <24000000>;
+       pinctrl-names = "default";
+       pinctrl-0 = <&te_irq>;
+       status = "disabled";
+       #address-cells = <1>;
+       #size-cells = <0>;
+
+       panel@0 {
+          compatible = "samsung,s6e3ha2";
+          reg = <0>;
+          vdd3-supply = <&ldo27_reg>;
+          vci-supply = <&ldo28_reg>;
+          reset-gpios = <&gpg0 0 GPIO_ACTIVE_LOW>;
+          enable-gpios = <&gpf1 5 GPIO_ACTIVE_HIGH>;
+       };
+
+       ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+             reg = <0>;
+
+             dsi_to_mic: endpoint {
+                remote-endpoint = <&mic_to_dsi>;
+             };
+          };
+       };
+    };
diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt b/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
deleted file mode 100644
index 2a5f0889ec32..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt
+++ /dev/null
@@ -1,92 +0,0 @@
-Exynos MIPI DSI Master
-
-Required properties:
-  - compatible: value should be one of the following
-		"samsung,exynos3250-mipi-dsi" /* for Exynos3250/3472 SoCs */
-		"samsung,exynos4210-mipi-dsi" /* for Exynos4 SoCs */
-		"samsung,exynos5410-mipi-dsi" /* for Exynos5410/5420/5440 SoCs */
-		"samsung,exynos5422-mipi-dsi" /* for Exynos5422/5800 SoCs */
-		"samsung,exynos5433-mipi-dsi" /* for Exynos5433 SoCs */
-		"fsl,imx8mm-mipi-dsim" /* for i.MX8M Mini/Nano SoCs */
-		"fsl,imx8mp-mipi-dsim" /* for i.MX8M Plus SoCs */
-  - reg: physical base address and length of the registers set for the device
-  - interrupts: should contain DSI interrupt
-  - clocks: list of clock specifiers, must contain an entry for each required
-    entry in clock-names
-  - clock-names: should include "bus_clk"and "sclk_mipi" entries
-		 the use of "pll_clk" is deprecated
-  - phys: list of phy specifiers, must contain an entry for each required
-    entry in phy-names
-  - phy-names: should include "dsim" entry
-  - vddcore-supply: MIPI DSIM Core voltage supply (e.g. 1.1V)
-  - vddio-supply: MIPI DSIM I/O and PLL voltage supply (e.g. 1.8V)
-  - samsung,pll-clock-frequency: specifies frequency of the oscillator clock
-  - #address-cells, #size-cells: should be set respectively to <1> and <0>
-    according to DSI host bindings (see MIPI DSI bindings [1])
-  - samsung,burst-clock-frequency: specifies DSI frequency in high-speed burst
-    mode
-  - samsung,esc-clock-frequency: specifies DSI frequency in escape mode
-
-Optional properties:
-  - power-domains: a phandle to DSIM power domain node
-
-Child nodes:
-  Should contain DSI peripheral nodes (see MIPI DSI bindings [1]).
-
-Video interfaces:
-  Device node can contain following video interface port nodes according to [2]:
-  0: RGB input,
-  1: DSI output
-
-[1]: Documentation/devicetree/bindings/display/mipi-dsi-bus.txt
-[2]: Documentation/devicetree/bindings/media/video-interfaces.txt
-
-Example:
-
-	dsi@11c80000 {
-		compatible = "samsung,exynos4210-mipi-dsi";
-		reg = <0x11C80000 0x10000>;
-		interrupts = <0 79 0>;
-		clocks = <&clock 286>, <&clock 143>;
-		clock-names = "bus_clk", "sclk_mipi";
-		phys = <&mipi_phy 1>;
-		phy-names = "dsim";
-		vddcore-supply = <&vusb_reg>;
-		vddio-supply = <&vmipi_reg>;
-		power-domains = <&pd_lcd0>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		samsung,pll-clock-frequency = <24000000>;
-
-		panel@1 {
-			reg = <0>;
-			...
-			port {
-				panel_ep: endpoint {
-					remote-endpoint = <&dsi_ep>;
-				};
-			};
-		};
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				decon_to_mic: endpoint {
-					remote-endpoint = <&mic_to_decon>;
-				};
-			};
-
-			port@1 {
-				reg = <1>;
-				dsi_ep: endpoint {
-					reg = <0>;
-					samsung,burst-clock-frequency = <500000000>;
-					samsung,esc-clock-frequency = <20000000>;
-					remote-endpoint = <&panel_ep>;
-				};
-			};
-		};
-	};
-- 
2.34.1

