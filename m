Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8B2B28693C
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 22:39:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727705AbgJGUjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 16:39:52 -0400
Received: from inva020.nxp.com ([92.121.34.13]:54142 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726041AbgJGUjw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 7 Oct 2020 16:39:52 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2F1311A01D8;
        Wed,  7 Oct 2020 22:39:50 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 21CD21A01C2;
        Wed,  7 Oct 2020 22:39:50 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DA0672030C;
        Wed,  7 Oct 2020 22:39:49 +0200 (CEST)
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org
Cc:     leoyang.li@nxp.com, devicetree@vger.kernel.org,
        Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v3 01/11] dt-bindings: net: add the DPAA2 MAC DTS definition
Date:   Wed,  7 Oct 2020 23:39:26 +0300
Message-Id: <20201007203936.23953-2-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201007203936.23953-1-ioana.ciornei@nxp.com>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a documentation entry for the DTS bindings needed and supported by
the dpaa2-mac driver.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
 - new patch
Changes in v3:
 - renamed dpmac@x into ethernet@x
 - renamed the new documentation file to use the same name as the
   compatible
 - marked additionalProperties as false
 - added a reference to ethernet-controller.yaml

 .../bindings/net/fsl,qoriq-mc-dpmac.yaml      | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml

diff --git a/Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml b/Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
new file mode 100644
index 000000000000..2159b7d1f537
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/fsl,qoriq-mc-dpmac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DPAA2 MAC bindings
+
+maintainers:
+  - Ioana Ciornei <ioana.ciornei@nxp.com>
+
+description:
+  This binding represents the DPAA2 MAC objects found on the fsl-mc bus and
+  located under the 'dpmacs' node for the fsl-mc bus DTS node.
+
+allOf:
+  - $ref: "ethernet-controller.yaml#"
+
+properties:
+  compatible:
+    const: fsl,qoriq-mc-dpmac
+
+  reg:
+    maxItems: 1
+    description: The DPMAC number
+
+  phy-handle: true
+
+  phy-connection-type: true
+
+  phy-mode: true
+
+  pcs-handle:
+    $ref: /schemas/types.yaml#definitions/phandle
+    description:
+      A reference to a node representing a PCS PHY device found on
+      the internal MDIO bus.
+
+  managed: true
+
+required:
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    dpmacs {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      ethernet@4 {
+        compatible = "fsl,qoriq-mc-dpmac";
+        reg = <0x4>;
+        phy-handle = <&mdio1_phy6>;
+        phy-connection-type = "qsgmii";
+        managed = "in-band-status";
+        pcs-handle = <&pcs3_1>;
+      };
+    };
-- 
2.28.0

