Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5130B6B3BD6
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 11:18:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjCJKSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 05:18:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbjCJKR6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 05:17:58 -0500
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-he1eur01on2049.outbound.protection.outlook.com [40.107.13.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46EFA4485
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 02:17:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jpecDpkI5BCBJDO43xIdY9RpM7Wc4FSKE8bZNfZy2DkArvs3+GNefXrF+dJsUGAyWt/svAtGgokbqodRRTq9ctDBJXOUVLH+TxLeaBZUbWa3TsTynnWhpvsyOAQDJyURD8ZUk9Mm83AzBBbt2XTXZsOaMky6vndYsTXv6vmOOdqotpNhEhfM74woASA78SRhLjb/U1EA5TZGfX5kcfE7kjSFhay05JZRwkYVgZKb+r1h6mPnzWxENUFSX9bvLNvdMjkOqqo37MnHXuENiRc5aoygzZ3JucYiupVfB69skBB1JlJXlaZmzpvaM5LLsixayVN1j4CgNHrGBKKUBbUJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JxUrY5ef3VZDSysj4eN40BqpdNVRbpAPCrT/0626Gzk=;
 b=Ijb8OAXvmfiYci2RdbeBk/5tX95xhYNuc2bWoDa2Azj7UJPj7gdpwcwbkCNTmrkqZuIReykGw42Ikh+mArV2kzi5KlC0qF8IUDfpRyOr2fR4mw4oTz7zKNorUBFO15DEQkDonch+BKvCvogpbqR0SDKp3/tVucLiYzlzfej8T0BW6nKI3+E7RsUbsm0a0uNgBH2tPd2EBt2OGPnSsueQrpYFbwdgfApOkF8ZQuOJXYCGxGiOsjKK7fEr6wTDswY3sz+BhcLpF8tburGrBPK7d0e4yXljWbYDg2CScoWUHmHpLOCXQ3NdbkbglH/JM0CeKhnbFwLmZRwGQb0GT8olCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JxUrY5ef3VZDSysj4eN40BqpdNVRbpAPCrT/0626Gzk=;
 b=ZHod2GDyp58OpAKJ+WZeKuOqiAmDMujkEZOkl9pKF6uwC/LAOM8nXXYtBySg0O0KDWOVZglAnW1V1Pm0e2lyz1HS1TdeLj0z42uWvrnTYBZNg2lKnhcuvLm4MQ/L59x912s1JvbEBDZuMbYRAL9BAfwPS240FINcGXrKNooxAes=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 PAXPR04MB8428.eurprd04.prod.outlook.com (2603:10a6:102:1ce::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.19; Fri, 10 Mar 2023 10:17:51 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6%3]) with mapi id 15.20.6178.017; Fri, 10 Mar 2023
 10:17:51 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     will@kernel.org, mark.rutland@arm.com, frank.li@nxp.com,
        robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, xu.yang_2@nxp.com
Subject: [PATCH 1/3] drivers/perf: imx_ddr: Add support for NXP i.MX9 SoC DDRC PMU driver
Date:   Fri, 10 Mar 2023 18:19:14 +0800
Message-Id: <20230310101916.2825788-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0251.apcprd06.prod.outlook.com
 (2603:1096:4:ac::35) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|PAXPR04MB8428:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ac80f33-d22a-47fe-d2e4-08db2150b492
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QJHk4RcmZQ0EVvv7kuKeIyXeEpTnMFmTJeVKKhnggl+FmUsurZ2ptyn5v9OWvmllADDVLzq5iPSVggKLAy7ugOX5P8fvf6YgbuRkFO/hKmJlRIFdcMn2Xa23z3zrev8wb6xjS+Sx9zYQuCI4lpl3p0+ezogrsaH161AO0Zzx6GjzTpltQKKB9lrDPvnuM4j4yvF9wT3HBn26Y6CZSeemQ1qM3G2dH/yqGU/cEq+Gqc/AsO+KenmQrhCOso+8OaKDVbU3gW9rtp+xIR5xusZDgLevJPlvLvCWR75I/i51slSV7bh1ABINtkd8IS6V+w7rZhr1ePkGKV14n7J9kdFfqv2NGqN6ZZE8zL8sIMm60sqIJvxH3qp9j00KF57Q160Q6qcFxLsRZmXb/X8iJzPVT+2bC++N9dMVQi8+raWwJMiuZrjDfbMq52+zBdI3/KTqbBu6q0GXVT0PtOIoA0qn08wz6Iv/zCKH3rFyCecvhfFAxU1P7QaaHKA1r5FYsIwluIDOYMEaKToHvdi5Xu0kEVttB12X2x04qbFNGrT1KBg9IVkDLuulJOvnfVu+k+CZx+/EBlxo2TZL5f7k/81q8yiEK1EZpsRYylQR9htzxFHm8PHkooADPxvUBCPERNPOWchzyhiKFgHWCQMC5aL5S7GnHYv0YfA9lxR38DjzLCuDYndJwj0Cb9Sm+eFwX1ha3TVT+G5BXgpgnhZdCHowNA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(39860400002)(346002)(396003)(366004)(376002)(451199018)(36756003)(186003)(478600001)(5660300002)(2616005)(30864003)(52116002)(2906002)(6512007)(6486002)(6506007)(1076003)(26005)(6666004)(86362001)(38350700002)(8936002)(38100700002)(66556008)(66946007)(4326008)(8676002)(66476007)(83380400001)(316002)(41300700001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SXHRRsi0fP7Ue4JJN4NnffUSw7qSt0JJUBMP6aTOm0cNl1FgLoe5J/FaoVmW?=
 =?us-ascii?Q?4rmMHoXc3zDKU9qme+vu7Mtyy0CYYnuReMpLli9iQGGVuR55D1/Hki+3RgNT?=
 =?us-ascii?Q?CTvlOx4i3Eq3zCU4D6i8W0s7tERxU9tcjfddmrmk6Pe7j+824dOD4AeTcGOF?=
 =?us-ascii?Q?fKhN5GjINqBMQVbomhfnUH9okqXXH4VcYVK+NdkjQxDNMBwmon3lCMN7WlZd?=
 =?us-ascii?Q?dsa1fegmF2oc03QompMm8R+tgcJ+/nunKnV/O2qKuFWi2DR9pDrB2mSy/IY9?=
 =?us-ascii?Q?18KKeygmQ9Ldn2sbHloTaNqaa4yVkTnklOeWlS7P+uOwiCU4ADf2l/MgHuBW?=
 =?us-ascii?Q?HN5cdbrlzTsxjRI8BdIXu0JOw/yiGixYfwHe5raJEzL/HzOMa3n/YnHN5DjD?=
 =?us-ascii?Q?Y+rHX2ZcjdyvrY/gz7Muo+pM6fobDSoUmokniTwgqyP6OhMJjzXLuB6Xea2p?=
 =?us-ascii?Q?nGtjx69ZMtfE3wGEJ94fZ4SPKeei7B0RODX8RbpxYT/cxFhG7NbyqVXXgCA5?=
 =?us-ascii?Q?YwjPz4HFLy88bJQ9gVMdI/e+4DRr+SXfvmq18SW0uQTl3WLaU7SSyRQ9qIQS?=
 =?us-ascii?Q?rxg+a37qYg/WxfDLDAnhrE1QeU0yqabj9BXAHz8ukfZ4GAkK3vmddFG4K7gF?=
 =?us-ascii?Q?ufKnNoW0nQ/QQmmpcXaWVULhV3nSd6OEaqpI32UF32TVidvVOrJzM+Lz7tpl?=
 =?us-ascii?Q?NYp0Li6zubYkzYcCgryRjsaoz59Xdt2BoWy9ka9neFRh0q3mVVx92WFThwD+?=
 =?us-ascii?Q?ZIOA2q713ZcqLOGsw4sv2nQnRZx6Vscp27tLeyWvM88TQSjw7uhD5QGuMsQO?=
 =?us-ascii?Q?NeUiUsplLt50u1XfQ8B50yFmYXDNr4jH0xHBE9USFUnNe1PxwAD4agLlAgaz?=
 =?us-ascii?Q?2oiWqZy4NGOPJoKttfBizLPbrwRjyZMxPCe8gDRcjx/W8VgSKsOJ4xcLqw0v?=
 =?us-ascii?Q?HeYtnCKqZYEBI0gNtRuTx5yKluzglT3MBJbCrCGhVj7nWjHRFkO//Nv+VT7k?=
 =?us-ascii?Q?dyxSGbH0dkUR0TnOAMB5mu9Tw9w5+TC7WuZUeykhYUwVNquJRYQSR3DyzsLV?=
 =?us-ascii?Q?tGUwKstcFttSH+8PXxI8AlPlITRazCxrOYT96I7A9jQhI4PylvRLqwUiQLFp?=
 =?us-ascii?Q?Yb3HaGKCVlaQJQgD+uiBlOYAF2lEUevFfhTWU5ihjQsZc19qB2yiK8/aQM8m?=
 =?us-ascii?Q?w8bZj/vMfqi28qlQjSJhfUjz9TNaO27KfjX49NyFq0a6oUospzf4Z9sZRlC4?=
 =?us-ascii?Q?lGEzZwDmBW0hovB0vmmD+el5F/CDkQujG7KjMpffqmwv4K72c75F0WOytkJC?=
 =?us-ascii?Q?E/ccmy8CJWKpDIrgKVKhnurHTUZVpNfAl+Ua9u8NRwN6BvcCnpzoQyP6txUa?=
 =?us-ascii?Q?XUY9ZRr0G2RZos1xbkuLwoaccoMql1Dcx+TqArCaRjyaISpjbInUUkw8y1ho?=
 =?us-ascii?Q?sLXuG0/oXmMUG3RK0YlV0jbO4qoDpzB0neIVTmzMwOVv5ki4JrnuwJMP2eJ2?=
 =?us-ascii?Q?q0vB++0lBfWhyPUgxw3oh8/3a9+W1Xm9FZL8thKDjvVUx6qbuTJoQ/TZzpB+?=
 =?us-ascii?Q?oQTIcANgBuLaX4KK1XWRwHmW8JxMDBpgWrd6sefk?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ac80f33-d22a-47fe-d2e4-08db2150b492
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 10:17:51.7584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u+h95yB+ss6+F9yb82l9dKVxfWBjX63h5pkkrNdigD0PkTtSy3b3MRfoMKvEV1m8Uv/JbpCCz+WXiD29wDvznA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8428
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ddr performance monitor support for i.MX93.

There are 11 counters for ddr performance events.
- Counter 0 is a 64-bit counter that counts only clock cycles.
- Counter 1-10 are 32-bit counters that can monitor counter-specific
  events in addition to counting reference events.

For example:
  perf stat -a -e imx9_ddr0/ddrc_pm_1,counter=1/,imx9_ddr0/ddrc_pm_2,counter=2/ ls

Besides, this ddr pmu support AXI filter capability. It's implemented as
counter-specific events. It now supports read transaction, write transaction
and read beat events which corresponding respecitively to counter 2, 3 and 4.
axi_mask and axi_id need to be as event parameters.

For example:
  perf stat -a -I 1000 -e imx9_ddr0/eddrtq_pm_rd_trans_filt,counter=2,axi_mask=ID_MASK,axi_id=ID/
  perf stat -a -I 1000 -e imx9_ddr0/eddrtq_pm_wr_trans_filt,counter=3,axi_mask=ID_MASK,axi_id=ID/
  perf stat -a -I 1000 -e imx9_ddr0/eddrtq_pm_rd_beat_filt,counter=4,axi_mask=ID_MASK,axi_id=ID/

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 drivers/perf/Kconfig             |   8 +
 drivers/perf/Makefile            |   1 +
 drivers/perf/fsl_imx9_ddr_perf.c | 707 +++++++++++++++++++++++++++++++
 3 files changed, 716 insertions(+)
 create mode 100644 drivers/perf/fsl_imx9_ddr_perf.c

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index 66c259000a44..8e95ec362a18 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -117,6 +117,14 @@ config FSL_IMX8_DDR_PMU
 	  can give information about memory throughput and other related
 	  events.
 
+config FSL_IMX9_DDR_PMU
+	tristate "Freescale i.MX9 DDR perf monitor"
+	depends on ARCH_MXC
+	 help
+	 Provides support for the DDR performance monitor in i.MX9, which
+	 can give information about memory throughput and other related
+	 events.
+
 config QCOM_L2_PMU
 	bool "Qualcomm Technologies L2-cache PMU"
 	depends on ARCH_QCOM && ARM64 && ACPI
diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
index 13e45da61100..d37cb217d528 100644
--- a/drivers/perf/Makefile
+++ b/drivers/perf/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_ARM_PMU) += arm_pmu.o arm_pmu_platform.o
 obj-$(CONFIG_ARM_PMU_ACPI) += arm_pmu_acpi.o
 obj-$(CONFIG_ARM_SMMU_V3_PMU) += arm_smmuv3_pmu.o
 obj-$(CONFIG_FSL_IMX8_DDR_PMU) += fsl_imx8_ddr_perf.o
+obj-$(CONFIG_FSL_IMX9_DDR_PMU) += fsl_imx9_ddr_perf.o
 obj-$(CONFIG_HISI_PMU) += hisilicon/
 obj-$(CONFIG_QCOM_L2_PMU)	+= qcom_l2_pmu.o
 obj-$(CONFIG_QCOM_L3_PMU) += qcom_l3_pmu.o
diff --git a/drivers/perf/fsl_imx9_ddr_perf.c b/drivers/perf/fsl_imx9_ddr_perf.c
new file mode 100644
index 000000000000..524542fa3bb8
--- /dev/null
+++ b/drivers/perf/fsl_imx9_ddr_perf.c
@@ -0,0 +1,707 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright 2023 NXP
+
+#include <linux/bitfield.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_irq.h>
+#include <linux/perf_event.h>
+
+/* Performance monitor configuration */
+#define PMCFG1  			0x00
+#define PMCFG1_RD_TRANS_FILT_EN 	BIT(31)
+#define PMCFG1_WR_TRANS_FILT_EN 	BIT(30)
+#define PMCFG1_RD_BT_FILT_EN 		BIT(29)
+#define PMCFG1_ID_MASK  		GENMASK(17, 0)
+
+#define PMCFG2  			0x04
+#define PMCFG2_ID			GENMASK(17, 0)
+
+/* Global control register affects all counters and takes priority over local control registers */
+#define PMGC0		0x40
+/* Global control register bits */
+#define PMGC0_FAC	BIT(31)
+#define PMGC0_PMIE	BIT(30)
+#define PMGC0_FCECE	BIT(29)
+
+/*
+ * 64bit counter0 exclusively dedicated to counting cycles
+ * 32bit counters monitor counter-specific events in addition to counting reference events
+ */
+#define PMLCA(n)	(0x40 + 0x10 + (0x10 * n))
+#define PMLCB(n)	(0x40 + 0x14 + (0x10 * n))
+#define PMC(n)		(0x40 + 0x18 + (0x10 * n))
+/* Local control register bits */
+#define PMLCA_FC	BIT(31)
+#define PMLCA_CE	BIT(26)
+#define PMLCA_EVENT	GENMASK(22, 16)
+
+#define NUM_COUNTERS		11
+#define CYCLES_COUNTER		0
+
+#define to_ddr_pmu(p)		container_of(p, struct ddr_pmu, pmu)
+
+#define DDR_PERF_DEV_NAME	"imx9_ddr"
+#define DDR_CPUHP_CB_NAME	DDR_PERF_DEV_NAME "_perf_pmu"
+
+static DEFINE_IDA(ddr_ida);
+
+struct imx_ddr_devtype_data {
+	const char *identifier;		/* system PMU identifier for userspace */
+};
+
+struct ddr_pmu {
+	struct pmu pmu;
+	void __iomem *base;
+	unsigned int cpu;
+	struct hlist_node node;
+	struct device *dev;
+	struct perf_event *events[NUM_COUNTERS];
+	int active_events;
+	enum cpuhp_state cpuhp_state;
+	const struct imx_ddr_devtype_data *devtype_data;
+	int irq;
+	int id;
+};
+
+static const struct imx_ddr_devtype_data imx93_devtype_data = {
+	.identifier = "imx93",
+};
+
+static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
+	{.compatible = "fsl,imx93-ddr-pmu", .data = &imx93_devtype_data},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx_ddr_pmu_dt_ids);
+
+static ssize_t ddr_perf_identifier_show(struct device *dev,
+					struct device_attribute *attr,
+					char *page)
+{
+	struct ddr_pmu *pmu = dev_get_drvdata(dev);
+
+	return sysfs_emit(page, "%s\n", pmu->devtype_data->identifier);
+}
+
+static struct device_attribute ddr_perf_identifier_attr =
+	__ATTR(identifier, 0444, ddr_perf_identifier_show, NULL);
+
+static struct attribute *ddr_perf_identifier_attrs[] = {
+	&ddr_perf_identifier_attr.attr,
+	NULL,
+};
+
+static struct attribute_group ddr_perf_identifier_attr_group = {
+	.attrs = ddr_perf_identifier_attrs,
+};
+
+static ssize_t ddr_perf_cpumask_show(struct device *dev,
+				     struct device_attribute *attr, char *buf)
+{
+	struct ddr_pmu *pmu = dev_get_drvdata(dev);
+
+	return cpumap_print_to_pagebuf(true, buf, cpumask_of(pmu->cpu));
+}
+
+static struct device_attribute ddr_perf_cpumask_attr =
+	__ATTR(cpumask, 0444, ddr_perf_cpumask_show, NULL);
+
+static struct attribute *ddr_perf_cpumask_attrs[] = {
+	&ddr_perf_cpumask_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group ddr_perf_cpumask_attr_group = {
+	.attrs = ddr_perf_cpumask_attrs,
+};
+
+static ssize_t ddr_pmu_event_show(struct device *dev,
+				  struct device_attribute *attr, char *page)
+{
+	struct perf_pmu_events_attr *pmu_attr;
+
+	pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
+	return sysfs_emit(page, "event=0x%02llx\n", pmu_attr->id);
+}
+
+#define IMX9_DDR_PMU_EVENT_ATTR(_name, _id)				\
+	(&((struct perf_pmu_events_attr[]) {				\
+		{ .attr = __ATTR(_name, 0444, ddr_pmu_event_show, NULL),\
+		  .id = _id, }						\
+	})[0].attr.attr)
+
+static struct attribute *ddr_perf_events_attrs[] = {
+	/* counter0 cycles event */
+	IMX9_DDR_PMU_EVENT_ATTR(cycles, 0),
+
+	/* reference events for all normal counters, need assert DEBUG19[21] bit */
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ddrc1_rmw_for_ecc, 12),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_rreorder, 13),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_wreorder, 14),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_0, 15),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_1, 16),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_2, 17),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_3, 18),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_4, 19),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_5, 22),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_6, 23),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_7, 24),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_8, 25),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_9, 26),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_10, 27),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_11, 28),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_12, 31),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_13, 59),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_15, 61),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_pm_29, 63),
+
+	/* counter1 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_0, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_1, 65),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_2, 66),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_3, 67),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_4, 68),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_5, 69),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_6, 70),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_riq_7, 71),
+
+	/* counter2 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_0, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_1, 65),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_2, 66),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_3, 67),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_4, 68),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_5, 69),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_6, 70),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_ld_wiq_7, 71),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_empty, 72),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pm_rd_trans_filt, 73),
+
+	/* counter3 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_0, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_1, 65),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_2, 66),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_3, 67),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_4, 68),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_5, 69),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_6, 70),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_collision_7, 71),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_full, 72),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pm_wr_trans_filt, 73),
+
+	/* counter4 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_0, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_1, 65),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_2, 66),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_3, 67),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_4, 68),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_5, 69),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_6, 70),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_row_open_7, 71),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq2_rmw, 72),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pm_rd_beat_filt, 73),
+
+	/* counter5 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_0, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_1, 65),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_2, 66),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_3, 67),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_4, 68),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_5, 69),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_6, 70),
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_start_7, 71),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq1, 72),
+
+	/* counter6 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(ddrc_qx_valid_end_0, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq2, 72),
+
+	/* counter7 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_1_2_full, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_wrq0, 65),
+
+	/* counter8 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_bias_switched, 64),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_1_4_full, 65),
+
+	/* counter9 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_wrq1, 65),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_3_4_full, 66),
+
+	/* counter10 specific events */
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_misc_mrk, 65),
+	IMX9_DDR_PMU_EVENT_ATTR(eddrtq_pmon_ld_rdq0, 66),
+	NULL,
+};
+
+static const struct attribute_group ddr_perf_events_attr_group = {
+	.name = "events",
+	.attrs = ddr_perf_events_attrs,
+};
+
+PMU_FORMAT_ATTR(event, "config:0-7");
+PMU_FORMAT_ATTR(counter, "config:8-15");
+PMU_FORMAT_ATTR(axi_id, "config1:0-17");
+PMU_FORMAT_ATTR(axi_mask, "config2:0-17");
+
+static struct attribute *ddr_perf_format_attrs[] = {
+	&format_attr_event.attr,
+	&format_attr_counter.attr,
+	&format_attr_axi_id.attr,
+	&format_attr_axi_mask.attr,
+	NULL,
+};
+
+static const struct attribute_group ddr_perf_format_attr_group = {
+	.name = "format",
+	.attrs = ddr_perf_format_attrs,
+};
+
+static const struct attribute_group *attr_groups[] = {
+	&ddr_perf_identifier_attr_group,
+	&ddr_perf_cpumask_attr_group,
+	&ddr_perf_events_attr_group,
+	&ddr_perf_format_attr_group,
+	NULL,
+};
+
+static void ddr_perf_clear_counter(struct ddr_pmu *pmu, int counter)
+{
+	if (counter == CYCLES_COUNTER) {
+		writel(0, pmu->base + PMC(counter) + 0x4);
+		writel(0, pmu->base + PMC(counter));
+	} else {
+		writel(0, pmu->base + PMC(counter));
+	}
+}
+
+static u64 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
+{
+	u32 val_lower, val_upper;
+	u64 val;
+
+	if (counter == CYCLES_COUNTER) {
+		val_upper = readl_relaxed(pmu->base + PMC(counter) + 0x4);
+		val_lower = readl_relaxed(pmu->base + PMC(counter));
+		val = val_upper;
+		val = (val << 32);
+		val |= val_lower;
+	} else {
+		val = readl_relaxed(pmu->base + PMC(counter));
+	}
+
+	return val;
+}
+
+static void ddr_perf_counter_global_config(struct ddr_pmu *pmu, bool enable)
+{
+	u32 ctrl;
+
+	ctrl = readl_relaxed(pmu->base + PMGC0);
+
+	if (enable) {
+		/*
+		 * The performance monitor must be reset before event counting
+		 * sequences. The performance monitor can be reset by first freezing
+		 * one or more counters and then clearing the freeze condition to
+		 * allow the counters to count according to the settings in the
+		 * performance monitor registers. Counters can be frozen individually
+		 * by setting PMLCAn[FC] bits, or simultaneously by setting PMGC0[FAC].
+		 * Simply clearing these freeze bits will then allow the performance
+		 * monitor to begin counting based on the register settings.
+		 */
+		ctrl |= PMGC0_FAC;
+		writel(ctrl, pmu->base + PMGC0);
+
+		/*
+		 * Freeze all counters disabled, interrupt enabled, and freeze
+		 * counters on condition enabled.
+		 */
+		ctrl &= ~PMGC0_FAC;
+		ctrl |= PMGC0_PMIE | PMGC0_FCECE;
+		writel(ctrl, pmu->base + PMGC0);
+	} else {
+		ctrl |= PMGC0_FAC;
+		ctrl &= ~(PMGC0_PMIE | PMGC0_FCECE);
+		writel(ctrl, pmu->base + PMGC0);
+	}
+}
+
+static void ddr_perf_counter_local_config(struct ddr_pmu *pmu, int config,
+				    int counter, bool enable)
+{
+	u32 ctrl_a;
+
+	ctrl_a = readl_relaxed(pmu->base + PMLCA(counter));
+
+	if (enable) {
+		ctrl_a |= PMLCA_FC;
+		writel(ctrl_a, pmu->base + PMLCA(counter));
+
+		ddr_perf_clear_counter(pmu, counter);
+
+		/* Freeze counter disabled, condition enabled, and program event.*/
+		ctrl_a &= ~PMLCA_FC;
+		ctrl_a |= PMLCA_CE;
+		ctrl_a &= ~FIELD_PREP(PMLCA_EVENT, 0x7F);
+		ctrl_a |= FIELD_PREP(PMLCA_EVENT, (config & 0x000000FF));
+		writel(ctrl_a, pmu->base + PMLCA(counter));
+	} else {
+		/* Freeze counter. */
+		ctrl_a |= PMLCA_FC;
+		writel(ctrl_a, pmu->base + PMLCA(counter));
+	}
+}
+
+static void ddr_perf_monitor_config(struct ddr_pmu *pmu, int cfg, int cfg1, int cfg2)
+{
+	u32 pmcfg1, pmcfg2;
+	int event, counter;
+
+	event = cfg & 0x000000FF;
+	counter = (cfg & 0x0000FF00) >> 8;
+
+	pmcfg1 = readl_relaxed(pmu->base + PMCFG1);
+
+	if (counter == 2 && event == 73)
+		pmcfg1 |= PMCFG1_RD_TRANS_FILT_EN;
+	else if (counter == 2 && event != 73)
+		pmcfg1 &= ~PMCFG1_RD_TRANS_FILT_EN;
+
+	if (counter == 3 && event == 73)
+		pmcfg1 |= PMCFG1_WR_TRANS_FILT_EN;
+	else if (counter == 3 && event != 73)
+		pmcfg1 &= ~PMCFG1_WR_TRANS_FILT_EN;
+
+	if (counter == 4 && event == 73)
+		pmcfg1 |= PMCFG1_RD_BT_FILT_EN;
+	else if (counter == 4 && event != 73)
+		pmcfg1 &= ~PMCFG1_RD_BT_FILT_EN;
+
+	pmcfg1 &= ~FIELD_PREP(PMCFG1_ID_MASK, 0x3FFFF);
+	pmcfg1 |= FIELD_PREP(PMCFG1_ID_MASK, cfg2);
+	writel(pmcfg1, pmu->base + PMCFG1);
+
+	pmcfg2 = readl_relaxed(pmu->base + PMCFG2);
+	pmcfg2 &= ~FIELD_PREP(PMCFG2_ID, 0x3FFFF);
+	pmcfg2 |= FIELD_PREP(PMCFG2_ID, cfg1);
+	writel(pmcfg2, pmu->base + PMCFG2);
+}
+
+static void ddr_perf_event_update(struct perf_event *event)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int counter = hwc->idx;
+	u64 new_raw_count;
+
+	new_raw_count = ddr_perf_read_counter(pmu, counter);
+	local64_add(new_raw_count, &event->count);
+
+	/* clear counter's value every time */
+	ddr_perf_clear_counter(pmu, counter);
+}
+
+static int ddr_perf_event_init(struct perf_event *event)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	struct perf_event *sibling;
+
+	if (event->attr.type != event->pmu->type)
+		return -ENOENT;
+
+	if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
+		return -EOPNOTSUPP;
+
+	if (event->cpu < 0) {
+		dev_warn(pmu->dev, "Can't provide per-task data!\n");
+		return -EOPNOTSUPP;
+	}
+
+	/*
+	 * We must NOT create groups containing mixed PMUs, although software
+	 * events are acceptable (for example to create a CCN group
+	 * periodically read when a hrtimer aka cpu-clock leader triggers).
+	 */
+	if (event->group_leader->pmu != event->pmu &&
+			!is_software_event(event->group_leader))
+		return -EINVAL;
+
+	for_each_sibling_event(sibling, event->group_leader) {
+		if (sibling->pmu != event->pmu &&
+				!is_software_event(sibling))
+			return -EINVAL;
+	}
+
+	event->cpu = pmu->cpu;
+	hwc->idx = -1;
+
+	return 0;
+}
+
+static void ddr_perf_event_start(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int counter = hwc->idx;
+
+	local64_set(&hwc->prev_count, 0);
+
+	ddr_perf_counter_local_config(pmu, event->attr.config, counter, true);
+	hwc->state = 0;
+}
+
+static int ddr_perf_event_add(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int cfg = event->attr.config;
+	int cfg1 = event->attr.config1;
+	int cfg2 = event->attr.config2;
+	int counter;
+
+	counter = (cfg & 0x0000FF00) >> 8;
+
+	pmu->events[counter] = event;
+	pmu->active_events++;
+	hwc->idx = counter;
+	hwc->state |= PERF_HES_STOPPED;
+
+	if (flags & PERF_EF_START)
+		ddr_perf_event_start(event, flags);
+
+	/* read trans, write trans, read beat */
+	ddr_perf_monitor_config(pmu, cfg, cfg1, cfg2);
+
+	return 0;
+}
+
+static void ddr_perf_event_stop(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int counter = hwc->idx;
+
+	ddr_perf_counter_local_config(pmu, event->attr.config, counter, false);
+	ddr_perf_event_update(event);
+
+	hwc->state |= PERF_HES_STOPPED;
+}
+
+static void ddr_perf_event_del(struct perf_event *event, int flags)
+{
+	struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+
+	ddr_perf_event_stop(event, PERF_EF_UPDATE);
+
+	pmu->active_events--;
+	hwc->idx = -1;
+}
+
+static void ddr_perf_pmu_enable(struct pmu *pmu)
+{
+	struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
+
+	ddr_perf_counter_global_config(ddr_pmu, true);
+}
+
+static void ddr_perf_pmu_disable(struct pmu *pmu)
+{
+	struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);
+
+	ddr_perf_counter_global_config(ddr_pmu, false);
+}
+
+static void ddr_perf_init(struct ddr_pmu *pmu, void __iomem *base,
+			 struct device *dev)
+{
+	*pmu = (struct ddr_pmu) {
+		.pmu = (struct pmu) {
+			.module       = THIS_MODULE,
+			.capabilities = PERF_PMU_CAP_NO_EXCLUDE,
+			.task_ctx_nr  = perf_invalid_context,
+			.attr_groups  = attr_groups,
+			.event_init   = ddr_perf_event_init,
+			.add          = ddr_perf_event_add,
+			.del          = ddr_perf_event_del,
+			.start        = ddr_perf_event_start,
+			.stop         = ddr_perf_event_stop,
+			.read         = ddr_perf_event_update,
+			.pmu_enable   = ddr_perf_pmu_enable,
+			.pmu_disable  = ddr_perf_pmu_disable,
+		},
+		.base = base,
+		.dev = dev,
+	};
+}
+
+static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
+{
+	struct ddr_pmu *pmu = (struct ddr_pmu *)p;
+	struct perf_event *event;
+	int i;
+
+	/*
+	 * Counters can generate an interrupt on an overflow when msb of a
+	 * counter changes from 0 to 1. For the interrupt to be signalled,
+	 * below condition mush be satisfied:
+	 * PMGC0[PMIE] = 1, PMGC0[FCECE] = 1, PMLCAn[CE] = 1
+	 * When an interrupt is signalled, PMGC0[FAC] is set by hardware and
+	 * all of the registers are frozen.
+	 * Software can clear the interrupt condition by resetting the performance
+	 * monitor and clearing the most significant bit of the counter that
+	 * generate the overflow.
+	 */
+	for (i = 0; i < NUM_COUNTERS; i++) {
+		if (!pmu->events[i])
+			continue;
+
+		event = pmu->events[i];
+
+		ddr_perf_event_update(event);
+	}
+
+	ddr_perf_counter_global_config(pmu, true);
+
+	return IRQ_HANDLED;
+}
+
+static int ddr_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
+{
+	struct ddr_pmu *pmu = hlist_entry_safe(node, struct ddr_pmu, node);
+	int target;
+
+	if (cpu != pmu->cpu)
+		return 0;
+
+	target = cpumask_any_but(cpu_online_mask, cpu);
+	if (target >= nr_cpu_ids)
+		return 0;
+
+	perf_pmu_migrate_context(&pmu->pmu, cpu, target);
+	pmu->cpu = target;
+
+	WARN_ON(irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu)));
+
+	return 0;
+}
+
+static int ddr_perf_probe(struct platform_device *pdev)
+{
+	struct ddr_pmu *pmu;
+	void __iomem *base;
+	int ret, irq;
+	char *name;
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
+	if (!pmu)
+		return -ENOMEM;
+
+	ddr_perf_init(pmu, base, &pdev->dev);
+
+	pmu->devtype_data = of_device_get_match_data(&pdev->dev);
+
+	platform_set_drvdata(pdev, pmu);
+
+	pmu->id = ida_simple_get(&ddr_ida, 0, 0, GFP_KERNEL);
+	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, DDR_PERF_DEV_NAME "%d", pmu->id);
+	if (!name) {
+		ret = -ENOMEM;
+		goto format_string_err;
+	}
+
+	pmu->cpu = raw_smp_processor_id();
+	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, DDR_CPUHP_CB_NAME,
+				      NULL, ddr_perf_offline_cpu);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to add callbacks for multi state\n");
+		goto cpuhp_state_err;
+	}
+	pmu->cpuhp_state = ret;
+
+	/* Register the pmu instance for cpu hotplug */
+	ret = cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+	if (ret) {
+		dev_err(&pdev->dev, "Error %d registering hotplug\n", ret);
+		goto cpuhp_instance_err;
+	}
+
+	/* Request irq */
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(&pdev->dev, "Failed to get irq: %d", irq);
+		ret = irq;
+		goto ddr_perf_err;
+	}
+
+	ret = devm_request_irq(&pdev->dev, irq, ddr_perf_irq_handler,
+			       IRQF_NOBALANCING | IRQF_NO_THREAD,
+			       DDR_CPUHP_CB_NAME, pmu);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Request irq failed: %d", ret);
+		goto ddr_perf_err;
+	}
+
+	pmu->irq = irq;
+	ret = irq_set_affinity(pmu->irq, cpumask_of(pmu->cpu));
+	if (ret) {
+		dev_err(pmu->dev, "Failed to set interrupt affinity\n");
+		goto ddr_perf_err;
+	}
+
+	ret = perf_pmu_register(&pmu->pmu, name, -1);
+	if (ret)
+		goto ddr_perf_err;
+
+	return 0;
+
+ddr_perf_err:
+	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+cpuhp_instance_err:
+	cpuhp_remove_multi_state(pmu->cpuhp_state);
+cpuhp_state_err:
+format_string_err:
+	ida_simple_remove(&ddr_ida, pmu->id);
+	dev_warn(&pdev->dev, "i.MX9 DDR Perf PMU failed (%d), disabled\n", ret);
+	return ret;
+}
+
+static int ddr_perf_remove(struct platform_device *pdev)
+{
+	struct ddr_pmu *pmu = platform_get_drvdata(pdev);
+
+	cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
+	cpuhp_remove_multi_state(pmu->cpuhp_state);
+
+	perf_pmu_unregister(&pmu->pmu);
+
+	ida_simple_remove(&ddr_ida, pmu->id);
+
+	return 0;
+}
+
+static struct platform_driver imx_ddr_pmu_driver = {
+	.driver         = {
+		.name                = "imx9-ddr-pmu",
+		.of_match_table      = imx_ddr_pmu_dt_ids,
+		.suppress_bind_attrs = true,
+	},
+	.probe          = ddr_perf_probe,
+	.remove         = ddr_perf_remove,
+};
+module_platform_driver(imx_ddr_pmu_driver);
+
+MODULE_AUTHOR("Xu Yang <xu.yang_2@nxp.com>");
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("DDRC PerfMon for i.MX9 SoCs");
-- 
2.34.1

