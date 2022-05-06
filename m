Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3096851D9D2
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 16:05:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1441994AbiEFOJa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 10:09:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1441991AbiEFOJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 10:09:25 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7F7726128A
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 07:05:42 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50397153B;
        Fri,  6 May 2022 07:05:42 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10B883F885;
        Fri,  6 May 2022 07:05:40 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 02/11] dt-bindings: arm: spe-pmu: convert to DT schema
Date:   Fri,  6 May 2022 15:05:24 +0100
Message-Id: <20220506140533.3566431-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506140533.3566431-1-andre.przywara@arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Arm Statisical Profiling Extension (SPE) binding to DT
schema.
Not much to see here, basically just the announcement that SPE is
integrated on the system level and where the IRQ is routed to.

Move it into the more suitable perf/ directory on the way.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/arm/spe-pmu.txt       | 20 ----------
 .../devicetree/bindings/perf/spe-pmu.yaml     | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/spe-pmu.txt
 create mode 100644 Documentation/devicetree/bindings/perf/spe-pmu.yaml

diff --git a/Documentation/devicetree/bindings/arm/spe-pmu.txt b/Documentation/devicetree/bindings/arm/spe-pmu.txt
deleted file mode 100644
index 93372f2a7df92..0000000000000
--- a/Documentation/devicetree/bindings/arm/spe-pmu.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* ARMv8.2 Statistical Profiling Extension (SPE) Performance Monitor Units (PMU)
-
-ARMv8.2 introduces the optional Statistical Profiling Extension for collecting
-performance sample data using an in-memory trace buffer.
-
-** SPE Required properties:
-
-- compatible : should be one of:
-	       "arm,statistical-profiling-extension-v1"
-
-- interrupts : Exactly 1 PPI must be listed. For heterogeneous systems where
-               SPE is only supported on a subset of the CPUs, please consult
-	       the arm,gic-v3 binding for details on describing a PPI partition.
-
-** Example:
-
-spe-pmu {
-        compatible = "arm,statistical-profiling-extension-v1";
-        interrupts = <GIC_PPI 05 IRQ_TYPE_LEVEL_HIGH &part1>;
-};
diff --git a/Documentation/devicetree/bindings/perf/spe-pmu.yaml b/Documentation/devicetree/bindings/perf/spe-pmu.yaml
new file mode 100644
index 0000000000000..7d74152f437e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/spe-pmu.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/perf/spe-pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARMv8.2 Statistical Profiling Extension (SPE) Performance Monitor Units (PMU)
+
+maintainers:
+  - Will Deacon <will@kernel.org>
+
+description:
+  ARMv8.2 introduces the optional Statistical Profiling Extension for collecting
+  performance sample data using an in-memory trace buffer.
+
+properties:
+  compatible:
+    const: arm,statistical-profiling-extension-v1
+
+  interrupts:
+    maxItems: 1
+    description: |
+      The PPI to signal SPE events. For heterogeneous systems where SPE is only
+      supported on a subset of the CPUs, please consult the arm,gic-v3 binding
+      for details on describing a PPI partition.
+
+additionalProperties: false
+
+required:
+  - compatible
+  - interrupts
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    spe-pmu {
+        compatible = "arm,statistical-profiling-extension-v1";
+        interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
+    };
-- 
2.25.1

