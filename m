Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEF3654BAF3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 21:52:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345452AbiFNTvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 15:51:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244912AbiFNTvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 15:51:50 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E44F313B9
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 12:51:49 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id k5-20020a17090a404500b001e8875e6242so10022853pjg.5
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 12:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uFpx1Q0R2DpaKD6mD/gHjLIZ6up40Rho6ckm9fm3ycc=;
        b=YsEOcKJ2Tzv+ZILzotF2aDfZqlxHIEm30HGq42foESPn7BvAuSx1zAlCATMGScuHbu
         VCw55LLcAb7p4aUkUdzsUo2Ed1LCO+OUvO7jbWGFMsQcolT2POJH4A9coIl1fjjLJBbY
         /SyPSAXTeUqpboks7CBNn3mGcnHRu8Kfh+Z4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uFpx1Q0R2DpaKD6mD/gHjLIZ6up40Rho6ckm9fm3ycc=;
        b=8P1YrwkU/JdYVstPt4HpYMVnKMiWCgio21z5Utzax//GwQNr83bbOv/9dno2ETTYAg
         7cPmlzlzSSEnFpeLQxfD28eR0LF4XGvYTvASHj1sBWe3+y+3r416fWZtLfBNM6n2TyHX
         HukVtDDeMN7N88huPIEw37NCh5J1707vpy/C60/gCipNGDbyCXrdlXJtt+wrIb53w3GP
         xoXMU5ycwz0PBAu0SVhIl6+syu/OzII387kMH7fCAwfJ2HqKXV+ryBlyygKKxoyDjDbv
         ofucn45iNhQDS0Hc+tSkoPCbgLSJ+XeO/RAL7pZfcnp2rKTgoI2BX2O3RNbJhdmcN+na
         QecA==
X-Gm-Message-State: AJIora+h7BONGMdEVNZkt/29yzh3P4HSn2diGebI1AAZweVx3Xu1tDPW
        lJGKAm4CxoLr3lD8vBRa9jji2Q==
X-Google-Smtp-Source: AGRyM1tlKHQcOg674ko2y7XUMi9PndsR1Xg83asVlu4KMPxtYZf3pNCemwmM2SlhRYKjweoMK2HDnA==
X-Received: by 2002:a17:902:d504:b0:167:756a:f992 with SMTP id b4-20020a170902d50400b00167756af992mr6028030plg.160.1655236309017;
        Tue, 14 Jun 2022 12:51:49 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:82ae:1136:b202:95da])
        by smtp.gmail.com with ESMTPSA id s21-20020a170902b19500b0015e8d4eb29csm7625484plr.230.2022.06.14.12.51.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 12:51:48 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Benson Leung <bleung@chromium.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v6 2/2] dt-bindings: cros-ec: Add ChromeOS fingerprint binding
Date:   Tue, 14 Jun 2022 12:51:44 -0700
Message-Id: <20220614195144.2794796-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.36.1.476.g0c4daa206d-goog
In-Reply-To: <20220614195144.2794796-1-swboyd@chromium.org>
References: <20220614195144.2794796-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a binding to describe the fingerprint processor found on Chromebooks
with a fingerprint sensor. Previously we've been describing this with
the google,cros-ec-spi binding but it lacks gpio and regulator control
used during firmware flashing.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Craig Hesling <hesling@chromium.org>
Cc: Tom Hughes <tomhughes@chromium.org>
Cc: Alexandru M Stan <amstan@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: Matthias Kaehlcke <mka@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../bindings/chrome/google,cros-ec-fp.yaml    | 97 +++++++++++++++++++
 .../bindings/mfd/google,cros-ec.yaml          |  9 ++
 2 files changed, 106 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml

diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml
new file mode 100644
index 000000000000..48c02bd4585c
--- /dev/null
+++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-fp.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/chrome/google,cros-ec-fp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ChromeOS Embedded Fingerprint Controller
+
+description:
+  Google's ChromeOS embedded fingerprint controller is a device which
+  implements fingerprint functionality such as unlocking a Chromebook
+  without typing a password.
+
+maintainers:
+  - Tom Hughes <tomhughes@chromium.org>
+
+select:
+  properties:
+    compatible:
+      contains:
+        const: google,cros-ec-spi
+  required:
+    - compatible
+    - boot0-gpios
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: google,cros-ec-fp
+      - const: google,cros-ec-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  controller-data: true
+
+  google,cros-ec-spi-pre-delay:
+    description:
+      This property specifies the delay in usecs between the
+      assertion of the CS and the first clock pulse.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+
+  google,cros-ec-spi-msg-delay:
+    description:
+      This property specifies the delay in usecs between messages.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+
+  spi-max-frequency:
+    maximum: 3000000
+
+  reset-gpios:
+    maxItems: 1
+
+  boot0-gpios:
+    maxItems: 1
+    description: Assert for bootloader mode.
+
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - reset-gpios
+  - boot0-gpios
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+    spi0 {
+      #address-cells = <0x1>;
+      #size-cells = <0x0>;
+
+      ec@0 {
+        compatible = "google,cros-ec-fp", "google,cros-ec-spi";
+        reg = <0x0>;
+        interrupt-parent = <&gpio_controller>;
+        interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
+        spi-max-frequency = <3000000>;
+        reset-gpios = <&gpio_controller 5 GPIO_ACTIVE_LOW>;
+        boot0-gpios = <&gpio_controller 10 GPIO_ACTIVE_HIGH>;
+        vdd-supply = <&pp3300_fp_mcu>;
+      };
+    };
+...
diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 178e26ab115c..a7453bbd7bed 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -10,6 +10,15 @@ maintainers:
   - Benson Leung <bleung@chromium.org>
   - Guenter Roeck <groeck@chromium.org>
 
+select:
+  properties:
+    compatible:
+      contains:
+        const: google,cros-ec-spi
+    boot0-gpios: false
+  required:
+    - compatible
+
 description:
   Google's ChromeOS EC is a microcontroller which talks to the AP and
   implements various functions such as keyboard and battery charging.
-- 
https://chromeos.dev

