Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2CBB60D880
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 02:36:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232488AbiJZAgv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 20:36:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232331AbiJZAgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 20:36:49 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA0B1B0B3E
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 17:36:48 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id j12so12509036plj.5
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 17:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7o9M7KU4VkIHlOlHu9OUDgP8BHNeP5A3lj7/KBP6MkM=;
        b=kFhmSao+3OKJQW3idOU2E/AVTPoknHK6CowE9bpV0senKL4UHeXg+Ap2hdTeBxiM8U
         j0ofHVR1SbI5TlYKqMazdfDpVGUC7DFoxrGyjVYn2Hjb6ZjzPm72B5+SvFv78TvPlRgZ
         CGDtw2fsGRx80b1UWZmJACMIjPtauam0QTrcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7o9M7KU4VkIHlOlHu9OUDgP8BHNeP5A3lj7/KBP6MkM=;
        b=rksdTtIhPjazKrsIwZfpo2QjXbziiGtnVMR6rvhA2S30dpVvXM2YvngqVaSiiQqNqb
         VnbUEaSLU/PmtZXu8Vi4L6to4K8SkSNRHJflvAsZgCd+q4CuZicF+S2KiIOGs0ye7wA2
         3G6fLwcBGGpFtYC7XCstl6cCHzDg/FBiIJCbIq/0JUDwnhvgFNlFJChKLx9AC3w7y1oG
         VyVnu38k8HNix0/Lnmlr4Lo736iFv0rxXZsuy17ZpAzvsCaaVPwjeBytn/gkTwszybfT
         WQYvRIwUEe02JfmRVNc5JrNBOhIVxUQ4uEqrlLqrCKnRv6ky5FrGoPvdwZ6BA4IUoH48
         vB4g==
X-Gm-Message-State: ACrzQf262Ah9g5gBh6SkJ+fdBQRc/Hvon0k6KBaEyGDDdHRkVXxztC/l
        UYJAmBYOsQDL+jhauUfqey45dg==
X-Google-Smtp-Source: AMsMyM7/cm23zoDs3NnMPXi2JgJMk+3YKnEgib7FoJKI2NWceBzcR55vJo8kkhdx3yhRf89ohNjsxw==
X-Received: by 2002:a17:902:b708:b0:184:3921:df30 with SMTP id d8-20020a170902b70800b001843921df30mr41796671pls.43.1666744607237;
        Tue, 25 Oct 2022 17:36:47 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:11a:201:c1b0:de11:3d5e:16c0])
        by smtp.gmail.com with ESMTPSA id ik29-20020a170902ab1d00b001868ba9a867sm1717405plb.303.2022.10.25.17.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 17:36:46 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v7 2/2] dt-bindings: cros-ec: Add ChromeOS fingerprint binding
Date:   Tue, 25 Oct 2022 17:36:41 -0700
Message-Id: <20221026003641.2688765-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.38.1.273.g43a17bfeac-goog
In-Reply-To: <20221026003641.2688765-1-swboyd@chromium.org>
References: <20221026003641.2688765-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
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
 .../bindings/mfd/google,cros-ec.yaml          | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 659d3f64b550..3d5efa5578d1 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -25,6 +25,11 @@ properties:
       - description:
           For implementations of the EC connected through SPI.
         const: google,cros-ec-spi
+      - description:
+          For implementations of the FPMCU connected through SPI.
+        items:
+          - const: google,cros-ec-fp
+          - const: google,cros-ec-spi
       - description:
           For implementations of the EC connected through RPMSG.
         const: google,cros-ec-rpmsg
@@ -67,6 +72,15 @@ properties:
   interrupts:
     maxItems: 1
 
+  reset-gpios:
+    maxItems: 1
+
+  boot0-gpios:
+    maxItems: 1
+    description: Assert for bootloader mode.
+
+  vdd-supply: true
+
   wakeup-source:
     description: Button can wake-up the system.
 
@@ -177,6 +191,41 @@ allOf:
         - reg
         - interrupts
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,cros-ec-fp
+    then:
+      properties:
+        '#address-cells': false
+        '#size-cells': false
+        typec: false
+        ec-pwm: false
+        kbd-led-backlight: false
+        keyboard-controller: false
+        proximity: false
+        codecs: false
+        cbas: false
+
+      patternProperties:
+        "^i2c-tunnel[0-9]*$": false
+        "^regulator@[0-9]+$": false
+        "^extcon[0-9]*$": false
+
+      # Using additionalProperties: false here and
+      # listing true properties doesn't work
+
+      required:
+        - reset-gpios
+        - boot0-gpios
+        - vdd-supply
+    else:
+      properties:
+        reset-gpios: false
+        boot0-gpios: false
+        vdd-supply: false
+
 additionalProperties: false
 
 examples:
@@ -232,4 +281,22 @@ examples:
             compatible = "google,cros-ec-rpmsg";
         };
     };
+
+  # Example for FPMCU
+  - |
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
 ...
-- 
https://chromeos.dev

