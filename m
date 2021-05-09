Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5CD37790B
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 00:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbhEIWfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 18:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbhEIWff (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 May 2021 18:35:35 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CBA4C061573
        for <devicetree@vger.kernel.org>; Sun,  9 May 2021 15:34:30 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id v5so18458558ljg.12
        for <devicetree@vger.kernel.org>; Sun, 09 May 2021 15:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F2EjP7ONijriLAGyy1GD+73Mqbm5Yex+dE0Su5lhmX4=;
        b=dViwsTi/pv287wM14WT1JQY3Z4swpMoG6XO+Tra+zT0ZjBoKkjx9LnB4D0z5Uyr0ej
         STVvwwc+QaPcb3HUCBC58qQlKM6IQWumu8sOXl6+iYEt/F5KgQzDVcG/HH7Vwbu+9vmu
         EenO5CwcW6vu0nxkLq8ckC6avcJ+z9XeREofOyrvXwKpTt3a+NWTcTjeIKBpWYwmUUwH
         8fTQRIKEkJVhdDtaI4jKJZfs2CooG1edcjrxaHEOATMDcJAWBBvP4ObyNovs9cMon9RJ
         5K6ngg/kiykcjZAZAmov+aZ/b2JesD6sBRbSOfIAU0PJx2Yalloehm4DbAACLbXHWF/u
         ET7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F2EjP7ONijriLAGyy1GD+73Mqbm5Yex+dE0Su5lhmX4=;
        b=cElDqXILm5jzwJQF+/oBdJFXyiiu61+3CuTJZcSV/HO1s9f8GBQtgtSAnceVB5hOOO
         ndCG2ievX8Sv+GOeAG6i8L9g0MoprW3TZGpWT087S6F6rmIImWsEJZj+ps246xMa6hzo
         Tcr+WWo3r6DnidHFLqOy/TtHZ08F54CxhxSecTYfE7QVbzV2hbP0KWvXW0tf1Ta3F3ag
         8gHucYMm8aNEiGJI32skNPNRpPBuc9u3thQwltEtdGgdbnkrjWPMerYHzHCydnQbQV/z
         N82M1ifDi3RBS1WKpJotnWhwYboDLuIQewFHif6XSVu/fBdiE6v93pn8ZeQc1WXgstEs
         8hbg==
X-Gm-Message-State: AOAM533RhYacACRlkh/shUR63K9YoSDHyw1zfXrIg6pUkkxJ82Kp/P2u
        ZjgDSZFfRhn8bTo/nyZlLxvloQ==
X-Google-Smtp-Source: ABdhPJx02Ga+AERxDKvjnvO+qvwrzmFSrCmfB+++mcLyTWx7B3WXntLf4dA0qLl22yoGocaNht0/gg==
X-Received: by 2002:a05:651c:293:: with SMTP id b19mr17556040ljo.451.1620599668543;
        Sun, 09 May 2021 15:34:28 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id a16sm2022257lfl.51.2021.05.09.15.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 15:34:27 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Ferruh Yigit <fery@cypress.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Javier Martinez Canillas <javier@dowhile0.org>
Cc:     Henrik Rydberg <rydberg@bitmath.org>, linux-input@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 1/3 v5] Input: cyttsp - Convert bindings to YAML and extend
Date:   Mon, 10 May 2021 00:34:14 +0200
Message-Id: <20210509223416.346104-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This converts the CYTTSP "Cypress TrueTouch Standard Product"
to YAML bindings and fixes and adds some things in the process:

- Rename the bindings file to cypress,cy8ctma340 after the main
  product in the series.
- Add proper compatibles for the two known products:
  CY8CTMA340 and CY8CTST341.
- Deprecate "cypress,cyttsp-spi" and "cypress,cyttsp-i2c"
  because device compatibles should be named after the
  hardware and not after which bus they are connected to.
  The topology implicitly tells us which bus it is and what
  interface to used.
- Add VCPIN and VDD supplies, these are present just like
  on the CY8CTMA140.

Cc: devicetree@vger.kernel.org
Cc: Ferruh Yigit <fery@cypress.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Javier Martinez Canillas <javier@dowhile0.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v4->v5:
- Rebase on v5.13-rc1
ChangeLog v3->v4:
- Drop wording about falling interrupt edge. Do not mandate
  interrupt type in the binding.
ChangeLog v2->v3:
- Collect Robs and Javiers Review tags.
- Use the right mail address for Javier.
- Include in the patch series with the rest of the CYTTSP
  fixes.
ChangeLog v1->v2:
- Use minItems and maxItems directly without -items
- Drop u32 type from all properties ending with "-ms"
  that thus have implicit types.
- Add maintiner to Cc.

Patch to add the new compatibles to the Linux driver is sent
separately.
---
 .../input/touchscreen/cypress,cy8ctma340.yaml | 148 ++++++++++++++++++
 .../bindings/input/touchscreen/cyttsp.txt     |  93 -----------
 2 files changed, 148 insertions(+), 93 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
 delete mode 100644 Documentation/devicetree/bindings/input/touchscreen/cyttsp.txt

diff --git a/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
new file mode 100644
index 000000000000..762e56ee90cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
@@ -0,0 +1,148 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/cypress,cy8ctma340.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cypress CY8CTMA340 series touchscreen controller bindings
+
+description: The Cypress CY8CTMA340 series (also known as "CYTTSP" after
+  the marketing name Cypress TrueTouch Standard Product) touchscreens can
+  be connected to either I2C or SPI buses.
+
+maintainers:
+  - Javier Martinez Canillas <javier@dowhile0.org>
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  $nodename:
+    pattern: "^touchscreen(@.*)?$"
+
+  compatible:
+    oneOf:
+      - const: cypress,cy8ctma340
+      - const: cypress,cy8ctst341
+      - const: cypress,cyttsp-spi
+        description: Legacy compatible for SPI connected CY8CTMA340
+        deprecated: true
+      - const: cypress,cyttsp-i2c
+        description: Legacy compatible for I2C connected CY8CTMA340
+        deprecated: true
+
+  reg:
+    description: I2C address when used on the I2C bus, or the SPI chip
+      select index when used on the SPI bus
+
+  clock-frequency:
+    description: I2C client clock frequency, defined for host when using
+      the device on the I2C bus
+    minimum: 0
+    maximum: 400000
+
+  spi-max-frequency:
+    description: SPI clock frequency, defined for host, defined when using
+      the device on the SPI bus. The throughput is maximum 2 Mbps so the
+      typical value is 2000000, if higher rates are used the total throughput
+      needs to be restricted to 2 Mbps.
+    minimum: 0
+    maximum: 6000000
+
+  interrupts:
+    description: Interrupt to host
+    maxItems: 1
+
+  vcpin-supply:
+    description: Analog power supply regulator on VCPIN pin
+
+  vdd-supply:
+    description: Digital power supply regulator on VDD pin
+
+  reset-gpios:
+    description: Reset line for the touchscreen, should be tagged
+      as GPIO_ACTIVE_LOW
+
+  bootloader-key:
+    description: the 8-byte bootloader key that is required to switch
+      the chip from bootloader mode (default mode) to application mode
+    $ref: /schemas/types.yaml#/definitions/uint8-array
+    minItems: 8
+    maxItems: 8
+
+  touchscreen-size-x: true
+  touchscreen-size-y: true
+  touchscreen-fuzz-x: true
+  touchscreen-fuzz-y: true
+
+  active-distance:
+    description: the distance in pixels beyond which a touch must move
+      before movement is detected and reported by the device
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 15
+
+  active-interval-ms:
+    description: the minimum period in ms between consecutive
+      scanning/processing cycles when the chip is in active mode
+    minimum: 0
+    maximum: 255
+
+  lowpower-interval-ms:
+    description: the minimum period in ms between consecutive
+      scanning/processing cycles when the chip is in low-power mode
+    minimum: 0
+    maximum: 2550
+
+  touch-timeout-ms:
+    description: minimum time in ms spent in the active power state while no
+      touches are detected before entering low-power mode
+    minimum: 0
+    maximum: 2550
+
+  use-handshake:
+    description: enable register-based handshake (boolean). This should only
+      be used if the chip is configured to use 'blocking communication with
+      timeout' (in this case the device generates an interrupt at the end of
+      every scanning/processing cycle)
+    $ref: /schemas/types.yaml#/definitions/flag
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - bootloader-key
+  - touchscreen-size-x
+  - touchscreen-size-y
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      num-cs = <1>;
+      cs-gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
+
+      touchscreen@0 {
+        compatible = "cypress,cy8ctma340";
+        reg = <0>;
+        interrupt-parent = <&gpio>;
+        interrupts = <20 IRQ_TYPE_EDGE_FALLING>;
+        reset-gpios = <&gpio 21 GPIO_ACTIVE_LOW>;
+        vdd-supply = <&ldo_aux1_reg>;
+        vcpin-supply = <&ldo_aux2_reg>;
+        bootloader-key = /bits/ 8 <0x00 0x01 0x02 0x03 0x04 0x05 0x06 0x07>;
+        touchscreen-size-x = <480>;
+        touchscreen-size-y = <800>;
+        active-interval-ms = <0>;
+        touch-timeout-ms = <255>;
+        lowpower-interval-ms = <10>;
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/input/touchscreen/cyttsp.txt b/Documentation/devicetree/bindings/input/touchscreen/cyttsp.txt
deleted file mode 100644
index 6ee274aa8b03..000000000000
--- a/Documentation/devicetree/bindings/input/touchscreen/cyttsp.txt
+++ /dev/null
@@ -1,93 +0,0 @@
-* Cypress cyttsp touchscreen controller
-
-Required properties:
- - compatible		: must be "cypress,cyttsp-i2c" or "cypress,cyttsp-spi"
- - reg			: Device I2C address or SPI chip select number
- - spi-max-frequency	: Maximum SPI clocking speed of the device (for cyttsp-spi)
- - interrupts		: (gpio) interrupt to which the chip is connected
-			  (see interrupt binding[0]).
- - bootloader-key	: the 8-byte bootloader key that is required to switch
-			  the chip from bootloader mode (default mode) to
-			  application mode.
-			  This property has to be specified as an array of 8
-			  '/bits/ 8' values.
-
-Optional properties:
- - reset-gpios		: the reset gpio the chip is connected to
-			  (see GPIO binding[1] for more details).
- - touchscreen-size-x	: horizontal resolution of touchscreen (in pixels)
- - touchscreen-size-y	: vertical resolution of touchscreen (in pixels)
- - touchscreen-fuzz-x	: horizontal noise value of the absolute input device
-			  (in pixels)
- - touchscreen-fuzz-y	: vertical noise value of the absolute input device
-			  (in pixels)
- - active-distance	: the distance in pixels beyond which a touch must move
-			  before movement is detected and reported by the device.
-			  Valid values: 0-15.
- - active-interval-ms	: the minimum period in ms between consecutive
-			  scanning/processing cycles when the chip is in active mode.
-			  Valid values: 0-255.
- - lowpower-interval-ms	: the minimum period in ms between consecutive
-			  scanning/processing cycles when the chip is in low-power mode.
-			  Valid values: 0-2550
- - touch-timeout-ms	: minimum time in ms spent in the active power state while no
-			  touches are detected before entering low-power mode.
-			  Valid values: 0-2550
- - use-handshake	: enable register-based handshake (boolean). This should
-			  only be used if the chip is configured to use 'blocking
-			  communication with timeout' (in this case the device
-			  generates an interrupt at the end of every
-			  scanning/processing cycle).
-
-[0]: Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
-[1]: Documentation/devicetree/bindings/gpio/gpio.txt
-
-Example:
-	&i2c1 {
-		/* ... */
-		cyttsp@a {
-			compatible = "cypress,cyttsp-i2c";
-			reg = <0xa>;
-			interrupt-parent = <&gpio0>;
-			interrupts = <28 0>;
-			reset-gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
-
-			touchscreen-size-x = <800>;
-			touchscreen-size-y = <480>;
-			touchscreen-fuzz-x = <4>;
-			touchscreen-fuzz-y = <7>;
-
-			bootloader-key = /bits/ 8 <0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08>;
-			active-distance = <8>;
-			active-interval-ms = <0>;
-			lowpower-interval-ms = <200>;
-			touch-timeout-ms = <100>;
-		};
-
-		/* ... */
-	};
-
-	&mcspi1 {
-		/* ... */
-		cyttsp@0 {
-			compatible = "cypress,cyttsp-spi";
-			spi-max-frequency = <6000000>;
-			reg = <0>;
-			interrupt-parent = <&gpio0>;
-			interrupts = <28 0>;
-			reset-gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
-
-			touchscreen-size-x = <800>;
-			touchscreen-size-y = <480>;
-			touchscreen-fuzz-x = <4>;
-			touchscreen-fuzz-y = <7>;
-
-			bootloader-key = /bits/ 8 <0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08>;
-			active-distance = <8>;
-			active-interval-ms = <0>;
-			lowpower-interval-ms = <200>;
-			touch-timeout-ms = <100>;
-		};
-
-		/* ... */
-	};
-- 
2.30.2

