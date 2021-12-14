Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF34474498
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:16:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234791AbhLNOQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:16:33 -0500
Received: from foss.arm.com ([217.140.110.172]:57056 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234834AbhLNOQd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:16:33 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC2A4139F;
        Tue, 14 Dec 2021 06:16:32 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D021B3F793;
        Tue, 14 Dec 2021 06:16:31 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 4/5] dt-bindings: perf: Convert Arm DSU to schema
Date:   Tue, 14 Dec 2021 14:16:16 +0000
Message-Id: <9fde2e11b0d11285c26d0e9d261034a1628c7901.1639490264.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1639490264.git.robin.murphy@arm.com>
References: <cover.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the DSU binding to schema, as one does.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: Actually finish converting the thing to valid schema...

 .../devicetree/bindings/arm/arm-dsu-pmu.txt   | 27 ------------
 .../devicetree/bindings/perf/arm,dsu-pmu.yaml | 41 +++++++++++++++++++
 2 files changed, 41 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
 create mode 100644 Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt b/Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
deleted file mode 100644
index 6efabba530f1..000000000000
--- a/Documentation/devicetree/bindings/arm/arm-dsu-pmu.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* ARM DynamIQ Shared Unit (DSU) Performance Monitor Unit (PMU)
-
-ARM DyanmIQ Shared Unit (DSU) integrates one or more CPU cores
-with a shared L3 memory system, control logic and external interfaces to
-form a multicore cluster. The PMU enables to gather various statistics on
-the operations of the DSU. The PMU provides independent 32bit counters that
-can count any of the supported events, along with a 64bit cycle counter.
-The PMU is accessed via CPU system registers and has no MMIO component.
-
-** DSU PMU required properties:
-
-- compatible	: should be one of :
-
-		"arm,dsu-pmu"
-
-- interrupts	: Exactly 1 SPI must be listed.
-
-- cpus		: List of phandles for the CPUs connected to this DSU instance.
-
-
-** Example:
-
-dsu-pmu-0 {
-	compatible = "arm,dsu-pmu";
-	interrupts = <GIC_SPI 02 IRQ_TYPE_LEVEL_HIGH>;
-	cpus = <&cpu_0>, <&cpu_1>;
-};
diff --git a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
new file mode 100644
index 000000000000..09ddeb6a3ccc
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2021 Arm Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/arm,dsu-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM DynamIQ Shared Unit (DSU) Performance Monitor Unit (PMU)
+
+maintainers:
+  - Suzuki K Poulose <suzuki.poulose@arm.com>
+  - Robin Murphy <robin.murphy@arm.com>
+
+description:
+  ARM DyanmIQ Shared Unit (DSU) integrates one or more CPU cores with a shared
+  L3 memory system, control logic and external interfaces to form a multicore
+  cluster. The PMU enables gathering various statistics on the operation of the
+  DSU. The PMU provides independent 32-bit counters that can count any of the
+  supported events, along with a 64-bit cycle counter. The PMU is accessed via
+  CPU system registers and has no MMIO component.
+
+properties:
+  compatible:
+    const: arm,dsu-pmu
+
+  interrupts:
+    items:
+      - description: nCLUSTERPMUIRQ interrupt
+
+  cpus:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    minItems: 1
+    maxItems: 8
+    description: List of phandles for the CPUs connected to this DSU instance.
+
+required:
+  - compatible
+  - interrupts
+  - cpus
+
+additionalProperties: false
-- 
2.28.0.dirty

