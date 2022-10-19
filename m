Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C049604039
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 11:43:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234153AbiJSJni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 05:43:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235216AbiJSJmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 05:42:33 -0400
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2054.outbound.protection.outlook.com [40.107.223.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA95165A9
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 02:19:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n5VJK9EJPBtzDVdMeydNqkA1OlXHo4L1t+YXu5c0FBeD/n7nfcOJEoAgO3Ez3FijRHX8zVXuqNG+2bSsF1dKiKF9pLy77nlkbc+xkUw2bP/MvT13VafWjTZjFLbztnMyVez/WZCDnkfRRp6mRNceMquaENu1yj91akgnXrhddgjvoRuGA/RMO47Z+iLYNhIHNx+MgZUqvaODzBmqdK140xMUaOVBTlKWbWYRVNuXVC1oY2NYjLaC3xluqyclaeX2EN2CD6B5xXxnVqLGvFqv3x47VQpz028g8EYxINXn6ENvm7vsFOF2J56DO1nmH1q71j59Plv78CDkkfjG/7tdYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWv15drktIena1Ok0CIoKdyuzAEQoLEpPslnWg+ETRc=;
 b=SyageRxygdta/4FaUjPU2ufvp/k7qsfAZFrqGEj62fn5+D36oQtQRH0YnEnK25bxQS8rMIlgmofyJCj1TBQxuyoDx44Okh6ZQhkFyOWwbca9jW57rbS670GTmyEiXGm2az/bLDqj9kplx7WFiBet8rAiZyhZPZx3hi7SjuTzscD/7xRCD1V13xOV6ierdW9jDZmcKlbI0RpFw6XO5PGzAS9y8tr+TJlznIlCE7RxEKDry0CHU1iLw+rxW+Hlq3lwASfJYoS8+AQnotmgZUNU6Es7GCKxGs6dtGnaUh66ys2/bXdnr9z2589Gl0TsznlojO+R0maSY4KXngKySq1FCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gWv15drktIena1Ok0CIoKdyuzAEQoLEpPslnWg+ETRc=;
 b=VlCoTYrvtMAC18Jl011drHPJYb6RUi4rS2tpM9Y+E+JImvJSyB/WncWDU3WHS5OX8BsUYobeb1i2fT4lJpuH4jBBNvbcfevYCq1lY1gIgN4AqKrDwmRrWw5bZ7+LBrb7BMfJbK/71EX0JHUOCqYyn9O4Z2JetPEkMhBifa2TiSk=
Received: from BN8PR03CA0036.namprd03.prod.outlook.com (2603:10b6:408:94::49)
 by CH2PR12MB4134.namprd12.prod.outlook.com (2603:10b6:610:a7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Wed, 19 Oct
 2022 09:17:31 +0000
Received: from BN8NAM11FT038.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:94:cafe::55) by BN8PR03CA0036.outlook.office365.com
 (2603:10b6:408:94::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34 via Frontend
 Transport; Wed, 19 Oct 2022 09:17:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 BN8NAM11FT038.mail.protection.outlook.com (10.13.176.246) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5746.16 via Frontend Transport; Wed, 19 Oct 2022 09:17:30 +0000
Received: from SATLEXMB05.amd.com (10.181.40.146) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 19 Oct
 2022 04:17:27 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB05.amd.com
 (10.181.40.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 19 Oct
 2022 04:17:26 -0500
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2375.31 via Frontend
 Transport; Wed, 19 Oct 2022 04:17:23 -0500
From:   Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To:     <linux-arm-kernel@lists.infradead.org>
CC:     <git@amd.com>, <devicetree@vger.kernel.org>, <will@kernel.org>,
        <mark.rutland@arm.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <michal.simek@xilinx.com>
Subject: [PATCH v1 2/2] perf: Add xilinx APM support
Date:   Wed, 19 Oct 2022 14:47:13 +0530
Message-ID: <20221019091713.9285-3-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
References: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT038:EE_|CH2PR12MB4134:EE_
X-MS-Office365-Filtering-Correlation-Id: 2dd10edb-00fa-4f6e-670d-08dab1b2bfb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rm71mgaV6ZOdSZXqiYVn07ah5kNHCxsal4kRe8EsAmZRhh1+ILN8lCGnS7i/CcY+ypaNXTqeGi96C+vD0cWIXFD3iyGqWsFeZLx9jpB04O071dIEayf+TrLZyFuaqBR1nAgpDvpO2zdIS9GSXHYxu10KQCsYYKI4GxSUG10czd+JzoMt0HSl9wiSu0xinrsqYhwaDJMm3H2nycRYI3BwDkKAktm4pknOlp9dxxcma4QMpM6CwCV4kms5FMulG+sWqwhZriUWXLv9lW1OXRrMoLZMYZsTfFgtgz4F3Ok5csyje0XNU8DhVvuZhR/7WWkjNApUKeXYKn7OCYzyhD5eFNKVlH7KeYocwJP9JGtBMac0SKMhCubPJBNAUfAykiw/LOtQm7Rnpel5HGaNZzrrTSA53akRtumMitUi1irzIowhxBTIpBARZrUup1t8UpTebJxToU9HJlsTK5vHQHB/Jg6v7Lr4BkeVTjcm0OldDHNdE5KTO2npz3q8gCWrE6+897mZ9UBOtoIzA8DOS4tS4soaGTQzsHdVcXDM+lSI/V767ZY4+F4zGJ4XlxU0TEO6r+HQLMe1FyiOfpk+Om6pqeiXy8OyGBSCN8tMIunaPVVkZRkuTWueBUhGr81n2vfr15MVD1H1QQqcC7JVoG9MkB5fd+Y3msiB6M1Yqven9I06DWAyKB1OFF+8tm0z6kkCcl130aESjWq+EtFm+HE9KmlILIec3/TarSHvR9CUvNhJFkPvv01HXQ7rpfX/qoLljbZllIGlPsE6TltIAVuNc30kwfLPpGHMfkeceIVfc1u1aXQODdGSNy2R6cKvmI7c
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(376002)(346002)(396003)(451199015)(36840700001)(40470700004)(46966006)(2616005)(36860700001)(40480700001)(107886003)(26005)(6666004)(478600001)(83380400001)(336012)(1076003)(186003)(44832011)(5660300002)(40460700003)(82310400005)(6916009)(54906003)(4326008)(316002)(70206006)(41300700001)(8936002)(8676002)(70586007)(30864003)(47076005)(426003)(86362001)(36756003)(81166007)(356005)(82740400003)(2906002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 09:17:30.4443
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dd10edb-00fa-4f6e-670d-08dab1b2bfb4
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT038.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4134
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The programmable AXI performance monitors (APM) collect real-time
transaction metrics at multiple points on the AXI interconnect to
help system software profile real-time activity. In our platform
we have it in PL and also some of the hardened instances in PS.
Add Xilinx APM driver support.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
---

Changes in v1:
    - Fix a warn

 drivers/perf/Kconfig      |  11 +
 drivers/perf/Makefile     |   1 +
 drivers/perf/xilinx_apm.c | 517 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 529 insertions(+)
 create mode 100644 drivers/perf/xilinx_apm.c

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index 341010f20b77..a9daeb750710 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -190,6 +190,17 @@ config ALIBABA_UNCORE_DRW_PMU
 	  Support for Driveway PMU events monitoring on Yitian 710 DDR
 	  Sub-system.
 
+config XILINX_APM_PMU
+	tristate "Enable PMU support for the Xilinx APM controller"
+	help
+	  Enables perf support for the Xilinx Axi Performance Monitor
+	  controller.The IP AXI Performance Monitor core measures
+	  major performance metrics for the AMBA AXI system. The Performance
+	  Monitor measures bus latency of a specific master/slave (AXI4/AXI3/AXI4-Stream/AXI4-Lite)
+	  in a system and the amount of memory traffic for specific durations.
+	  This core can also be used for real-time profiling for software applications.
+
+
 source "drivers/perf/hisilicon/Kconfig"
 
 config MARVELL_CN10K_DDR_PMU
diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
index 050d04ee19dd..161b328f6108 100644
--- a/drivers/perf/Makefile
+++ b/drivers/perf/Makefile
@@ -21,3 +21,4 @@ obj-$(CONFIG_MARVELL_CN10K_TAD_PMU) += marvell_cn10k_tad_pmu.o
 obj-$(CONFIG_MARVELL_CN10K_DDR_PMU) += marvell_cn10k_ddr_pmu.o
 obj-$(CONFIG_APPLE_M1_CPU_PMU) += apple_m1_cpu_pmu.o
 obj-$(CONFIG_ALIBABA_UNCORE_DRW_PMU) += alibaba_uncore_drw_pmu.o
+obj-$(CONFIG_XILINX_APM_PMU) += xilinx_apm.o
diff --git a/drivers/perf/xilinx_apm.c b/drivers/perf/xilinx_apm.c
new file mode 100644
index 000000000000..5fb1b75bcbcd
--- /dev/null
+++ b/drivers/perf/xilinx_apm.c
@@ -0,0 +1,517 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for Xilinx APM Performance Reporting
+ *
+ * Copyright 2022 AMD, Inc.
+ *
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/perf_event.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+
+#define XAPM_MODE_ADVANCED	1
+#define XAPM_MODE_PROFILE	2
+#define XAPM_MODE_TRACE		3
+
+#define XAPM_MSR_OFFSET			0x44
+#define XAPM_MSR_COUNTER		8
+#define XAPM_SLOTID_SHIFT		0x5
+#define XAPM_CTRL_OFFSET		0x300
+#define XAPM_MCR_OFFSET			0x100
+#define XAPM_MCR_COUNTER		16
+#define XAPM_RR				0x108
+
+#define XAPM_METRICS_CNT_EN		BIT(0)
+#define XAPM_GLOBAL_CLK_CNT_EN		BIT(16)
+#define XAPM_COUNTER_MASK		0xF
+#define XAPM_EVENT_MASK			GENMASK_ULL(11, 0)
+#define XAPM_EVENT_SHIFT		0
+#define XAPM_EVTYPE_MASK		GENMASK_ULL(15, 12)
+#define XAPM_EVTYPE_SHIFT		12
+#define XAPM_EVTYPE_APM			1
+
+#define get_event(_config)	FIELD_GET(XAPM_EVENT_MASK, _config)
+#define get_evtype(_config)	FIELD_GET(XAPM_EVTYPE_MASK, _config)
+
+#define to_xapm_perf_priv(_pmu)	container_of(_pmu, struct xapm_perf_priv, pmu)
+
+#define XAPM_EVENT_CONFIG(_event, _type)					\
+	((void *)((((_event) << XAPM_EVENT_SHIFT) & XAPM_EVENT_MASK) |	\
+		(((_type) << XAPM_EVTYPE_SHIFT) & XAPM_EVTYPE_MASK)))
+
+PMU_FORMAT_ATTR(event,		"config:0-11");
+
+/*
+ * Performance Counter Registers for APM.
+ *
+ */
+enum metric {
+	WRITE_TRANSACTION	= 0,
+	READ_TRANSACTION	= 1,
+	WRITE_BYTE		= 2,
+	READ_BYTE		= 3,
+	WRITE_BEAT		= 4,
+	READ_LATENCY		= 5,
+	WRITE_LATENCY		= 6,
+	SLV_WR_IDLE		= 7,
+	MST_RD_IDLE		= 8,
+	BVALID			= 9,
+	WLASTS			= 9,
+	RLASTS			= 10,
+	MIN_WR_LATENCY		= 11,
+	MAX_WR_LATENCY		= 12,
+	MIN_RD_LATENCY		= 13,
+	MAX_RD_LATENCY		= 14,
+	MAX_METRIC		= 15
+};
+
+/**
+ * struct xapm_perf_priv - priv data structure for xapm perf driver
+ *
+ * @dev: parent device.
+ * @ioaddr: mapped base address of DDR region.
+ * @pmu: pmu data structure for xapm perf counters.
+ * @cpu: active CPU to which the PMU is bound for accesses.
+ * @mode: Mode of APM eg advanced/profile/trace .
+ * @counter: current counter.
+ * @slot: current slot to be read.
+ * @range: Range to be allowed.
+ * @node: handle to the xapm node.
+ * @maxslots: Maximum number of slots.
+ * @cpuhp_state: state for CPU hotplug notification.
+ * @clk: clock handle.
+ */
+struct xapm_perf_priv {
+	struct device *dev;
+	void __iomem *ioaddr;
+	struct pmu pmu;
+	unsigned int cpu;
+	u32 mode;
+	u32 counter;
+	u32 slot;
+	u32 maxslots;
+	u32 range;
+	struct hlist_node node;
+	enum cpuhp_state cpuhp_state;
+	struct clk *clk;
+};
+
+static ssize_t cpumask_show(struct device *dev,
+			    struct device_attribute *attr, char *buf)
+{
+	struct pmu *pmu = dev_get_drvdata(dev);
+	struct xapm_perf_priv *priv;
+
+	priv = to_xapm_perf_priv(pmu);
+
+	return cpumap_print_to_pagebuf(true, buf, cpumask_of(priv->cpu));
+}
+static DEVICE_ATTR_RO(cpumask);
+
+static ssize_t slot_store(struct device *dev,
+			  struct device_attribute *attr,
+			  const char *buf, size_t size)
+{
+	int ret;
+	struct pmu *pmu = dev_get_drvdata(dev);
+	struct xapm_perf_priv *priv;
+
+	priv = to_xapm_perf_priv(pmu);
+	ret = kstrtou32(buf, 0, &priv->slot);
+	if (ret < 0)
+		return ret;
+
+	if (priv->slot > priv->maxslots)
+		return -EINVAL;
+
+	return size;
+}
+static DEVICE_ATTR_WO(slot);
+
+static ssize_t range_store(struct device *dev,
+			   struct device_attribute *attr,
+			   const char *buf, size_t size)
+{
+	int ret;
+	struct pmu *pmu = dev_get_drvdata(dev);
+	struct xapm_perf_priv *priv;
+
+	priv = to_xapm_perf_priv(pmu);
+	ret = kstrtou32(buf, 0, &priv->range);
+	if (ret < 0)
+		return ret;
+
+	writel(priv->range, priv->ioaddr + XAPM_RR);
+
+	return size;
+}
+static DEVICE_ATTR_WO(range);
+
+static struct attribute *xapm_perf_cpumask_attrs[] = {
+	&dev_attr_cpumask.attr,
+	&dev_attr_slot.attr,
+	&dev_attr_range.attr,
+	NULL,
+};
+
+static struct attribute_group xapm_perf_cpumask_group = {
+	.attrs = xapm_perf_cpumask_attrs,
+};
+
+static struct attribute *xapm_perf_format_attrs[] = {
+	&format_attr_event.attr,
+	NULL,
+};
+
+static struct attribute_group xapm_perf_format_group = {
+	.name = "format",
+	.attrs = xapm_perf_format_attrs,
+};
+
+static ssize_t xapm_perf_event_show(struct device *dev,
+				    struct device_attribute *attr, char *buf)
+{
+	struct dev_ext_attribute *eattr;
+	unsigned long config;
+	char *ptr = buf;
+
+	eattr = container_of(attr, struct dev_ext_attribute, attr);
+	config = (unsigned long)eattr->var;
+
+	ptr += sprintf(ptr, "event=0x%02x\n", (unsigned int)get_event(config));
+
+	return (ssize_t)(ptr - buf);
+}
+
+#define XAPM_EVENT_ATTR(_name) \
+	__ATTR(_name, 0444, xapm_perf_event_show, NULL)
+
+#define XAPM_EVENT(_name, _event)					\
+static struct dev_ext_attribute xapm_perf_event_##_name = {		\
+	.attr = XAPM_EVENT_ATTR(xapm_##_name),				\
+	.var = XAPM_EVENT_CONFIG(_event, XAPM_EVTYPE_APM),		\
+}
+
+XAPM_EVENT(write_cnt_0,   WRITE_TRANSACTION | (0 << 4));
+XAPM_EVENT(read_cnt_0,  READ_TRANSACTION | (0 << 4));
+XAPM_EVENT(write_cnt_1,   WRITE_TRANSACTION | (1 << 4));
+XAPM_EVENT(read_cnt_1,  READ_TRANSACTION | (1 << 4));
+XAPM_EVENT(write_cnt_2,   WRITE_TRANSACTION | (2 << 4));
+XAPM_EVENT(read_cnt_2,  READ_TRANSACTION | (2 << 4));
+XAPM_EVENT(write_cnt_3,   WRITE_TRANSACTION | (3 << 4));
+XAPM_EVENT(read_cnt_3,  READ_TRANSACTION | (3 << 4));
+XAPM_EVENT(write_cnt_4,   WRITE_TRANSACTION | (4 << 4));
+XAPM_EVENT(read_cnt_4,  READ_TRANSACTION | (4 << 4));
+XAPM_EVENT(write_cnt_5,   WRITE_TRANSACTION | (5 << 4));
+XAPM_EVENT(read_cnt_5,  READ_TRANSACTION | (5 << 4));
+XAPM_EVENT(write_cnt_6,   WRITE_TRANSACTION | (6 << 4));
+XAPM_EVENT(read_cnt_6,  READ_TRANSACTION | (6 << 4));
+XAPM_EVENT(write_cnt_7,   WRITE_TRANSACTION | (7 << 4));
+XAPM_EVENT(read_cnt_7,  READ_TRANSACTION | (7 << 4));
+
+static struct attribute *xapm_perf_events_attrs_all[17] = {
+	&xapm_perf_event_read_cnt_0.attr.attr,
+	&xapm_perf_event_write_cnt_0.attr.attr,
+	&xapm_perf_event_read_cnt_1.attr.attr,
+	&xapm_perf_event_write_cnt_1.attr.attr,
+	&xapm_perf_event_read_cnt_2.attr.attr,
+	&xapm_perf_event_write_cnt_2.attr.attr,
+	&xapm_perf_event_read_cnt_3.attr.attr,
+	&xapm_perf_event_write_cnt_3.attr.attr,
+	&xapm_perf_event_read_cnt_4.attr.attr,
+	&xapm_perf_event_write_cnt_4.attr.attr,
+	&xapm_perf_event_read_cnt_5.attr.attr,
+	&xapm_perf_event_write_cnt_5.attr.attr,
+	&xapm_perf_event_read_cnt_6.attr.attr,
+	&xapm_perf_event_write_cnt_6.attr.attr,
+	&xapm_perf_event_read_cnt_7.attr.attr,
+	&xapm_perf_event_write_cnt_7.attr.attr,
+	NULL,
+};
+
+static u64 xapm_read_event_counter(struct xapm_perf_priv *priv, u32 event)
+{
+	void __iomem *base = priv->ioaddr;
+	u64 counter;
+	u64 reg;
+
+	priv->counter = event >> 4;
+
+	reg = readl(base + XAPM_MSR_OFFSET);
+	reg =	reg & ~(XAPM_COUNTER_MASK  << priv->counter * XAPM_MSR_COUNTER);
+	reg =	reg | (event) << priv->counter * 8;
+	reg =	reg | (priv->slot) << (priv->counter * 8 + XAPM_SLOTID_SHIFT);
+	writel(reg, base + XAPM_MSR_OFFSET);
+
+	counter = readl(base + XAPM_MCR_OFFSET + (priv->counter * XAPM_MCR_COUNTER));
+
+	return counter;
+}
+
+static int xapm_perf_event_init(struct perf_event *event)
+{
+	struct xapm_perf_priv *priv = to_xapm_perf_priv(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	void __iomem *base = priv->ioaddr;
+	u32 reg;
+
+	hwc->event_base = get_evtype(event->attr.config);
+	hwc->idx = (int)get_event(event->attr.config);
+
+	reg = readl(base + XAPM_CTRL_OFFSET);
+	reg |= XAPM_GLOBAL_CLK_CNT_EN;
+	reg |= XAPM_METRICS_CNT_EN;
+	writel(reg, base + XAPM_CTRL_OFFSET);
+
+	return 0;
+}
+
+static void xapm_perf_event_update(struct perf_event *event)
+{
+	struct xapm_perf_priv *priv = to_xapm_perf_priv(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	u64 now, prev, delta;
+
+	now = xapm_read_event_counter(priv, (u32)hwc->idx);
+	prev = local64_read(&hwc->prev_count);
+	delta = now - prev;
+
+	local64_add(delta, &event->count);
+}
+
+static void xapm_perf_event_start(struct perf_event *event, int flags)
+{
+	struct xapm_perf_priv *priv = to_xapm_perf_priv(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	u64 count;
+
+	count = xapm_read_event_counter(priv, (u32)hwc->idx);
+	local64_set(&hwc->prev_count, count);
+}
+
+static void xapm_perf_event_stop(struct perf_event *event, int flags)
+{
+	xapm_perf_event_update(event);
+}
+
+static int xapm_perf_event_add(struct perf_event *event, int flags)
+{
+	if (flags & PERF_EF_START)
+		xapm_perf_event_start(event, flags);
+
+	return 0;
+}
+
+static void xapm_perf_event_del(struct perf_event *event, int flags)
+{
+	xapm_perf_event_stop(event, PERF_EF_UPDATE);
+}
+
+static void xapm_perf_event_read(struct perf_event *event)
+{
+	xapm_perf_event_update(event);
+}
+
+static int xapm_perf_offline_cpu(unsigned int cpu, struct hlist_node *node)
+{
+	struct xapm_perf_priv *priv;
+	int target;
+
+	priv = hlist_entry_safe(node, struct xapm_perf_priv, node);
+
+	if (cpu != priv->cpu)
+		return 0;
+
+	target = cpumask_any_but(cpu_online_mask, cpu);
+	if (target >= nr_cpu_ids)
+		return 0;
+
+	priv->cpu = target;
+	return 0;
+}
+
+static int xapm_perf_probe(struct platform_device *pdev)
+{
+	static struct attribute_group xapm_perf_events_group;
+	static struct attribute *xapm_perf_events_attrs[17];
+	struct xapm_perf_priv *priv;
+	void __iomem *baseaddr;
+	struct resource *res;
+	u32 numcounters;
+	struct pmu *pmu;
+	u32 mode = 0;
+	char *name;
+	int ret, i;
+	static const struct attribute_group *xapm_perf_groups[] = {
+		&xapm_perf_format_group,
+		&xapm_perf_cpumask_group,
+		&xapm_perf_events_group,
+		NULL,
+	};
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, priv);
+	baseaddr = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+	if (IS_ERR(baseaddr))
+		return PTR_ERR(baseaddr);
+
+	priv->dev = &pdev->dev;
+	priv->ioaddr = baseaddr;
+
+	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,num-of-counters",
+				   &numcounters);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "no property xlnx,num-of-counters");
+		return ret;
+	}
+
+	priv->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		if (PTR_ERR(priv->clk) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "axi clock error\n");
+		return PTR_ERR(priv->clk);
+	}
+
+	priv->cpu = raw_smp_processor_id();
+
+	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
+				      "perf/xapm/xapm:online",
+				      NULL, xapm_perf_offline_cpu);
+	if (ret < 0)
+		return ret;
+
+	priv->cpuhp_state = ret;
+	priv->mode = XAPM_MODE_ADVANCED;
+
+	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,enable-profile", &mode);
+	if (ret < 0)
+		dev_info(&pdev->dev, "no property xlnx,enable-profile\n");
+	else if (mode)
+		priv->mode = XAPM_MODE_PROFILE;
+
+	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,enable-trace", &mode);
+	if (ret < 0)
+		dev_info(&pdev->dev, "no property xlnx,enable-trace\n");
+	else if (mode)
+		priv->mode = XAPM_MODE_TRACE;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to enable clock.\n");
+		goto cpuhp_instance_err;
+	}
+	/* Register the pmu instance for cpu hotplug */
+	ret = cpuhp_state_add_instance_nocalls(priv->cpuhp_state, &priv->node);
+	if (ret)
+		goto cpuhp_instance_err;
+
+	for (i = 0; i < numcounters * 2; i++)
+		xapm_perf_events_attrs[i] = xapm_perf_events_attrs_all[i];
+	xapm_perf_events_attrs[i] = NULL;
+
+	xapm_perf_events_group.name = "events";
+	xapm_perf_events_group.attrs = xapm_perf_events_attrs;
+
+	pmu = &priv->pmu;
+
+	pmu->task_ctx_nr =	perf_invalid_context;
+	pmu->attr_groups =	xapm_perf_groups;
+	pmu->event_init =	xapm_perf_event_init;
+	pmu->add =		xapm_perf_event_add;
+	pmu->del =		xapm_perf_event_del;
+	pmu->start =		xapm_perf_event_start;
+	pmu->stop =		xapm_perf_event_stop;
+	pmu->read =		xapm_perf_event_read;
+	pmu->capabilities =	PERF_PMU_CAP_NO_INTERRUPT |
+				PERF_PMU_CAP_NO_EXCLUDE;
+
+	ret = of_property_read_u32(pdev->dev.of_node, "xlnx,num-monitor-slots",
+				   &priv->maxslots);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "no property xlnx,num-monitor-slots");
+		return ret;
+	}
+
+	name = devm_kasprintf(priv->dev, GFP_KERNEL, "xapm%llx_counter",
+			      (u64)res->start);
+	ret = perf_pmu_register(pmu, name, -1);
+	if (ret)
+		goto pmu_register_err;
+
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
+	return 0;
+pmu_register_err:
+	cpuhp_state_remove_instance_nocalls(priv->cpuhp_state, &priv->node);
+cpuhp_instance_err:
+	cpuhp_remove_multi_state(priv->cpuhp_state);
+	return ret;
+}
+
+static int xapm_perf_remove(struct platform_device *pdev)
+{
+	struct xapm_perf_priv *priv = platform_get_drvdata(pdev);
+
+	perf_pmu_unregister(&priv->pmu);
+	cpuhp_state_remove_instance_nocalls(priv->cpuhp_state, &priv->node);
+	clk_disable_unprepare(priv->clk);
+	pm_runtime_disable(&pdev->dev);
+	pm_runtime_set_suspended(&pdev->dev);
+	return 0;
+}
+
+static int __maybe_unused xapm_runtime_suspend(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct xapm_perf_priv *priv = platform_get_drvdata(pdev);
+
+	clk_disable_unprepare(priv->clk);
+	return 0;
+};
+
+static int __maybe_unused xapm_runtime_resume(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct xapm_perf_priv *priv = platform_get_drvdata(pdev);
+	int ret;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to enable clock.\n");
+		return ret;
+	}
+	return 0;
+};
+
+static const struct dev_pm_ops xapm_dev_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(xapm_runtime_suspend, xapm_runtime_resume)
+	SET_RUNTIME_PM_OPS(xapm_runtime_suspend,
+			   xapm_runtime_resume, NULL)
+};
+
+static const struct of_device_id xapm_perf_match[] = {
+	{ .compatible = "xlnx,axi-perf-monitor", },
+	{},
+};
+
+static struct platform_driver xlnx_apm_driver = {
+	.driver = {
+		.name = "xlnx_apm_perf",
+		.of_match_table = xapm_perf_match,
+		.suppress_bind_attrs = true,
+		.pm = &xapm_dev_pm_ops,
+	},
+	.probe = xapm_perf_probe,
+	.remove = xapm_perf_remove,
+};
+builtin_platform_driver(xlnx_apm_driver);
-- 
2.17.1

