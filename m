Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 964856D0BE4
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 18:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230355AbjC3QxY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 12:53:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231276AbjC3QxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 12:53:09 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 953B8EB6F
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 09:52:54 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A86FA1650;
        Thu, 30 Mar 2023 09:53:38 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC0C43F6C4;
        Thu, 30 Mar 2023 09:52:52 -0700 (PDT)
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
Subject: [PATCH 2/6] firmware: smccc: Add support for erratum discovery API
Date:   Thu, 30 Mar 2023 17:51:24 +0100
Message-Id: <20230330165128.3237939-3-james.morse@arm.com>
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

It is not always possible for the OS to determine if a CPU is affected by
a particular erratum. For example, it may depend on an integration choice
the chip designer made, or whether firmware has enabled some particular
feature.

Add support for the SMCCC 'Errata Management Firmware Interface' that lets
the OS query firmware for this information.

Link: https://developer.arm.com/documentation/den0100/1-0/?lang=en
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/cpufeature.c  |  7 +++
 drivers/firmware/smccc/Kconfig  |  8 ++++
 drivers/firmware/smccc/Makefile |  1 +
 drivers/firmware/smccc/em.c     | 78 +++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h       | 28 ++++++++++++
 include/linux/arm_smccc_em.h    | 11 +++++
 6 files changed, 133 insertions(+)
 create mode 100644 drivers/firmware/smccc/em.c
 create mode 100644 include/linux/arm_smccc_em.h

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 2e3e55139777..62f996006783 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -62,6 +62,7 @@
 
 #define pr_fmt(fmt) "CPU features: " fmt
 
+#include <linux/arm_smccc_em.h>
 #include <linux/bsearch.h>
 #include <linux/cpumask.h>
 #include <linux/crash_dump.h>
@@ -1047,6 +1048,12 @@ void __init init_cpu_features(struct cpuinfo_arm64 *info)
 	 */
 	init_cpu_hwcaps_indirect_list();
 
+	/*
+	 * Early erratum workaround may need to be discovered from firmware.
+	 */
+	if (IS_ENABLED(CONFIG_ARM_SMCCC_EM))
+		arm_smccc_em_init();
+
 	/*
 	 * Detect and enable early CPU capabilities based on the boot CPU,
 	 * after we have initialised the CPU feature infrastructure.
diff --git a/drivers/firmware/smccc/Kconfig b/drivers/firmware/smccc/Kconfig
index 15e7466179a6..a10a150d49bb 100644
--- a/drivers/firmware/smccc/Kconfig
+++ b/drivers/firmware/smccc/Kconfig
@@ -23,3 +23,11 @@ config ARM_SMCCC_SOC_ID
 	help
 	  Include support for the SoC bus on the ARM SMCCC firmware based
 	  platforms providing some sysfs information about the SoC variant.
+
+config ARM_SMCCC_EM
+	bool "Errata discovery by ARM SMCCC"
+	depends on HAVE_ARM_SMCCC_DISCOVERY
+	default y
+	help
+	  Include support for querying firmware via SMCCC to determine whether
+	  the CPU is affected by a specific erratum.
diff --git a/drivers/firmware/smccc/Makefile b/drivers/firmware/smccc/Makefile
index 40d19144a860..39ed128b59b5 100644
--- a/drivers/firmware/smccc/Makefile
+++ b/drivers/firmware/smccc/Makefile
@@ -2,3 +2,4 @@
 #
 obj-$(CONFIG_HAVE_ARM_SMCCC_DISCOVERY)	+= smccc.o kvm_guest.o
 obj-$(CONFIG_ARM_SMCCC_SOC_ID)	+= soc_id.o
+obj-$(CONFIG_ARM_SMCCC_EM)	+= em.o
diff --git a/drivers/firmware/smccc/em.c b/drivers/firmware/smccc/em.c
new file mode 100644
index 000000000000..2c66240d8707
--- /dev/null
+++ b/drivers/firmware/smccc/em.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Arm Errata Management firmware interface.
+ *
+ * This firmware interface advertises support for firmware mitigations for CPU
+ * errata. It can also be used to discover erratum where the 'configurations
+ * affected' depends on the integration.
+ *
+ * Copyright (C) 2022 ARM Limited
+ */
+
+#define pr_fmt(fmt) "arm_smccc_em: " fmt
+
+#include <linux/arm_smccc_em.h>
+#include <linux/arm-smccc.h>
+#include <linux/errno.h>
+#include <linux/printk.h>
+
+#include <asm/alternative.h>
+
+#include <uapi/linux/psci.h>
+
+static u32 supported;
+
+int arm_smccc_em_cpu_features(u32 erratum_id)
+{
+	struct arm_smccc_res res;
+
+	if (!READ_ONCE(supported))
+		return -EOPNOTSUPP;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_EM_CPU_ERRATUM_FEATURES, erratum_id, 0, &res);
+	switch (res.a0) {
+	case SMCCC_RET_NOT_SUPPORTED:
+		return -EOPNOTSUPP;
+	case SMCCC_EM_RET_INVALID_PARAMTER:
+		return -EINVAL;
+	case SMCCC_EM_RET_UNKNOWN:
+		return -ENOENT;
+	case SMCCC_EM_RET_HIGHER_EL_MITIGATION:
+	case SMCCC_EM_RET_NOT_AFFECTED:
+	case SMCCC_EM_RET_AFFECTED:
+		return res.a0;
+	};
+
+	return -EIO;
+}
+
+int __init arm_smccc_em_init(void)
+{
+	u32 major_ver, minor_ver;
+	struct arm_smccc_res res;
+	enum arm_smccc_conduit conduit = arm_smccc_1_1_get_conduit();
+
+	if (conduit == SMCCC_CONDUIT_NONE)
+		return -EOPNOTSUPP;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_EM_VERSION, &res);
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
+		return -EOPNOTSUPP;
+
+	major_ver = PSCI_VERSION_MAJOR(res.a0);
+	minor_ver = PSCI_VERSION_MINOR(res.a0);
+	if (major_ver != 1)
+		return -EIO;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_EM_FEATURES,
+			     ARM_SMCCC_EM_CPU_ERRATUM_FEATURES, &res);
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
+		return -EOPNOTSUPP;
+
+	pr_info("SMCCC Errata Management Interface v%d.%d\n",
+		major_ver, minor_ver);
+
+	WRITE_ONCE(supported, 1);
+
+	return 0;
+}
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 220c8c60e021..cc2e38ce8707 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -182,6 +182,25 @@
 			   ARM_SMCCC_OWNER_STANDARD,		\
 			   0x53)
 
+/* Errata Management calls (defined by ARM DEN0100) */
+#define ARM_SMCCC_EM_VERSION					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_32,			\
+			   ARM_SMCCC_OWNER_STANDARD,		\
+			   0xF0)
+
+#define ARM_SMCCC_EM_FEATURES					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_32,			\
+			   ARM_SMCCC_OWNER_STANDARD,		\
+			   0xF1)
+
+#define ARM_SMCCC_EM_CPU_ERRATUM_FEATURES			\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_32,			\
+			   ARM_SMCCC_OWNER_STANDARD,		\
+			   0xF2)
+
 /*
  * Return codes defined in ARM DEN 0070A
  * ARM DEN 0070A is now merged/consolidated into ARM DEN 0028 C
@@ -191,6 +210,15 @@
 #define SMCCC_RET_NOT_REQUIRED			-2
 #define SMCCC_RET_INVALID_PARAMETER		-3
 
+/*
+ * Return codes defined in ARM DEN 0100
+ */
+#define	SMCCC_EM_RET_HIGHER_EL_MITIGATION	3
+#define	SMCCC_EM_RET_NOT_AFFECTED		2
+#define	SMCCC_EM_RET_AFFECTED			1
+#define	SMCCC_EM_RET_INVALID_PARAMTER		-2
+#define	SMCCC_EM_RET_UNKNOWN			-3
+
 #ifndef __ASSEMBLY__
 
 #include <linux/linkage.h>
diff --git a/include/linux/arm_smccc_em.h b/include/linux/arm_smccc_em.h
new file mode 100644
index 000000000000..71293cbbe545
--- /dev/null
+++ b/include/linux/arm_smccc_em.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (c) 2023 ARM Limited  */
+#ifndef __LINUX_ARM_SMCCC_EM_H
+#define __LINUX_ARM_SMCCC_EM_H
+
+#include <linux/types.h>
+
+int arm_smccc_em_init(void);
+int arm_smccc_em_cpu_features(u32 erratum_id);
+
+#endif /* __LINUX_ARM_SMCCC_EM_H */
-- 
2.39.2

