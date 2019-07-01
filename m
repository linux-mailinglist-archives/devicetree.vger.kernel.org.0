Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B122C4E762
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 13:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726297AbfFULzh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 07:55:37 -0400
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:35963 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726229AbfFULzh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 07:55:37 -0400
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr [90.88.16.156])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 07E181BF20B;
        Fri, 21 Jun 2019 11:55:25 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2] dt-bindings: nvmem: Add YAML schemas for the generic NVMEM bindings
Date:   Fri, 21 Jun 2019 13:55:24 +0200
Message-Id: <20190621115524.27329-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The nvmem providers and consumers have a bunch of generic properties that
are needed in a device tree. Add a YAML schemas for those.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Change example node name
---
 .../bindings/nvmem/nvmem-consumer.yaml        | 45 +++++++++
 .../devicetree/bindings/nvmem/nvmem.txt       | 81 +---------------
 .../devicetree/bindings/nvmem/nvmem.yaml      | 93 +++++++++++++++++++
 3 files changed, 139 insertions(+), 80 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
new file mode 100644
index 000000000000..c48b74733b68
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nvmem-consumer.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nvmem-consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVMEM (Non Volatile Memory) Consumer Device Tree Bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+select: true
+
+properties:
+  nvmem:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandle to the nvmem providers.
+
+  nvmem-cells:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandle to the nvmem data cells.
+
+  nvmem-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      Names for the each nvmem provider.
+
+  nvmem-cell-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      Names for each nvmem-cells specified.
+
+dependencies:
+  nvmem-names: [ nvmem ]
+  nvmem-cell-names: [ nvmem-cells ]
+
+examples:
+  - |
+    tsens {
+        /* ... */
+        nvmem-cells = <&tsens_calibration>;
+        nvmem-cell-names = "calibration";
+    };
diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.txt b/Documentation/devicetree/bindings/nvmem/nvmem.txt
index fd06c09b822b..46a7ef485e24 100644
--- a/Documentation/devicetree/bindings/nvmem/nvmem.txt
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.txt
@@ -1,80 +1 @@
-= NVMEM(Non Volatile Memory) Data Device Tree Bindings =
-
-This binding is intended to represent the location of hardware
-configuration data stored in NVMEMs like eeprom, efuses and so on.
-
-On a significant proportion of boards, the manufacturer has stored
-some data on NVMEM, for the OS to be able to retrieve these information
-and act upon it. Obviously, the OS has to know about where to retrieve
-these data from, and where they are stored on the storage device.
-
-This document is here to document this.
-
-= Data providers =
-Contains bindings specific to provider drivers and data cells as children
-of this node.
-
-Optional properties:
- read-only: Mark the provider as read only.
-
-= Data cells =
-These are the child nodes of the provider which contain data cell
-information like offset and size in nvmem provider.
-
-Required properties:
-reg:	specifies the offset in byte within the storage device.
-
-Optional properties:
-
-bits:	Is pair of bit location and number of bits, which specifies offset
-	in bit and number of bits within the address range specified by reg property.
-	Offset takes values from 0-7.
-
-For example:
-
-	/* Provider */
-	qfprom: qfprom@700000 {
-		...
-
-		/* Data cells */
-		tsens_calibration: calib@404 {
-			reg = <0x404 0x10>;
-		};
-
-		tsens_calibration_bckp: calib_bckp@504 {
-			reg = <0x504 0x11>;
-			bits = <6 128>
-		};
-
-		pvs_version: pvs-version@6 {
-			reg = <0x6 0x2>
-			bits = <7 2>
-		};
-
-		speed_bin: speed-bin@c{
-			reg = <0xc 0x1>;
-			bits = <2 3>;
-
-		};
-		...
-	};
-
-= Data consumers =
-Are device nodes which consume nvmem data cells/providers.
-
-Required-properties:
-nvmem-cells: list of phandle to the nvmem data cells.
-nvmem-cell-names: names for the each nvmem-cells specified. Required if
-	nvmem-cells is used.
-
-Optional-properties:
-nvmem	: list of phandles to nvmem providers.
-nvmem-names: names for the each nvmem provider. required if nvmem is used.
-
-For example:
-
-	tsens {
-		...
-		nvmem-cells = <&tsens_calibration>;
-		nvmem-cell-names = "calibration";
-	};
+This file has been moved to nvmem.yaml and nvmem-consumer.yaml.
diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
new file mode 100644
index 000000000000..0b6ec69c9384
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
@@ -0,0 +1,93 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVMEM (Non Volatile Memory) Device Tree Bindings
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+description: |
+  This binding is intended to represent the location of hardware
+  configuration data stored in NVMEMs like eeprom, efuses and so on.
+
+  On a significant proportion of boards, the manufacturer has stored
+  some data on NVMEM, for the OS to be able to retrieve these
+  information and act upon it. Obviously, the OS has to know about
+  where to retrieve these data from, and where they are stored on the
+  storage device.
+
+properties:
+  $nodename:
+    pattern: "^(eeprom|efuse|nvram)(@.*|-[0-9a-f])*$"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  read-only:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Mark the provider as read only.
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        maxItems: 1
+        description:
+          Offset and size in bytes within the storage device.
+
+      bits:
+        maxItems: 1
+        items:
+          items:
+            - minimum: 0
+              maximum: 7
+              description:
+                Offset in bit within the address range specified by reg.
+            - minimum: 1
+              description:
+                Size in bit within the address range specified by reg.
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+examples:
+  - |
+      qfprom: eeprom@700000 {
+          #address-cells = <1>;
+          #size-cells = <1>;
+
+          /* ... */
+
+          /* Data cells */
+          tsens_calibration: calib@404 {
+              reg = <0x404 0x10>;
+          };
+
+          tsens_calibration_bckp: calib_bckp@504 {
+              reg = <0x504 0x11>;
+              bits = <6 128>;
+          };
+
+          pvs_version: pvs-version@6 {
+              reg = <0x6 0x2>;
+              bits = <7 2>;
+          };
+
+          speed_bin: speed-bin@c{
+              reg = <0xc 0x1>;
+              bits = <2 3>;
+          };
+      };
+
+...
-- 
2.21.0

