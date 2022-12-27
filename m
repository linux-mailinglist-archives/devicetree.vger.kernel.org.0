Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2FA1656868
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 09:28:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbiL0I2F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 03:28:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbiL0I2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 03:28:04 -0500
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B5AC2647
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 00:28:03 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2BR8RkME017629;
        Tue, 27 Dec 2022 02:27:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1672129666;
        bh=5dOt9R98p8+4kAcuw+useYONjNz1Czwt4Lmrf0vrhgk=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=cQS91mdN8QFJ2R4IDYeHeYlxMn7QsoOSlYJm9SwAvqxThqHC9kN4dQeA1M2fcG+Vn
         XXB/Cw4V/HxMSLUyBYScuJFWqxP7oU8k0HEt4Bwo8PIDUf37i4yK9lu8uQ9BVmsMtf
         QSIBPIfzEzLAEbBMI7/x/On612g3al6M09VD+ixA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2BR8Rk3M100668
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Dec 2022 02:27:46 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 27
 Dec 2022 02:27:46 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 27 Dec 2022 02:27:46 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2BR8RjUw002111;
        Tue, 27 Dec 2022 02:27:46 -0600
From:   Jai Luthra <j-luthra@ti.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        Jai Luthra <j-luthra@ti.com>
Subject: [PATCH v5 1/2] dt-bindings: sound: tlv320aic3x: Convert to dtschema
Date:   Tue, 27 Dec 2022 13:57:16 +0530
Message-ID: <20221227082717.29561-2-j-luthra@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221227082717.29561-1-j-luthra@ti.com>
References: <20221227082717.29561-1-j-luthra@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert bindings for TI's TLV320AIC3x audio codecs to dtschema.

There is an unknown property "adc-settle-ms" found in old dts files,
which is ignored by the driver.

Signed-off-by: Jai Luthra <j-luthra@ti.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/ti,tlv320aic3x.yaml        | 158 ++++++++++++++++++
 .../devicetree/bindings/sound/tlv320aic3x.txt |  97 -----------
 2 files changed, 158 insertions(+), 97 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/tlv320aic3x.txt

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
new file mode 100644
index 000000000000..f0375bbf4c40
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
@@ -0,0 +1,158 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+# Copyright (C) 2022 Texas Instruments Incorporated
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ti,tlv320aic3x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments TLV320AIC3x Codec
+
+description: |
+  TLV320AIC3x are a series of low-power stereo audio codecs with stereo
+  headphone amplifier, as well as multiple inputs and outputs programmable in
+  single-ended or fully differential configurations.
+
+  The serial control bus supports SPI or I2C protocols, while the serial audio
+  data bus is programmable for I2S, left/right-justified, DSP, or TDM modes.
+
+  The following pins can be referred in the sound node's audio routing property:
+
+  CODEC output pins:
+     LLOUT
+     RLOUT
+     MONO_LOUT
+     HPLOUT
+     HPROUT
+     HPLCOM
+     HPRCOM
+
+  CODEC input pins for TLV320AIC3104:
+     MIC2L
+     MIC2R
+     LINE1L
+     LINE1R
+
+  CODEC input pins for other compatible codecs:
+     MIC3L
+     MIC3R
+     LINE1L
+     LINE2L
+     LINE1R
+     LINE2R
+
+maintainers:
+  - Jai Luthra <j-luthra@ti.com>
+
+properties:
+  compatible:
+    enum:
+      - ti,tlv320aic3x
+      - ti,tlv320aic33
+      - ti,tlv320aic3007
+      - ti,tlv320aic3106
+      - ti,tlv320aic3104
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description:
+      GPIO specification for the active low RESET input.
+
+  gpio-reset:
+    maxItems: 1
+    description:
+      Deprecated, please use reset-gpios instead.
+    deprecated: true
+
+  ai3x-gpio-func:
+    description: AIC3X_GPIO1 & AIC3X_GPIO2 Functionality
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 2
+
+  ai3x-micbias-vg:
+    description: MicBias required voltage. If node is omitted then MicBias is powered down.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    oneOf:
+      - const: 1
+        description: MICBIAS output is powered to 2.0V.
+      - const: 2
+        description: MICBIAS output is powered to 2.5V.
+      - const: 3
+        description: MICBIAS output is connected to AVDD.
+
+  ai3x-ocmv:
+    description: Output Common-Mode Voltage selection.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    oneOf:
+      - const: 0
+        description: 1.35V
+      - const: 1
+        description: 1.5V
+      - const: 2
+        description: 1.65V
+      - const: 3
+        description: 1.8V
+
+  AVDD-supply:
+    description: Analog DAC voltage.
+
+  IOVDD-supply:
+    description: I/O voltage.
+
+  DRVDD-supply:
+    description: ADC analog and output driver voltage.
+
+  DVDD-supply:
+    description: Digital core voltage.
+
+  '#sound-dai-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      tlv320aic3x_i2c: audio-codec@1b {
+        compatible = "ti,tlv320aic3x";
+        reg = <0x1b>;
+
+        reset-gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
+
+        AVDD-supply = <&regulator>;
+        IOVDD-supply = <&regulator>;
+        DRVDD-supply = <&regulator>;
+        DVDD-supply = <&regulator>;
+      };
+    };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      tlv320aic3x_spi: audio-codec@0 {
+        compatible = "ti,tlv320aic3x";
+        reg = <0>; /* CS number */
+        #sound-dai-cells = <0>;
+
+        AVDD-supply = <&regulator>;
+        IOVDD-supply = <&regulator>;
+        DRVDD-supply = <&regulator>;
+        DVDD-supply = <&regulator>;
+        ai3x-ocmv = <0>;
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/tlv320aic3x.txt b/Documentation/devicetree/bindings/sound/tlv320aic3x.txt
deleted file mode 100644
index 20931a63fd64..000000000000
--- a/Documentation/devicetree/bindings/sound/tlv320aic3x.txt
+++ /dev/null
@@ -1,97 +0,0 @@
-Texas Instruments - tlv320aic3x Codec module
-
-The tlv320aic3x serial control bus communicates through both I2C and SPI bus protocols
-
-Required properties:
-
-- compatible - "string" - One of:
-    "ti,tlv320aic3x" - Generic TLV320AIC3x device
-    "ti,tlv320aic33" - TLV320AIC33
-    "ti,tlv320aic3007" - TLV320AIC3007
-    "ti,tlv320aic3106" - TLV320AIC3106
-    "ti,tlv320aic3104" - TLV320AIC3104
-
-
-- reg - <int> -  I2C slave address
-
-
-Optional properties:
-
-- reset-gpios - GPIO specification for the active low RESET input.
-- ai3x-gpio-func - <array of 2 int> - AIC3X_GPIO1 & AIC3X_GPIO2 Functionality
-				    - Not supported on tlv320aic3104
-- ai3x-micbias-vg - MicBias Voltage required.
-	1 - MICBIAS output is powered to 2.0V,
-	2 - MICBIAS output is powered to 2.5V,
-	3 - MICBIAS output is connected to AVDD,
-	If this node is not mentioned or if the value is incorrect, then MicBias
-	is powered down.
-- ai3x-ocmv - Output Common-Mode Voltage selection:
-	0 - 1.35V,
-	1 - 1.5V,
-	2 - 1.65V,
-	3 - 1.8V
-- AVDD-supply, IOVDD-supply, DRVDD-supply, DVDD-supply : power supplies for the
-  device as covered in Documentation/devicetree/bindings/regulator/regulator.txt
-
-Deprecated properties:
-
-- gpio-reset - gpio pin number used for codec reset
-
-CODEC output pins:
-  * LLOUT
-  * RLOUT
-  * MONO_LOUT
-  * HPLOUT
-  * HPROUT
-  * HPLCOM
-  * HPRCOM
-
-CODEC input pins for TLV320AIC3104:
-  * MIC2L
-  * MIC2R
-  * LINE1L
-  * LINE1R
-
-CODEC input pins for other compatible codecs:
-  * MIC3L
-  * MIC3R
-  * LINE1L
-  * LINE2L
-  * LINE1R
-  * LINE2R
-
-The pins can be used in referring sound node's audio-routing property.
-
-I2C example:
-
-#include <dt-bindings/gpio/gpio.h>
-
-tlv320aic3x: tlv320aic3x@1b {
-	compatible = "ti,tlv320aic3x";
-	reg = <0x1b>;
-
-	reset-gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
-
-	AVDD-supply = <&regulator>;
-	IOVDD-supply = <&regulator>;
-	DRVDD-supply = <&regulator>;
-	DVDD-supply = <&regulator>;
-};
-
-SPI example:
-
-spi0: spi@f0000000 {
-	tlv320aic3x: codec@0 {
-		compatible = "ti,tlv320aic3x";
-		reg = <0>; /* CS number */
-		#sound-dai-cells = <0>;
-		spi-max-frequency = <1000000>;
-
-		AVDD-supply = <&regulator>;
-		IOVDD-supply = <&regulator>;
-		DRVDD-supply = <&regulator>;
-		DVDD-supply = <&regulator>;
-		ai3x-ocmv = <0>;
-	};
-};
-- 
2.17.1

