Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA93F441932
	for <lists+devicetree@lfdr.de>; Mon,  1 Nov 2021 10:56:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233655AbhKAJ6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 05:58:54 -0400
Received: from smtp1.axis.com ([195.60.68.17]:10779 "EHLO smtp1.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234013AbhKAJ5o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 1 Nov 2021 05:57:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1635760511;
  x=1667296511;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=ZXqX5g8V54rNfLbNdWs0ycEBdy13+empV4eOsvCyi0A=;
  b=lqn1MPluKCgo2H8tXS0t6NmIC6makjjbpm1hGFBRgsNyRnp45D64PO81
   K4AGKgGOyyZ+GAL4Jj2n5AOhPHdcmcI189M+NzWps0ZWGJupgmZFzeuBR
   dZ28ixtaZ3R+KTf6XzqFAwlPGiImO3fISvyoRkOlFH5gHEjG++jRsRZ/1
   wTWhY2KdTZXMag7niXV91/ofImrA+3VpB8ZCRmEPILvz9uBYRK02qfP7r
   EGcUZV1m7s+sRtXmgATSXRb4TIprH3/9Ggu8cI79qOGyGzAsIquQTISBC
   vEjK6sLeoNxiFMDIR7yZvxhYIoCLZuSizfHLJTyEIydoAABAqVHNlKyIR
   g==;
Date:   Mon, 1 Nov 2021 10:55:03 +0100
From:   Ricard Wanderlof <ricardw@axis.com>
X-X-Sender: ricardw@lnxricardw1.se.axis.com
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     alsa-devel <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: sound: tlv320adc3xxx: New codec driver
Message-ID: <alpine.DEB.2.21.2111011050430.14142@lnxricardw1.se.axis.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: se-mail08w.axis.com (10.20.40.14) To se-mail07w.axis.com
 (10.20.40.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


DT bindings for tlv320adc3xxx driver, currently supporting
Texas Instruments TLV320ADC3001 and TLV320ADC3101 audio ADCs.

Signed-off-by: Ricard Wanderlof <ricardw@axis.com>
---
 .../bindings/sound/ti,tlv320adc3xxx.yaml      | 137 ++++++++++++++++++
 include/dt-bindings/sound/tlv320adc3xxx.h     |  28 ++++
 2 files changed, 165 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
 create mode 100644 include/dt-bindings/sound/tlv320adc3xxx.h

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
new file mode 100644
index 000000000000..c4fed6335230
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
+        tlv320adc3101: tlv320adc3101@18 {
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
index 000000000000..59ed510e6cf1
--- /dev/null
+++ b/include/dt-bindings/sound/tlv320adc3xxx.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
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
