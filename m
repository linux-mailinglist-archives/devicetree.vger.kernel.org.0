Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71D1B511606
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 13:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232770AbiD0L3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 07:29:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232731AbiD0L3B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 07:29:01 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D94CF340F9
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 04:25:50 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7AFFED1;
        Wed, 27 Apr 2022 04:25:50 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A26473F5A1;
        Wed, 27 Apr 2022 04:25:49 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/11] dt-bindings: arm: sp810: convert to DT schema
Date:   Wed, 27 Apr 2022 12:25:20 +0100
Message-Id: <20220427112528.4097815-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220427112528.4097815-1-andre.przywara@arm.com>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arm SP810 IP is a "system controller", providing clocks, timer and a
watchdog.

Convert the DT binding to DT schema, to allow automatic validation.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/arm/sp810.txt         | 46 -----------
 .../devicetree/bindings/arm/sp810.yaml        | 82 +++++++++++++++++++
 2 files changed, 82 insertions(+), 46 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/sp810.txt
 create mode 100644 Documentation/devicetree/bindings/arm/sp810.yaml

diff --git a/Documentation/devicetree/bindings/arm/sp810.txt b/Documentation/devicetree/bindings/arm/sp810.txt
deleted file mode 100644
index 46652bf651478..0000000000000
--- a/Documentation/devicetree/bindings/arm/sp810.txt
+++ /dev/null
@@ -1,46 +0,0 @@
-SP810 System Controller
------------------------
-
-Required properties:
-
-- compatible:	standard compatible string for a Primecell peripheral,
-		see Documentation/devicetree/bindings/arm/primecell.yaml
-		for more details
-		should be: "arm,sp810", "arm,primecell"
-
-- reg:		standard registers property, physical address and size
-		of the control registers
-
-- clock-names:	from the common clock bindings, for more details see
-		Documentation/devicetree/bindings/clock/clock-bindings.txt;
-		should be: "refclk", "timclk", "apb_pclk"
-
-- clocks:	from the common clock bindings, phandle and clock
-		specifier pairs for the entries of clock-names property
-
-- #clock-cells: from the common clock bindings;
-		should be: <1>
-
-- clock-output-names: from the common clock bindings;
-		should be: "timerclken0", "timerclken1", "timerclken2", "timerclken3"
-
-- assigned-clocks: from the common clock binding;
-		should be: clock specifier for each output clock of this
-		provider node
-
-- assigned-clock-parents: from the common clock binding;
-		should be: phandle of input clock listed in clocks
-		property with the highest frequency
-
-Example:
-	v2m_sysctl: sysctl@20000 {
-		compatible = "arm,sp810", "arm,primecell";
-		reg = <0x020000 0x1000>;
-		clocks = <&v2m_refclk32khz>, <&v2m_refclk1mhz>, <&smbclk>;
-		clock-names = "refclk", "timclk", "apb_pclk";
-		#clock-cells = <1>;
-		clock-output-names = "timerclken0", "timerclken1", "timerclken2", "timerclken3";
-		assigned-clocks = <&v2m_sysctl 0>, <&v2m_sysctl 1>, <&v2m_sysctl 3>, <&v2m_sysctl 3>;
-		assigned-clock-parents = <&v2m_refclk1mhz>, <&v2m_refclk1mhz>, <&v2m_refclk1mhz>, <&v2m_refclk1mhz>;
-
-	};
diff --git a/Documentation/devicetree/bindings/arm/sp810.yaml b/Documentation/devicetree/bindings/arm/sp810.yaml
new file mode 100644
index 0000000000000..837f2bb3dbb42
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/sp810.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/sp810.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Versatile Express SP810 System Controller bindings
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+description: |+
+  The Arm SP810 system controller provides clocks, timers and a watchdog.
+
+# We need a select here so we don't match all nodes with 'arm,primecell'
+select:
+  properties:
+    compatible:
+      contains:
+        const: arm,sp810
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - const: arm,sp810
+      - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: refclk
+      - const: timclk
+      - const: apb_pclk
+
+  clocks:
+    items:
+      - description: reference clock
+      - description: timer clock
+      - description: APB register access clock
+
+  "#clock-cells":
+    const: 1
+
+  clock-output-names:
+    items:
+      - const: timerclken0
+      - const: timerclken1
+      - const: timerclken2
+      - const: timerclken3
+
+  assigned-clocks:
+    minItems: 4
+
+  assigned-clock-parents:
+    minItems: 4
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+
+examples:
+  - |
+    sysctl@20000 {
+            compatible = "arm,sp810", "arm,primecell";
+            reg = <0x020000 0x1000>;
+            clocks = <&v2m_refclk32khz>, <&v2m_refclk1mhz>, <&smbclk>;
+            clock-names = "refclk", "timclk", "apb_pclk";
+            #clock-cells = <1>;
+            clock-output-names = "timerclken0", "timerclken1",
+                                 "timerclken2", "timerclken3";
+            assigned-clocks = <&v2m_sysctl 0>, <&v2m_sysctl 1>,
+                              <&v2m_sysctl 3>, <&v2m_sysctl 3>;
+            assigned-clock-parents = <&v2m_refclk1mhz>, <&v2m_refclk1mhz>,
+                                     <&v2m_refclk1mhz>, <&v2m_refclk1mhz>;
+    };
-- 
2.25.1

