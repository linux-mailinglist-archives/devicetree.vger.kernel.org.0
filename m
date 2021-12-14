Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89360474495
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:16:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232406AbhLNOQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:16:26 -0500
Received: from foss.arm.com ([217.140.110.172]:57022 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234791AbhLNOQ0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:16:26 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C455106F;
        Tue, 14 Dec 2021 06:16:26 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B24FA3F793;
        Tue, 14 Dec 2021 06:16:24 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Thierry Reding <treding@nvidia.com>
Subject: [PATCH v2 1/5] arm64: perf: Support Denver and Carmel PMUs
Date:   Tue, 14 Dec 2021 14:16:13 +0000
Message-Id: <5f0f69d47acca78a9e479501aa4d8b429e23cf11.1639490264.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1639490264.git.robin.murphy@arm.com>
References: <cover.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thierry Reding <treding@nvidia.com>

Add support for the NVIDIA Denver and Carmel PMUs using the generic
PMUv3 event map for now.

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
[ rm: reorder entries alphabetically ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/kernel/perf_event.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

v2: Newly picked up

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index b4044469527e..035da52e04bf 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1247,6 +1247,18 @@ static int armv8_vulcan_pmu_init(struct arm_pmu *cpu_pmu)
 				       armv8_vulcan_map_event);
 }
 
+static int armv8_carmel_pmu_init(struct arm_pmu *cpu_pmu)
+{
+	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_nvidia_carmel",
+				       armv8_pmuv3_map_event);
+}
+
+static int armv8_denver_pmu_init(struct arm_pmu *cpu_pmu)
+{
+	return armv8_pmu_init_nogroups(cpu_pmu, "armv8_nvidia_denver",
+				       armv8_pmuv3_map_event);
+}
+
 static const struct of_device_id armv8_pmu_of_device_ids[] = {
 	{.compatible = "arm,armv8-pmuv3",	.data = armv8_pmuv3_init},
 	{.compatible = "arm,cortex-a34-pmu",	.data = armv8_a34_pmu_init},
@@ -1265,6 +1277,8 @@ static const struct of_device_id armv8_pmu_of_device_ids[] = {
 	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_n1_pmu_init},
 	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
 	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
+	{.compatible = "nvidia,carmel-pmu",	.data = armv8_carmel_pmu_init},
+	{.compatible = "nvidia,denver-pmu",	.data = armv8_denver_pmu_init},
 	{},
 };
 
-- 
2.28.0.dirty

