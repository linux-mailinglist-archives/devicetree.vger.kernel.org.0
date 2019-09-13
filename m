Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3FF4FB1CAB
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 13:53:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729470AbfIMLx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 07:53:29 -0400
Received: from foss.arm.com ([217.140.110.172]:42134 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727540AbfIMLx3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Sep 2019 07:53:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74D681570;
        Fri, 13 Sep 2019 04:53:28 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 219C43F71F;
        Fri, 13 Sep 2019 04:53:25 -0700 (PDT)
From:   Andrew Murray <andrew.murray@arm.com>
To:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Mike Leach <mike.leach@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>, Al.Grant@arm.com,
        Leo Yan <leo.yan@linaro.org>, devicetree@vger.kernel.org,
        coresight@lists.linaro.org
Subject: [PATCH v6 3/3] coresight: etm4x: save/restore state for external agents
Date:   Fri, 13 Sep 2019 12:53:12 +0100
Message-Id: <20190913115312.12943-4-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913115312.12943-1-andrew.murray@arm.com>
References: <20190913115312.12943-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some hardware will ignore bit TRCPDCR.PU which is used to signal
to hardware that power should not be removed from the trace unit. Much like
self-hosted debug, we should also save/restore the trace unit state when
it is in use by external agents.

We wish to avoid saving the hardware state when coresight isn't in use
to reduce PM latency - However as external trace/debug is designed to be
unintrusive to the CPU, the only way of determining that an external agent is
present is to read the claim tags (TRCCLAIMCLR). Unfortunately this register
needs power and clocking - something it won't have when coresight isn't in use.
We also don't want to temporarily enable it due to the latency and PM context.

Let's compromise by adding a module parameter that will keep the trace unit
powered and clocked, thus allowing us to only save/restore state when external
trace (or self-hosted) is in use. Though please note that this doesn't allow
for tracing from boot on hardware that needs save/restore as the CPU may idle
prior to the ETMv4 driver starting and adding PM hooks to save/restore.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 39 +++++++++++++++++--
 drivers/hwtracing/coresight/coresight.c       |  2 +-
 include/linux/coresight.h                     |  7 ++++
 3 files changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 4cecabdd051b..3cb9ba9a6ddd 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -42,11 +42,12 @@ MODULE_PARM_DESC(boot_enable, "Enable tracing on boot");
 #define PARAM_PM_SAVE_FIRMWARE	  0 /* save self-hosted state as per firmware */
 #define PARAM_PM_SAVE_NEVER	  1 /* never save any state */
 #define PARAM_PM_SAVE_SELF_HOSTED 2 /* save self-hosted state only */
+#define PARAM_PM_SAVE_ALWAYS	  3 /* save all state (keeps power on) */
 
 static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
 module_param(pm_save_enable, int, 0444);
 MODULE_PARM_DESC(pm_save_enable,
-	"Save/restore state on power down: 1 = never, 2 = self-hosted");
+	"Save/restore state on power down: 1 = never, 2 = self-hosted, 3 = self-hosted/external (keeps power on)");
 
 /* The number of ETMv4 currently registered */
 static int etm4_count;
@@ -1331,6 +1332,23 @@ static void etm4_cpu_restore(struct etmv4_drvdata *drvdata)
 	CS_LOCK(drvdata->base);
 }
 
+static bool etm4_coresight_in_use(struct etmv4_drvdata *drvdata)
+{
+	/* Self-hosted session in progress? */
+	if (local_read(&drvdata->mode))
+		return true;
+
+	/*
+	 * External agents can be detected through claim tags however we
+	 * only read these tags if the trace unit is powered.
+	 */
+	if (drvdata->csdev && pm_runtime_active(drvdata->csdev->dev.parent))
+		if (coresight_is_claimed_any(drvdata->base))
+			return true;
+
+	return false;
+}
+
 static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
 			      void *v)
 {
@@ -1350,8 +1368,8 @@ static int etm4_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
 
 	switch (cmd) {
 	case CPU_PM_ENTER:
-		/* save the state if self-hosted coresight is in use */
-		if (local_read(&drvdata->mode))
+		/* Save the state if coresight is in use */
+		if (etm4_coresight_in_use(drvdata))
 			if (etm4_cpu_save(drvdata))
 				return NOTIFY_BAD;
 		break;
@@ -1488,7 +1506,20 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 		goto err_arch_supported;
 	}
 
-	pm_runtime_put(&adev->dev);
+	/*
+	 * We may wish to save the hardware state when coresight is in use so
+	 * that we can recover from lost context during PM events. However as
+	 * external trace/debug is designed to be unintrusive to the CPU, the
+	 * only way of determining that an external agent is present is to read
+	 * the claim tags (TRCCLAIMCLR). Unfortunately this register needs power
+	 * and clocking - something it won't have when coresight isn't in use.
+	 * Therefore we provide a module parameter that keeps the trace unit
+	 * powered and clocked, thus allowing us to only save/restore state
+	 * when external trace (or self-hosted) is in use.
+	 */
+	if (pm_save_enable != PARAM_PM_SAVE_ALWAYS)
+		pm_runtime_put(&adev->dev);
+
 	dev_info(&drvdata->csdev->dev, "CPU%d: ETM v%d.%d initialized\n",
 		 drvdata->cpu, drvdata->arch >> 4, drvdata->arch & 0xf);
 
diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
index c2a48a4e73ea..66ea69b0470b 100644
--- a/drivers/hwtracing/coresight/coresight.c
+++ b/drivers/hwtracing/coresight/coresight.c
@@ -140,7 +140,7 @@ static inline bool coresight_is_claimed_self_hosted(void __iomem *base)
 	return coresight_read_claim_tags(base) == CORESIGHT_CLAIM_SELF_HOSTED;
 }
 
-static inline bool coresight_is_claimed_any(void __iomem *base)
+bool coresight_is_claimed_any(void __iomem *base)
 {
 	return coresight_read_claim_tags(base) != 0;
 }
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 44e552de419c..65bfd2cb0283 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -286,6 +286,8 @@ extern void coresight_disclaim_device_unlocked(void __iomem *base);
 extern char *coresight_alloc_device_name(struct coresight_dev_list *devs,
 					 struct device *dev);
 
+extern bool coresight_is_claimed_any(void __iomem *base);
+
 extern bool coresight_loses_context_with_cpu(struct device *dev);
 #else
 static inline struct coresight_device *
@@ -309,6 +311,11 @@ static inline int coresight_claim_device(void __iomem *base)
 static inline void coresight_disclaim_device(void __iomem *base) {}
 static inline void coresight_disclaim_device_unlocked(void __iomem *base) {}
 
+static inline bool coresight_is_claimed_any(void __iomem *base)
+{
+	return false;
+}
+
 static inline bool coresight_loses_context_with_cpu(struct device *dev)
 {
 	return false;
-- 
2.21.0

