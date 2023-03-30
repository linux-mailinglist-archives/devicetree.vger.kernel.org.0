Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CAA06D0BE7
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 18:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231651AbjC3Qxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 12:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231689AbjC3QxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 12:53:16 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id BF95B1BC3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 09:53:01 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C46211682;
        Thu, 30 Mar 2023 09:53:45 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E7FCB3F6C4;
        Thu, 30 Mar 2023 09:52:59 -0700 (PDT)
From:   James Morse <james.morse@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        James Morse <james.morse@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH 6/6] arm64: errata: Add a commandline option to enable/disable #2701951
Date:   Thu, 30 Mar 2023 17:51:28 +0100
Message-Id: <20230330165128.3237939-7-james.morse@arm.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230330165128.3237939-1-james.morse@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Erratum #2701951 affects the FWB feature in a number of CPUs, but is
only going to be visible on parts that don't use an arm interconnect.
This is not something the operating system can discover, it has to
be described by platform firmware.

The firmware discovery API is not deployed on existing systems.

Add a commandline option to allow the workaround to override the
value from firmware, or provide a value if the firmware is not
implemented.

The property is named arm64.arm-interconnect, as this is the
description in the 'configurations affected' section of the erratum.

Signed-off-by: James Morse <james.morse@arm.com>
---
 .../admin-guide/kernel-parameters.txt         |  4 +++
 arch/arm64/kernel/cpu_errata.c                | 36 +++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 6221a1d057dd..5898fde6a9e4 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -391,6 +391,10 @@
 	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
 			Format: <io>,<irq>,<nodeID>
 
+	arm64.arm-interconnect [ARM64]
+			Indicates the FWB erratum can be disabled because this
+			SoC uses an arm interconnect.
+
 	arm64.nobti	[ARM64] Unconditionally disable Branch Target
 			Identification support
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 55da9e588b9e..c5570904e8b4 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -138,6 +138,32 @@ cpu_clear_bf16_from_user_emulation(const struct arm64_cpu_capabilities *__unused
 	raw_spin_unlock(&reg_user_mask_modification);
 }
 
+static enum  {
+	FWB_WA_FORCED_ON = 1,
+	FWB_WA_UNKNOWN = 0,
+	FWB_WA_FORCED_OFF = -1,
+} __fwb_workaround_forced;
+#ifdef CONFIG_ARM64_ERRATUM_2701951
+static int __init parse_fwb_workaround_cmdline_override(char *str)
+{
+	bool arm_interconnect;
+	int ret = kstrtobool(str, &arm_interconnect);
+
+	if (ret)
+		return ret;
+
+	/*
+	 * Erratum #2701951's "Configurations Affected" says the erratum can
+	 * only be seen on SoC's "that do not use Arm interconnect IP."
+	 */
+	if (arm_interconnect)
+		__fwb_workaround_forced = FWB_WA_FORCED_OFF;
+	else
+		__fwb_workaround_forced = FWB_WA_FORCED_ON;
+	return 0;
+}
+early_param("arm64.arm-interconnect", parse_fwb_workaround_cmdline_override);
+#endif /* CONFIG_ARM64_ERRATUM_2701951 */
 bool has_stage2_fwb_errata(const struct arm64_cpu_capabilities *ignored,
 			   int scope)
 {
@@ -205,9 +231,19 @@ bool has_stage2_fwb_errata(const struct arm64_cpu_capabilities *ignored,
 		}
 
 		if (fwb_broken) {
+			if (__fwb_workaround_forced == FWB_WA_FORCED_OFF) {
+				pr_info_once("Workaround for erratum #2701951 disabled by command-line option\n");
+				return false;
+			}
 			pr_info_once("Stage-2 Force Write-Back disabled due to erratum #2701951\n");
 			return true;
 		}
+
+		/* Allow the commandline to override whatever firmware said */
+		if (has_feature && __fwb_workaround_forced == FWB_WA_FORCED_ON) {
+			pr_info_once("Workaround for erratum #2701951 enabled by command-line option\n");
+			return true;
+		}
 	}
 
 	return false;
-- 
2.39.2

