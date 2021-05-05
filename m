Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 504023737B1
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 11:39:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232073AbhEEJj7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 05:39:59 -0400
Received: from foss.arm.com ([217.140.110.172]:41250 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232235AbhEEJj6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 5 May 2021 05:39:58 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3067D6E;
        Wed,  5 May 2021 02:39:01 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A2B503F70D;
        Wed,  5 May 2021 02:39:00 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, arve@google.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: [PATCH v6 4/6] firmware: arm_ffa: Add support for SMCCC as transport to FFA driver
Date:   Wed,  5 May 2021 10:38:41 +0100
Message-Id: <20210505093843.3308691-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505093843.3308691-1-sudeep.holla@arm.com>
References: <20210505093843.3308691-1-sudeep.holla@arm.com>
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

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_ffa/Kconfig  |  5 ++++
 drivers/firmware/arm_ffa/Makefile |  3 ++-
 drivers/firmware/arm_ffa/common.h |  4 ++++
 drivers/firmware/arm_ffa/smccc.c  | 39 +++++++++++++++++++++++++++++++
 4 files changed, 50 insertions(+), 1 deletion(-)
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
index 9195f66f826c..842451666827 100644
--- a/drivers/firmware/arm_ffa/common.h
+++ b/drivers/firmware/arm_ffa/common.h
@@ -16,9 +16,13 @@ typedef void (ffa_fn)(ffa_value_t, ffa_value_t *);
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
index 000000000000..22c34b788769
--- /dev/null
+++ b/drivers/firmware/arm_ffa/smccc.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+
+#include <linux/printk.h>
+
+#include "common.h"
+
+static void __arm_ffa_fn_smc(ffa_value_t args, ffa_value_t *res)
+{
+	arm_smccc_1_2_smc(&args, res);
+}
+
+static void __arm_ffa_fn_hvc(ffa_value_t args, ffa_value_t *res)
+{
+	arm_smccc_1_2_hvc(&args, res);
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

