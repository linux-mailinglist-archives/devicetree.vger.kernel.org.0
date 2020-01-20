Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0BFF8143335
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2020 22:02:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727011AbgATVCo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jan 2020 16:02:44 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:60810 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726586AbgATVCo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jan 2020 16:02:44 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00KL2ZFB098621;
        Mon, 20 Jan 2020 15:02:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1579554155;
        bh=91B4o/mN6pjqjkIh9PLWUDgGygICrgA+57FkJnyfyEQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=y5GMMWU0G9PZrUWTZ6urvEzcvbJ6cngqOHvP7D67+PASld5L2JmmFm6C0VSFo0pF0
         4e4cFTgYjsEIo0oThdyy+JNUWoZbP3ptBrOlChr8G8RHd1D2dl7LcKQz2c3+kTtEJY
         EbjldO88ZGzJqxfGtvdIFC3JhMOLkmcuQUZXHqVY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00KL2Z76073830
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 20 Jan 2020 15:02:35 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 20
 Jan 2020 15:02:33 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 20 Jan 2020 15:02:32 -0600
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00KL2PYZ079658;
        Mon, 20 Jan 2020 15:02:30 -0600
From:   Jyri Sarha <jsarha@ti.com>
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>
CC:     <tomi.valkeinen@ti.com>, <laurent.pinchart@ideasonboard.com>,
        <peter.ujfalusi@ti.com>, <bparrot@ti.com>, <subhajit_paul@ti.com>,
        <praneeth@ti.com>, <yamonkar@cadence.com>, <sjakhade@cadence.com>,
        <sam@ravnborg.org>, <jsarha@ti.com>
Subject: [PATCH v8 2/5] dt-bindings: display: ti,am65x-dss: Add dt-schema yaml binding
Date:   Mon, 20 Jan 2020 23:02:21 +0200
Message-ID: <06a3cb169ec6f1146476a5eee3ab66711c8934c2.1579553817.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1579553817.git.jsarha@ti.com>
References: <cover.1579553817.git.jsarha@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dt-schema yaml bindig for AM65x DSS, AM65x version TI Keystone
Display SubSystem.

Version history:

v2: no change

v3: - Add ports node
    - use allOf in ti,am65x-oldi-io-ctrl to add both $ref and maxItems
    - Add includes to dts example
    - reindent dts example

v4: - Add descriptions to reg and clocks properties
    - Remove minItems when its value is the same as maxItems value

v5: - itemize reg and clocks properties' descriptions

v6: - Add Reviewed-by: from Rob Herring <robh@kernel.org> and
      Benoit Parrot <bparrot@ti.com>

v7: no change

v8: no change

Signed-off-by: Jyri Sarha <jsarha@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Benoit Parrot <bparrot@ti.com>
---
 .../bindings/display/ti/ti,am65x-dss.yaml     | 152 ++++++++++++++++++
 1 file changed, 152 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
new file mode 100644
index 000000000000..cac61a998203
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -0,0 +1,152 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 Texas Instruments Incorporated
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/display/ti/ti,am65x-dss.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Texas Instruments AM65x Display Subsystem
+
+maintainers:
+  - Jyri Sarha <jsarha@ti.com>
+  - Tomi Valkeinen <tomi.valkeinen@ti.com>
+
+description: |
+  The AM65x TI Keystone Display SubSystem with two output ports and
+  two video planes. The first video port supports OLDI and the second
+  supports DPI format. The fist plane is full video plane with all
+  features and the second is a "lite plane" without scaling support.
+
+properties:
+  compatible:
+    const: ti,am65x-dss
+
+  reg:
+    description:
+      Addresses to each DSS memory region described in the SoC's TRM.
+    items:
+      - description: common DSS register area
+      - description: VIDL1 light video plane
+      - description: VID video plane
+      - description: OVR1 overlay manager for vp1
+      - description: OVR2 overlay manager for vp2
+      - description: VP1 video port 1
+      - description: VP2 video port 2
+
+  reg-names:
+    items:
+      - const: common
+      - const: vidl1
+      - const: vid
+      - const: ovr1
+      - const: ovr2
+      - const: vp1
+      - const: vp2
+
+  clocks:
+    items:
+      - description: fck DSS functional clock
+      - description: vp1 Video Port 1 pixel clock
+      - description: vp2 Video Port 2 pixel clock
+
+  clock-names:
+    items:
+      - const: fck
+      - const: vp1
+      - const: vp2
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+  ports:
+    type: object
+    description:
+      Ports as described in Documentation/devictree/bindings/graph.txt
+    properties:
+      "#address-cells":
+        const: 1
+
+      "#size-cells":
+        const: 0
+
+      port@0:
+        type: object
+        description:
+          The DSS OLDI output port node form video port 1
+
+      port@1:
+        type: object
+        description:
+          The DSS DPI output port node from video port 2
+
+    required:
+      - "#address-cells"
+      - "#size-cells"
+
+  ti,am65x-oldi-io-ctrl:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
+      - maxItems: 1
+    description:
+      phandle to syscon device node mapping OLDI IO_CTRL registers.
+      The mapped range should point to OLDI_DAT0_IO_CTRL, map it and
+      following OLDI_DAT1_IO_CTRL, OLDI_DAT2_IO_CTRL, OLDI_DAT3_IO_CTRL,
+      and OLDI_CLK_IO_CTRL registers. This property is needed for OLDI
+      interface to work.
+
+  max-memory-bandwidth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Input memory (from main memory to dispc) bandwidth limit in
+      bytes per second
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    dss: dss@04a00000 {
+            compatible = "ti,am65x-dss";
+            reg =   <0x0 0x04a00000 0x0 0x1000>, /* common */
+                    <0x0 0x04a02000 0x0 0x1000>, /* vidl1 */
+                    <0x0 0x04a06000 0x0 0x1000>, /* vid */
+                    <0x0 0x04a07000 0x0 0x1000>, /* ovr1 */
+                    <0x0 0x04a08000 0x0 0x1000>, /* ovr2 */
+                    <0x0 0x04a0a000 0x0 0x1000>, /* vp1 */
+                    <0x0 0x04a0b000 0x0 0x1000>; /* vp2 */
+            reg-names = "common", "vidl1", "vid",
+                    "ovr1", "ovr2", "vp1", "vp2";
+            ti,am65x-oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+            power-domains = <&k3_pds 67 TI_SCI_PD_EXCLUSIVE>;
+            clocks =        <&k3_clks 67 1>,
+                            <&k3_clks 216 1>,
+                            <&k3_clks 67 2>;
+            clock-names = "fck", "vp1", "vp2";
+            interrupts = <GIC_SPI 166 IRQ_TYPE_EDGE_RISING>;
+            ports {
+                    #address-cells = <1>;
+                    #size-cells = <0>;
+                    port@0 {
+                            reg = <0>;
+                            oldi_out0: endpoint {
+                                    remote-endpoint = <&lcd_in0>;
+                            };
+                    };
+            };
+    };
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

