Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9B3426FE79
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 15:30:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726415AbgIRN2v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 09:28:51 -0400
Received: from foss.arm.com ([217.140.110.172]:42416 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726306AbgIRN2v (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Sep 2020 09:28:51 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB2BB1045;
        Fri, 18 Sep 2020 06:28:50 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6640A3F718;
        Fri, 18 Sep 2020 06:28:49 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     will@kernel.org, mark.rutland@arm.com,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, alisaidi@amazon.com, tsahee@amazon.com,
        harb@amperecomputing.com, tuanphan@os.amperecomputing.com,
        james.yang@arm.com, patrik.berglund@arm.com
Subject: [RFC 3/3] perf/arm-cmn: Add debugfs topology info
Date:   Fri, 18 Sep 2020 14:28:39 +0100
Message-Id: <715e5d4e24f77a0f95ff7315a47bcbc44074b04a.1600357241.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
In-Reply-To: <cover.1600357241.git.robin.murphy@arm.com>
References: <cover.1600357241.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In general, detailed performance analysis will require knoweldge of the
the SoC beyond the CMN itself - e.g. which actual CPUs/peripherals/etc.
are connected to each node. However for certain development and bringup
tasks it can be useful to have a quick overview of the CMN internal
topology to hand too. Add a debugfs file to map this out.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/perf/arm-cmn.c | 161 +++++++++++++++++++++++++++++++++++++++--
 1 file changed, 155 insertions(+), 6 deletions(-)

diff --git a/drivers/perf/arm-cmn.c b/drivers/perf/arm-cmn.c
index e824b5b83ea2..629373d7deb1 100644
--- a/drivers/perf/arm-cmn.c
+++ b/drivers/perf/arm-cmn.c
@@ -5,6 +5,7 @@
 #include <linux/acpi.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
+#include <linux/debugfs.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
@@ -47,6 +48,10 @@
 #define CMN_CFGM_PERIPH_ID_2		0x0010
 #define CMN_CFGM_PID2_REVISION		GENMASK(7, 4)
 
+/* XPs have some extra topology info which isn't directly relevant to the PMU */
+#define CMN_MXP__CONNECT_INFO_P0	0x0008
+#define CMN_MXP__CONNECT_INFO_P1	0x0010
+
 /* PMU registers occupy the 3rd 4KB page of each node's 16KB space */
 #define CMN_PMU_OFFSET			0x2000
 
@@ -248,11 +253,151 @@ struct arm_cmn {
 
 	unsigned int state;
 	struct pmu pmu;
+	struct dentry *debug;
 };
 
 #define to_cmn(p)	container_of(p, struct arm_cmn, pmu)
 
+static int arm_cmn_xyidbits(const struct arm_cmn *cmn)
+{
+	return cmn->mesh_x > 4 || cmn->mesh_y > 4 ? 3 : 2;
+}
+
 static int arm_cmn_hp_state;
+struct dentry *arm_cmn_debugfs;
+
+#ifdef CONFIG_DEBUG_FS
+static const char *arm_cmn_device_type(u8 type)
+{
+	switch(type) {
+		case 0x01: return "  RN-I  |";
+		case 0x02: return "  RN-D  |";
+		case 0x04: return " RN-F_B |";
+		case 0x05: return "RN-F_B_E|";
+		case 0x06: return " RN-F_A |";
+		case 0x07: return "RN-F_A_E|";
+		case 0x08: return "  HN-T  |";
+		case 0x09: return "  HN-I  |";
+		case 0x0a: return "  HN-D  |";
+		case 0x0c: return "  SN-F  |";
+		case 0x0d: return "  SBSX  |";
+		case 0x0e: return "  HN-F  |";
+		case 0x11: return "  CXHA  |";
+		case 0x12: return "  CXRA  |";
+		case 0x13: return "  CXRH  |";
+		default:   return "        |";
+	}
+}
+
+static void arm_cmn_show_logid(struct seq_file *s, int x, int y, int p, int d)
+{
+	struct arm_cmn *cmn = s->private;
+	int i, bits = arm_cmn_xyidbits(cmn);
+
+	for (i = 0; i < cmn->num_dns; i++) {
+		enum cmn_node_type type = cmn->dns[i].type;
+		u16 id = cmn->dns[i].id;
+
+		if (type == CMN_TYPE_XP)
+			continue;
+		/* Ignore the extra components that will overlap on some ports */
+		if (type < CMN_TYPE_HNI)
+			continue;
+
+		if (CMN_NODEID_X(id, bits) != x || CMN_NODEID_Y(id, bits) != y ||
+		    CMN_NODEID_PID(id) != p || CMN_NODEID_DEVID(id) != d)
+			continue;
+
+		seq_printf(s, "   #%-2d  |", cmn->dns[i].logid);
+		return;
+	}
+	seq_puts(s, "        |");
+}
+
+static int arm_cmn_map_show(struct seq_file *s, void *data)
+{
+	struct arm_cmn *cmn = s->private;
+	int x, y;
+
+	seq_puts(s, "     X");
+	for (x = 0; x < cmn->mesh_x; x++)
+		seq_printf(s, "    %d    ", x);
+	seq_puts(s, "\nY P D+");
+	y = cmn->mesh_y;
+	while (y--) {
+		int xp_base = cmn->mesh_x * y;
+		u8 port[2][8] = {};
+
+		for (x = 0; x < cmn->mesh_x; x++)
+			seq_puts(s, "--------+");
+
+		seq_printf(s, "\n%d    |", y);
+		for (x = 0; x < cmn->mesh_x; x++) {
+			struct arm_cmn_node *xp = cmn->xps + xp_base + x;
+			void __iomem *base = xp->pmu_base - CMN_PMU_OFFSET;
+
+			port[0][x] = readl_relaxed(base + CMN_MXP__CONNECT_INFO_P0);
+			port[1][x] = readl_relaxed(base + CMN_MXP__CONNECT_INFO_P1);
+			seq_printf(s, " XP #%-2d |", xp_base + x);
+		}
+
+		seq_puts(s, "\n     |");
+		for (x = 0; x < cmn->mesh_x; x++) {
+			int dtc = cmn->xps[xp_base + x].dtc;
+
+			if (dtc < 0)
+				seq_puts(s, " DTC ?? |");
+			else
+				seq_printf(s, " DTC %d  |", dtc);
+		}
+		seq_puts(s, "\n     |");
+		for (x = 0; x < cmn->mesh_x; x++)
+			seq_puts(s, "........|");
+
+		seq_puts(s, "\n  0  |");
+		for (x = 0; x < cmn->mesh_x; x++)
+			seq_puts(s, arm_cmn_device_type(port[0][x]));
+		seq_puts(s, "\n    0|");
+		for (x = 0; x < cmn->mesh_x; x++)
+			arm_cmn_show_logid(s, x, y, 0, 0);
+		seq_puts(s, "\n    1|");
+		for (x = 0; x < cmn->mesh_x; x++)
+			arm_cmn_show_logid(s, x, y, 0, 1);
+
+		seq_puts(s, "\n  1  |");
+		for (x = 0; x < cmn->mesh_x; x++)
+			seq_puts(s, arm_cmn_device_type(port[1][x]));
+		seq_puts(s, "\n    0|");
+		for (x = 0; x < cmn->mesh_x; x++)
+			arm_cmn_show_logid(s, x, y, 1, 0);
+		seq_puts(s, "\n    1|");
+		for (x = 0; x < cmn->mesh_x; x++)
+			arm_cmn_show_logid(s, x, y, 1, 1);
+
+		seq_puts(s, "\n-----+");
+	}
+	for (x = 0; x < cmn->mesh_x; x++)
+		seq_puts(s, "--------+");
+	seq_puts(s, "\n");
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(arm_cmn_map);
+
+static void arm_cmn_debugfs_init(struct arm_cmn *cmn, int id)
+{
+	const char *name  = "map";
+
+	if (id > 0)
+		name = devm_kasprintf(cmn->dev, GFP_KERNEL, "map_%d", id);
+	if (!name)
+		return;
+
+	cmn->debug = debugfs_create_file(name, 0444, arm_cmn_debugfs, cmn, &arm_cmn_map_fops);
+}
+#else
+static void arm_cmn_debugfs_init(struct arm_cmn *cmn, int id) {}
+#endif
+
 
 struct arm_cmn_hw_event {
 	struct arm_cmn_node *dn;
@@ -294,11 +439,6 @@ struct arm_cmn_format_attr {
 	int config;
 };
 
-static int arm_cmn_xyidbits(const struct arm_cmn *cmn)
-{
-	return cmn->mesh_x > 4 || cmn->mesh_y > 4 ? 3 : 2;
-}
-
 static void arm_cmn_init_node_to_xp(const struct arm_cmn *cmn,
 				    struct arm_cmn_node *dn)
 {
@@ -1565,6 +1705,9 @@ static int arm_cmn_probe(struct platform_device *pdev)
 	err = perf_pmu_register(&cmn->pmu, name, -1);
 	if (err)
 		cpuhp_state_remove_instance(arm_cmn_hp_state, &cmn->cpuhp_node);
+	else
+		arm_cmn_debugfs_init(cmn, this_id);
+
 	return err;
 }
 
@@ -1581,6 +1724,7 @@ static int arm_cmn_remove(struct platform_device *pdev)
 	for (i = 0; i < cmn->num_dtcs; i++)
 		irq_set_affinity_hint(cmn->dtc[i].irq, NULL);
 
+	debugfs_remove(cmn->debug);
 	return 0;
 }
 
@@ -1621,9 +1765,13 @@ static int __init arm_cmn_init(void)
 		return ret;
 
 	arm_cmn_hp_state = ret;
+	arm_cmn_debugfs = debugfs_create_dir("arm-cmn", NULL);
+
 	ret = platform_driver_register(&arm_cmn_driver);
-	if (ret)
+	if (ret) {
 		cpuhp_remove_multi_state(arm_cmn_hp_state);
+		debugfs_remove(arm_cmn_debugfs);
+	}
 	return ret;
 }
 
@@ -1631,6 +1779,7 @@ static void __exit arm_cmn_exit(void)
 {
 	platform_driver_unregister(&arm_cmn_driver);
 	cpuhp_remove_multi_state(arm_cmn_hp_state);
+	debugfs_remove(arm_cmn_debugfs);
 }
 
 module_init(arm_cmn_init);
-- 
2.28.0.dirty

