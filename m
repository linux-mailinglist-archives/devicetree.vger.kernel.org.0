Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8BEA3D3C67
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 17:26:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235551AbhGWOpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 10:45:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235554AbhGWOpe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 10:45:34 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D88F5C06175F
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 08:26:02 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id n10so2171428ljq.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 08:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lTf0DsiowvBZKkFtZMsmpqp1uJ69RCkXbJy1FYZWtKs=;
        b=SLVJp/cTh2mw0L1Kegosc5UHoVnD/EBGLl9BZ2cG5Wp5XlOrecJ53oz2972WKJuJ1g
         Cw874pZ5+jsHhJiR97pCtFCXSGJ0FSOi+9PNWYsJIybD4Trk/dIzNLUlDcLZWGlnOnpy
         3FhlFtl9lcLvKnHM2gOhMdCJwjo9UJG69nIhoo2vQjGe7f45uLOuNsvNQY/ZLmiulrqv
         OgX4lKMmzmBn28hj4cO8CRu4Lh03QY9hh2gkB8ZDmMTFobZfPp/0/OOkIf7F8++LWNkC
         rnxi7G13CndrHnZwJoL8E7CP0Rh7rJKe4q+TW+Xq8zWRo+S3H70EpOI7aUTM/MVwkFCY
         uYAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lTf0DsiowvBZKkFtZMsmpqp1uJ69RCkXbJy1FYZWtKs=;
        b=mtPgLHVMe76YNUn4lNt29wnNokcYJM4oLQKRZafc95gNJueGzsVJCLDDNhzTImrLmg
         kV78WkDV3ngkQGc7UFEqhmHocFLjrh5ovNBORywI63CIi4NyKx2aSErra21U7zWC92tq
         qyg4eETtwnOEyo3damLvH5D/B3FR983ZyEGrkAVB1cjEcxN2ac6J7s6CoigyCQYc4yR0
         RlKva9Ij+vDP72D7fxnbTjUkcitbRO+jwfXXw4RPpaEGcPMsSRsS6RRjtqKj9VAJalvG
         ZycKaVH7DJrtpqrk0jzB9KwNS6q5x0u1HZkjzkhsQ55bfnIsWYupLFTbapEO3blsWQFy
         NxlQ==
X-Gm-Message-State: AOAM5317nmqHQNHfkj4sYf54gMXNmEaVyphEuCE40R/n8vPg9mbewpnG
        1pS9tNyDLHaWTwI+vDI0KZybBZVMFHmdEA==
X-Google-Smtp-Source: ABdhPJwlAVUEkeSwQacRPSc/5KbLhZxIAUpPP51YzDAzKhp+bAO5vwBxHFC9EoM99eI+228fT/XgaA==
X-Received: by 2002:a2e:b16b:: with SMTP id a11mr3051528ljm.346.1627053960249;
        Fri, 23 Jul 2021 08:26:00 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id r189sm1881380lff.64.2021.07.23.08.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 08:25:59 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] dt-bindings: arm: Convert Gemini boards to YAML
Date:   Fri, 23 Jul 2021 17:23:56 +0200
Message-Id: <20210723152356.1874088-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This removes the old plaintext Gemini binding and replace it
with a YAML schema, adding some new boards in the process.
While we are at it, add the missing vendors to the vendor
prefix file.

Drop the overly deliberate description of subnodes and the big
example from the old document. Keep the elaborate description.

I noticed that "wiliboard" is not a real vendor, the vendor
is named "wiligear" so deprecated this and replaced with the
proper vendor.

Cc: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Rob: maybe it's best that you apply this directly to the bindings
tree so the vendors file is kept in check.
---
 .../devicetree/bindings/arm/gemini.txt        | 108 ------------------
 .../devicetree/bindings/arm/gemini.yaml       |  95 +++++++++++++++
 .../devicetree/bindings/vendor-prefixes.yaml  |  10 ++
 3 files changed, 105 insertions(+), 108 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/gemini.txt
 create mode 100644 Documentation/devicetree/bindings/arm/gemini.yaml

diff --git a/Documentation/devicetree/bindings/arm/gemini.txt b/Documentation/devicetree/bindings/arm/gemini.txt
deleted file mode 100644
index 55bf7ce96c44..000000000000
--- a/Documentation/devicetree/bindings/arm/gemini.txt
+++ /dev/null
@@ -1,108 +0,0 @@
-Cortina systems Gemini platforms
-
-The Gemini SoC is the project name for an ARMv4 FA525-based SoC originally
-produced by Storlink Semiconductor around 2005. The company was renamed
-later renamed Storm Semiconductor. The chip product name is Storlink SL3516.
-It was derived from earlier products from Storm named SL3316 (Centroid) and
-SL3512 (Bulverde).
-
-Storm Semiconductor was acquired by Cortina Systems in 2008 and the SoC was
-produced and used for NAS and similar usecases. In 2014 Cortina Systems was
-in turn acquired by Inphi, who seem to have discontinued this product family.
-
-Many of the IP blocks used in the SoC comes from Faraday Technology.
-
-Required properties (in root node):
-	compatible = "cortina,gemini";
-
-Required nodes:
-
-- soc: the SoC should be represented by a simple bus encompassing all the
-  onchip devices, this is referred to as the soc bus node.
-
-- syscon: the soc bus node must have a system controller node pointing to the
-  global control registers, with the compatible string
-  "cortina,gemini-syscon", "syscon";
-
-  Required properties on the syscon:
-  - reg: syscon register location and size.
-  - #clock-cells: should be set to <1> - the system controller is also a
-                  clock provider.
-  - #reset-cells: should be set to <1> - the system controller is also a
-                  reset line provider.
-
-  The clock sources have shorthand defines in the include file:
-  <dt-bindings/clock/cortina,gemini-clock.h>
-
-  The reset lines have shorthand defines in the include file:
-  <dt-bindings/reset/cortina,gemini-reset.h>
-
-- timer: the soc bus node must have a timer node pointing to the SoC timer
-  block, with the compatible string "cortina,gemini-timer"
-  See: clocksource/cortina,gemini-timer.txt
-
-- interrupt-controller: the sob bus node must have an interrupt controller
-  node pointing to the SoC interrupt controller block, with the compatible
-  string "cortina,gemini-interrupt-controller"
-  See interrupt-controller/cortina,gemini-interrupt-controller.txt
-
-Example:
-
-/ {
-	model = "Foo Gemini Machine";
-	compatible = "cortina,gemini";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	memory {
-		device_type = "memory";
-		reg = <0x00000000 0x8000000>;
-	};
-
-	soc {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-		compatible = "simple-bus";
-		interrupt-parent = <&intcon>;
-
-		syscon: syscon@40000000 {
-			compatible = "cortina,gemini-syscon", "syscon";
-			reg = <0x40000000 0x1000>;
-			#clock-cells = <1>;
-			#reset-cells = <1>;
-		};
-
-		uart0: serial@42000000 {
-			compatible = "ns16550a";
-			reg = <0x42000000 0x100>;
-			resets = <&syscon GEMINI_RESET_UART>;
-			clocks = <&syscon GEMINI_CLK_UART>;
-			interrupts = <18 IRQ_TYPE_LEVEL_HIGH>;
-			reg-shift = <2>;
-		};
-
-		timer@43000000 {
-			compatible = "cortina,gemini-timer";
-			reg = <0x43000000 0x1000>;
-			interrupt-parent = <&intcon>;
-			interrupts = <14 IRQ_TYPE_EDGE_FALLING>, /* Timer 1 */
-				     <15 IRQ_TYPE_EDGE_FALLING>, /* Timer 2 */
-				     <16 IRQ_TYPE_EDGE_FALLING>; /* Timer 3 */
-			resets = <&syscon GEMINI_RESET_TIMER>;
-			/* APB clock or RTC clock */
-			clocks = <&syscon GEMINI_CLK_APB>,
-				 <&syscon GEMINI_CLK_RTC>;
-			clock-names = "PCLK", "EXTCLK";
-			syscon = <&syscon>;
-		};
-
-		intcon: interrupt-controller@48000000 {
-			compatible = "cortina,gemini-interrupt-controller";
-			reg = <0x48000000 0x1000>;
-			resets = <&syscon GEMINI_RESET_INTCON0>;
-			interrupt-controller;
-			#interrupt-cells = <2>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/arm/gemini.yaml b/Documentation/devicetree/bindings/arm/gemini.yaml
new file mode 100644
index 000000000000..f6a0b675830f
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/gemini.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/gemini.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cortina systems Gemini platforms
+
+description: |
+  The Gemini SoC is the project name for an ARMv4 FA525-based SoC originally
+  produced by Storlink Semiconductor around 2005. The company was renamed
+  later renamed Storm Semiconductor. The chip product name is Storlink SL3516.
+  It was derived from earlier products from Storm named SL3316 (Centroid) and
+  SL3512 (Bulverde).
+
+  Storm Semiconductor was acquired by Cortina Systems in 2008 and the SoC was
+  produced and used for NAS and similar usecases. In 2014 Cortina Systems was
+  in turn acquired by Inphi, who seem to have discontinued this product family.
+
+  Many of the IP blocks used in the SoC comes from Faraday Technology.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: Storlink Semiconductor Gemini324 EV-Board also known
+          as Storm Semiconductor SL93512R_BRD
+        items:
+          - const: storlink,gemini324
+          - const: storm,sl93512r
+          - const: cortina,gemini
+
+      - description: D-Link DIR-685 Xtreme N Storage Router
+        items:
+          - const: dlink,dir-685
+          - const: cortina,gemini
+
+      - description: D-Link DNS-313 1-Bay Network Storage Enclosure
+        items:
+          - const: dlink,dns-313
+          - const: cortina,gemini
+
+      - description: Edimax NS-2502
+        items:
+          - const: edimax,ns-2502
+          - const: cortina,gemini
+
+      - description: ITian Square One SQ201
+        items:
+          - const: itian,sq201
+          - const: cortina,gemini
+
+      - description: Raidsonic NAS IB-4220-B
+        items:
+          - const: raidsonic,ib-4220-b
+          - const: cortina,gemini
+
+      - description: SSI 1328
+        items:
+          - const: ssi,1328
+          - const: cortina,gemini
+
+      - description: Teltonika RUT1xx Mobile Router
+        items:
+          - const: teltonika,rut1xx
+          - const: cortina,gemini
+
+      - description: Wiligear Wiliboard WBD-111
+        items:
+          - const: wiligear,wiliboard-wbd111
+          - const: cortina,gemini
+
+      - description: Wiligear Wiliboard WBD-222
+        items:
+          - const: wiligear,wiliboard-wbd222
+          - const: cortina,gemini
+
+      - description: Wiligear Wiliboard WBD-111 - old incorrect binding
+        items:
+          - const: wiliboard,wbd111
+          - const: cortina,gemini
+        deprecated: true
+
+      - description: Wiligear Wiliboard WBD-222 - old incorrect binding
+        items:
+          - const: wiliboard,wbd222
+          - const: cortina,gemini
+        deprecated: true
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 7781bcc35ab8..141d41491f0f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -565,6 +565,8 @@ patternProperties:
     description: ITE Tech. Inc.
   "^itead,.*":
     description: ITEAD Intelligent Systems Co.Ltd
+  "^itian,.*":
+    description: ITian Corporation
   "^iwave,.*":
     description: iWave Systems Technologies Pvt. Ltd.
   "^jdi,.*":
@@ -1115,6 +1117,10 @@ patternProperties:
   "^st-ericsson,.*":
     description: ST-Ericsson
     deprecated: true
+  "^storlink,.*":
+    description: StorLink Semiconductors, Inc.
+  "^storm,.*":
+    description: Storm Semiconductor, Inc.
   "^summit,.*":
     description: Summit microelectronics
   "^sunchip,.*":
@@ -1147,6 +1153,8 @@ patternProperties:
     description: TechNexion
   "^technologic,.*":
     description: Technologic Systems
+  "^teltonika,.*":
+    description: Teltonika Networks
   "^tempo,.*":
     description: Tempo Semiconductor
   "^techstar,.*":
@@ -1272,6 +1280,8 @@ patternProperties:
     description: Shenzhen whwave Electronics, Inc.
   "^wi2wi,.*":
     description: Wi2Wi, Inc.
+  "^wiligear,.*":
+    description: Wiligear, Ltd.
   "^winbond,.*":
     description: Winbond Electronics corp.
   "^winstar,.*":
-- 
2.31.1

