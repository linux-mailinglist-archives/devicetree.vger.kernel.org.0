Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A45E42081A
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 11:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231824AbhJDJTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 05:19:43 -0400
Received: from smtp2.axis.com ([195.60.68.18]:46363 "EHLO smtp2.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229716AbhJDJTm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Oct 2021 05:19:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1633339074;
  x=1664875074;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=0Wu4i744/6iXHTLuDoXswWcc9XOBTNKv8Lp6XIYdjzY=;
  b=o2svuUwoH0F3aPGZGjlbcdOzd0PY6mFFnoVVUZePYhURo75iOT4J4zb8
   Fw5aVCFiGc56kcJfiX6BHMcWpdyUtGSrVeLsPmbmR4GiCqwOuswlXGnf9
   1NyA+GX0ULKSE2yQOxnirCh5f5blpZJYrevXuOxkiKc9wUJ6XCP9OhhWZ
   TcoSTjMJTmgDOUlb5zH6K4PpHlKCedTTTlkw0rfrcCW+MrXzigwCKgyxp
   VS5PqE+6D89Y4RPcFIjybAYqf/xCF43mPMgtEm53ERB1zsrAPIcdBMDjo
   l4tvD5zSirYjOUKZcDffnpkok3D4EeMeKBP6TpRrcL1R4RMuP64ogO81Z
   A==;
Date:   Mon, 4 Oct 2021 11:17:47 +0200
From:   Ricard Wanderlof <ricardw@axis.com>
X-X-Sender: ricardw@lnxricardw1.se.axis.com
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     alsa-devel <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: sound: tlv320adc3xxx: New codec driver
Message-ID: <alpine.DEB.2.21.2110041115070.14472@lnxricardw1.se.axis.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: se-mail04w.axis.com (10.20.40.10) To se-mail07w.axis.com
 (10.20.40.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


DT bindings for tlv320adc3xxx driver, currently supporting
Texas Instruments TLV320ADC3001 and TLV320ADC3101 audio ADCs.

Signed-off-by: Ricard Wanderlof <ricardw@axis.com>
---
 .../bindings/sound/ti,tlv320adc3xxx.yaml      | 126 ++++++++++++++++++
 include/dt-bindings/sound/tlv320adc3xxx.h     |  33 +++++
 2 files changed, 159 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
 create mode 100644 include/dt-bindings/sound/tlv320adc3xxx.h

diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
new file mode 100644
index 000000000000..4720eac65177
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/ti,tlv320adc3xxx.yaml
@@ -0,0 +1,126 @@
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
+  "#sound-dai-cells":
+    const: 0
+
+  gpios:
+    maxItems: 1
+    description: GPIO pin used for codec reset (RESET pin)
+
+  clocks:
+    maxItems: 1
+    description: Master clock (MCLK)
+
+  ti,pll-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 0 # ADC3XXX_PLL_DONT_SET - leave mode unchanged
+      - 1 # ADC3XXX_PLL_ENABLE - use the on-chip PLL
+      - 2 # ADC3XXX_PLL_BYPASS - do not use the on-chip PLL
+      - 3 # ADC3XXX_PLL_AUTO - use on-chip PLL if possible
+    default: 0
+    description: |
+      Set on-chip PLL mode.
+      ADC3XXX_PLL_DONT_SET is intended for use when setting the clock mod
+      via the clock id in a machine driver and it is not to be changed
+      from the previous setting.
+      ADC3XXX_PLL_AUTO will enable  on-chip PLL if possible, depending on the
+      master clock and sample rate combination.
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
+      Note that there is currently no support for reading the GPIO pins as
+      inputs.
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
+required:
+  - compatible
+  - reg
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
+            gpios = <&gpio_pc 3 GPIO_ACTIVE_LOW>;
+            clocks = <&audio_mclk>;
+            ti,pll-mode = <ADC3XXX_PLL_BYPASS>;
+            ti,dmdin-gpio1 = <ADC3XXX_GPIO_GPO>;
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
index 000000000000..8d488a6c3186
--- /dev/null
+++ b/include/dt-bindings/sound/tlv320adc3xxx.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_TLV320ADC3XXX_H
+#define __DT_TLV320ADC3XXX_H
+
+/* PLL modes, derived from clk_id of set_sysclk callback, or set in
+ * devicetree using the ti,pll-mode property.
+ *
+ * The default behavior is to take the first matching entry in the clock
+ * table, which is intended to be the PLL based one if there is more than one.
+ *
+ * Setting the clock source using simple-card (clocks or
+ * system-clock-frequency property) sets clk_id = 0 = ADC3XXX_CLK_DONT_SET,
+ * which doesn't change whatever clock setting was previously set up.
+ */
+#define ADC3XXX_PLL_DONT_SET	0 /* Don't change mode */
+#define ADC3XXX_PLL_ENABLE	1 /* Use PLL for clock generation */
+#define ADC3XXX_PLL_BYPASS	2 /* Don't use PLL for clock generation */
+#define ADC3XXX_PLL_AUTO	3 /* Use first available mode */
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
+#endif /* __DT_TLV320ADC3XXX_H */
-- 
2.20.1


-- 
Ricard Wolf Wanderlof                           ricardw(at)axis.com
Axis Communications AB, Lund, Sweden            www.axis.com
Phone +46 46 272 2016                           Fax +46 46 13 61 30
