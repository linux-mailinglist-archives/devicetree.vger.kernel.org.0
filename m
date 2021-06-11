Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA1113A3B6A
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 07:35:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbhFKFhw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 01:37:52 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56444 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbhFKFhw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 01:37:52 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15B5ZlUY016598;
        Fri, 11 Jun 2021 00:35:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623389747;
        bh=NXuVIY1Kl8L78ZqAhGsA8T32PIX084zq9t7ePZhWDtM=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=cWZ3I4IGE4aTBbwQMZ+9deFYbIE0SK6+8WRMwAAwDKcGL3O6TwyC3rFWAEorhEzZM
         DAHyP5PWoWzmGhz1aB0tNioTQ98F/QX6RR8BNnkYe++pg9raNxCaNywdgx2gNFBo1X
         EGeCXKyBEmysAD7T7waFGKLQauSxwXoukPDnzMeU=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15B5ZlmV033116
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 11 Jun 2021 00:35:47 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 11
 Jun 2021 00:35:46 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 11 Jun 2021 00:35:46 -0500
Received: from ula0132425.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15B5ZbTM088083;
        Fri, 11 Jun 2021 00:35:44 -0500
From:   Vignesh Raghavendra <vigneshr@ti.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>
CC:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>,
        <linux-mtd@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 2/2] dt-bindings: mtd: Convert ti,am654-hbmc.txt to YAML schema
Date:   Fri, 11 Jun 2021 11:05:33 +0530
Message-ID: <20210611053533.16701-3-vigneshr@ti.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210611053533.16701-1-vigneshr@ti.com>
References: <20210611053533.16701-1-vigneshr@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert ti,am654-hbmc.txt to YAML schema for better checks and
validations of DT.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 .../devicetree/bindings/mtd/ti,am654-hbmc.txt | 51 --------------
 .../bindings/mtd/ti,am654-hbmc.yaml           | 69 +++++++++++++++++++
 2 files changed, 69 insertions(+), 51 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml

diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
deleted file mode 100644
index ccfd37b8a0ad..000000000000
--- a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-Bindings for HyperBus Memory Controller (HBMC) on TI's K3 family of SoCs
-
-Required properties:
-- compatible : "ti,am654-hbmc" for AM654 SoC
-- reg : Two entries:
-	First entry pointed to the register space of HBMC controller
-	Second entry pointing to the memory map region dedicated for
-	MMIO access to attached flash devices
-- ranges : Address translation from offset within CS to allocated MMIO
-	   space in SoC
-
-Optional properties:
-- mux-controls : phandle to the multiplexer that controls selection of
-		 HBMC vs OSPI inside Flash SubSystem (FSS). Default is OSPI,
-		 if property is absent.
-		 See Documentation/devicetree/bindings/mux/reg-mux.yaml
-		 for mmio-mux binding details
-
-Example:
-
-	system-controller@47000000 {
-		compatible = "syscon", "simple-mfd";
-		reg = <0x0 0x47000000 0x0 0x100>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
-
-		hbmc_mux: multiplexer {
-			compatible = "mmio-mux";
-			#mux-control-cells = <1>;
-			mux-reg-masks = <0x4 0x2>; /* 0: reg 0x4, bit 1 */
-		};
-	};
-
-	hbmc: hyperbus@47034000 {
-		compatible = "ti,am654-hbmc";
-		reg = <0x0 0x47034000 0x0 0x100>,
-			<0x5 0x00000000 0x1 0x0000000>;
-		power-domains = <&k3_pds 55>;
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
-			 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
-		mux-controls = <&hbmc_mux 0>;
-
-		/* Slave flash node */
-		flash@0,0 {
-			compatible = "cypress,hyperflash", "cfi-flash";
-			reg = <0x0 0x0 0x4000000>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml
new file mode 100644
index 000000000000..30b458c41cac
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/ti,am654-hbmc.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/ti,am654-hbmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HyperBus Memory Controller (HBMC) on TI's K3 family of SoCs
+
+maintainers:
+  - Vignesh Raghavendra <vigneshr@ti.com>
+
+properties:
+  compatible:
+    const: ti,am654-hbmc
+
+  reg:
+    maxItems: 2
+
+  power-domains: true
+  '#address-cells': true
+  '#size-cells': true
+  ranges: true
+
+  mux-controls:
+    description: MMIO mux controller node to select b/w OSPI and HBMC.
+
+  clocks:
+    maxItems: 1
+
+patternProperties:
+  "^flash@[0-1],[0-9a-f]+$":
+    type: object
+
+required:
+  - compatible
+  - reg
+  - ranges
+  - clocks
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      hbmc: memory-controller@47034000 {
+        compatible = "ti,am654-hbmc";
+        reg = <0x0 0x47034000 0x0 0x100>,
+              <0x5 0x00000000 0x1 0x0000000>;
+        ranges = <0x0 0x0 0x5 0x00000000 0x4000000>, /* CS0 - 64MB */
+                 <0x1 0x0 0x5 0x04000000 0x4000000>; /* CS1 - 64MB */
+        clocks = <&k3_clks 102 0>;
+        #address-cells = <2>;
+        #size-cells = <1>;
+        power-domains = <&k3_pds 55>;
+        mux-controls = <&hbmc_mux 0>;
+
+        flash@0,0 {
+            compatible = "cypress,hyperflash", "cfi-flash";
+            reg = <0x0 0x0 0x4000000>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+        };
+      };
+    };
-- 
2.32.0

