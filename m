Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19A7C54C67F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 12:50:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346467AbiFOKut (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 06:50:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344786AbiFOKus (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 06:50:48 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2897A4D9CA
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 03:50:47 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id v19so15541400edd.4
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 03:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C8DdTL5RDARIZZY0H5oOK+SeMZtSZumloEBA0qdIBL0=;
        b=SOOGO2gYzm3cQCh9PTecYuNqEWPcfmtzafVfty5fV7feIVf7+Vq2InqmSij9aUQWBD
         MgpnhNc7STo4tPN/UpfYAJNl6OWhl3sj+dL9Em3XubhVLqqAWlEJS63dyqyBSUeenYQb
         A8XHAAXMeKSnZQbIwdTgbGMzXkCGwb94qJo+hVm8XKxeLxn1vIP64XFpv7JE+584URJY
         dWd6emNStzuxb6De20ZwjbRIBqutmHVQXHWAZq5rCvvu6QF/LtpMaBmJFQOIGD7hqWxj
         X6RCaXekBO+5hfFU0HgcoyjVDe6A45gS9IWPPyH3V1f+maq66FRpV9CQOaPhJsaaO9Wq
         nafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C8DdTL5RDARIZZY0H5oOK+SeMZtSZumloEBA0qdIBL0=;
        b=k4wN9zMUo+QUduGajiasDHUQ78I+/g5LfnQ0H0MegFj899/vgcJYp8JkuDxCYp1ATs
         taaq1YMBLU1uN0TE8jbiXkBNBqKLAb4K5whRmzj7kJ8TexFtrneiLCvdXC5BurtAUn36
         qu4gcpJkqG4L4palZ/u7dCg1NBpVSFVYk8oar3o5WXJEC2vDDfinyAO6C3PPXRt7arrh
         /fh5qLoMzSBAIv3PrfahfQPYxvdqFiuz96TCU0GKxGskRl9AgFkh8SC6M8joWx+jQP1P
         6iyC7rzObpIKBbYRR5CY9piETP/zzns5hytes6SW/kET3QafrN1xY5+b0za6Ffqhf5Xb
         RiJQ==
X-Gm-Message-State: AJIora8xRv+Uzmv2IhojD8rpHz4x/FgTMkDRUMfJXirRUz6kHRNtABE/
        0PkUxVNMNe1enyaVTkD6DZPeCg==
X-Google-Smtp-Source: AGRyM1tgYEUo1fdLEGyq/4sj+Bn7jhAwq09FyUDqWEYYzBvGRJFyccli581Lupu7iFZZQXdJ19Fx2g==
X-Received: by 2002:a05:6402:149:b0:431:7dde:9b59 with SMTP id s9-20020a056402014900b004317dde9b59mr11808778edu.339.1655290245533;
        Wed, 15 Jun 2022 03:50:45 -0700 (PDT)
Received: from fedora.sec.9e.network (ip-088-153-019-247.um27.pools.vodafone-ip.de. [88.153.19.247])
        by smtp.gmail.com with ESMTPSA id t27-20020a1709060c5b00b006fec2097d53sm6098237ejf.118.2022.06.15.03.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 03:50:45 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Patrick Rudolph <patrick.rudolph@9elements.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-binding: Add cypress,cy8c95x0 binding
Date:   Wed, 15 Jun 2022 12:49:19 +0200
Message-Id: <20220615104921.1390138-2-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220615104921.1390138-1-patrick.rudolph@9elements.com>
References: <20220615104921.1390138-1-patrick.rudolph@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Added device tree binding documentation for
Cypress CY8C95x0 I2C pin-controller.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
---
 .../bindings/pinctrl/cypress,cy8c95x0.yaml    | 131 ++++++++++++++++++
 1 file changed, 131 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
new file mode 100644
index 000000000000..765e8834d9dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
@@ -0,0 +1,131 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/cypress,cy8c95x0.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cypress CY8C95X0 I2C GPIO expander
+
+maintainers:
+  - Patrick Rudolph <patrick.rudolph@9elements.com>
+
+description: |
+  This supports the 20/40/60 pin Cypress CYC95x0 GPIO I2C expanders.
+  Pin function configuration is performed on a per-pin basis.
+
+properties:
+  compatible:
+    enum:
+      - cypress,cy8c9520
+      - cypress,cy8c9540
+      - cypress,cy8c9560
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    description:
+      The first cell is the GPIO number and the second cell specifies GPIO
+      flags, as defined in <dt-bindings/gpio/gpio.h>.
+    const: 2
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+
+  gpio-line-names: true
+
+  gpio-ranges:
+    maxItems: 1
+
+  gpio-reserved-ranges:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Optional power supply.
+
+patternProperties:
+  '-pins$':
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+    $ref: "/schemas/pinctrl/pincfg-node.yaml"
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode.
+        items:
+          - pattern: "^gp([0-7][0-7])$"
+      function:
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+        enum: [ gpio, pwm ]
+
+      bias-pull-down: true
+
+      bias-pull-up: true
+
+      bias-disable: true
+
+      output-high: true
+
+      output-low: true
+
+      drive-push-pull: true
+
+      drive-open-drain: true
+
+      drive-open-source: true
+
+    required:
+      - pins
+      - function
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - gpio-controller
+  - '#gpio-cells'
+
+additionalProperties: false
+
+allOf:
+  - $ref: "pinctrl.yaml#"
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c0 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      pinctrl@20 {
+        compatible = "cypress,cy8c9520";
+        reg = <0x20>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        #interrupt-cells = <2>;
+        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-controller;
+        vdd-supply = <&p3v3>;
+        gpio-reserved-ranges = <5 1>;
+      };
+    };
-- 
2.35.3

