Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 700AE6D0BE6
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 18:53:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231272AbjC3Qxf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 12:53:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231514AbjC3QxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 12:53:15 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F3350EC6A
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 09:52:59 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D7DD1650;
        Thu, 30 Mar 2023 09:53:44 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3183A3F6C4;
        Thu, 30 Mar 2023 09:52:58 -0700 (PDT)
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
Subject: [PATCH 5/6] firmware: smccc: Allow errata management to be overridden by device tree
Date:   Thu, 30 Mar 2023 17:51:27 +0100
Message-Id: <20230330165128.3237939-6-james.morse@arm.com>
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

The Errata Management SMCCC interface allows firmware to advertise whether
the OS is affected by an erratum, or if a higher exception level has
mitigated the issue. This allows properties of the device that are not
discoverable by the OS to be described. e.g. some errata depend on the
behaviour of the interconnect, which is not visible to the OS.

Deployed devices may find it significantly harder to update EL3
firmware than the device tree. Erratum workarounds typically have to
fail safe, and assume the platform is affected putting correctness
above performance.

Instead of adding a device-tree entry for any CPU errata that is
relevant (or not) to the platform, allow the device-tree to provide
the data firmware should provide via the SMCCC interface. This can be
used to provide the value if the firmware is not implemented, or
override the firmware response if the value provided is wrong.

The vast majority of CPU errata solely depend on the CPU, and can
be detected from the CPUs id registers. The number of entries in
these tables is expected to be small.

Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/smccc/em.c | 227 ++++++++++++++++++++++++++++++++++--
 1 file changed, 217 insertions(+), 10 deletions(-)

diff --git a/drivers/firmware/smccc/em.c b/drivers/firmware/smccc/em.c
index 2c66240d8707..62e05e6b2140 100644
--- a/drivers/firmware/smccc/em.c
+++ b/drivers/firmware/smccc/em.c
@@ -6,14 +6,21 @@
  * errata. It can also be used to discover erratum where the 'configurations
  * affected' depends on the integration.
  *
+ * The interfaces's return codes have negative values. These should always be
+ * converted to linux errno values to avoid confusion.
+ *
  * Copyright (C) 2022 ARM Limited
  */
 
 #define pr_fmt(fmt) "arm_smccc_em: " fmt
 
+#include <linux/acpi.h>
 #include <linux/arm_smccc_em.h>
 #include <linux/arm-smccc.h>
 #include <linux/errno.h>
+#include <linux/memblock.h>
+#include <linux/of.h>
+#include <linux/percpu.h>
 #include <linux/printk.h>
 
 #include <asm/alternative.h>
@@ -22,52 +29,252 @@
 
 static u32 supported;
 
+/*
+ * This driver may be called when the boot CPU needs to detect an erratum and
+ * apply alternatives. This happens before page_alloc_init(), so this driver
+ * cannot allocate memory using slab. Allocate a page instead, and re-use it
+ * for CPUs that share a set of errata.
+ */
+#define MAX_EM_ARRAY_SIZE	((PAGE_SIZE / sizeof(u32) / 3) - 1)
+
+struct arm_em_dt_supplement_array {
+	u32 num;
+	u32 val[MAX_EM_ARRAY_SIZE];
+} __packed;
+
+struct arm_em_dt_supplement {
+	struct arm_em_dt_supplement_array affected;
+	struct arm_em_dt_supplement_array not_affected;
+	struct arm_em_dt_supplement_array higher_el_mitigated;
+} __packed;
+
+static DEFINE_PER_CPU(struct arm_em_dt_supplement *, em_table);
+
+static bool arm_smccc_em_search_table(struct arm_em_dt_supplement_array *entry,
+				      u32 erratum_id)
+{
+	int i;
+
+	for (i = 0; i <= entry->num; i++) {
+		if (entry->val[i] == erratum_id)
+			return true;
+	}
+
+	return false;
+}
+
+static int arm_smccc_em_query_dt(u32 erratum_id)
+{
+	struct arm_em_dt_supplement *tbl = *this_cpu_ptr(&em_table);
+
+	if (!tbl)
+		return -ENOENT;
+
+	if (arm_smccc_em_search_table(&tbl->affected, erratum_id))
+		return SMCCC_EM_RET_AFFECTED;
+	if (arm_smccc_em_search_table(&tbl->not_affected, erratum_id))
+		return SMCCC_EM_RET_NOT_AFFECTED;
+	if (arm_smccc_em_search_table(&tbl->higher_el_mitigated, erratum_id))
+		return SMCCC_EM_RET_HIGHER_EL_MITIGATION;
+
+	return -ENOENT;
+}
+
+/* Only call when both values >= 0 */
+static int arm_smccc_em_merge_retval(u32 erratum_id, u32 one, u32 two)
+{
+	if (one == two)
+		return one;
+
+	pr_warn_once("FW/DT mismatch for errataum #%u", erratum_id);
+	pr_warn_once("(Any subsequent mismatch warnings are suppressed)\n");
+
+	if (one == SMCCC_EM_RET_AFFECTED || two == SMCCC_EM_RET_AFFECTED)
+		return SMCCC_EM_RET_AFFECTED;
+
+	if (one == SMCCC_EM_RET_HIGHER_EL_MITIGATION ||
+	    two == SMCCC_EM_RET_HIGHER_EL_MITIGATION)
+		return SMCCC_EM_RET_HIGHER_EL_MITIGATION;
+
+	return SMCCC_EM_RET_NOT_AFFECTED;
+}
+
 int arm_smccc_em_cpu_features(u32 erratum_id)
 {
+	int dt_retval;
 	struct arm_smccc_res res;
+	bool _supported = READ_ONCE(supported);
 
-	if (!READ_ONCE(supported))
+	dt_retval = arm_smccc_em_query_dt(erratum_id);
+	if (!_supported && dt_retval <= 0)
 		return -EOPNOTSUPP;
 
-	arm_smccc_1_1_invoke(ARM_SMCCC_EM_CPU_ERRATUM_FEATURES, erratum_id, 0, &res);
+	if (_supported)
+		arm_smccc_1_1_invoke(ARM_SMCCC_EM_CPU_ERRATUM_FEATURES,
+				     erratum_id, 0, &res);
+	else
+		res.a0 = SMCCC_RET_NOT_SUPPORTED;
+
 	switch (res.a0) {
+	/* DT can always override errata firmware doesn't know about */
 	case SMCCC_RET_NOT_SUPPORTED:
-		return -EOPNOTSUPP;
 	case SMCCC_EM_RET_INVALID_PARAMTER:
-		return -EINVAL;
 	case SMCCC_EM_RET_UNKNOWN:
-		return -ENOENT;
+		return dt_retval;
+
+	/*
+	 * But if there is a mismatch - print a warning and prefer to enable
+	 * the erratum workaround.
+	 */
 	case SMCCC_EM_RET_HIGHER_EL_MITIGATION:
 	case SMCCC_EM_RET_NOT_AFFECTED:
 	case SMCCC_EM_RET_AFFECTED:
-		return res.a0;
+		if (dt_retval > 0)
+			return arm_smccc_em_merge_retval(erratum_id, res.a0,
+							  dt_retval);
+		else
+			return res.a0;
 	};
 
 	return -EIO;
 }
 
+int arm_smccc_em_dt_alloc_tbl_entry(struct device_node *np, const char *name,
+				    struct arm_em_dt_supplement_array *entry)
+{
+	int ret = of_property_count_u32_elems(np, name);
+
+	if (ret <= 0)
+		return 0;
+	if (ret > ARRAY_SIZE(entry->val))
+		return -E2BIG;
+
+	entry->num = ret;
+	return of_property_read_u32_array(np, name, entry->val, entry->num);
+}
+
+static struct arm_em_dt_supplement *arm_smccc_em_dt_alloc_tbl(struct device_node *np)
+{
+	struct arm_em_dt_supplement *tbl = memblock_alloc(PAGE_SIZE, PAGE_SIZE);
+
+	BUILD_BUG_ON(sizeof(struct arm_em_dt_supplement) > PAGE_SIZE);
+
+	if (!tbl)
+		return ERR_PTR(-ENOMEM);
+
+	if (arm_smccc_em_dt_alloc_tbl_entry(np, "arm,erratum-affected",
+					    &tbl->affected)) {
+		memblock_free(tbl, PAGE_SIZE);
+		return ERR_PTR(-EIO);
+	}
+	if (arm_smccc_em_dt_alloc_tbl_entry(np, "arm,erratum-not-affected",
+					    &tbl->not_affected)) {
+		memblock_free(tbl, PAGE_SIZE);
+		return ERR_PTR(-EIO);
+	}
+	if (arm_smccc_em_dt_alloc_tbl_entry(np, "arm,erratum-higher-el-mitigated",
+					    &tbl->higher_el_mitigated)) {
+		memblock_free(tbl, PAGE_SIZE);
+		return ERR_PTR(-EIO);
+	}
+
+	return tbl;
+}
+
+static int __init arm_smccc_em_dt_probe(void)
+{
+	int cpu, cpu2;
+	bool one_entry_found;
+	struct arm_em_dt_supplement *tbl;
+	struct device_node *np, *cpu_np, *np2, *cpu_np2;
+
+	for_each_possible_cpu(cpu) {
+		/* Pre-populated? */
+		if (per_cpu(em_table, cpu))
+			continue;
+
+		cpu_np = of_get_cpu_node(cpu, 0);
+		if (!cpu_np)
+			continue;
+
+		np = of_parse_phandle(cpu_np, "arm,erratum-list", 0);
+		if (!np) {
+			of_node_put(cpu_np);
+			continue;
+		}
+
+		tbl = arm_smccc_em_dt_alloc_tbl(np);
+		if (IS_ERR(tbl)) {
+			pr_err_once("Failed to allocate memory for DT supplement\n");
+			of_node_put(cpu_np);
+			break;
+		}
+		per_cpu(em_table, cpu) = tbl;
+
+		/* Pre-populate all CPUs with the same phandle */
+		for_each_possible_cpu(cpu2) {
+			if (cpu2 == cpu)
+				continue;
+
+			/* Pre-populated? */
+			if (per_cpu(em_table, cpu2))
+				continue;
+
+			cpu_np2 = of_get_cpu_node(cpu2, 0);
+			if (!cpu_np2)
+				continue;
+
+			np2 = of_parse_phandle(cpu_np2, "arm,erratum-list", 0);
+			if (!np) {
+				of_node_put(cpu_np2);
+				continue;
+			}
+
+			if (np2 == np)
+				per_cpu(em_table, cpu2) = tbl;
+
+			of_node_put(cpu_np2);
+			of_node_put(np2);
+		}
+
+		of_node_put(cpu_np);
+		of_node_put(np);
+
+		one_entry_found = true;
+	}
+
+	if (one_entry_found)
+		pr_info("Found DT supplements for SMCCC Errata Management Interface\n");
+
+	return one_entry_found ? 0 : -EOPNOTSUPP;
+}
+
 int __init arm_smccc_em_init(void)
 {
+	int dt_supported = false;
 	u32 major_ver, minor_ver;
 	struct arm_smccc_res res;
 	enum arm_smccc_conduit conduit = arm_smccc_1_1_get_conduit();
 
+	if (acpi_disabled)
+		dt_supported = arm_smccc_em_dt_probe();
+
 	if (conduit == SMCCC_CONDUIT_NONE)
-		return -EOPNOTSUPP;
+		return dt_supported;
 
 	arm_smccc_1_1_invoke(ARM_SMCCC_EM_VERSION, &res);
 	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
-		return -EOPNOTSUPP;
+		return dt_supported;
 
 	major_ver = PSCI_VERSION_MAJOR(res.a0);
 	minor_ver = PSCI_VERSION_MINOR(res.a0);
 	if (major_ver != 1)
-		return -EIO;
+		return dt_supported;
 
 	arm_smccc_1_1_invoke(ARM_SMCCC_EM_FEATURES,
 			     ARM_SMCCC_EM_CPU_ERRATUM_FEATURES, &res);
 	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
-		return -EOPNOTSUPP;
+		return dt_supported;
 
 	pr_info("SMCCC Errata Management Interface v%d.%d\n",
 		major_ver, minor_ver);
-- 
2.39.2

