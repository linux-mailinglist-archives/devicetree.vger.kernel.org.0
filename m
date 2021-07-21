Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDE8D3D107F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238937AbhGUNYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:04 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:43397 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238996AbhGUNYD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:03 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id F268B5C0161;
        Wed, 21 Jul 2021 10:04:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 21 Jul 2021 10:04:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=XFkN+/JmCK6+N
        Dkay9r3w197zJLQGybcXcZKRYppA78=; b=qPWV7As+P0wI6oSwaLTwD/jslcaOn
        A7uYvWHvC00NFLNUqk7zqhhReTK7RecSbfoTwJazB0igc20jLfQ0j/FLiNWFCk9V
        GogIQTKRsIhJU16dWLbH81wgqtcrptK9XwHuzuDDYF13f2/m1yV2Ql16I3eYKMjS
        t0DYt15u3bAfxDAtxmR+NVfj9VcSmPjAEe0wIR99MuGhNp712IaDVN6yKuEwWc4Z
        dZqyJYVbHARMSjk264WZCeiBscNPMTuZ2K74TDqWpBo1pr7AV+Tkkgz4zHtfIHID
        Yo/r1V2Ohk9JW+4ymLa7Gl4FtQU/lDXQBGJIbUSPK8WDb1d32WAEIvyRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=XFkN+/JmCK6+NDkay9r3w197zJLQGybcXcZKRYppA78=; b=lBdPa4zQ
        eYLPJOwskWaFb0MXEYaqAFmcqhJ9Vin9rv5VuDTjeBQW9doqb0SLf+oXskLQ3P45
        n4xkSmwmmf45ZzWumivnFMPe+Y9f/uONlodc4/HqGIQxrn+2jk6PW93xoHmO6Ib/
        tx9NcjBftfWvsX8mDqi/ZVd5B+3dMY+lKtOSeW9Toe71wNtLamCX+3Fv3e2dS67z
        TWOORr5TcO8xWPovN3mwE7/pG0mSrOm8IoxmdzQMD0iq5M341Sc/sqj6Xgncj5Hs
        3fwCfD0UZOHiP6jbqzVh8J+Le2OY9XasYekCxoWxnwKjg7Gv2QtBCkxkhBYg8Yff
        j+wous7SQhcUyA==
X-ME-Sender: <xms:dyn4YPlLGsfLBUC0jpk_XkDcQ-pDwjaEWOY5d38cbyvyTFa6MMWEdw>
    <xme:dyn4YC0r9qU983qwso2GD2kTTRwodM0qMAAo1wM915y6oFMgunKYpj7JDyZHBqjh9
    HGAnLP6jiGEOV7kZzU>
X-ME-Received: <xmr:dyn4YFood5-Mcx6E1qpIGi1kvv02sO5-pDsv9Neq5nFnHrOQYJArP3q5260Chg0uXoTOdMMe0vLgjfM1nOyL-86Yfxl1UVdo-GdD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:dyn4YHl22Hc3wteCuT4kiqx1l2C8Cn6KD-E5JG6maXuYBW2UhkBZqA>
    <xmx:dyn4YN3rauNtUvWmvhG_O52d5p0iQ4ztHYs6aKHi5YB4OFu3SH_UHQ>
    <xmx:dyn4YGuXEXvDWnM1F8wunDeAywVEOqKZzdGQD51vyZi6k6pOLC-D-w>
    <xmx:dyn4YKnapHL8VmTWPWlnfN6BVg-_81UQOW9zCNSXu9WUVebs9xfIsw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:04:39 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Mailing List <devicetree-spec@vger.kernel.org>
Subject: [PATCH 05/54] dt-bindings: Convert Reserved Memory binding to a schema
Date:   Wed, 21 Jul 2021 16:03:35 +0200
Message-Id: <20210721140424.725744-6-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Reserved Memory mechanism is supported by Linux thanks to its device
tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Mailing List <devicetree-spec@vger.kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../reserved-memory/reserved-memory.txt       | 141 ---------------
 .../reserved-memory/reserved-memory.yaml      | 167 ++++++++++++++++++
 2 files changed, 167 insertions(+), 141 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml

diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
deleted file mode 100644
index e8d3096d922c..000000000000
--- a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+++ /dev/null
@@ -1,141 +0,0 @@
-*** Reserved memory regions ***
-
-Reserved memory is specified as a node under the /reserved-memory node.
-The operating system shall exclude reserved memory from normal usage
-one can create child nodes describing particular reserved (excluded from
-normal use) memory regions. Such memory regions are usually designed for
-the special usage by various device drivers.
-
-Parameters for each memory region can be encoded into the device tree
-with the following nodes:
-
-/reserved-memory node
----------------------
-#address-cells, #size-cells (required) - standard definition
-    - Should use the same values as the root node
-ranges (required) - standard definition
-    - Should be empty
-
-/reserved-memory/ child nodes
------------------------------
-Each child of the reserved-memory node specifies one or more regions of
-reserved memory. Each child node may either use a 'reg' property to
-specify a specific range of reserved memory, or a 'size' property with
-optional constraints to request a dynamically allocated block of memory.
-
-Following the generic-names recommended practice, node names should
-reflect the purpose of the node (ie. "framebuffer" or "dma-pool"). Unit
-address (@<address>) should be appended to the name if the node is a
-static allocation.
-
-Properties:
-Requires either a) or b) below.
-a) static allocation
-   reg (required) - standard definition
-b) dynamic allocation
-   size (required) - length based on parent's #size-cells
-                   - Size in bytes of memory to reserve.
-   alignment (optional) - length based on parent's #size-cells
-                        - Address boundary for alignment of allocation.
-   alloc-ranges (optional) - prop-encoded-array (address, length pairs).
-                           - Specifies regions of memory that are
-                             acceptable to allocate from.
-
-If both reg and size are present, then the reg property takes precedence
-and size is ignored.
-
-Additional properties:
-compatible (optional) - standard definition
-    - may contain the following strings:
-        - shared-dma-pool: This indicates a region of memory meant to be
-          used as a shared pool of DMA buffers for a set of devices. It can
-          be used by an operating system to instantiate the necessary pool
-          management subsystem if necessary.
-        - vendor specific string in the form <vendor>,[<device>-]<usage>
-no-map (optional) - empty property
-    - Indicates the operating system must not create a virtual mapping
-      of the region as part of its standard mapping of system memory,
-      nor permit speculative access to it under any circumstances other
-      than under the control of the device driver using the region.
-reusable (optional) - empty property
-    - The operating system can use the memory in this region with the
-      limitation that the device driver(s) owning the region need to be
-      able to reclaim it back. Typically that means that the operating
-      system can use that region to store volatile or cached data that
-      can be otherwise regenerated or migrated elsewhere.
-
-A node must not carry both the no-map and the reusable property as these are
-logically contradictory.
-
-Linux implementation note:
-- If a "linux,cma-default" property is present, then Linux will use the
-  region for the default pool of the contiguous memory allocator.
-
-- If a "linux,dma-default" property is present, then Linux will use the
-  region for the default pool of the consistent DMA allocator.
-
-Device node references to reserved memory
------------------------------------------
-Regions in the /reserved-memory node may be referenced by other device
-nodes by adding a memory-region property to the device node.
-
-memory-region (optional) - phandle, specifier pairs to children of /reserved-memory
-memory-region-names (optional) - a list of names, one for each corresponding
-  entry in the memory-region property
-
-Example
--------
-This example defines 3 contiguous regions are defined for Linux kernel:
-one default of all device drivers (named linux,cma@72000000 and 64MiB in size),
-one dedicated to the framebuffer device (named framebuffer@78000000, 8MiB), and
-one for multimedia processing (named multimedia-memory@77000000, 64MiB).
-
-/ {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	memory {
-		reg = <0x40000000 0x40000000>;
-	};
-
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		/* global autoconfigured region for contiguous allocations */
-		linux,cma {
-			compatible = "shared-dma-pool";
-			reusable;
-			size = <0x4000000>;
-			alignment = <0x2000>;
-			linux,cma-default;
-		};
-
-		display_reserved: framebuffer@78000000 {
-			reg = <0x78000000 0x800000>;
-		};
-
-		multimedia_reserved: multimedia@77000000 {
-			compatible = "acme,multimedia-memory";
-			reg = <0x77000000 0x4000000>;
-		};
-	};
-
-	/* ... */
-
-	fb0: video@12300000 {
-		memory-region = <&display_reserved>;
-		/* ... */
-	};
-
-	scaler: scaler@12500000 {
-		memory-region = <&multimedia_reserved>;
-		/* ... */
-	};
-
-	codec: codec@12600000 {
-		memory-region = <&multimedia_reserved>;
-		/* ... */
-	};
-};
diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
new file mode 100644
index 000000000000..b61527f11953
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
@@ -0,0 +1,167 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/reserved-memory.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: /reserved-memory Node
+
+maintainers:
+  - Devicetree Specification Mailing List <devicetree-spec@vger.kernel.org>
+
+description: >
+  Reserved memory is specified as a node under the /reserved-memory node. The
+  operating system shall exclude reserved memory from normal usage one can
+  create child nodes describing particular reserved (excluded from normal use)
+  memory regions. Such memory regions are usually designed for the special
+  usage by various device drivers.
+
+properties:
+  $nodename:
+    const: reserved-memory
+
+  "#address-cells": true
+  "#size-cells": true
+  ranges: true
+
+patternProperties:
+  "^(?!(ranges))[a-z,-]*(@[0-9]+)?$":
+    type: object
+
+    description: >
+      Each child of the reserved-memory node specifies one or more regions of
+      reserved memory. Each child node may either use a 'reg' property to
+      specify a specific range of reserved memory, or a 'size' property with
+      optional constraints to request a dynamically allocated block of memory.
+
+      Following the generic-names recommended practice, node names should
+      reflect the purpose of the node (ie. "framebuffer" or "dma-pool"). Unit
+      address (@<address>) should be appended to the name if the node is a
+      static allocation.
+
+    properties:
+      reg: true
+
+      size:
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+        description: >
+          Length based on parent's \#size-cells. Size in bytes of memory to
+          reserve.
+
+      alignment:
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+        description: >
+          Length based on parent's \#size-cells. Address boundary for
+          alignment of allocation.
+
+      alloc-ranges:
+        $ref: /schemas/types.yaml#/definitions/uint32-array
+        description: >
+          Address and Length pairs. Specifies regions of memory that are
+          acceptable to allocate from.
+
+      compatible:
+        oneOf:
+          - const: shared-dma-pool
+            description: >
+              This indicates a region of memory meant to be used as a shared
+              pool of DMA buffers for a set of devices. It can be used by an
+              operating system to instantiate the necessary pool management
+              subsystem if necessary.
+
+          # Vendor-specific compatibles in the form <vendor>,[<device>-]<usage>
+          - const: mediatek,trustzone-bootinfo
+
+      no-map:
+        type: boolean
+        description: >
+          Indicates the operating system must not create a virtual mapping of
+          the region as part of its standard mapping of system memory, nor
+          permit speculative access to it under any circumstances other than
+          under the control of the device driver using the region.
+
+      reusable:
+        type: boolean
+        description: >
+          The operating system can use the memory in this region with the
+          limitation that the device driver(s) owning the region need to be
+          able to reclaim it back. Typically that means that the operating
+          system can use that region to store volatile or cached data that
+          can be otherwise regenerated or migrated elsewhere.
+
+      linux,cma-default:
+        type: boolean
+        description: >
+          If this property is present, then Linux will use the region for the
+          default pool of the contiguous memory allocator.
+
+      linux,dma-default:
+        type: boolean
+        description: >
+          If this property is present, then Linux will use the region for the
+          default pool of the consistent DMA allocator.
+
+    allOf:
+      - if:
+          required:
+            - no-map
+
+        then:
+          not:
+            required:
+              - reusable
+
+      - if:
+          required:
+            - reusable
+
+        then:
+          not:
+            required:
+              - no-map
+
+    oneOf:
+      - required:
+          - reg
+
+      - required:
+          - size
+
+    additionalProperties: true
+
+additionalProperties: true
+
+examples:
+  - |
+      / {
+          #address-cells = <1>;
+          #size-cells = <1>;
+          model = "MediaTek MT2701 evaluation board";
+          compatible = "mediatek,mt2701-evb", "mediatek,mt2701";
+
+          reserved-memory {
+              #address-cells = <1>;
+              #size-cells = <1>;
+              ranges;
+
+              /* global autoconfigured region for contiguous allocations */
+              linux,cma {
+                  compatible = "shared-dma-pool";
+                  reusable;
+                  size = <0x4000000>;
+                  alignment = <0x2000>;
+                  linux,cma-default;
+              };
+
+              display_reserved: framebuffer@78000000 {
+                  reg = <0x78000000 0x800000>;
+              };
+
+              trustzone-bootinfo@80002000 {
+                  compatible = "mediatek,trustzone-bootinfo";
+                  reg = <0x80002000 0x1000>;
+              };
+          };
+      };
+
+...
-- 
2.31.1

