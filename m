Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34BE13FD667
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243437AbhIAJUG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:06 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:42173 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243517AbhIAJUC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:02 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id B3CFD5C0138;
        Wed,  1 Sep 2021 05:19:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 01 Sep 2021 05:19:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=BHqjYNdhMMr+I
        4AtpjUwYgCLmML/LoJQzcmVNuYeGGY=; b=NEOYqc1tnQ8rubgJvqi/baxaZSScy
        9OdSWL9tQZiWbv9A9XPQLvoDOLdBkR8HHOGAjmhB/to+EmLqxW55YS9YVpRFeNO6
        Dv/IZt5sbJScSEg2tHjVRBQZbV998Lh27C10Y/0eXHqrix2CQCL9uB+JLczFaTtD
        MkmQU+3Fir6zhEaABboSfXbjpcJr7PCuPH2K38/rggu6OB/8NMlv6WYerc2yTU7W
        vY34l2BbD0rZ/mZ+eS+Yq1hXNB5Hygg61KfrCUMYvLMs0pblP4Xu+Yt2swTmbhOt
        uvI1MiOqqIMTE6cJy1ODTaSd2H6eS0rVTKZhvW/kd1qg0a4UW2aGIYOMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=BHqjYNdhMMr+I4AtpjUwYgCLmML/LoJQzcmVNuYeGGY=; b=L87BQdmB
        VXDfqY5clJ23PEyRZkWTeFL6oK5iGNdqeu/u2Vta0gTKhgr+InkVkT7iVSlpBvbf
        XDF+WL1oPVp2TCnDVQb4LIV8cj1RRqghnCbxSQadyyapCVXzezOAeHWsb5/JzNDK
        7+wJ1YEuIIPanQ89rrqNMvUX0rjsP82Tuei3Qovh4+NLa0P8gtRBlsSJ2bAXr/Qv
        FOhP2mHHsjLoCQUZnVPaiVd5HFo49LNjJMJ6i8YYoTlrlQ43HGmFbTHg6FLPM+JK
        N5MbVYe+FtjhMHjX7pALASF6MbZ8DB4bNt/v9wbXPsd6OG7XOeqQQVfYQ1ge9D5l
        wbms59rHZjtngA==
X-ME-Sender: <xms:iUUvYRDQ-0RK7oY9XSh__yPcNPALWinyMZF9BLYcKyAICYG0Q_4mBg>
    <xme:iUUvYfgS3JJcLGCxRC1Q-kOghbDktvgH5aIjSxDMHrVl3qcxylNaoL0-BYLfghojU
    _tQpxwoDyooemMrxCw>
X-ME-Received: <xmr:iUUvYck7v8SHEYpSrZ11pTgPQYbzuTJn8bzAqjZ4t8xMAo7H3FITwcU3adzQ4jKYstJvJ4bsAdjHGi83wwA1iTiMbbBYBhGSU923>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
    fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
    igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
    fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
    gvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:iUUvYbx2UkUGz81KBBW7i7lZh2WsnGtHIQX3o0M0qbchLbcRy038_Q>
    <xmx:iUUvYWQ6XVRKHID5tugICKhYuTs7Mi48I0cbGSr0pygiZc21Cr-WEg>
    <xmx:iUUvYeZQPrvP71ZwKpn4udNm-_kOa0qSc7XGDxMwLDuNnJKriXl83Q>
    <xmx:iUUvYTRL0IzL-IIlZCelitV1FRHXEfnu0J3DadARnO6jlNV7ti88VA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:04 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Mailing List <devicetree-spec@vger.kernel.org>
Subject: [PATCH v2 05/52] dt-bindings: Convert Reserved Memory binding to a schema
Date:   Wed,  1 Sep 2021 11:18:05 +0200
Message-Id: <20210901091852.479202-6-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
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

Changes from v1:
  - Fixed the license
  - Added a mention that the file has moved
  - Added a documentation for memory-region
  - Split the reserved-memory binding in two: one for the generic part
    and one for shared-dma-pool
---
 .../reserved-memory/memory-region.yaml        |  40 ++++
 .../reserved-memory/reserved-memory.txt       | 172 +-----------------
 .../reserved-memory/reserved-memory.yaml      |  96 ++++++++++
 .../reserved-memory/shared-dma-pool.yaml      |  87 +++++++++
 4 files changed, 224 insertions(+), 171 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml

diff --git a/Documentation/devicetree/bindings/reserved-memory/memory-region.yaml b/Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
new file mode 100644
index 000000000000..3f93d9f5aa2d
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/memory-region.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/memory-region.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Reserved Memory Region Device Tree Binding
+
+maintainers:
+  - Devicetree Specification Mailing List <devicetree-spec@vger.kernel.org>
+
+description: |
+  Regions in the /reserved-memory node may be referenced by other device
+  nodes by adding a memory-region property to the device node.
+
+select: true
+
+properties:
+  memory-region:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: >
+      Phandle to a /reserved-memory child node assigned to the device.
+
+  memory-region-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description: >
+      A list of names, one for each corresponding entry in the
+      memory-region property
+
+additionalProperties: true
+
+examples:
+  - |
+    fb0: video@12300000 {
+        /* ... */
+        reg = <0x12300000 0x1000>;
+        memory-region = <&display_reserved>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
index 39b5f4c5a511..1810701a8509 100644
--- a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
@@ -1,171 +1 @@
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
-        - restricted-dma-pool: This indicates a region of memory meant to be
-          used as a pool of restricted DMA buffers for a set of devices. The
-          memory region would be the only region accessible to those devices.
-          When using this, the no-map and reusable properties must not be set,
-          so the operating system can create a virtual mapping that will be used
-          for synchronization. The main purpose for restricted DMA is to
-          mitigate the lack of DMA access control on systems without an IOMMU,
-          which could result in the DMA accessing the system memory at
-          unexpected times and/or unexpected addresses, possibly leading to data
-          leakage or corruption. The feature on its own provides a basic level
-          of protection against the DMA overwriting buffer contents at
-          unexpected times. However, to protect against general data leakage and
-          system memory corruption, the system needs to provide way to lock down
-          the memory access, e.g., MPU. Note that since coherent allocation
-          needs remapping, one must set up another device coherent pool by
-          shared-dma-pool and use dma_alloc_from_dev_coherent instead for atomic
-          coherent allocation.
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
-This example defines 4 contiguous regions for Linux kernel:
-one default of all device drivers (named linux,cma@72000000 and 64MiB in size),
-one dedicated to the framebuffer device (named framebuffer@78000000, 8MiB),
-one for multimedia processing (named multimedia-memory@77000000, 64MiB), and
-one for restricted dma pool (named restricted_dma_reserved@0x50000000, 64MiB).
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
-
-		restricted_dma_reserved: restricted_dma_reserved {
-			compatible = "restricted-dma-pool";
-			reg = <0x50000000 0x4000000>;
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
-
-	pcie_device: pcie_device@0,0 {
-		reg = <0x83010000 0x0 0x00000000 0x0 0x00100000
-		       0x83010000 0x0 0x00100000 0x0 0x00100000>;
-		memory-region = <&restricted_dma_reserved>;
-		/* ... */
-	};
-};
+This file has been moved to reserved-memory.yaml.
diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
new file mode 100644
index 000000000000..e5df888af4b8
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
@@ -0,0 +1,96 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/reserved-memory.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: /reserved-memory Child Node Common Device Tree Bindings
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
+  Each child of the reserved-memory node specifies one or more regions
+  of reserved memory. Each child node may either use a 'reg' property to
+  specify a specific range of reserved memory, or a 'size' property with
+  optional constraints to request a dynamically allocated block of
+  memory.
+
+  Following the generic-names recommended practice, node names should
+  reflect the purpose of the node (ie. "framebuffer" or "dma-pool").
+  Unit address (@<address>) should be appended to the name if the node
+  is a static allocation.
+
+properties:
+  reg: true
+
+  size:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: >
+      Length based on parent's \#size-cells. Size in bytes of memory to
+      reserve.
+
+  alignment:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: >
+      Length based on parent's \#size-cells. Address boundary for
+      alignment of allocation.
+
+  alloc-ranges:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: >
+      Address and Length pairs. Specifies regions of memory that are
+      acceptable to allocate from.
+
+  no-map:
+    type: boolean
+    description: >
+      Indicates the operating system must not create a virtual mapping
+      of the region as part of its standard mapping of system memory,
+      nor permit speculative access to it under any circumstances other
+      than under the control of the device driver using the region.
+
+  reusable:
+    type: boolean
+    description: >
+      The operating system can use the memory in this region with the
+      limitation that the device driver(s) owning the region need to be
+      able to reclaim it back. Typically that means that the operating
+      system can use that region to store volatile or cached data that
+      can be otherwise regenerated or migrated elsewhere.
+
+allOf:
+  - if:
+      required:
+        - no-map
+
+    then:
+      not:
+        required:
+          - reusable
+
+  - if:
+      required:
+        - reusable
+
+    then:
+      not:
+        required:
+          - no-map
+
+oneOf:
+  - required:
+      - reg
+
+  - required:
+      - size
+
+additionalProperties: true
+
+...
diff --git a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
new file mode 100644
index 000000000000..c7a66d3da590
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reserved-memory/shared-dma-pool.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: /reserved-memory Node
+
+maintainers:
+  - Devicetree Specification Mailing List <devicetree-spec@vger.kernel.org>
+
+allOf:
+  - $ref: "reserved-memory.yaml"
+
+properties:
+  compatible:
+    oneOf:
+      - const: shared-dma-pool
+        description: >
+          This indicates a region of memory meant to be used as a shared
+          pool of DMA buffers for a set of devices. It can be used by an
+          operating system to instantiate the necessary pool management
+          subsystem if necessary.
+
+      - const: restricted-dma-pool
+        description: >
+          This indicates a region of memory meant to be used as a pool
+          of restricted DMA buffers for a set of devices. The memory
+          region would be the only region accessible to those devices.
+          When using this, the no-map and reusable properties must not
+          be set, so the operating system can create a virtual mapping
+          that will be used for synchronization. The main purpose for
+          restricted DMA is to mitigate the lack of DMA access control
+          on systems without an IOMMU, which could result in the DMA
+          accessing the system memory at unexpected times and/or
+          unexpected addresses, possibly leading to data leakage or
+          corruption. The feature on its own provides a basic level of
+          protection against the DMA overwriting buffer contents at
+          unexpected times. However, to protect against general data
+          leakage and system memory corruption, the system needs to
+          provide way to lock down the memory access, e.g., MPU. Note
+          that since coherent allocation needs remapping, one must set
+          up another device coherent pool by shared-dma-pool and use
+          dma_alloc_from_dev_coherent instead for atomic coherent
+          allocation.
+
+  linux,cma-default:
+    type: boolean
+    description: >
+      If this property is present, then Linux will use the region for
+      the default pool of the contiguous memory allocator.
+
+  linux,dma-default:
+    type: boolean
+    description: >
+      If this property is present, then Linux will use the region for
+      the default pool of the consistent DMA allocator.
+
+unevaluatedProperties: false
+
+examples:
+  - |
+      reserved-memory {
+          #address-cells = <1>;
+          #size-cells = <1>;
+          ranges;
+
+          /* global autoconfigured region for contiguous allocations */
+          linux,cma {
+              compatible = "shared-dma-pool";
+              reusable;
+              size = <0x4000000>;
+              alignment = <0x2000>;
+              linux,cma-default;
+          };
+
+          display_reserved: framebuffer@78000000 {
+              reg = <0x78000000 0x800000>;
+          };
+
+          restricted_dma_reserved: restricted-dma-pool@50000000 {
+              compatible = "restricted-dma-pool";
+              reg = <0x50000000 0x4000000>;
+          };
+      };
+
+...
-- 
2.31.1

