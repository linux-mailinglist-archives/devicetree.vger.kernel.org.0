Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F0EF26FE78
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 15:30:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726301AbgIRN2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 09:28:48 -0400
Received: from foss.arm.com ([217.140.110.172]:42386 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726126AbgIRN2s (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Sep 2020 09:28:48 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 771AC1045;
        Fri, 18 Sep 2020 06:28:46 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 201CF3F718;
        Fri, 18 Sep 2020 06:28:45 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, mark.rutland@arm.com,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, alisaidi@amazon.com, tsahee@amazon.com,
        harb@amperecomputing.com, tuanphan@os.amperecomputing.com,
        james.yang@arm.com, patrik.berglund@arm.com
Subject: [PATCH v2 1/3] perf: Add Arm CMN-600 DT binding
Date:   Fri, 18 Sep 2020 14:28:37 +0100
Message-Id: <394449fba250349c2251832da31ac709c5a21fdc.1600357241.git.robin.murphy@arm.com>
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

v2: fix filename, license and whitespace per Rob's comments

 .../devicetree/bindings/perf/arm,cmn.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/arm,cmn.yaml

diff --git a/Documentation/devicetree/bindings/perf/arm,cmn.yaml b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
new file mode 100644
index 000000000000..15689cbf417d
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2020 Arm Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/arm-cmn.yaml#
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

