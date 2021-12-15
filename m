Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DDD9475E32
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 18:08:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245155AbhLORHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 12:07:45 -0500
Received: from smtp1.axis.com ([195.60.68.17]:54893 "EHLO smtp1.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235069AbhLORHp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 12:07:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1639588065;
  x=1671124065;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=E5x5Fh3kAPl1d8ha//eW/GWflI0/Y717alolefM8qg0=;
  b=WwBIWadweNKDy918oztpyOn3PK2lR2/beJGoV59e5bNwAn7zhhaVqM3O
   fPE9P0hEWVUv5KDIUQ98WYTweTTSJSynmNTCdsn/CadxlVXulwLYkPAUX
   LS3hlWN4A7T6FDtRkIHl38PtpUGL1pvu1YuGGwijZh9C4BHYZvmCKEk46
   /rZwwGvIgDS1ZK9urIbzDRGe5jupW/uw3caRJYX5rQdH58R0gO9FE068j
   ZSH1dsOB4BeohLhCx9nw8bQM4C+krU2c0bAGoTiDWw8L9jPHk8pn//faR
   7lvoszyDKir7w8sg/B1AQwY6wJAcMzDgG8pl55G3kfcwYQyIy7pW3n0LD
   w==;
Date:   Wed, 15 Dec 2021 18:07:37 +0100
From:   Ricard Wanderlof <ricardw@axis.com>
X-X-Sender: ricardw@lap5cg0092dnk.se.axis.com
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        alsa-devel <alsa-devel@alsa-project.org>
Subject: [RESEND, PATCH v7 1/2] dt-bindings: sound: tlv320adc3xxx: New codec
 driver
Message-ID: <alpine.DEB.2.21.2112151806100.27889@lap5cg0092dnk.se.axis.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: se-mail03w.axis.com (10.20.40.9) To se-mail07w.axis.com
 (10.20.40.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


DT bindings for Texas Instruments TLV320ADC3001 and TLV320ADC3101
audio ADCs.

Signed-off-by: Ricard Wanderlof <ricardw@axis.com>
---
 .../bindings/sound/ti,tlv320adc3xxx.yaml      | 137 ++++++++++++++++++
 include/dt-bindings/sound/tlv320adc3xxx.h     |  28 ++++
 2 files changed, 165 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
 create mode 100644 include/dt-bindings/sound/tlv320adc3xxx.h

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
new file mode 100644
index 000000000000..83936f594d1a
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/ti,tlv320adc3xxx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments TLV320ADC3001/TLV320ADC3101 Stereo ADC
+
+maintainers:
+  - Ricard Wanderlof <ricardw@axis.com>
+
+description: |
+  Texas Instruments TLV320ADC3001 and TLV320ADC3101 Stereo ADC
+  https://www.ti.com/product/TLV320ADC3001
+  https://www.ti.com/product/TLV320ADC3101
+
+properties:
+  compatible:
+    enum:
+      - ti,tlv320adc3001
+      - ti,tlv320adc3101
+
+  reg:
+    maxItems: 1
+    description: I2C address
+
+  '#sound-dai-cells':
+    const: 0
+
+  '#gpio-cells':
+    const: 2
+
+  gpio-controller: true
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO pin used for codec reset (RESET pin)
+
+  clocks:
+    maxItems: 1
+    description: Master clock (MCLK)
+
+  ti,dmdin-gpio1:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # ADC3XXX_GPIO_DISABLED       - I/O buffers powered down and not used
+      - 1 # ADC3XXX_GPIO_INPUT          - Various non-GPIO input functions
+      - 2 # ADC3XXX_GPIO_GPI            - General purpose input
+      - 3 # ADC3XXX_GPIO_GPO            - General purpose output
+      - 4 # ADC3XXX_GPIO_CLKOUT         - Clock source set in CLKOUT_MUX reg
+      - 5 # ADC3XXX_GPIO_INT1           - INT1 output
+      - 6 # ADC3XXX_GPIO_SECONDARY_BCLK - Codec interface secondary BCLK
+      - 7 # ADC3XXX_GPIO_SECONDARY_WCLK - Codec interface secondary WCLK
+    default: 0
+    description: |
+      Configuration for DMDIN/GPIO1 pin.
+
+      When ADC3XXX_GPIO_GPO is configured, this causes corresponding the
+      ALSA control "GPIOx Output" to appear, as a switch control.
+
+  ti,dmclk-gpio2:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # ADC3XXX_GPIO_DISABLED       - I/O buffers powered down and not used
+      - 1 # ADC3XXX_GPIO_INPUT          - Various non-GPIO input functions
+      - 2 # ADC3XXX_GPIO_GPI            - General purpose input
+      - 3 # ADC3XXX_GPIO_GPO            - General purpose output
+      - 4 # ADC3XXX_GPIO_CLKOUT         - Clock source set in CLKOUT_MUX reg
+      - 5 # ADC3XXX_GPIO_INT1           - INT1 output
+      - 6 # ADC3XXX_GPIO_SECONDARY_BCLK - Codec interface secondary BCLK
+      - 7 # ADC3XXX_GPIO_SECONDARY_WCLK - Codec interface secondary WCLK
+    default: 0
+    description: |
+      Configuration for DMCLK/GPIO2 pin.
+
+      When ADC3XXX_GPIO_GPO is configured, this causes corresponding the
+      ALSA control "GPIOx Output" to appear, as a switch control.
+
+      Note that there is currently no support for reading the GPIO pins as
+      inputs.
+
+  ti,micbias1-vg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # ADC3XXX_MICBIAS_OFF		- Mic bias is powered down
+      - 1 # ADC3XXX_MICBIAS_2_0V	- Mic bias is set to 2.0V
+      - 2 # ADC3XXX_MICBIAS_2_5V	- Mic bias is set to 2.5V
+      - 3 # ADC3XXX_MICBIAS_AVDD	- Mic bias is same as AVDD supply
+    default: 0
+    description: |
+      Mic bias voltage output on MICBIAS1 pin
+
+  ti,micbias2-vg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # ADC3XXX_MICBIAS_OFF		- Mic bias is powered down
+      - 1 # ADC3XXX_MICBIAS_2_0V	- Mic bias is set to 2.0V
+      - 2 # ADC3XXX_MICBIAS_2_5V	- Mic bias is set to 2.5V
+      - 3 # ADC3XXX_MICBIAS_AVDD	- Mic bias is same as AVDD supply
+    default: 0
+    description: |
+      Mic bias voltage output on MICBIAS2 pin
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/sound/tlv320adc3xxx.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        tlv320adc3101: audio-codec@18 {
+            compatible = "ti,tlv320adc3101";
+            reg = <0x18>;
+            reset-gpios = <&gpio_pc 3 GPIO_ACTIVE_LOW>;
+            clocks = <&audio_mclk>;
+            gpio-controller;
+            #gpio-cells = <2>;
+            ti,dmdin-gpio1 = <ADC3XXX_GPIO_GPO>;
+            ti,micbias1-vg = <ADC3XXX_MICBIAS_AVDD>;
+        };
+    };
+
+    audio_mclk: clock {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <24576000>;
+    };
+...
diff --git a/include/dt-bindings/sound/tlv320adc3xxx.h b/include/dt-bindings/sound/tlv320adc3xxx.h
new file mode 100644
index 000000000000..ec988439da20
--- /dev/null
+++ b/include/dt-bindings/sound/tlv320adc3xxx.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Devicetree bindings definitions for tlv320adc3xxx driver.
+ *
+ * Copyright (C) 2021 Axis Communications AB
+ */
+#ifndef __DT_TLV320ADC3XXX_H
+#define __DT_TLV320ADC3XXX_H
+
+#define ADC3XXX_GPIO_DISABLED		0 /* I/O buffers powered down */
+#define ADC3XXX_GPIO_INPUT		1 /* Various non-GPIO inputs */
+#define ADC3XXX_GPIO_GPI		2 /* General purpose input */
+#define ADC3XXX_GPIO_GPO		3 /* General purpose output */
+#define ADC3XXX_GPIO_CLKOUT		4 /* Source set in reg. CLKOUT_MUX */
+#define ADC3XXX_GPIO_INT1		5 /* INT1 output */
+#define ADC3XXX_GPIO_INT2		6 /* INT2 output */
+/* value 7 is reserved */
+#define ADC3XXX_GPIO_SECONDARY_BCLK	8 /* Codec interface secondary BCLK */
+#define ADC3XXX_GPIO_SECONDARY_WCLK	9 /* Codec interface secondary WCLK */
+#define ADC3XXX_GPIO_ADC_MOD_CLK	10 /* Clock output for digital mics */
+/* values 11-15 reserved */
+
+#define ADC3XXX_MICBIAS_OFF		0 /* Micbias pin powered off */
+#define ADC3XXX_MICBIAS_2_0V		1 /* Micbias pin set to 2.0V */
+#define ADC3XXX_MICBIAS_2_5V		2 /* Micbias pin set to 2.5V */
+#define ADC3XXX_MICBIAS_AVDD		3 /* Use AVDD voltage for micbias pin */
+
+#endif /* __DT_TLV320ADC3XXX_H */
-- 
2.20.1


-- 
Ricard Wolf Wanderlof                           ricardw(at)axis.com
Axis Communications AB, Lund, Sweden            www.axis.com
Phone +46 46 272 2016                           Fax +46 46 13 61 30
