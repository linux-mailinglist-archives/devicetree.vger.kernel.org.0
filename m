Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1A5D3FD668
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243512AbhIAJUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:08 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:37391 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243522AbhIAJUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:04 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 8619B5C0174;
        Wed,  1 Sep 2021 05:19:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:19:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=zzKrSX1oObtmc
        ACJcfjvEDbQAU4hgrkKBpHNYwZtkEc=; b=bfegyhEmM8onY6+lUdFH9CSgXSuSC
        gm8+vYUix7zpKoAdd4+xRppNZWy4LkuXp17hS73Zx0XFEUWkcgyUkJyBWqjtDSn0
        5Ftf8Ez8exSGjAHBxnRvAXHxOsVbjNeU0ElCEBR1ySd1Mqpbdjt6nuWDw+C8dOWs
        udwJv/Fm7O9KDWA//wFLgwFQJaMI+Oxh6G3izWoX+6q16ZcoO5M9VDSiW6tloPfL
        r2QeZ50pLazpKK7/LhEgGZSYK9uCEy3RKDCBUD1OTH6xmwctirvGY99be7s7TjwE
        aqF8ImyKh0bqpnyGz1N/rqhCdz6u/eL3pIKWgA0yPsh1oEio+PDbLYYWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=zzKrSX1oObtmcACJcfjvEDbQAU4hgrkKBpHNYwZtkEc=; b=CwuQM1Ks
        VRIeLhI3et7HsuyZqZJDc1N9HGPWh0jF8fX05p3sqttpg0kfD+7Y8sAp+nj0ZRXU
        LJGn9xEtzvqkSTtoIeiFRmQoZotH76ezcb4J4G+7cihHmeCEX0e5iWtI3PewTd74
        RSIusPFfr+7AmfD048gbSuDURNiaB/DCRZgK4JprshuRlLc8iO1qfFDw2J7WeQrm
        9MkFjgyopmwfoDaW26wccq/C5V0wormyqinUVJjuZEx0LgvvrsZA4x3A9qmOfvCz
        yUNDjTXvbmEPkez8RabL/KnD8/foG7r8IVLxyT2tfLozv4fbG4cc7DuYa/Hj+QDw
        yucvS+BS/Vu79g==
X-ME-Sender: <xms:i0UvYWh7yo9VqpARU9g2lvgWt4g72wwN3VAEjrpWIV5xcYqhgrHcaA>
    <xme:i0UvYXAX7F_7MdKmjY2jt1Z-pdbkfoqaEQMcZ3cwqcBS5twwAul9pKGIb0qrkKWGP
    WNRB-FE3ygdEy0PnDY>
X-ME-Received: <xmr:i0UvYeHyNKfXbr-EetRn3aKX_S2iyQ1EF1sqj7yktr4FERvu2MVHlDiRu05PNRdIT1k0le_QRgK9a-_K9yhYWCgDjVroA-suORzp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:i0UvYfT7EA7JUATX1ss0j5wlBOdzpSgOZG1RtGphpq_fv87aMqU5rA>
    <xmx:i0UvYTxDzFhRpZ6wHkLwie21G8RjsECfkTzYmxPzRDxO0wZYRk4Rrw>
    <xmx:i0UvYd4kl9ch9UBIE9CDtmTuy-Qq8M6KaT_Yb2305LT2agmBEXfNUg>
    <xmx:i0UvYaxdSsTdTLvqTnbS1kGQgtE9rXzoEmctx7z-edXvEdomfh0wdg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:06 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 06/52] dt-bindings: arm: Convert ARM CCI-400 binding to a schema
Date:   Wed,  1 Sep 2021 11:18:06 +0200
Message-Id: <20210901091852.479202-7-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ARM CCI-400 Interconnect is supported by Linux thanks to its device
tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Reduced the max number of interrupts
  - Comented the pl330 compatible to avoid a warning
  - Added cci-control-port to the cpus schemas
---
 .../devicetree/bindings/arm/arm,cci-400.yaml  | 216 +++++++++++++++++
 .../bindings/arm/cci-control-port.yaml        |  38 +++
 Documentation/devicetree/bindings/arm/cci.txt | 224 ------------------
 .../devicetree/bindings/arm/cpus.yaml         |   2 +
 4 files changed, 256 insertions(+), 224 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,cci-400.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/cci-control-port.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/cci.txt

diff --git a/Documentation/devicetree/bindings/arm/arm,cci-400.yaml b/Documentation/devicetree/bindings/arm/arm,cci-400.yaml
new file mode 100644
index 000000000000..4682f991a5c8
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/arm,cci-400.yaml
@@ -0,0 +1,216 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/arm,cci-400.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM CCI Cache Coherent Interconnect Device Tree Binding
+
+maintainers:
+  - Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
+
+description: >
+  ARM multi-cluster systems maintain intra-cluster coherency through a cache
+  coherent interconnect (CCI) that is capable of monitoring bus transactions
+  and manage coherency, TLB invalidations and memory barriers.
+
+  It allows snooping and distributed virtual memory message broadcast across
+  clusters, through memory mapped interface, with a global control register
+  space and multiple sets of interface control registers, one per slave
+  interface.
+
+properties:
+  $nodename:
+    pattern: "^cci(@[0-9a-f]+)?$"
+
+  compatible:
+    enum:
+      - arm,cci-400
+      - arm,cci-500
+      - arm,cci-550
+
+  reg:
+    maxItems: 1
+    description: >
+      Specifies base physical address of CCI control registers common to all
+      interfaces.
+
+  "#address-cells": true
+  "#size-cells": true
+  ranges: true
+
+patternProperties:
+  "^slave-if@[0-9a-f]+$":
+    type: object
+
+    properties:
+      compatible:
+        const: arm,cci-400-ctrl-if
+
+      interface-type:
+        enum:
+          - ace
+          - ace-lite
+
+      reg:
+        maxItems: 1
+
+    required:
+      - compatible
+      - interface-type
+      - reg
+
+    additionalProperties: false
+
+  "^pmu@[0-9a-f]+$":
+    type: object
+
+    properties:
+      compatible:
+        oneOf:
+          - const: arm,cci-400-pmu,r0
+          - const: arm,cci-400-pmu,r1
+          - const: arm,cci-400-pmu
+            deprecated: true
+            description: >
+              Permitted only where OS has secure access to CCI registers
+          - const: arm,cci-500-pmu,r0
+          - const: arm,cci-550-pmu,r0
+
+      interrupts:
+        minItems: 1
+        maxItems: 8
+        description: >
+          List of counter overflow interrupts, one per counter. The interrupts
+          must be specified starting with the cycle counter overflow interrupt,
+          followed by counter0 overflow interrupt, counter1 overflow
+          interrupt,...  ,counterN overflow interrupt.
+
+          The CCI PMU has an interrupt signal for each counter. The number of
+          interrupts must be equal to the number of counters.
+
+      reg:
+        maxItems: 1
+
+    required:
+      - compatible
+      - interrupts
+      - reg
+
+    additionalProperties: false
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - ranges
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+      / {
+          #address-cells = <2>;
+          #size-cells = <2>;
+
+          compatible = "arm,vexpress,v2p-ca15_a7", "arm,vexpress";
+          model = "V2P-CA15_CA7";
+          arm,hbi = <0x249>;
+          interrupt-parent = <&gic>;
+
+          /*
+           * This CCI node corresponds to a CCI component whose control
+           * registers sits at address 0x000000002c090000.
+           *
+           * CCI slave interface @0x000000002c091000 is connected to dma
+           * controller dma0.
+           *
+           * CCI slave interface @0x000000002c094000 is connected to CPUs
+           * {CPU0, CPU1};
+           *
+           * CCI slave interface @0x000000002c095000 is connected to CPUs
+           * {CPU2, CPU3};
+           */
+
+          cpus {
+              #size-cells = <0>;
+              #address-cells = <1>;
+
+              CPU0: cpu@0 {
+                  device_type = "cpu";
+                  compatible = "arm,cortex-a15";
+                  cci-control-port = <&cci_control1>;
+                  reg = <0x0>;
+              };
+
+              CPU1: cpu@1 {
+                  device_type = "cpu";
+                  compatible = "arm,cortex-a15";
+                  cci-control-port = <&cci_control1>;
+                  reg = <0x1>;
+              };
+
+              CPU2: cpu@100 {
+                  device_type = "cpu";
+                  compatible = "arm,cortex-a7";
+                  cci-control-port = <&cci_control2>;
+                  reg = <0x100>;
+              };
+
+              CPU3: cpu@101 {
+                  device_type = "cpu";
+                  compatible = "arm,cortex-a7";
+                  cci-control-port = <&cci_control2>;
+                  reg = <0x101>;
+              };
+          };
+
+          dma0: dma@3000000 {
+              /* compatible = "arm,pl330", "arm,primecell"; */
+              cci-control-port = <&cci_control0>;
+              reg = <0x0 0x3000000 0x0 0x1000>;
+              interrupts = <10>;
+              #dma-cells = <1>;
+              #dma-channels = <8>;
+              #dma-requests = <32>;
+          };
+
+          cci@2c090000 {
+              compatible = "arm,cci-400";
+              #address-cells = <1>;
+              #size-cells = <1>;
+              reg = <0x0 0x2c090000 0 0x1000>;
+              ranges = <0x0 0x0 0x2c090000 0x10000>;
+
+              cci_control0: slave-if@1000 {
+                  compatible = "arm,cci-400-ctrl-if";
+                  interface-type = "ace-lite";
+                  reg = <0x1000 0x1000>;
+              };
+
+              cci_control1: slave-if@4000 {
+                  compatible = "arm,cci-400-ctrl-if";
+                  interface-type = "ace";
+                  reg = <0x4000 0x1000>;
+              };
+
+              cci_control2: slave-if@5000 {
+                  compatible = "arm,cci-400-ctrl-if";
+                  interface-type = "ace";
+                  reg = <0x5000 0x1000>;
+              };
+
+              pmu@9000 {
+                  compatible = "arm,cci-400-pmu";
+                  reg = <0x9000 0x5000>;
+                  interrupts = <0 101 4>,
+                    <0 102 4>,
+                    <0 103 4>,
+                    <0 104 4>,
+                    <0 105 4>;
+              };
+          };
+      };
+
+...
diff --git a/Documentation/devicetree/bindings/arm/cci-control-port.yaml b/Documentation/devicetree/bindings/arm/cci-control-port.yaml
new file mode 100644
index 000000000000..c9114866213f
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/cci-control-port.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/cci-control-port.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: CCI Interconnect Bus Masters binding
+
+maintainers:
+  - Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
+
+description: |
+  Masters in the device tree connected to a CCI port (inclusive of CPUs
+  and their cpu nodes).
+
+select: true
+
+properties:
+  cci-control-port:
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+additionalProperties: true
+
+examples:
+  - |
+    cpus {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        cpu@0 {
+            compatible = "arm,cortex-a15";
+            device_type = "cpu";
+            cci-control-port = <&cci_control1>;
+            reg = <0>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/arm/cci.txt b/Documentation/devicetree/bindings/arm/cci.txt
deleted file mode 100644
index 9600761f2d5b..000000000000
--- a/Documentation/devicetree/bindings/arm/cci.txt
+++ /dev/null
@@ -1,224 +0,0 @@
-=======================================================
-ARM CCI cache coherent interconnect binding description
-=======================================================
-
-ARM multi-cluster systems maintain intra-cluster coherency through a
-cache coherent interconnect (CCI) that is capable of monitoring bus
-transactions and manage coherency, TLB invalidations and memory barriers.
-
-It allows snooping and distributed virtual memory message broadcast across
-clusters, through memory mapped interface, with a global control register
-space and multiple sets of interface control registers, one per slave
-interface.
-
-* CCI interconnect node
-
-	Description: Describes a CCI cache coherent Interconnect component
-
-	Node name must be "cci".
-	Node's parent must be the root node /, and the address space visible
-	through the CCI interconnect is the same as the one seen from the
-	root node (ie from CPUs perspective as per DT standard).
-	Every CCI node has to define the following properties:
-
-	- compatible
-		Usage: required
-		Value type: <string>
-		Definition: must contain one of the following:
-			    "arm,cci-400"
-			    "arm,cci-500"
-			    "arm,cci-550"
-
-	- reg
-		Usage: required
-		Value type: Integer cells. A register entry, expressed as a pair
-			    of cells, containing base and size.
-		Definition: A standard property. Specifies base physical
-			    address of CCI control registers common to all
-			    interfaces.
-
-	- ranges:
-		Usage: required
-		Value type: Integer cells. An array of range entries, expressed
-			    as a tuple of cells, containing child address,
-			    parent address and the size of the region in the
-			    child address space.
-		Definition: A standard property. Follow rules in the Devicetree
-			    Specification for hierarchical bus addressing. CCI
-			    interfaces addresses refer to the parent node
-			    addressing scheme to declare their register bases.
-
-	CCI interconnect node can define the following child nodes:
-
-	- CCI control interface nodes
-
-		Node name must be "slave-if".
-		Parent node must be CCI interconnect node.
-
-		A CCI control interface node must contain the following
-		properties:
-
-		- compatible
-			Usage: required
-			Value type: <string>
-			Definition: must be set to
-				    "arm,cci-400-ctrl-if"
-
-		- interface-type:
-			Usage: required
-			Value type: <string>
-			Definition: must be set to one of {"ace", "ace-lite"}
-				    depending on the interface type the node
-				    represents.
-
-		- reg:
-			Usage: required
-			Value type: Integer cells. A register entry, expressed
-				    as a pair of cells, containing base and
-				    size.
-			Definition: the base address and size of the
-				    corresponding interface programming
-				    registers.
-
-	- CCI PMU node
-
-		Parent node must be CCI interconnect node.
-
-		A CCI pmu node must contain the following properties:
-
-		- compatible
-			Usage: required
-			Value type: <string>
-			Definition: Must contain one of:
-				 "arm,cci-400-pmu,r0"
-				 "arm,cci-400-pmu,r1"
-				 "arm,cci-400-pmu"  - DEPRECATED, permitted only where OS has
-						      secure access to CCI registers
-				 "arm,cci-500-pmu,r0"
-				 "arm,cci-550-pmu,r0"
-		- reg:
-			Usage: required
-			Value type: Integer cells. A register entry, expressed
-				    as a pair of cells, containing base and
-				    size.
-			Definition: the base address and size of the
-				    corresponding interface programming
-				    registers.
-
-		- interrupts:
-			Usage: required
-			Value type: Integer cells. Array of interrupt specifier
-				    entries, as defined in
-				    ../interrupt-controller/interrupts.txt.
-			Definition: list of counter overflow interrupts, one per
-				    counter. The interrupts must be specified
-				    starting with the cycle counter overflow
-				    interrupt, followed by counter0 overflow
-				    interrupt, counter1 overflow interrupt,...
-				    ,counterN overflow interrupt.
-
-				    The CCI PMU has an interrupt signal for each
-				    counter. The number of interrupts must be
-				    equal to the number of counters.
-
-* CCI interconnect bus masters
-
-	Description: masters in the device tree connected to a CCI port
-		     (inclusive of CPUs and their cpu nodes).
-
-	A CCI interconnect bus master node must contain the following
-	properties:
-
-	- cci-control-port:
-		Usage: required
-		Value type: <phandle>
-		Definition: a phandle containing the CCI control interface node
-			    the master is connected to.
-
-Example:
-
-	cpus {
-		#size-cells = <0>;
-		#address-cells = <1>;
-
-		CPU0: cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a15";
-			cci-control-port = <&cci_control1>;
-			reg = <0x0>;
-		};
-
-		CPU1: cpu@1 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a15";
-			cci-control-port = <&cci_control1>;
-			reg = <0x1>;
-		};
-
-		CPU2: cpu@100 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a7";
-			cci-control-port = <&cci_control2>;
-			reg = <0x100>;
-		};
-
-		CPU3: cpu@101 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a7";
-			cci-control-port = <&cci_control2>;
-			reg = <0x101>;
-		};
-
-	};
-
-	dma0: dma@3000000 {
-		compatible = "arm,pl330", "arm,primecell";
-		cci-control-port = <&cci_control0>;
-		reg = <0x0 0x3000000 0x0 0x1000>;
-		interrupts = <10>;
-		#dma-cells = <1>;
-		#dma-channels = <8>;
-		#dma-requests = <32>;
-	};
-
-	cci@2c090000 {
-		compatible = "arm,cci-400";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		reg = <0x0 0x2c090000 0 0x1000>;
-		ranges = <0x0 0x0 0x2c090000 0x10000>;
-
-		cci_control0: slave-if@1000 {
-			compatible = "arm,cci-400-ctrl-if";
-			interface-type = "ace-lite";
-			reg = <0x1000 0x1000>;
-		};
-
-		cci_control1: slave-if@4000 {
-			compatible = "arm,cci-400-ctrl-if";
-			interface-type = "ace";
-			reg = <0x4000 0x1000>;
-		};
-
-		cci_control2: slave-if@5000 {
-			compatible = "arm,cci-400-ctrl-if";
-			interface-type = "ace";
-			reg = <0x5000 0x1000>;
-		};
-
-		pmu@9000 {
-			 compatible = "arm,cci-400-pmu";
-			 reg = <0x9000 0x5000>;
-			 interrupts = <0 101 4>,
-				      <0 102 4>,
-				      <0 103 4>,
-				      <0 104 4>,
-				      <0 105 4>;
-		};
-	};
-
-This CCI node corresponds to a CCI component whose control registers sits
-at address 0x000000002c090000.
-CCI slave interface @0x000000002c091000 is connected to dma controller dma0.
-CCI slave interface @0x000000002c094000 is connected to CPUs {CPU0, CPU1};
-CCI slave interface @0x000000002c095000 is connected to CPUs {CPU2, CPU3};
diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 9a2432a88074..35b552ce8803 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -240,6 +240,8 @@ properties:
       DMIPS/MHz, relative to highest capacity-dmips-mhz
       in the system.
 
+  cci-control-port: true
+
   dynamic-power-coefficient:
     $ref: '/schemas/types.yaml#/definitions/uint32'
     description:
-- 
2.31.1

