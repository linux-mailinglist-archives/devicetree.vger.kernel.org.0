Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA321474497
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234815AbhLNOQc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:16:32 -0500
Received: from foss.arm.com ([217.140.110.172]:57044 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234791AbhLNOQc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 09:16:32 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D319106F;
        Tue, 14 Dec 2021 06:16:31 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 834CD3F793;
        Tue, 14 Dec 2021 06:16:30 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     catalin.marinas@arm.com, suzuki.poulose@arm.com,
        thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 3/5] arm64: perf: Support new DT compatibles
Date:   Tue, 14 Dec 2021 14:16:15 +0000
Message-Id: <62d14ba12d847ec7f1fba7cb0b3b881b437e1cc5.1639490264.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1639490264.git.robin.murphy@arm.com>
References: <cover.1639490264.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wire up the new DT compatibles so we can present appropriate
PMU names to userspace for the latest and greatest CPUs.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: Use new macro template

 arch/arm64/kernel/perf_event.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index ed6d8cd2f88f..4c1698f63f34 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1160,8 +1160,14 @@ PMUV3_INIT_SIMPLE(armv8_cortex_a75)
 PMUV3_INIT_SIMPLE(armv8_cortex_a76)
 PMUV3_INIT_SIMPLE(armv8_cortex_a77)
 PMUV3_INIT_SIMPLE(armv8_cortex_a78)
+PMUV3_INIT_SIMPLE(armv9_cortex_a510)
+PMUV3_INIT_SIMPLE(armv9_cortex_a710)
+PMUV3_INIT_SIMPLE(armv8_cortex_x1)
+PMUV3_INIT_SIMPLE(armv9_cortex_x2)
 PMUV3_INIT_SIMPLE(armv8_neoverse_e1)
 PMUV3_INIT_SIMPLE(armv8_neoverse_n1)
+PMUV3_INIT_SIMPLE(armv9_neoverse_n2)
+PMUV3_INIT_SIMPLE(armv8_neoverse_v1)
 
 PMUV3_INIT_SIMPLE(armv8_nvidia_carmel)
 PMUV3_INIT_SIMPLE(armv8_nvidia_denver)
@@ -1222,8 +1228,14 @@ static const struct of_device_id armv8_pmu_of_device_ids[] = {
 	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_cortex_a76_pmu_init},
 	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_cortex_a77_pmu_init},
 	{.compatible = "arm,cortex-a78-pmu",	.data = armv8_cortex_a78_pmu_init},
+	{.compatible = "arm,cortex-a510-pmu",	.data = armv9_cortex_a510_pmu_init},
+	{.compatible = "arm,cortex-a710-pmu",	.data = armv9_cortex_a710_pmu_init},
+	{.compatible = "arm,cortex-x1-pmu",	.data = armv8_cortex_x1_pmu_init},
+	{.compatible = "arm,cortex-x2-pmu",	.data = armv9_cortex_x2_pmu_init},
 	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_neoverse_e1_pmu_init},
 	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_neoverse_n1_pmu_init},
+	{.compatible = "arm,neoverse-n2-pmu",	.data = armv9_neoverse_n2_pmu_init},
+	{.compatible = "arm,neoverse-v1-pmu",	.data = armv8_neoverse_v1_pmu_init},
 	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
 	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
 	{.compatible = "nvidia,carmel-pmu",	.data = armv8_nvidia_carmel_pmu_init},
-- 
2.28.0.dirty

