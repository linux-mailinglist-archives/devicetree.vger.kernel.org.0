Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 800F415A855
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2020 12:54:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725874AbgBLLyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Feb 2020 06:54:23 -0500
Received: from mx2.suse.de ([195.135.220.15]:57544 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725781AbgBLLyW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Feb 2020 06:54:22 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id B0389AC5C;
        Wed, 12 Feb 2020 11:54:21 +0000 (UTC)
From:   Nikolay Borisov <nborisov@suse.com>
To:     mripard@kernel.org, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nikolay Borisov <nborisov@suse.com>
Subject: [PATCH v3] dt-bindings: hwlock: Document A64 hwspinlock bindings
Date:   Wed, 12 Feb 2020 13:54:19 +0200
Message-Id: <20200212115419.29038-1-nborisov@suse.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211122624.16484-4-nborisov@suse.com>
References: <20200211122624.16484-4-nborisov@suse.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for the hwspinlock found on Allwinner A64 SoC.

Signed-off-by: Nikolay Borisov <nborisov@suse.com>
---

V3: Added #include directive. This makes the patch pass schema validation.

 .../allwinner,sun50i-a64-hwspinlock.yaml      | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
new file mode 100644
index 000000000000..54270c8bb351
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwlock/allwinner,sun50i-a64-hwspinlock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A64 SoC Hardware Spinlock bindings
+
+maintainers:
+  - Nikolay Borisov <nborisov@suse.com>
+
+properties:
+  "#hwlock-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun50i-a64-hwspinlock
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
+required:
+  - "#hwlock-cells"
+  - compatible
+  - reg
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun50i-a64-ccu.h>
+    #include <dt-bindings/reset/sun50i-a64-ccu.h>
+    hwspinlock@1c18000 {
+        compatible = "allwinner,sun50i-a64-hwspinlock";
+        #hwlock-cells = <1>;
+        reg = <0x01c18000 0x1000>;
+        clocks = <&ccu CLK_BUS_SPINLOCK>;
+        resets = <&ccu RST_BUS_SPINLOCK>;
+    };
+
+...
--
2.17.1

