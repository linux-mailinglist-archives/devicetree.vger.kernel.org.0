Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 561343A40E4
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 13:11:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231734AbhFKLMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 07:12:51 -0400
Received: from foss.arm.com ([217.140.110.172]:55266 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231733AbhFKLMt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Jun 2021 07:12:49 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADD5E143D;
        Fri, 11 Jun 2021 04:10:51 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D8F6E3F694;
        Fri, 11 Jun 2021 04:10:50 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2] dt-bindings: interrupt-controller: Convert ARM VIC to json-schema
Date:   Fri, 11 Jun 2021 12:10:33 +0100
Message-Id: <20210611111033.2818949-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the ARM VIC binding document to DT schema format using
json-schema.

Cc: Rob Herring <robh@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 .../bindings/interrupt-controller/arm,vic.txt | 41 --------
 .../interrupt-controller/arm,vic.yaml         | 93 +++++++++++++++++++
 2 files changed, 93 insertions(+), 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml

v1->v2:
	- Added arm,versatile-vic to the list of compatibles as suggested
	  by Linus W and added his review tag
	- Updated the SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
	  Original txt file doesn't carry anything and is not sure about
	  it, but just followed what I have done with scmi/scpi ones

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt b/Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
deleted file mode 100644
index dd527216c5fb..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-* ARM Vectored Interrupt Controller
-
-One or more Vectored Interrupt Controllers (VIC's) can be connected in an ARM
-system for interrupt routing.  For multiple controllers they can either be
-nested or have the outputs wire-OR'd together.
-
-Required properties:
-
-- compatible : should be one of
-	"arm,pl190-vic"
-	"arm,pl192-vic"
-- interrupt-controller : Identifies the node as an interrupt controller
-- #interrupt-cells : The number of cells to define the interrupts.  Must be 1 as
-  the VIC has no configuration options for interrupt sources.  The cell is a u32
-  and defines the interrupt number.
-- reg : The register bank for the VIC.
-
-Optional properties:
-
-- interrupts : Interrupt source for parent controllers if the VIC is nested.
-- valid-mask : A one cell big bit mask of valid interrupt sources. Each bit
-  represents single interrupt source, starting from source 0 at LSb and ending
-  at source 31 at MSb. A bit that is set means that the source is wired and
-  clear means otherwise. If unspecified, defaults to all valid.
-- valid-wakeup-mask : A one cell big bit mask of interrupt sources that can be
-  configured as wake up source for the system. Order of bits is the same as for
-  valid-mask property. A set bit means that this interrupt source can be
-  configured as a wake up source for the system. If unspecied, defaults to all
-  interrupt sources configurable as wake up sources.
-
-Example:
-
-	vic0: interrupt-controller@60000 {
-		compatible = "arm,pl192-vic";
-		interrupt-controller;
-		#interrupt-cells = <1>;
-		reg = <0x60000 0x1000>;
-
-		valid-mask = <0xffffff7f>;
-		valid-wakeup-mask = <0x0000ff7f>;
-	};
diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
new file mode 100644
index 000000000000..60576bf14b43
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/arm,vic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Vectored Interrupt Controller
+
+maintainers:
+  - Rob Herring <robh@kernel.org>
+
+description: |+
+  One or more Vectored Interrupt Controllers (VIC's) can be connected in an
+  ARM system for interrupt routing.  For multiple controllers they can either
+  be nested or have the outputs wire-OR'd together.
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: arm,pl190-vic
+      - const: arm,pl192-vic
+      - const: arm,versatile-vic
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 1
+    description:
+      The number of cells to define the interrupts.  It must be 1 as the
+      VIC has no configuration options for interrupt sources. The single
+      cell defines the interrupt number.
+
+  reg:
+    description: The register bank for the VIC.
+    maxItems: 1
+
+  interrupts:
+    description:
+      Interrupt source for the parent interrupt controller if the VIC
+      is nested.
+    maxItems: 1
+
+  interrupts-extended:
+    description:
+      Interrupt source for the parent interrupt controllers if the VIC
+      is nested.
+    maxItems: 1
+
+  valid-mask:
+    description:
+      A one cell big bit mask of valid interrupt sources. Each bit
+      represents single interrupt source, starting from source 0 at
+      LSb and ending at source 31 at MSb. A bit that is set means
+      that the source is wired and clear means otherwise. If unspecified,
+      defaults to all valid.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    maxItems: 1
+
+  valid-wakeup-mask:
+    description:
+      A one cell big bit mask of interrupt sources that can be configured
+      as wake up source for the system. Order of bits is the same as for
+      valid-mask property. A set bit means that this interrupt source
+      can be configured as a wake up source for the system. If unspecied,
+      defaults to all interrupt sources configurable as wake up sources.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - "#interrupt-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    // GICv1
+    vic0: interrupt-controller@60000 {
+      compatible = "arm,pl192-vic";
+      interrupt-controller;
+      #interrupt-cells = <1>;
+      reg = <0x60000 0x1000>;
+
+      valid-mask = <0xffffff7f>;
+      valid-wakeup-mask = <0x0000ff7f>;
+    };
+
+...
-- 
2.25.1

