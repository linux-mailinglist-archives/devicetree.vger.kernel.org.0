Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4D2D197497
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 10:21:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726362AbfHUIVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 04:21:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:44094 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726252AbfHUIVo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 04:21:44 -0400
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7A3792339E;
        Wed, 21 Aug 2019 08:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1566375703;
        bh=LOhB69dIe9oA37I5L0XwPEM++IcwFc8nRsjX+Z8kArU=;
        h=From:To:Cc:Subject:Date:From;
        b=ey17y3EjS1WfjQAWDsfcI3Me8Xh6HMT8RdCQMA9v3OEs7BcGAbQkitY0xEY6dB4Mz
         L2Dmoi7/e+euFQXzK3MlEBJH9PCl4yXXK4GEd2L+H84JgES4fi7cxCNSLrlLXNBa23
         PkxyS4/1OUHILOrrDrQWBhA7jO0eRfvAFCZLQMWA=
From:   Maxime Ripard <mripard@kernel.org>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>, tglx@linutronix.de,
        jason@lakedaemon.net, maz@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v2 1/2] dt-bindings: irq: Convert Allwinner IRQ Controller to a schema
Date:   Wed, 21 Aug 2019 10:21:37 +0200
Message-Id: <20190821082138.11049-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner SoCs have an interrupt controller supported in Linux, with a
matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Remove Fixme and add additionalProperties to false
  - Add unit address for the example
---
 .../allwinner,sun4i-a10-ic.yaml               | 47 +++++++++++++++++++
 .../allwinner,sun4i-ic.txt                    | 20 --------
 2 files changed, 47 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
 delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
new file mode 100644
index 000000000000..23a202d24e43
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun4i-a10-ic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Interrupt Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
+properties:
+  "#interrupt-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-ic
+      - allwinner,suniv-f1c100s-ic
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+required:
+  - "#interrupt-cells"
+  - compatible
+  - reg
+  - interrupt-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    intc: interrupt-controller@1c20400 {
+        compatible = "allwinner,sun4i-a10-ic";
+        reg = <0x01c20400 0x400>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
deleted file mode 100644
index 404352524c3a..000000000000
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Allwinner Sunxi Interrupt Controller
-
-Required properties:
-
-- compatible : should be one of the following:
-              "allwinner,sun4i-a10-ic"
-              "allwinner,suniv-f1c100s-ic"
-- reg : Specifies base physical address and size of the registers.
-- interrupt-controller : Identifies the node as an interrupt controller
-- #interrupt-cells : Specifies the number of cells needed to encode an
-  interrupt source. The value shall be 1.
-
-Example:
-
-intc: interrupt-controller {
-	compatible = "allwinner,sun4i-a10-ic";
-	reg = <0x01c20400 0x400>;
-	interrupt-controller;
-	#interrupt-cells = <1>;
-};
-- 
2.21.0

