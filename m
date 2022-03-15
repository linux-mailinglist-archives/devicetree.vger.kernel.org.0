Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A69E84DA651
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 00:37:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235190AbiCOXix (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 19:38:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245117AbiCOXix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 19:38:53 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81BE95B3C4
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 16:37:39 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id bn33so1002863ljb.6
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 16:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CVYvPzoQuTQyndX1sO520v6sFtpGIbDv7RumAhcyv2A=;
        b=Hzg2wl7SbKznScvVlXeaddmwXlGOSp7nosJ4XUzteDjw4daQ1l6NST8ZzfTr/T0FYO
         1qTYRdYORB6kQLeToFoT5sBKgF6d5kHOhae5KrOLNCAl7py81vUXDN4qDB04U48UxHa8
         R909eC5MLgENOvgXHycN4gW8kyXAmx5cZNG74mUpprzkhgI07wKRDyZnkgXfd8haY76S
         kZSSkLmB4oJCAJYz5nGIXmImXNErQo9uWg8vas9rReXIrPIPizJV63bw83T1SV0FYWH5
         CrA/Y4IrPIzIdsdUSLic2pb5PonKPp0V0mMQFNgabZA7tTYC8S8Q6TGcRFPf3HQyElCL
         5jNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CVYvPzoQuTQyndX1sO520v6sFtpGIbDv7RumAhcyv2A=;
        b=M3PF+aJxTeP4A0cJguE4LMLj0HwWM8e+Ny00/jmY0LFAVifUDwvHnARFO4Q2dXWdUf
         bx4ZTOPimn1deGCFzw8eFhHmx+h2EUxz/3zvq7gpqSRBPar15916fKXAZ0lIkiF52lH9
         Vr16b9PeM1IDJiRCKT9j9I28uM0MQ8ijxsTgXymfWNqYj6wRtAfx4RCuKB5n5dg4Y0uk
         LNMS8wtxUyqoh8s13KS6HIkRV0re2x+e+n07AW6qpj5GN0MY+yHg+41OgRU3MkrLUKQh
         T122xcflrDujgDTPqy6UiE3965tKKkpoo6PyW3JKAmbsPu1X9fPcvQmhFS3lztR5O+Go
         eMog==
X-Gm-Message-State: AOAM5323qQND9vqD8Ayd0Pnm4cVHLQFI8SAHrqSFtiAJZ2tv8j09wSiH
        AE0MkmJtUQ9nUssPvMrZX/B3/Q==
X-Google-Smtp-Source: ABdhPJzTDJkb6i3IKFf4Ji4ubPl1ltJQWL+VjUDM0nLokqlIQHMD6dDKhRdjBZRDKijzr0CcZraT7g==
X-Received: by 2002:a05:651c:11ca:b0:247:f32e:10ba with SMTP id z10-20020a05651c11ca00b00247f32e10bamr19080547ljo.208.1647387457752;
        Tue, 15 Mar 2022 16:37:37 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id w10-20020ac2442a000000b0044835a52a08sm29543lfl.163.2022.03.15.16.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 16:37:37 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: input: Add bindings for Immersion ISA1200
Date:   Wed, 16 Mar 2022 00:35:27 +0100
Message-Id: <20220315233528.1204930-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315233528.1204930-1-linus.walleij@linaro.org>
References: <20220315233528.1204930-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the Immersion ISA1200
haptic feedback unit.

Cc: phone-devel@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/input/immersion,isa1200.yaml     | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/immersion,isa1200.yaml

diff --git a/Documentation/devicetree/bindings/input/immersion,isa1200.yaml b/Documentation/devicetree/bindings/input/immersion,isa1200.yaml
new file mode 100644
index 000000000000..e6bbefce74a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/immersion,isa1200.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/immersion,isa1200.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Immersion ISA1200 Haptic Feedback Unit
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description:
+  The Immersion ISA1200 is a haptic feedback chip using two motors of
+  LRA or ERM type. It can generate a PWM signal to control the motors from
+  a fixed input clock, or it can amplify and modify an existing PWM
+  input. It is communicating with the host system using I2C.
+
+properties:
+  compatible:
+    description: One compatible per product using this chip. Each product
+      need deliberate custom values for things such as LRA resonance
+      frequency and these are not stored in the device tree, rather we
+      let the operating system look up the appropriate parameters from a
+      table.
+    enum:
+      - immersion,isa1200-janice
+      - immersion,isa1200-gavini
+
+  reg:
+    description: I2C address for the ISA1200
+
+  hen-gpios:
+    description: GPIO line that drives the HEN (Motor Hardware Enable) pin
+      on the chip.
+    maxItems: 1
+
+  len-gpios:
+    description: GPIO line that drives the LEN (LDO Enable) pin on the chip.
+    maxItems: 1
+
+  clocks:
+    description: Clock that drives the chip if using the chip to generate a
+      PWM from a clock. Either clocks or pwms must be defined.
+    maxItems: 1
+
+  pwms:
+    description: PWM that drives the chip if using an external PWM generator.
+      Either pwms or clocks must be defined.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - hen-gpios
+  - len-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      haptic@49 {
+        compatible = "immersion,isa1200-janice";
+        reg = <0x49>;
+        hen-gpios = <&gpio6 2 GPIO_ACTIVE_HIGH>;
+        len-gpios = <&gpio6 3 GPIO_ACTIVE_HIGH>;
+        clocks = <&clkout_clk>;
+      };
+    };
-- 
2.35.1

