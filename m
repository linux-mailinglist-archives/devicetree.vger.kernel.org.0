Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85793693EFE
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 08:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbjBMHm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 02:42:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229838AbjBMHm3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 02:42:29 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAD6BE3B4
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 23:42:24 -0800 (PST)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id F2D1B200E3; Mon, 13 Feb 2023 15:42:22 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676274142;
        bh=Gac3PppOPjYLz3RFgIIfbWPmQu5Mk+Pg0GDUNnRwP4E=;
        h=From:To:Cc:Subject:Date;
        b=c2yd1IFcixnbYvx10pSFloY8TVzM4S4/w12Ewfdg1qBxrRnf3V4gTP0rx+kEcbyy1
         3f47Zts8DxFOuG89imjJctCO3MmQk1qRCim38z/HUyhg7Ck96ZaxIBtwGgHbSOxkNA
         Tqk0A9WHlHfk7G9OXBKwWOZ4QJ7puRvXS/QqO+NNiM2q8gv5ak0Po8/eoRTyfVAvtt
         a97NxRpI7rpnaNJPm9KOwaI1rUN+Soq9XXBA89R5dAxnMRbmbgQnc0mIApozMQttaw
         6Rnpn6GoDuvjcIeRFMAQbqgIsbw3w1P6gCjmUoKgbmkfDyNfp93Dx+lfK7WZZVhxX1
         1aVibyQQcqylQ==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     devicetree@vger.kernel.org
Cc:     linux-aspeed@lists.ozlabs.org, linux-i3c@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [RFC PATCH] dt-bindings: Add AST2600 i3c controller binding
Date:   Mon, 13 Feb 2023 15:41:52 +0800
Message-Id: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This change adds a devicetree binding for the ast2600 i3c controller
hardware. This is heavily based on the designware i3c hardware, plus a
reset facility and two platform-specific properties:

 - sda-pullup-ohms: to specify the value of the configurable pullup
   resistors on the SDA line

 - global-regs: to reference the (ast2600-specific) i3c global register
   block, and the device index to use within it.

Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
---
RFC: the example in this depends on some not-yet-accepted patches for
the clock and reset linkages:

  https://lore.kernel.org/linux-devicetree/cover.1676267865.git.jk@codeconstruct.com.au/T/

I'm also keen to get some review on the pullup configuration too.

---
 .../bindings/i3c/aspeed,ast2600-i3c.yaml      | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml

diff --git a/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
new file mode 100644
index 000000000000..ef28a8b77c94
--- /dev/null
+++ b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
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
+      Value of SDA pullup resistor in Ohms
+
+  global-regs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: |
+      A (phandle, controller index) reference to the i3c global register set
+      used for this device.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+  - global-regs
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/ast2600-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    i3c-master@2000 {
+        #address-cells = <3>;
+        #size-cells = <0>;
+        compatible = "aspeed,ast2600-i3c";
+        reg = <0x2000 0x1000>;
+        clocks = <&syscon ASPEED_CLK_GATE_I3C0CLK>;
+        resets = <&syscon ASPEED_RESET_I3C0>;
+        global-regs = <&i3c_global 0>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_i3c1_default>;
+        interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+    i3c_global: i3c-global@0 {
+        compatible = "aspeed,ast2600-i3c-global", "simple-mfd", "syscon";
+        resets = <&syscon ASPEED_RESET_I3C_DMA>;
+        reg = <0x0 0x1000>;
+    };
+...
-- 
2.39.1

