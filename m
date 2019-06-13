Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D968D43996
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 17:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732914AbfFMPOp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 11:14:45 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:57257 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732246AbfFMN0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 09:26:46 -0400
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr [90.88.159.246])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 86E36C000C;
        Thu, 13 Jun 2019 13:26:42 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: nvmem: Convert Allwinner SID to a schema
Date:   Thu, 13 Jun 2019 15:20:12 +0200
Message-Id: <20190613132012.14202-2-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190613132012.14202-1-maxime.ripard@bootlin.com>
References: <20190613132012.14202-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs have an efuse supported in Linux, with a matching Device
Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../nvmem/allwinner,sun4i-a10-sid.yaml        | 51 +++++++++++++++++++
 .../bindings/nvmem/allwinner,sunxi-sid.txt    | 29 -----------
 2 files changed, 51 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
 delete mode 100644 Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt

diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
new file mode 100644
index 000000000000..c9efd6e2c134
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/allwinner,sun4i-a10-sid.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Security ID Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-sid
+      - allwinner,sun7i-a20-sid
+      - allwinner,sun8i-a83t-sid
+      - allwinner,sun8i-h3-sid
+      - allwinner,sun50i-a64-sid
+      - allwinner,sun50i-h5-sid
+      - allwinner,sun50i-h6-sid
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+# FIXME: We should set it, but it would report all the generic
+# properties as additional properties.
+# additionalProperties: false
+
+examples:
+  - |
+    sid@1c23800 {
+        compatible = "allwinner,sun4i-a10-sid";
+        reg = <0x01c23800 0x10>;
+    };
+
+  - |
+    sid@1c23800 {
+        compatible = "allwinner,sun7i-a20-sid";
+        reg = <0x01c23800 0x200>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt b/Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt
deleted file mode 100644
index cfb18b4ef8f7..000000000000
--- a/Documentation/devicetree/bindings/nvmem/allwinner,sunxi-sid.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Allwinner sunxi-sid
-
-Required properties:
-- compatible: Should be one of the following:
-  "allwinner,sun4i-a10-sid"
-  "allwinner,sun7i-a20-sid"
-  "allwinner,sun8i-a83t-sid"
-  "allwinner,sun8i-h3-sid"
-  "allwinner,sun50i-a64-sid"
-  "allwinner,sun50i-h5-sid"
-  "allwinner,sun50i-h6-sid"
-
-- reg: Should contain registers location and length
-
-= Data cells =
-Are child nodes of sunxi-sid, bindings of which as described in
-bindings/nvmem/nvmem.txt
-
-Example for sun4i:
-	sid@1c23800 {
-		compatible = "allwinner,sun4i-a10-sid";
-		reg = <0x01c23800 0x10>
-	};
-
-Example for sun7i:
-	sid@1c23800 {
-		compatible = "allwinner,sun7i-a20-sid";
-		reg = <0x01c23800 0x200>
-	};
-- 
2.21.0

