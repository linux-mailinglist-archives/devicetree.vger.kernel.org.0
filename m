Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D3F4E10E218
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2019 14:49:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726498AbfLANts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Dec 2019 08:49:48 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55896 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726340AbfLANtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Dec 2019 08:49:47 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB1DnfZq039069;
        Sun, 1 Dec 2019 07:49:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1575208181;
        bh=5RBGECcmKPncccFfiIRF4TBY+FWf3jzoZEb/JQ/RvW0=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=lm2+xXNYPMejsRXJgieVH2ddtoNoX78/1OFYD4pU5RHho3TnLUbUiAqUQKkw0I2X2
         gx46P9l2y8qbG/xcvXF0bLmOqabGR5VZ1pvyYFSWm8Clfd249bJrGuQj3BMeNV34MG
         wQ1Z/WMbsJtXYTezaOn3Ho9aTfNPg4yauvxsrsSs=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB1Dnf00068146
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sun, 1 Dec 2019 07:49:41 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 1 Dec
 2019 07:49:40 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 1 Dec 2019 07:49:40 -0600
Received: from jadmar.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB1DnW5b111790;
        Sun, 1 Dec 2019 07:49:38 -0600
From:   Jyri Sarha <jsarha@ti.com>
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>
CC:     <tomi.valkeinen@ti.com>, <laurent.pinchart@ideasonboard.com>,
        <peter.ujfalusi@ti.com>, <bparrot@ti.com>, <subhajit_paul@ti.com>,
        <praneeth@ti.com>, <yamonkar@cadence.com>, <sjakhade@cadence.com>,
        <robh+dt@kernel.org>
Subject: [PATCH v2 3/5] dt-bindings: display: ti,j721e-dss: Add dt-schema yaml binding
Date:   Sun, 1 Dec 2019 15:49:31 +0200
Message-ID: <7ae2b1c1d1400f201a61b8be910fe746e0d4216b.1575203210.git.jsarha@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1575203210.git.jsarha@ti.com>
References: <cover.1575203210.git.jsarha@ti.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dt-schema yaml bindig for J721E DSS, J721E version TI Keystone
Display SubSystem.

Signed-off-by: Jyri Sarha <jsarha@ti.com>
---
 .../bindings/display/ti/ti,j721e-dss.yaml     | 177 ++++++++++++++++++
 1 file changed, 177 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml

diff --git a/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
new file mode 100644
index 000000000000..cb3b64b9f04e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
@@ -0,0 +1,177 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 Texas Instruments Incorporated
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/display/ti/ti,j721e-dss.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Texas Instruments J721E Display Subsystem
+
+maintainers:
+  - Jyri Sarha <jsarha@ti.com>
+  - Tomi Valkeinen <tomi.valkeinen@ti.com>
+
+description: |
+  The J721E TI Keystone Display SubSystem with four output ports and
+  four video planes. There is two full video planes and two "lite
+  planes" without scaling support. The video ports can be connected to
+  the SoC's DPI pins or to integrated display bridges on the SoC.
+
+properties:
+  compatible:
+    const: ti,j721e-dss
+
+  reg:
+    maxItems: 17
+    minItems: 17
+
+  reg-names:
+    items:
+      - const: common_m
+      - const: common_s0
+      - const: common_s1
+      - const: common_s2
+      - const: vidl1
+      - const: vidl2
+      - const: vid1
+      - const: vid2
+      - const: ovr1
+      - const: ovr2
+      - const: ovr3
+      - const: ovr4
+      - const: vp1
+      - const: vp2
+      - const: vp3
+      - const: vp4
+      - const: wp
+
+  clocks:
+    maxItems: 5
+    minItems: 5
+
+  clock-names:
+    items:
+      - const: fck
+      - const: vp1
+      - const: vp2
+      - const: vp3
+      - const: vp4
+
+  interrupts:
+    maxItems: 4
+
+  interrupt-names:
+    items:
+      - const: common_m
+      - const: common_s0
+      - const: common_s1
+      - const: common_s2
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+  port@0:
+    type: object
+    description:
+      The output port node form video port 1
+
+  port@1:
+    type: object
+    description:
+      The output port node from video port 2
+
+  port@2:
+    type: object
+    description:
+      The output port node from video port 3
+
+  port@3:
+    type: object
+    description:
+      The output port node from video port 4
+
+  max-memory-bandwidth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Input memory (from main memory to dispc) bandwidth limit in
+      bytes per second
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+        dss: dss@04a00000 {
+                compatible = "ti,j721e-dss";
+                reg =
+                        <0x00 0x04a00000 0x00 0x10000>, /* common_m */
+                        <0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
+                        <0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
+                        <0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
+
+                        <0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
+                        <0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
+                        <0x00 0x04a50000 0x00 0x10000>, /* vid1 */
+                        <0x00 0x04a60000 0x00 0x10000>, /* vid2 */
+
+                        <0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
+                        <0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
+                        <0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
+                        <0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
+
+                        <0x00 0x04a80000 0x00 0x10000>, /* vp1 */
+                        <0x00 0x04aa0000 0x00 0x10000>, /* vp2 */
+                        <0x00 0x04ac0000 0x00 0x10000>, /* vp3 */
+                        <0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
+
+                        <0x00 0x04af0000 0x00 0x10000>; /* wb */
+              reg-names = "common_m", "common_s0",
+                        "common_s1", "common_s2",
+                        "vidl1", "vidl2","vid1","vid2",
+                        "ovr1", "ovr2", "ovr3", "ovr4",
+                        "vp1", "vp2", "vp3", "vp4",
+                        "wb";
+
+                clocks =        <&k3_clks 152 0>,
+                                <&k3_clks 152 1>,
+                                <&k3_clks 152 4>,
+                                <&k3_clks 152 9>,
+                                <&k3_clks 152 13>;
+                clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
+
+                interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
+                             <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
+                             <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
+                             <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
+                interrupt-names = "common_m",
+                                  "common_s0",
+                                  "common_s1",
+                                  "common_s2";
+
+                #address-cells = <1>;
+                #size-cells = <0>;
+                port@0 {
+                        reg = <0>;
+
+                        dpi_out_real0: endpoint {
+                                remote-endpoint = <&dp_bridge_input>;
+                        };
+                };
+        };
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

