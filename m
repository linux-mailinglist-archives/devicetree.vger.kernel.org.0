Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4829651D9D6
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 16:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1441988AbiEFOJc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 10:09:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1441991AbiEFOJb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 10:09:31 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4EA606128A
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 07:05:48 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2192414BF;
        Fri,  6 May 2022 07:05:48 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F16AA3F885;
        Fri,  6 May 2022 07:05:46 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/11] dt-bindings: arm: convert vexpress-sysregs to DT schema
Date:   Fri,  6 May 2022 15:05:28 +0100
Message-Id: <20220506140533.3566431-7-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506140533.3566431-1-andre.przywara@arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arm Versatile Express system control register block provides GPIO
functionality to some devices and is also used for board identification.

Extract the first half of the informal vexpress-sysreg.txt binding and
make it proper DT schema compliant.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../bindings/arm/vexpress-sysreg.yaml         | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml

diff --git a/Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml b/Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml
new file mode 100644
index 0000000000000..b5e26e41f88c8
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/vexpress-sysreg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Versatile Express system registers bindings
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+description:
+  This is a system control registers block, providing multiple low level
+  platform functions like board detection and identification, software
+  interrupt generation, MMC and NOR Flash control, etc.
+
+properties:
+  compatible:
+    const: arm,vexpress-sysreg
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+additionalProperties: false
+
+patternProperties:
+  '^gpio@[0-9a-f]+$':
+    type: object
+    additionalProperties: false
+    description:
+      GPIO children
+
+    properties:
+      compatible:
+        enum:
+          - arm,vexpress-sysreg,sys_led
+          - arm,vexpress-sysreg,sys_mci
+          - arm,vexpress-sysreg,sys_flash
+
+      gpio-controller: true
+
+      "#gpio-cells":
+        const: 2
+        description: |
+          The first cell is the function number:
+          for sys_led : 0..7 = LED 0..7
+          for sys_mci : 0 = MMC CARDIN, 1 = MMC WPROT
+          for sys_flash : 0 = NOR FLASH WPn
+          The second cell can take standard GPIO flags.
+
+      reg:
+        maxItems: 1
+
+    required:
+      - compatible
+      - reg
+      - gpio-controller
+      - "#gpio-cells"
+
+required:
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
+
+examples:
+  - |
+    sysreg@0 {
+        compatible = "arm,vexpress-sysreg";
+        reg = <0x00000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0 0x1000>;
+
+        v2m_led_gpios: gpio@8 {
+            compatible = "arm,vexpress-sysreg,sys_led";
+            reg = <0x008 4>;
+            gpio-controller;
+            #gpio-cells = <2>;
+        };
+    };
+
+...
-- 
2.25.1

