Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 343EB6D1BB9
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 11:16:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231737AbjCaJQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 05:16:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231251AbjCaJQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 05:16:00 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3DA61E739
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:15:36 -0700 (PDT)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id 9DC10203E4; Fri, 31 Mar 2023 17:15:14 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680254114;
        bh=4i6zbPriP30VDqxbtLw8DULJL2d8uZhDMuiqyIgkVgY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=llF+FE5l2BTyEOtFdJl1ZHwWFVvFUruhmn50cOTFqKwvroSsYIYR3jOcgxj9o27gg
         5SJiv06viDhRw3SPrdDRDyQ2OILIRaIMp80XtSzZbU6YiWBf/OQ7PGS/xLpj7/X+CQ
         RfhUiynEx2JxXgsbz8dgz8/ipMoLjuJ1esyUTVlTVPJ7g6O3ED3KDtQSEj/orsHY6v
         7fbUSswN0vE0YCfxGeNdTkrJ3mR/HX6+t5AsFci+VUGc6o5ZmB6bKpAN9PR1UBWF/F
         +jPv8qQfT8Ru9Vq6WY6lyAfE00tv2X3rX0IFmNCxswOwUv4WB0kmO+RiLwoop59wvA
         ILzrdfHa7c9Dg==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH v3 2/3] dt-bindings: i3c: Add AST2600 i3c controller
Date:   Fri, 31 Mar 2023 17:15:00 +0800
Message-Id: <20230331091501.3800299-3-jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230331091501.3800299-1-jk@codeconstruct.com.au>
References: <20230331091501.3800299-1-jk@codeconstruct.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a devicetree binding for the ast2600 i3c controller hardware. This
is heavily based on the designware i3c core, plus a reset facility
and two platform-specific properties:

 - sda-pullup-ohms: to specify the value of the configurable pullup
   resistors on the SDA line

 - aspeed,global-regs: to reference the (ast2600-specific) i3c global
   register block, and the device index to use within it.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> (on v1)
Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>

---
v2:
 - example: replace aspeed clock defines with constants, so we're not
   reliant on recent clk patches.
---
 .../bindings/i3c/aspeed,ast2600-i3c.yaml      | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml

diff --git a/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
new file mode 100644
index 000000000000..fcc3dbff9c9a
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i3c/aspeed,ast2600-i3c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED AST2600 i3c controller
+
+maintainers:
+  - Jeremy Kerr <jk@codeconstruct.com.au>
+
+allOf:
+  - $ref: i3c.yaml#
+
+properties:
+  compatible:
+    const: aspeed,ast2600-i3c
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  sda-pullup-ohms:
+    enum: [545, 750, 2000]
+    default: 2000
+    description: |
+      Value to configure SDA pullup resistor, in Ohms.
+
+  aspeed,global-regs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to i3c global register syscon node
+          - description: index of this i3c controller in the global register set
+    description: |
+      A (phandle, controller index) reference to the i3c global register set
+      used for this device.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - aspeed,global-regs
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    i3c-master@2000 {
+        compatible = "aspeed,ast2600-i3c";
+        reg = <0x2000 0x1000>;
+        #address-cells = <3>;
+        #size-cells = <0>;
+        clocks = <&syscon 0>;
+        resets = <&syscon 0>;
+        aspeed,global-regs = <&i3c_global 0>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_i3c1_default>;
+        interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+    };
+...
-- 
2.39.1

