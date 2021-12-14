Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBBD9474496
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:16:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234813AbhLNOQa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:16:30 -0500
Received: from foss.arm.com ([217.140.110.172]:57034 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234791AbhLNOQa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:16:30 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 509646D;
        Tue, 14 Dec 2021 06:16:30 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 368963F793;
        Tue, 14 Dec 2021 06:16:29 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 2/5] arm64: perf: Simplify registration boilerplate
Date:   Tue, 14 Dec 2021 14:16:14 +0000
Message-Id: <b79477ea3b97f685d00511d4ecd2f686184dca34.1639490264.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1639490264.git.robin.murphy@arm.com>
References: <cover.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With the trend for per-core events moving to userspace JSON, registering
names for PMUv3 implementations is increasingly a pure boilerplate
exercise. Let's wrap things a step further so we can generate the basic
PMUv3 init function with a macro invocation, and reduce further new
addition to just 2 lines each.

Suggested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/kernel/perf_event.c | 113 +++++++++------------------------
 1 file changed, 31 insertions(+), 82 deletions(-)

v2: Rewrite per Mark's suggestion, cover new NVIDIA PMUs too

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 035da52e04bf..ed6d8cd2f88f 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1145,17 +1145,26 @@ static int armv8_pmu_init_nogroups(struct arm_pmu *cpu_pmu, char *name,
 	return armv8_pmu_init(cpu_pmu, name, map_event, NULL, NULL, NULL);
 }
 
-static int armv8_pmuv3_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_pmuv3",
-				       armv8_pmuv3_map_event);
+#define PMUV3_INIT_SIMPLE(name)						\
+static int name##_pmu_init(struct arm_pmu *cpu_pmu)			\
+{									\
+	return armv8_pmu_init_nogroups(cpu_pmu, #name, armv8_pmuv3_map_event);\
 }
 
-static int armv8_a34_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a34",
-				       armv8_pmuv3_map_event);
-}
+PMUV3_INIT_SIMPLE(armv8_pmuv3)
+
+PMUV3_INIT_SIMPLE(armv8_cortex_a34)
+PMUV3_INIT_SIMPLE(armv8_cortex_a55)
+PMUV3_INIT_SIMPLE(armv8_cortex_a65)
+PMUV3_INIT_SIMPLE(armv8_cortex_a75)
+PMUV3_INIT_SIMPLE(armv8_cortex_a76)
+PMUV3_INIT_SIMPLE(armv8_cortex_a77)
+PMUV3_INIT_SIMPLE(armv8_cortex_a78)
+PMUV3_INIT_SIMPLE(armv8_neoverse_e1)
+PMUV3_INIT_SIMPLE(armv8_neoverse_n1)
+
+PMUV3_INIT_SIMPLE(armv8_nvidia_carmel)
+PMUV3_INIT_SIMPLE(armv8_nvidia_denver)
 
 static int armv8_a35_pmu_init(struct arm_pmu *cpu_pmu)
 {
@@ -1169,24 +1178,12 @@ static int armv8_a53_pmu_init(struct arm_pmu *cpu_pmu)
 				       armv8_a53_map_event);
 }
 
-static int armv8_a55_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a55",
-				       armv8_pmuv3_map_event);
-}
-
 static int armv8_a57_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a57",
 				       armv8_a57_map_event);
 }
 
-static int armv8_a65_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a65",
-				       armv8_pmuv3_map_event);
-}
-
 static int armv8_a72_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a72",
@@ -1199,42 +1196,6 @@ static int armv8_a73_pmu_init(struct arm_pmu *cpu_pmu)
 				       armv8_a73_map_event);
 }
 
-static int armv8_a75_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a75",
-				       armv8_pmuv3_map_event);
-}
-
-static int armv8_a76_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a76",
-				       armv8_pmuv3_map_event);
-}
-
-static int armv8_a77_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a77",
-				       armv8_pmuv3_map_event);
-}
-
-static int armv8_a78_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cortex_a78",
-				       armv8_pmuv3_map_event);
-}
-
-static int armv8_e1_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_e1",
-				       armv8_pmuv3_map_event);
-}
-
-static int armv8_n1_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_neoverse_n1",
-				       armv8_pmuv3_map_event);
-}
-
 static int armv8_thunder_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_cavium_thunder",
@@ -1247,38 +1208,26 @@ static int armv8_vulcan_pmu_init(struct arm_pmu *cpu_pmu)
 				       armv8_vulcan_map_event);
 }
 
-static int armv8_carmel_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_nvidia_carmel",
-				       armv8_pmuv3_map_event);
-}
-
-static int armv8_denver_pmu_init(struct arm_pmu *cpu_pmu)
-{
-	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_nvidia_denver",
-				       armv8_pmuv3_map_event);
-}
-
 static const struct of_device_id armv8_pmu_of_device_ids[] = {
-	{.compatible = "arm,armv8-pmuv3",	.data = armv8_pmuv3_init},
-	{.compatible = "arm,cortex-a34-pmu",	.data = armv8_a34_pmu_init},
+	{.compatible = "arm,armv8-pmuv3",	.data = armv8_pmuv3_pmu_init},
+	{.compatible = "arm,cortex-a34-pmu",	.data = armv8_cortex_a34_pmu_init},
 	{.compatible = "arm,cortex-a35-pmu",	.data = armv8_a35_pmu_init},
 	{.compatible = "arm,cortex-a53-pmu",	.data = armv8_a53_pmu_init},
-	{.compatible = "arm,cortex-a55-pmu",	.data = armv8_a55_pmu_init},
+	{.compatible = "arm,cortex-a55-pmu",	.data = armv8_cortex_a55_pmu_init},
 	{.compatible = "arm,cortex-a57-pmu",	.data = armv8_a57_pmu_init},
-	{.compatible = "arm,cortex-a65-pmu",	.data = armv8_a65_pmu_init},
+	{.compatible = "arm,cortex-a65-pmu",	.data = armv8_cortex_a65_pmu_init},
 	{.compatible = "arm,cortex-a72-pmu",	.data = armv8_a72_pmu_init},
 	{.compatible = "arm,cortex-a73-pmu",	.data = armv8_a73_pmu_init},
-	{.compatible = "arm,cortex-a75-pmu",	.data = armv8_a75_pmu_init},
-	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_a76_pmu_init},
-	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_a77_pmu_init},
-	{.compatible = "arm,cortex-a78-pmu",	.data = armv8_a78_pmu_init},
-	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_e1_pmu_init},
-	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_n1_pmu_init},
+	{.compatible = "arm,cortex-a75-pmu",	.data = armv8_cortex_a75_pmu_init},
+	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_cortex_a76_pmu_init},
+	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_cortex_a77_pmu_init},
+	{.compatible = "arm,cortex-a78-pmu",	.data = armv8_cortex_a78_pmu_init},
+	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_neoverse_e1_pmu_init},
+	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_neoverse_n1_pmu_init},
 	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
 	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
-	{.compatible = "nvidia,carmel-pmu",	.data = armv8_carmel_pmu_init},
-	{.compatible = "nvidia,denver-pmu",	.data = armv8_denver_pmu_init},
+	{.compatible = "nvidia,carmel-pmu",	.data = armv8_nvidia_carmel_pmu_init},
+	{.compatible = "nvidia,denver-pmu",	.data = armv8_nvidia_denver_pmu_init},
 	{},
 };
 
@@ -1301,7 +1250,7 @@ static int __init armv8_pmu_driver_init(void)
 	if (acpi_disabled)
 		return platform_driver_register(&armv8_pmu_driver);
 	else
-		return arm_pmu_acpi_probe(armv8_pmuv3_init);
+		return arm_pmu_acpi_probe(armv8_pmuv3_pmu_init);
 }
 device_initcall(armv8_pmu_driver_init)
 
-- 
2.28.0.dirty

