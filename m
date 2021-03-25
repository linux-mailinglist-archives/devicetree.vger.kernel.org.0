Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC5A634942C
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 15:34:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbhCYOdg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 10:33:36 -0400
Received: from foss.arm.com ([217.140.110.172]:51060 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231513AbhCYOdO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Mar 2021 10:33:14 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 134FD1476;
        Thu, 25 Mar 2021 07:33:14 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9B0AA3F792;
        Thu, 25 Mar 2021 07:33:12 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: [PATCH v5 5/7] firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
Date:   Thu, 25 Mar 2021 14:32:53 +0000
Message-Id: <20210325143255.1532452-6-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325143255.1532452-1-sudeep.holla@arm.com>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are requests to keep the transport separate in order to allow
other possible transports like virtio. So let us keep the SMCCC transport
specific routines abstracted.

It is kept simple for now. Once we add another transport, we can develop
better abstraction.

Reviewed-by: Jens Wiklander <jens.wiklander@linaro.org>
Tested-by: Jens Wiklander <jens.wiklander@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_ffa/Kconfig  |  5 +++
 drivers/firmware/arm_ffa/Makefile |  3 +-
 drivers/firmware/arm_ffa/common.h |  4 +++
 drivers/firmware/arm_ffa/smccc.c  | 54 +++++++++++++++++++++++++++++++
 4 files changed, 65 insertions(+), 1 deletion(-)
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
index 82d0d35c5324..9d9f37523200 100644
--- a/drivers/firmware/arm_ffa/Makefile
+++ b/drivers/firmware/arm_ffa/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 ffa-bus-y = bus.o
 ffa-driver-y = driver.o
-ffa-module-objs := $(ffa-bus-y) $(ffa-driver-y)
+ffa-transport-$(CONFIG_ARM_FFA_SMCCC) += smccc.o
+ffa-module-objs := $(ffa-bus-y) $(ffa-driver-y) $(ffa-transport-y)
 obj-$(CONFIG_ARM_FFA_TRANSPORT) = ffa-module.o
diff --git a/drivers/firmware/arm_ffa/common.h b/drivers/firmware/arm_ffa/common.h
index fc6948efe9f3..d019348bf67d 100644
--- a/drivers/firmware/arm_ffa/common.h
+++ b/drivers/firmware/arm_ffa/common.h
@@ -18,9 +18,13 @@ typedef ffa_res_t
 int __init arm_ffa_bus_init(void);
 void __exit arm_ffa_bus_exit(void);
 
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
2.25.1

