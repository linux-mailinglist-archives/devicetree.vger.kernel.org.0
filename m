Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F36638B274
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 17:03:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231986AbhETPFJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 11:05:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbhETPFI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 11:05:08 -0400
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8C27C061574
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 08:03:46 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:9cc6:7165:bcc2:1e70])
        by xavier.telenet-ops.be with bizsmtp
        id 733j2500A31btb90133jnS; Thu, 20 May 2021 17:03:45 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1ljkD8-007XoC-Pl; Thu, 20 May 2021 17:03:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1ljkD8-009FfY-7C; Thu, 20 May 2021 17:03:42 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: arm: scu: Convert to json-schema
Date:   Thu, 20 May 2021 17:03:40 +0200
Message-Id: <c5c36fb952675df4b9c9834d53a21fb58f391e86.1621522979.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the ARM Snoop Control Unit (SCU) Device Tree binding
documentation to json-schema.

Document required properties.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
I have listed Linus as the maintainer, as he wrote the original
bindings.  Linus: Please scream if this is inappropriate ;-)
---
 .../devicetree/bindings/arm/arm,scu.yaml      | 46 +++++++++++++++++++
 Documentation/devicetree/bindings/arm/scu.txt | 28 -----------
 .../devicetree/bindings/arm/ux500/boards.txt  |  2 +-
 3 files changed, 47 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,scu.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/scu.txt

diff --git a/Documentation/devicetree/bindings/arm/arm,scu.yaml b/Documentation/devicetree/bindings/arm/arm,scu.yaml
new file mode 100644
index 0000000000000000..dae2aa27e641b7d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,scu.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,scu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Snoop Control Unit (SCU)
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  As part of the MPCore complex, Cortex-A5 and Cortex-A9 are provided
+  with a Snoop Control Unit. The register range is usually 256 (0x100)
+  bytes.
+
+  References:
+    - Cortex-A9: see DDI0407E Cortex-A9 MPCore Technical Reference Manual
+      Revision r2p0
+    - Cortex-A5: see DDI0434B Cortex-A5 MPCore Technical Reference Manual
+      Revision r0p1
+    - ARM11 MPCore: see DDI0360F ARM 11 MPCore Processor Technical Reference
+      Manial Revision r2p0
+
+properties:
+  compatible:
+    enum:
+      - arm,cortex-a9-scu
+      - arm,cortex-a5-scu
+      - arm,arm11mp-scu
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    scu@a0410000 {
+            compatible = "arm,cortex-a9-scu";
+            reg = <0xa0410000 0x100>;
+    };
diff --git a/Documentation/devicetree/bindings/arm/scu.txt b/Documentation/devicetree/bindings/arm/scu.txt
deleted file mode 100644
index 74d0a780ce511998..0000000000000000
--- a/Documentation/devicetree/bindings/arm/scu.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-* ARM Snoop Control Unit (SCU)
-
-As part of the MPCore complex, Cortex-A5 and Cortex-A9 are provided
-with a Snoop Control Unit. The register range is usually 256 (0x100)
-bytes.
-
-References:
-
-- Cortex-A9: see DDI0407E Cortex-A9 MPCore Technical Reference Manual
-  Revision r2p0
-- Cortex-A5: see DDI0434B Cortex-A5 MPCore Technical Reference Manual
-  Revision r0p1
-- ARM11 MPCore: see DDI0360F ARM 11 MPCore Processor Technical Reference
-  Manial Revision r2p0
-
-- compatible : Should be:
-	"arm,cortex-a9-scu"
-	"arm,cortex-a5-scu"
-	"arm,arm11mp-scu"
-
-- reg : Specify the base address and the size of the SCU register window.
-
-Example:
-
-scu@a0410000 {
-	compatible = "arm,cortex-a9-scu";
-	reg = <0xa0410000 0x100>;
-};
diff --git a/Documentation/devicetree/bindings/arm/ux500/boards.txt b/Documentation/devicetree/bindings/arm/ux500/boards.txt
index 5a7e6f712623bb5d..18d55532d31eb1e7 100644
--- a/Documentation/devicetree/bindings/arm/ux500/boards.txt
+++ b/Documentation/devicetree/bindings/arm/ux500/boards.txt
@@ -20,7 +20,7 @@ during retention, system won't boot without this):
 	compatible = "ste,dbx500-backupram"
 
 scu:
-	see binding for arm/scu.txt
+	see binding for arm/arm,scu.yaml
 
 interrupt-controller:
 	see binding for interrupt-controller/arm,gic.txt
-- 
2.25.1

