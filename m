Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9615E3ABDB7
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 22:53:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231466AbhFQUze (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 16:55:34 -0400
Received: from foss.arm.com ([217.140.110.172]:60092 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231241AbhFQUzd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 17 Jun 2021 16:55:33 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D69C613A1;
        Thu, 17 Jun 2021 13:53:24 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 304723F694;
        Thu, 17 Jun 2021 13:53:24 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3] dt-bindings: interrupt-controller: Convert ARM VIC to json-schema
Date:   Thu, 17 Jun 2021 21:53:17 +0100
Message-Id: <20210617205317.3060163-1-sudeep.holla@arm.com>
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
 .../bindings/interrupt-controller/arm,vic.txt | 41 ----------
 .../interrupt-controller/arm,vic.yaml         | 81 +++++++++++++++++++
 2 files changed, 81 insertions(+), 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml

v2[2]->v3:
	- Dropped unnecessary maxItems and description fields as suggested
	- Used enum instead of oneOf
	- Reverted back to GPL-2.0

v1[1]->v2[2]:
	- Added arm,versatile-vic to the list of compatibles as suggested
	  by Linus W and added his review tag
	- Updated the SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)

[1] https://lore.kernel.org/r/20210610135717.2782793-1-sudeep.holla@arm.com/
[2] https://lore.kernel.org/r/20210611111033.2818949-1-sudeep.holla@arm.com/

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
index 000000000000..0075e72fe8c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: GPL-2.0
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
+    enum:
+      - arm,pl190-vic
+      - arm,pl192-vic
+      - arm,versatile-vic
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
+    maxItems: 1
+
+  interrupts:
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
+
+  valid-wakeup-mask:
+    description:
+      A one cell big bit mask of interrupt sources that can be configured
+      as wake up source for the system. Order of bits is the same as for
+      valid-mask property. A set bit means that this interrupt source
+      can be configured as a wake up source for the system. If unspecied,
+      defaults to all interrupt sources configurable as wake up sources.
+    $ref: /schemas/types.yaml#/definitions/uint32
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
+    // PL192 VIC
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

