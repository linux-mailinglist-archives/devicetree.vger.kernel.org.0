Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17E3057D0B0
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 18:06:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230008AbiGUQGU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 12:06:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230245AbiGUQGS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 12:06:18 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C7EA32BBB
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:06:16 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id w2so2372588ljj.7
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bOAD0WaXsD+JG0JF1mCsUCytEFM/ny7YDKpLSwYvJzw=;
        b=KwMyPMPbKbXkjxL+uTj15OnFAIiUv/+VHaeyhgGJ41oSthr9EFoxwuMi3d+sQGMTSz
         FNqmFEb9D+N/xww/HobSo9uGKWDT4FVhC3c8HSSYCIc2wdBPagpaulpxuSE21DC7M+69
         sbHUR8UKkuY81Fdc3y+SFU7/s3wfh8GX45g1RfcJZQPmjDb9ouTb8GJxka1m1sGV20o3
         JzX1VJczogIgyS129FHesh5pe/+gkFq1NPQpoVrk4kAs+r4xk6kPkJ3mkh80hj7Vv7FT
         d3dEUL1FXLMCrFYhvGEFpJAdepfYkXEByi4F84bPppa62UyP31TsIot/7k0oCaDNPKxH
         iRHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bOAD0WaXsD+JG0JF1mCsUCytEFM/ny7YDKpLSwYvJzw=;
        b=nPy0c0Q3VNdjWFYptiWxLNukb6Po/HjfVSiZafkKoEIXf+DOidZBJks4UbokZYXZoR
         0icM3NU365i+lK0FdbDomvOZFouUTEs2ttc4APfC+Ryz052AD2XHoFm1sNsRSrJtc5Ge
         JY+ImsoGNOuNM/D44IZUS6SyxdYyB5iQUL2qdPh0M3kbzlW+apIowtoNlkycjJIHreRq
         2EGcjcCnubKBLGSsW6WcxY4WUBAcykRRqvBkAoFnxU1+UwxbiTJ5vDSg2vyKAGa+AFrD
         Lv1/vThKN01jE7pzxTL6tJcRsgKPSxhjDfj7wwbZbIOO3GtnXKyGnDgj/N5jDj9odT5E
         fogw==
X-Gm-Message-State: AJIora/zt1nKY0Vcd1vGkXSLWkV0wrVVv0aRoGexBkejknsBtM7Ved6I
        41GH/Whtux/zEPU71o+7SE4wvQ==
X-Google-Smtp-Source: AGRyM1tKdUEyiXgh7nWkXj/5n2r75XTsJnX4oy9eT8joUGvGn03QNWbTxnwlN9zWpozfFN4bD8gvgw==
X-Received: by 2002:a05:651c:238b:b0:25d:eabe:225a with SMTP id bk11-20020a05651c238b00b0025deabe225amr504758ljb.28.1658419574658;
        Thu, 21 Jul 2022 09:06:14 -0700 (PDT)
Received: from krzk-bin.. (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id 8-20020ac25f08000000b0048a6bb9418esm511171lfq.295.2022.07.21.09.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 09:06:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v2] dt-bindings: leds: skyworks,aat1290: convert to dtschema
Date:   Thu, 21 Jul 2022 18:06:11 +0200
Message-Id: <20220721160611.250274-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Skyworks Solutions, Inc. AAT1290 Current Regulator bindings
to DT Schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Jacek Anaszewski <jacek.anaszewski@gmail.com>

---

Hi,

This is waiting on the lists for a month:
https://lore.kernel.org/all/20220620175033.130468-2-krzysztof.kozlowski@linaro.org/

so maybe it could be merged via LED or DT binding tree?

Best regards,
Krzysztof
---
 .../devicetree/bindings/leds/leds-aat1290.txt | 77 ---------------
 .../bindings/leds/skyworks,aat1290.yaml       | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 77 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/leds/leds-aat1290.txt
 create mode 100644 Documentation/devicetree/bindings/leds/skyworks,aat1290.yaml

diff --git a/Documentation/devicetree/bindings/leds/leds-aat1290.txt b/Documentation/devicetree/bindings/leds/leds-aat1290.txt
deleted file mode 100644
index 62ed17ec075b..000000000000
--- a/Documentation/devicetree/bindings/leds/leds-aat1290.txt
+++ /dev/null
@@ -1,77 +0,0 @@
-* Skyworks Solutions, Inc. AAT1290 Current Regulator for Flash LEDs
-
-The device is controlled through two pins: FL_EN and EN_SET. The pins when,
-asserted high, enable flash strobe and movie mode (max 1/2 of flash current)
-respectively. In order to add a capability of selecting the strobe signal source
-(e.g. CPU or camera sensor) there is an additional switch required, independent
-of the flash chip. The switch is controlled with pin control.
-
-Required properties:
-
-- compatible : Must be "skyworks,aat1290".
-- flen-gpios : Must be device tree identifier of the flash device FL_EN pin.
-- enset-gpios : Must be device tree identifier of the flash device EN_SET pin.
-
-Optional properties:
-- pinctrl-names : Must contain entries: "default", "host", "isp". Entries
-		"default" and "host" must refer to the same pin configuration
-		node, which sets the host as a strobe signal provider. Entry
-		"isp" must refer to the pin configuration node, which sets the
-		ISP as a strobe signal provider.
-
-A discrete LED element connected to the device must be represented by a child
-node - see Documentation/devicetree/bindings/leds/common.txt.
-
-Required properties of the LED child node:
-- led-max-microamp : see Documentation/devicetree/bindings/leds/common.txt
-- flash-max-microamp : see Documentation/devicetree/bindings/leds/common.txt
-                       Maximum flash LED supply current can be calculated using
-                       following formula: I = 1A * 162kohm / Rset.
-- flash-max-timeout-us : see Documentation/devicetree/bindings/leds/common.txt
-                         Maximum flash timeout can be calculated using following
-                         formula: T = 8.82 * 10^9 * Ct.
-
-Optional properties of the LED child node:
-- function : see Documentation/devicetree/bindings/leds/common.txt
-- color : see Documentation/devicetree/bindings/leds/common.txt
-- label : see Documentation/devicetree/bindings/leds/common.txt (deprecated)
-
-Example (by Ct = 220nF, Rset = 160kohm and exynos4412-trats2 board with
-a switch that allows for routing strobe signal either from the host or from
-the camera sensor):
-
-#include "exynos4412.dtsi"
-#include <dt-bindings/leds/common.h>
-
-led-controller {
-	compatible = "skyworks,aat1290";
-	flen-gpios = <&gpj1 1 GPIO_ACTIVE_HIGH>;
-	enset-gpios = <&gpj1 2 GPIO_ACTIVE_HIGH>;
-
-	pinctrl-names = "default", "host", "isp";
-	pinctrl-0 = <&camera_flash_host>;
-	pinctrl-1 = <&camera_flash_host>;
-	pinctrl-2 = <&camera_flash_isp>;
-
-	camera_flash: led {
-		function = LED_FUNCTION_FLASH;
-		color = <LED_COLOR_ID_WHITE>;
-		led-max-microamp = <520833>;
-		flash-max-microamp = <1012500>;
-		flash-max-timeout-us = <1940000>;
-	};
-};
-
-&pinctrl_0 {
-	camera_flash_host: camera-flash-host {
-		samsung,pins = "gpj1-0";
-		samsung,pin-function = <1>;
-		samsung,pin-val = <0>;
-	};
-
-	camera_flash_isp: camera-flash-isp {
-		samsung,pins = "gpj1-0";
-		samsung,pin-function = <1>;
-		samsung,pin-val = <1>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/leds/skyworks,aat1290.yaml b/Documentation/devicetree/bindings/leds/skyworks,aat1290.yaml
new file mode 100644
index 000000000000..a6aaa92dbccd
--- /dev/null
+++ b/Documentation/devicetree/bindings/leds/skyworks,aat1290.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/leds/skyworks,aat1290.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Skyworks Solutions, Inc. AAT1290 Current Regulator for Flash LEDs
+
+maintainers:
+  - Jacek Anaszewski <jacek.anaszewski@gmail.com>
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description: |
+  The device is controlled through two pins:: FL_EN and EN_SET. The pins when,
+  asserted high, enable flash strobe and movie mode (max 1/2 of flash current)
+  respectively. In order to add a capability of selecting the strobe signal
+  source (e.g. CPU or camera sensor) there is an additional switch required,
+  independent of the flash chip. The switch is controlled with pin control.
+
+properties:
+  compatible:
+    const: skyworks,aat1290
+
+  enset-gpios:
+    maxItems: 1
+    description: EN_SET pin
+
+  flen-gpios:
+    maxItems: 1
+    description: FL_EN pin
+
+  led:
+    $ref: common.yaml#
+    unevaluatedProperties: false
+
+    properties:
+      led-max-microamp: true
+
+      flash-max-microamp:
+        description: |
+          Maximum flash LED supply current can be calculated using following
+          formula:: I = 1A * 162 kOhm / Rset.
+
+      flash-max-timeout-us:
+        description: |
+          Maximum flash timeout can be calculated using following formula::
+            T = 8.82 * 10^9 * Ct.
+
+    required:
+      - flash-max-microamp
+      - flash-max-timeout-us
+      - led-max-microamp
+
+  pinctrl-names:
+    items:
+      - const: default
+      - const: host
+      - const: isp
+
+  pinctrl-0: true
+  pinctrl-1: true
+  pinctrl-2: true
+
+required:
+  - compatible
+  - enset-gpios
+  - flen-gpios
+  - led
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/leds/common.h>
+
+    // Ct = 220 nF, Rset = 160 kOhm
+    led-controller {
+        compatible = "skyworks,aat1290";
+        flen-gpios = <&gpj1 1 GPIO_ACTIVE_HIGH>;
+        enset-gpios = <&gpj1 2 GPIO_ACTIVE_HIGH>;
+
+        pinctrl-names = "default", "host", "isp";
+        pinctrl-0 = <&camera_flash_host>;
+        pinctrl-1 = <&camera_flash_host>;
+        pinctrl-2 = <&camera_flash_isp>;
+
+        led {
+            function = LED_FUNCTION_FLASH;
+            color = <LED_COLOR_ID_WHITE>;
+            led-max-microamp = <520833>;
+            flash-max-microamp = <1012500>;
+            flash-max-timeout-us = <1940000>;
+        };
+    };
-- 
2.34.1

