Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C14D46D0BE5
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 18:53:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231936AbjC3Qxe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 12:53:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229916AbjC3QxO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 12:53:14 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B6BEBEB6C
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 09:52:58 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BDB62F4;
        Thu, 30 Mar 2023 09:53:42 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 519993F6C4;
        Thu, 30 Mar 2023 09:52:56 -0700 (PDT)
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
Subject: [PATCH 4/6] arm64: errata: Disable FWB on parts with non-ARM interconnects
Date:   Thu, 30 Mar 2023 17:51:26 +0100
Message-Id: <20230330165128.3237939-5-james.morse@arm.com>
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

Force Write Back (FWB) allows the hypervisor to force non-cacheable
accesses made by a guest to be cacheable. This saves the hypervisor
from doing cache maintenance on all pages the guest can access, to
ensure the guest doesn't see stale (and possibly sensitive) data when
making a non-cacheable access.

When stage1 translation is disabled, the SCTRL_E1.I bit controls the
attributes used for instruction fetch, one of the options results in a
non-cacheable access. A whole host of CPUs missed the FWB override
in this case, meaning a KVM guest could fetch stale/junk data instead of
instructions.

The workaround is to always do the cache maintenance. These parts don't
have fine-grained-traps, so it isn't feasible to detect the guest
disabling the MMU. Instead, disable FWB on the host.

While the CPUs are affected, this erratum doesn't occur on parts using
Arm's CMN interconnects. Use the Errata Management API to discover whether
this CPU is affected.

Because guest execution is compromised, the workaround is enabled by
default. If the Errata Management API isn't implemented by firmware, the
workaround will be enabled. If a target platform is not affected, and it
isn't possible to add support for the Errata Management API, the erratum
can be disabled in Kconfig.

Signed-off-by: James Morse <james.morse@arm.com>
---
This patch causes the additional output:
| Stage-2 Force Write-Back disabled due to erratum #2701951
| CPU features: detected: ARM erratum 2701951
---
 Documentation/arm64/silicon-errata.rst | 18 ++++++
 arch/arm64/Kconfig                     | 27 ++++++++
 arch/arm64/include/asm/cpufeature.h    |  1 +
 arch/arm64/kernel/cpu_errata.c         | 86 ++++++++++++++++++++++++++
 arch/arm64/kernel/cpufeature.c         | 16 ++++-
 arch/arm64/tools/cpucaps               |  1 +
 6 files changed, 148 insertions(+), 1 deletion(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index ec5f889d7681..d6ca86ebc7af 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -106,6 +106,10 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A77      | #1508412        | ARM64_ERRATUM_1508412       |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-A78      | #2712571        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-A78C     | #2712575,2712572| ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A510     | #2051678        | ARM64_ERRATUM_2051678       |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A510     | #2077057        | ARM64_ERRATUM_2077057       |
@@ -120,12 +124,20 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A710     | #2224489        | ARM64_ERRATUM_2224489       |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-A710     | #2701952        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A715     | #2645198        | ARM64_ERRATUM_2645198       |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-X1       | #2712571        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-X2       | #2119858        | ARM64_ERRATUM_2119858       |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-X2       | #2224489        | ARM64_ERRATUM_2224489       |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-X2       | #2701952        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-X3       | #2701951        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1188873,1418040| ARM64_ERRATUM_1418040       |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1349291        | N/A                         |
@@ -138,6 +150,12 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N2     | #2253138        | ARM64_ERRATUM_2253138       |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Neoverse-N2     | #2728475        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Neoverse-V1     | #2701953        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Neoverse-V2     | #2719103        | ARM64_ERRATUM_2701951       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | MMU-500         | #841119,826419  | N/A                         |
 +----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 1023e896d46b..0d07ddd15bfb 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -990,6 +990,33 @@ config ARM64_ERRATUM_2645198
 
 	  If unsure, say Y.
 
+config ARM64_ERRATUM_2701951
+	bool "ARM CPUs: 2701951: disable FWB on affected parts"
+	select ARM_SMCCC_EM
+	default y
+	help
+	  This option adds the workaround for multiple ARM errata titled
+	  "The core might fetch stale instruction from memory when both Stage 1
+	   Translation and Instruction Cache are Disabled with Stage 2 forced
+	   Write-Back".
+	  This affects Cortex cores: A78, A78C, A710, X1, X2, X3, and Neoverse
+	  cores: V1, V2 and N2.
+
+	  Affected cores fail to apply the FWB override to instruction fetch
+	  when stage1 translation is disabled, and SCTLR_EL1.I is clear. This
+	  results in stale data being fetched and executed. Only CPUs that are
+	  connected to a non-Arm interconnect will exhibit symptoms due to this
+	  errata.
+
+	  Work around this problem in the driver by disabling FWB on affected
+	  parts. The SMCCC Errata Management API is used to query firmware to
+	  learn if the part is affected.
+
+	  If the SMCCC Errata Management API is not implemented on a platform
+	  with an affected core, the workaround will be applied.
+
+	  If unsure, say Y.
+
 config CAVIUM_ERRATUM_22375
 	bool "Cavium erratum 22375, 24313"
 	default y
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 6bf013fb110d..435e5d1b49ab 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -635,6 +635,7 @@ static inline bool id_aa64pfr1_mte(u64 pfr1)
 
 void __init setup_cpu_features(void);
 void check_local_cpu_capabilities(void);
+bool has_stage2_fwb_errata(const struct arm64_cpu_capabilities *entry, int scope);
 
 u64 read_sanitised_ftr_reg(u32 id);
 u64 __read_sysreg_by_encoding(u32 sys_id);
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 307faa2b4395..55da9e588b9e 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/arm-smccc.h>
+#include <linux/arm_smccc_em.h>
 #include <linux/types.h>
 #include <linux/cpu.h>
 #include <asm/cpu.h>
@@ -137,6 +138,81 @@ cpu_clear_bf16_from_user_emulation(const struct arm64_cpu_capabilities *__unused
 	raw_spin_unlock(&reg_user_mask_modification);
 }
 
+bool has_stage2_fwb_errata(const struct arm64_cpu_capabilities *ignored,
+			   int scope)
+{
+	u64 idr;
+	bool has_feature;
+
+	/* List of CPUs which may have broken FWB support. */
+	static const struct midr_range cpus[] = {
+#ifdef CONFIG_ARM64_ERRATUM_2701951
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_A78),
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_A78C),
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_A710),
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_X1),
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_X2),
+		MIDR_RANGE(MIDR_CORTEX_X3, 0, 0, 1, 1),
+		MIDR_RANGE(MIDR_NEOVERSE_V1, 0, 0, 1, 1),
+		MIDR_RANGE(MIDR_NEOVERSE_V2, 0, 0, 0, 1),
+		MIDR_RANGE(MIDR_NEOVERSE_N2, 0, 0, 0, 2),
+#endif
+		{ /* sentinel */ },
+	};
+
+	if (scope == ARM64_CPUCAP_SCOPE_SYSTEM)
+		return cpus_have_cap(ARM64_WORKAROUND_NO_FWB);
+
+	idr = read_cpuid(ID_AA64MMFR2_EL1);
+	has_feature = FIELD_GET(ID_AA64MMFR2_EL1_FWB, idr);
+	if (!has_feature)
+		return false;
+
+	if (is_midr_in_range_list(read_cpuid_id(), cpus)) {
+		int i;
+		bool fwb_broken = true;
+
+		/*
+		 * List of erratum numbers for these CPUs.
+		 * It isn't possible to match these to their CPUs, as A78C has
+		 * two erratum numbers. The errata management API will return
+		 * 'UNKNOWN' for an erratum it doesn't recognise.
+		 */
+		static const u32 erratum_nums[] = {
+			2701951,
+			2701952,
+			2701953,
+			2712571,
+			2712572,
+			2712575,
+			2719103,
+			2728475,
+		};
+
+		/*
+		 * The CPU is affected, but what about this configuration?
+		 * Only firmware has the answer. Assume the part is affected,
+		 * and query firmware for the set of erratum numbers. If one
+		 * returns not-affected, the workaround isn't needed.
+		 */
+		for (i = 0; i < ARRAY_SIZE(erratum_nums); i++) {
+			int state = arm_smccc_em_cpu_features(erratum_nums[i]);
+
+			if (state == SMCCC_EM_RET_NOT_AFFECTED) {
+				fwb_broken = false;
+				break;
+			}
+		}
+
+		if (fwb_broken) {
+			pr_info_once("Stage-2 Force Write-Back disabled due to erratum #2701951\n");
+			return true;
+		}
+	}
+
+	return false;
+}
+
 #define CAP_MIDR_RANGE(model, v_min, r_min, v_max, r_max)	\
 	.matches = is_affected_midr_range,			\
 	.midr_range = MIDR_RANGE(model, v_min, r_min, v_max, r_max)
@@ -730,6 +806,16 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.cpu_enable = cpu_clear_bf16_from_user_emulation,
 	},
 #endif
+#ifdef CONFIG_ARM64_ERRATUM_2701951
+	{
+		.desc = "ARM erratum 2701951",
+		.capability = ARM64_WORKAROUND_NO_FWB,
+		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
+		.matches = has_stage2_fwb_errata,
+
+	},
+#endif
+
 	{
 	}
 };
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 62f996006783..099bf6ad7552 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1586,6 +1586,20 @@ static bool has_cache_dic(const struct arm64_cpu_capabilities *entry,
 	return ctr & BIT(CTR_EL0_DIC_SHIFT);
 }
 
+static bool has_stage2_fwb(const struct arm64_cpu_capabilities *entry,
+			   int scope)
+{
+	bool has_feature = has_cpuid_feature(entry, scope);
+
+	if (!has_feature)
+		return false;
+
+	if (has_stage2_fwb_errata(NULL, scope))
+		return false;
+
+	return has_feature;
+}
+
 static bool __maybe_unused
 has_useable_cnp(const struct arm64_cpu_capabilities *entry, int scope)
 {
@@ -2438,7 +2452,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.field_pos = ID_AA64MMFR2_EL1_FWB_SHIFT,
 		.field_width = 4,
 		.min_field_value = 1,
-		.matches = has_cpuid_feature,
+		.matches = has_stage2_fwb,
 	},
 	{
 		.desc = "ARMv8.4 Translation Table Level",
diff --git a/arch/arm64/tools/cpucaps b/arch/arm64/tools/cpucaps
index 37b1340e9646..2e5f70ec6410 100644
--- a/arch/arm64/tools/cpucaps
+++ b/arch/arm64/tools/cpucaps
@@ -86,6 +86,7 @@ WORKAROUND_CAVIUM_TX2_219_PRFM
 WORKAROUND_CAVIUM_TX2_219_TVM
 WORKAROUND_CLEAN_CACHE
 WORKAROUND_DEVICE_LOAD_ACQUIRE
+WORKAROUND_NO_FWB
 WORKAROUND_NVIDIA_CARMEL_CNP
 WORKAROUND_QCOM_FALKOR_E1003
 WORKAROUND_REPEAT_TLBI
-- 
2.39.2

