Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F6E96CFC9C
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:22:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbjC3HWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229783AbjC3HWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:22:38 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F4B5ED
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:22:37 -0700 (PDT)
Received: by codeconstruct.com.au (Postfix, from userid 10000)
        id E57E1201F2; Thu, 30 Mar 2023 15:22:31 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680160951;
        bh=FWbcA5dORUr++A7duxNqxgidowcGUM2jcrHUfxGInKY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=j7LIjSLqxYbgUzIxH3kYvHvsLEnDhNw6mfSkWsuaJTuYVmFkt8rGwb87NZCceFhyQ
         wILcBB/EsNL3fD0p07s/1vB4bePOmmxQKA0h+lljn4e1rrubq3bO3MrLiPrzewMhLo
         +39svv86LLikI9n7qg68xwc6AYKRlFsQ09fkOCSb5Y8lBoBu0AMKUfdPfujT8tcXou
         iGyApRNnYalh1e6+h3gxJyiNXmf803uzqtDdCA/IkWDtg+5FZQfRFKx0rW9BZ6y8KK
         rgJuKLak98wh/bLt+GWL17rWQqqTLNHaHys0CniUC1aVso25EoT47nsuQzjg66x9QB
         9JKQAFR0GS7WQ==
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH v2 2/3] dt-bindings: i3c: Add AST2600 i3c controller
Date:   Thu, 30 Mar 2023 15:22:18 +0800
Message-Id: <f567ce86cf9a57b50320c1b2f7c851adc03c094d.1680160851.git.jk@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680160851.git.jk@codeconstruct.com.au>
References: <cover.1680160851.git.jk@codeconstruct.com.au>
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
2.39.2

