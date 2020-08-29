Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2B0A256942
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 19:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728452AbgH2RJm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 13:09:42 -0400
Received: from foss.arm.com ([217.140.110.172]:45100 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728471AbgH2RJl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Aug 2020 13:09:41 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C0A7101E;
        Sat, 29 Aug 2020 10:09:40 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6CCBA3F71F;
        Sat, 29 Aug 2020 10:09:39 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, kernel-team@android.com,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: [PATCH 7/9] firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
Date:   Sat, 29 Aug 2020 18:09:21 +0100
Message-Id: <20200829170923.29949-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200829170923.29949-1-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are requests to keep the transport separate in order to allow
other possible transports like virtio. So let us keep the SMCCC transport
specifi routines abstracted.

It is kept simple for now. Once we add another transport, we can develop
better abstraction.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_ffa/Kconfig  |  5 +++
 drivers/firmware/arm_ffa/Makefile |  1 +
 drivers/firmware/arm_ffa/common.h |  4 +++
 drivers/firmware/arm_ffa/smccc.c  | 54 +++++++++++++++++++++++++++++++
 4 files changed, 64 insertions(+)
 create mode 100644 drivers/firmware/arm_ffa/smccc.c

diff --git a/drivers/firmware/arm_ffa/Kconfig b/drivers/firmware/arm_ffa/Kconfig
index 261a3660650a..5e3ae5cf82e8 100644
--- a/drivers/firmware/arm_ffa/Kconfig
+++ b/drivers/firmware/arm_ffa/Kconfig
@@ -14,3 +14,8 @@ config ARM_FFA_TRANSPORT
 
 	  This driver provides interface for all the client drivers making
 	  use of the features offered by ARM FF-A.
+
+config ARM_FFA_SMCCC
+	bool
+	default ARM_FFA_TRANSPORT
+	depends on ARM64 && HAVE_ARM_SMCCC_DISCOVERY
diff --git a/drivers/firmware/arm_ffa/Makefile b/drivers/firmware/arm_ffa/Makefile
index 1a9bd2bf8752..1aaac512384c 100644
--- a/drivers/firmware/arm_ffa/Makefile
+++ b/drivers/firmware/arm_ffa/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_ARM_FFA_TRANSPORT) = ffa-bus.o ffa-driver.o
 ffa-bus-y = bus.o
 ffa-driver-y = driver.o
+ffa-driver-$(CONFIG_ARM_FFA_SMCCC) += smccc.o
diff --git a/drivers/firmware/arm_ffa/common.h b/drivers/firmware/arm_ffa/common.h
index 720c8425dfd6..10ac3f363f52 100644
--- a/drivers/firmware/arm_ffa/common.h
+++ b/drivers/firmware/arm_ffa/common.h
@@ -15,9 +15,13 @@ typedef ffa_res_t
 (ffa_fn)(unsigned long, unsigned long, unsigned long, unsigned long,
 	 unsigned long, unsigned long, unsigned long, unsigned long);
 
+#ifdef CONFIG_ARM_FFA_SMCCC
+int __init ffa_transport_init(ffa_fn **invoke_ffa_fn);
+#else
 static inline int __init ffa_transport_init(ffa_fn **invoke_ffa_fn)
 {
 	return -EOPNOTSUPP;
 }
+#endif
 
 #endif /* _FFA_COMMON_H */
diff --git a/drivers/firmware/arm_ffa/smccc.c b/drivers/firmware/arm_ffa/smccc.c
new file mode 100644
index 000000000000..b93d281d2399
--- /dev/null
+++ b/drivers/firmware/arm_ffa/smccc.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+
+#include <linux/printk.h>
+
+#include "common.h"
+
+static struct arm_smccc_v1_2_res
+__arm_ffa_fn_smc(unsigned long function_id, unsigned long arg0,
+		 unsigned long arg1, unsigned long arg2, unsigned long arg3,
+		 unsigned long arg4, unsigned long arg5, unsigned long arg6)
+{
+	struct arm_smccc_v1_2_res res;
+
+	arm_smccc_v1_2_smc(function_id, arg0, arg1, arg2, arg3, arg4, arg5,
+			   arg6, &res);
+
+	return res;
+}
+
+static struct arm_smccc_v1_2_res
+__arm_ffa_fn_hvc(unsigned long function_id, unsigned long arg0,
+		 unsigned long arg1, unsigned long arg2, unsigned long arg3,
+		 unsigned long arg4, unsigned long arg5, unsigned long arg6)
+{
+	struct arm_smccc_v1_2_res res;
+
+	arm_smccc_v1_2_hvc(function_id, arg0, arg1, arg2, arg3, arg4, arg5,
+			   arg6, &res);
+	return res;
+}
+
+int __init ffa_transport_init(ffa_fn **invoke_ffa_fn)
+{
+	enum arm_smccc_conduit conduit;
+
+	if (arm_smccc_get_version() < ARM_SMCCC_VERSION_1_2)
+		return -EOPNOTSUPP;
+
+	conduit = arm_smccc_1_1_get_conduit();
+	if (conduit == SMCCC_CONDUIT_NONE) {
+		pr_err("%s: invalid SMCCC conduit\n", __func__);
+		return -EOPNOTSUPP;
+	}
+
+	if (conduit == SMCCC_CONDUIT_SMC)
+		*invoke_ffa_fn = __arm_ffa_fn_smc;
+	else
+		*invoke_ffa_fn = __arm_ffa_fn_hvc;
+
+	return 0;
+}
-- 
2.17.1

