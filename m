Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCCE73D1080
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239021AbhGUNYG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:06 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:32869 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238996AbhGUNYF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:05 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id D7E115C0218;
        Wed, 21 Jul 2021 10:04:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 21 Jul 2021 10:04:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=SD2t6LE1UWA51
        HTh84mnr+OlZP4Et1WbDjuWgPjtlfY=; b=dU8arJA+x8is4/fHFR6WczDW1c2Ab
        jQee1jSUCMgrIvnsEZDIhvRA8pivW1/L61WUqdkVBc0noED/XPUIP73DmdgYk6DM
        +X1mhfgykfUsfIXZWUJlbS87Sv9+LKZNsZHmE8EQst/WXJVM+k252XzBKuSEV1z7
        LTpKzZ1SBwWIk28hlSLfwN24hgwLed8YtKWeilEE0vkRXdOn5VdVO/Db78fSvloX
        Pc/0NPMJMo8jv3blwDdg/dpucVizP18z1hCE+45F1Y8NBnY9rLXratQnH7KbxGiu
        t1T5bLDxhO1XgbpeQUni5knYprpHT70ekDbgqcYm5ZqHtz/Blf8UYMhJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=SD2t6LE1UWA51HTh84mnr+OlZP4Et1WbDjuWgPjtlfY=; b=sMZ/9PtR
        PIbZpN6LuaE2ALB9J7sNKM6Hf0n/ot1vzjxDkl9nWE/BVl4IlR8ct0Yb7uChsS+Y
        4gQfCtQBNuEwzh9+os31t27stF5amReGU8bwteYaXL9axhqA29lj54g9hrUM68qg
        nysAxPcbV8LtW9+x22rGTBETR3qZ3vcr1UIrItpmLOhE0f6RG9PB8EBNq5JrPVsh
        exyo/9ztSdiYsU6zSIx/EJOseGQY+jopJ6buH5eNA0ji+VpzYLXdmpsdZ75oEW6V
        AM4xtmcvCMf6jOsJ2v/B1uG6zrXmkiFAhZa4o4QnLISX7x56WEzpl0f4adNu4/NN
        kqD7t7j8oNh2Ww==
X-ME-Sender: <xms:eSn4YPehqpgZmjSTpUaztiMucisR-C7uqeIxTCkZgEGRPt2rdQ24FA>
    <xme:eSn4YFP81BcLE5nZAr46rAF_n2OxelVxSrQy4ZcpMKDDyCjOvq6oTNTWTNqmjeZDU
    RhTeO2kH0FFwwaHq6E>
X-ME-Received: <xmr:eSn4YIhZRg4wgrSt0dl0-3iRSUEFRa1Obe-4VOTXfMcqqosMqvoPuXhB8x6l92A9GtJPx6BA4UOGIGX6-0--5tMwHhOhESNCtnju>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:eSn4YA-7pwabpzPSUwpDLO_yRgeJhZBAmqK_TepNwRM1BQ56HcMIEg>
    <xmx:eSn4YLvjkTf0HhxTlj2VZ9O8u5nMqUDDS1kG3PP5_P_UmVAuM7jJ7g>
    <xmx:eSn4YPGUAlesO5nij11JXQSsGTh-ZkoJfi35IutU0ptC2pWBOdtl5Q>
    <xmx:eSn4YE9BEh8BgUzYm6kgOAxizIeFUnEtm8LeIi6iXrcbhKgsFeKxJw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:41 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 06/54] dt-bindings: arm: Convert ARM CCI-400 binding to a schema
Date:   Wed, 21 Jul 2021 16:03:36 +0200
Message-Id: <20210721140424.725744-7-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
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
 .../devicetree/bindings/arm/arm,cci-400.yaml  | 216 +++++++++++++++++
 .../bindings/arm/cci-control-port.yaml        |  38 +++
 Documentation/devicetree/bindings/arm/cci.txt | 224 ------------------
 3 files changed, 254 insertions(+), 224 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,cci-400.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/cci-control-port.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/cci.txt

diff --git a/Documentation/devicetree/bindings/arm/arm,cci-400.yaml b/Documentation/devicetree/bindings/arm/arm,cci-400.yaml
new file mode 100644
index 000000000000..b5c0fef9a0c2
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
+        maxItems: 255
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
+          * This CCI node corresponds to a CCI component whose control
+          * registers sits at address 0x000000002c090000.
+          *
+          * CCI slave interface @0x000000002c091000 is connected to dma
+          * controller dma0.
+          *
+          * CCI slave interface @0x000000002c094000 is connected to CPUs
+          * {CPU0, CPU1};
+          *
+          * CCI slave interface @0x000000002c095000 is connected to CPUs
+          * {CPU2, CPU3};
+          */
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
+              compatible = "arm,pl330", "arm,primecell";
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
-- 
2.31.1

