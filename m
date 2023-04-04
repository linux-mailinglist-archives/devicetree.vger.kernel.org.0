Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB976D56C2
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 04:31:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232453AbjDDCbO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 22:31:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232267AbjDDCbN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 22:31:13 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61D06CF
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 19:31:12 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id bi31so23261573oib.9
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 19:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680575471; x=1683167471;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EzwlR6BScwX3irORbHSIVIYplAILc3RmTJXB/aFEtgE=;
        b=AuxH83ZdSRofLYXhbyUL5bkgBtZnz0F2pj/nEM+TdONp18Wf+EcRWv+2H0T7e0JEu+
         4+Cdw2z884vMVzZteiPsq2NFpvne3UIDra7SzMlSgLiLZgC9ndnkIs9PRC1lMA2b5gNo
         fRkt7L+AJUsTob479SQOQNVIP7WZNdtOLO1/FgD95EdNG3UuqMaMVDATp4SwLxYP2p3e
         0ORC4/L5mdVDOo/KEfUmp4Y4b6rE25zf0KGJSEvAJNy6ojuiYo62pKPwU1SwfjutN4mM
         RwWrG4iZ6Nf2XrPKksO809ES0cZt0v6hxvbn8507jOqJMxeHZjaB/SLA3V4B3D+kwYOY
         f59Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680575471; x=1683167471;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EzwlR6BScwX3irORbHSIVIYplAILc3RmTJXB/aFEtgE=;
        b=umfbygmVBAXl4eGotLKdKaEMF6l/+G9L+olNWoZZpj/091Ls5icMsvyCt5tG2moV2J
         gJHGwLpWLhbFI+k8tNtyo/Ol8M6fWYgMvg8JiQ6hd8TnNBAPT2xKNHsiEjjQk1js94cr
         RnNW5v4mIPTj/LTzP0457RUn3tD43r5OOZNOfrBmpAsbHk1VJmtKPshsI9arr9j7P46O
         nxcBgfeDo9Pi+zN2gdlogJg6vDkgBZJTp8lINrmmoxxs6RGcLTqULl3U3BshsznBQIIg
         nW88oH7iEsRCdlirLXTwmB2tbw8GAnIzCeWpDY0dTVB8zofyo/TJICKjpNjBtrERz0+h
         TwSA==
X-Gm-Message-State: AAQBX9fEAmXDyydkDx5laIRAycQz92tmVMFmlWqTppbHomJjYzLoqkB4
        zjylUMop3txS7QzMwBjK7W0=
X-Google-Smtp-Source: AKy350YAD68K5EfdaW7f7EFirR8CoUMqEgwP4hr+0y3rSkoB+f6qnNoeKrgjEh2dnyfY8xZCjP5sqA==
X-Received: by 2002:aca:f182:0:b0:386:c394:bbc with SMTP id p124-20020acaf182000000b00386c3940bbcmr621086oih.5.1680575471602;
        Mon, 03 Apr 2023 19:31:11 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1fd1:5f67:bbc4:7c25])
        by smtp.gmail.com with ESMTPSA id b2-20020a9d6b82000000b006a32eb9e0dfsm2874441otq.67.2023.04.03.19.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 19:31:11 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to yaml
Date:   Mon,  3 Apr 2023 23:30:57 -0300
Message-Id: <20230404023057.510329-1-festevam@gmail.com>
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
i.MX8M Mini/Nano/Plus SoCs.

Convert exynos_dsim.txt to yaml.

Used the example node from exynos5433.dtsi instead of the one used in
the legacy exynos_dsim.txt.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- Took previous Rob Herring's feedback into account:
https://lore.kernel.org/all/20210712151322.GA1931925@robh.at.kernel.org/
- Handled imx8mn and imx8mp.
- Remove unnecessary #address-cells/size-cells.

 .../display/bridge/samsung,mipi-dsim.yaml     | 255 ++++++++++++++++++
 .../bindings/display/exynos/exynos_dsim.txt   |  92 -------
 MAINTAINERS                                   |   1 +
 3 files changed, 256 insertions(+), 92 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
new file mode 100644
index 000000000000..55dbec178ea8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -0,0 +1,255 @@
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
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+
+description: |
+  Samsung MIPI DSIM bridge controller can be found it on Exynos
+  and i.MX8M Mini/Nano/Plus SoC's.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - samsung,exynos3250-mipi-dsi
+          - samsung,exynos4210-mipi-dsi
+          - samsung,exynos5410-mipi-dsi
+          - samsung,exynos5422-mipi-dsi
+          - samsung,exynos5433-mipi-dsi
+          - fsl,imx8mm-mipi-dsim
+          - fsl,imx8mp-mipi-dsim
+      - items:
+          - const: fsl,imx8mn-mipi-dsim
+          - const: fsl,imx8mm-mipi-dsim
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
+  samsung,phy-type:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: phandle to the samsung phy-type
+
+  power-domains:
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
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: dsim
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Input port node to receive pixel data from the
+          display controller. Exactly one endpoint must be
+          specified.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DSI output port node to the panel or the next bridge
+          in the chain.
+
+required:
+  - clock-names
+  - clocks
+  - compatible
+  - interrupts
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
diff --git a/MAINTAINERS b/MAINTAINERS
index 4f57deee1a08..aca7027dc464 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6640,6 +6640,7 @@ M:	Jagan Teki <jagan@amarulasolutions.com>
 M:	Marek Szyprowski <m.szyprowski@samsung.com>
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
+F:	Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
 F:	drivers/gpu/drm/bridge/samsung-dsim.c
 F:	include/drm/bridge/samsung-dsim.h
 
-- 
2.34.1

