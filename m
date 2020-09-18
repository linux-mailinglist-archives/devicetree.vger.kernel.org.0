Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA1392703E1
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 20:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbgIRSYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 14:24:15 -0400
Received: from foss.arm.com ([217.140.110.172]:52044 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726118AbgIRSYP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Sep 2020 14:24:15 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D210D30E;
        Fri, 18 Sep 2020 11:24:14 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7CDD93F718;
        Fri, 18 Sep 2020 11:24:13 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, mark.rutland@arm.com,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, alisaidi@amazon.com, tsahee@amazon.com,
        harb@amperecomputing.com, tuanphan@os.amperecomputing.com,
        james.yang@arm.com, patrik.berglund@arm.com
Subject: [PATCH v2.1 1/3] perf: Add Arm CMN-600 DT binding
Date:   Fri, 18 Sep 2020 19:24:09 +0100
Message-Id: <3647765303e8936d45a69fe7c1f92b8d1b45de4b.1600452762.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1600357241.git.robin.murphy@arm.com>
References: <cover.1600357241.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the requirements for the CMN-600 DT binding. The internal
topology is almost entirely discoverable by walking a tree of ID
registers, but sadly both the starting point for that walk and the
exact format of those registers are configuration-dependent and not
discoverable from some sane fixed location. Oh well.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

fix up $id as well, oops...

 .../devicetree/bindings/perf/arm,cmn.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,cmn.yaml

diff --git a/Documentation/devicetree/bindings/perf/arm,cmn.yaml b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
new file mode 100644
index 000000000000..e4fcc0de25e2
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2020 Arm Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/arm,cmn.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Arm CMN (Coherent Mesh Network) Performance Monitors
+
+maintainers:
+  - Robin Murphy <robin.murphy@arm.com>
+
+properties:
+  compatible:
+    const: arm,cmn-600
+
+  reg:
+    items:
+      - description: Physical address of the base (PERIPHBASE) and
+          size (up to 64MB) of the configuration address space.
+
+  interrupts:
+    minItems: 1
+    maxItems: 4
+    items:
+      - description: Overflow interrupt for DTC0
+      - description: Overflow interrupt for DTC1
+      - description: Overflow interrupt for DTC2
+      - description: Overflow interrupt for DTC3
+    description: One interrupt for each DTC domain implemented must
+      be specified, in order. DTC0 is always present.
+
+  arm,root-node:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Offset from PERIPHBASE of the configuration
+      discovery node (see TRM definition of ROOTNODEBASE).
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - arm,root-node
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    pmu@50000000 {
+        compatible = "arm,cmn-600";
+        reg = <0x50000000 0x4000000>;
+        /* 4x2 mesh with one DTC, and CFG node at 0,1,1,0 */
+        interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+        arm,root-node = <0x104000>;
+    };
+...
--
2.28.0.dirty
