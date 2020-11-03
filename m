Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB8E02A4D64
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 18:44:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729069AbgKCRoM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 12:44:12 -0500
Received: from foss.arm.com ([217.140.110.172]:53138 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727901AbgKCRoM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 12:44:12 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC9B91500;
        Tue,  3 Nov 2020 09:44:11 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4CA483F718;
        Tue,  3 Nov 2020 09:44:10 -0800 (PST)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>
Subject: [PATCH v2 8/9] firmware: arm_ffa: Setup and register all the KVM managed partitions
Date:   Tue,  3 Nov 2020 17:43:49 +0000
Message-Id: <20201103174350.991593-9-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201103174350.991593-1-sudeep.holla@arm.com>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Parse the FFA nodes from the device-tree and register all the partitions
managed by the KVM hypervisor.

All the partitions including the host(self) are registered as the
character device with a set of file operations. Most of the interface
will concentrated in the ioctl.

For now, we have a tiny set of initial ioctls implemented.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_ffa/Makefile         |   2 +-
 drivers/firmware/arm_ffa/common.h         |   5 +
 drivers/firmware/arm_ffa/driver.c         |  27 +++++
 drivers/firmware/arm_ffa/hyp_partitions.c | 132 ++++++++++++++++++++++
 4 files changed, 165 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_ffa/hyp_partitions.c

diff --git a/drivers/firmware/arm_ffa/Makefile b/drivers/firmware/arm_ffa/Makefile
index 9d9f37523200..eac280c27cac 100644
--- a/drivers/firmware/arm_ffa/Makefile
+++ b/drivers/firmware/arm_ffa/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 ffa-bus-y = bus.o
-ffa-driver-y = driver.o
+ffa-driver-y = driver.o hyp_partitions.o
 ffa-transport-$(CONFIG_ARM_FFA_SMCCC) += smccc.o
 ffa-module-objs := $(ffa-bus-y) $(ffa-driver-y) $(ffa-transport-y)
 obj-$(CONFIG_ARM_FFA_TRANSPORT) = ffa-module.o
diff --git a/drivers/firmware/arm_ffa/common.h b/drivers/firmware/arm_ffa/common.h
index d019348bf67d..12bb960deb09 100644
--- a/drivers/firmware/arm_ffa/common.h
+++ b/drivers/firmware/arm_ffa/common.h
@@ -8,6 +8,7 @@
 
 #include <linux/arm-smccc.h>
 #include <linux/err.h>
+#include <linux/fs.h>
 
 typedef struct arm_smccc_v1_2_res ffa_res_t;
 
@@ -15,8 +16,12 @@ typedef ffa_res_t
 (ffa_fn)(unsigned long, unsigned long, unsigned long, unsigned long,
 	 unsigned long, unsigned long, unsigned long, unsigned long);
 
+int __init ffa_hyp_partitions_init(void);
 int __init arm_ffa_bus_init(void);
 void __exit arm_ffa_bus_exit(void);
+struct ffa_device *ffa_device_get_from_minor(int minor);
+int ffa_setup_partitions(const char *compatible,
+			 const struct file_operations *fops);
 
 #ifdef CONFIG_ARM_FFA_SMCCC
 int __init ffa_transport_init(ffa_fn **invoke_ffa_fn);
diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
index 2e5fa56fffb7..0aa3e4d02896 100644
--- a/drivers/firmware/arm_ffa/driver.c
+++ b/drivers/firmware/arm_ffa/driver.c
@@ -241,6 +241,31 @@ static int ffa_msg_send_direct_req(u16 src_id, u16 dst_id,
 	return 0;
 }
 
+struct ffa_device *ffa_device_get_from_minor(int minor)
+{
+	struct list_head *p;
+	struct ffa_device *ffa_dev = NULL;
+
+	mutex_lock(&ffa_devs_list_mutex);
+
+	list_for_each(p, &ffa_devs_list) {
+		struct device *dev;
+		struct ffa_device *tmp_dev;
+
+		tmp_dev = list_to_ffa_dev(p);
+		dev = &tmp_dev->dev;
+
+		if (minor == MINOR(dev->devt)) {
+			ffa_dev = tmp_dev;
+			break;
+		}
+	}
+
+	mutex_unlock(&ffa_devs_list_mutex);
+
+	return ffa_dev;
+}
+
 static void ffa_device_get(struct ffa_device *ffa_dev)
 {
 	mutex_lock(&ffa_dev->mutex);
@@ -466,6 +491,8 @@ static int __init ffa_init(void)
 	/* Set up all the partitions which have in-kernel drivers */
 	ffa_setup_partitions("arm,ffa-1.0", NULL);
 
+	ffa_hyp_partitions_init();
+
 	return 0;
 free_pages:
 	if (drv_info->tx_buffer)
diff --git a/drivers/firmware/arm_ffa/hyp_partitions.c b/drivers/firmware/arm_ffa/hyp_partitions.c
new file mode 100644
index 000000000000..985f66d4322b
--- /dev/null
+++ b/drivers/firmware/arm_ffa/hyp_partitions.c
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Arm Firmware Framework for ARMv8-A(FFA) userspace interface
+ *
+ * Copyright (C) 2020 Arm Ltd.
+ */
+
+#define pr_fmt(fmt) "ARM FF-A USER : " fmt
+
+#include <linux/arm_ffa.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/mm.h>
+#include <linux/scatterlist.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/uuid.h>
+#include <uapi/linux/arm_ffa.h>
+
+#include "common.h"
+
+struct ffa_dev_data {
+	struct ffa_device *dev;
+	const struct ffa_dev_ops *ops;
+};
+
+static int ffa_open(struct inode *inode, struct file *filp)
+{
+	struct ffa_dev_data *ffa_data;
+
+	ffa_data = kzalloc(sizeof(*ffa_data), GFP_KERNEL);
+	if (!ffa_data)
+		return -ENOMEM;
+
+	ffa_data->dev = ffa_device_get_from_minor(iminor(inode));
+	if (!ffa_data->dev) {
+		kfree(ffa_data);
+		return -EINVAL;
+	}
+
+	ffa_data->ops = ffa_dev_ops_get(ffa_data->dev);
+	if (!ffa_data->ops) {
+		kfree(ffa_data);
+		return -EINVAL;
+	}
+
+	ffa_data->ops->open(ffa_data->dev);
+
+	filp->private_data = ffa_data;
+
+	return 0;
+}
+
+static int ffa_release(struct inode *inode, struct file *filp)
+{
+	struct ffa_dev_data *ffa_data = filp->private_data;
+
+	ffa_data->ops->close(ffa_data->dev);
+
+	filp->private_data = NULL;
+	kfree(ffa_data);
+
+	return 0;
+}
+
+static long ffa_ioctl(struct file *filp, unsigned int ioctl, unsigned long arg)
+{
+	long r = -EINVAL;
+	void __user *argp = (void __user *)arg;
+	struct ffa_dev_data *ffa_data = filp->private_data;
+	struct ffa_device *ffa_dev = ffa_data->dev;
+
+	switch (ioctl) {
+	case FFA_GET_API_VERSION:
+	case FFA_GET_PARTITION_ID:
+		if (arg)
+			return r;
+		return ffa_data->ops->ioctl(ffa_dev, ioctl, NULL);
+	case FFA_GET_PARTITION_INFO: {
+		struct ffa_part_info __user *pinfo = argp;
+		struct ffa_part_info info;
+		unsigned int count;
+
+		r = -EFAULT;
+		if (copy_from_user(&info, pinfo, sizeof(info)))
+			break;
+		count = ffa_data->ops->ioctl(ffa_dev, ioctl, &info);
+		if (count > 1) {
+			r = -E2BIG;
+			break;
+		}
+		r = -EFAULT;
+		if (copy_to_user(pinfo, &info, sizeof(info)))
+			break;
+		r = 0;
+		break;
+	}
+	case FFA_SEND_RECEIVE_SYNC: {
+		struct ffa_send_recv_sync __user *udata = argp;
+		struct ffa_send_recv_sync kdata;
+
+		r = -EFAULT;
+		if (copy_from_user(&kdata, udata, sizeof(kdata)))
+			break;
+		r = ffa_data->ops->ioctl(ffa_dev, ioctl, &kdata);
+		if (r)
+			break;
+		if (copy_to_user(udata, &kdata, sizeof(kdata)))
+			break;
+		break;
+	}
+	default:
+		r = -EINVAL;
+	}
+	return r;
+}
+
+static const struct file_operations ffa_fops = {
+	.owner		= THIS_MODULE,
+	.open		= ffa_open,
+	.release        = ffa_release,
+	.unlocked_ioctl = ffa_ioctl,
+	.llseek		= noop_llseek,
+};
+
+int __init ffa_hyp_partitions_init(void)
+{
+	/* Set up all the partitions that KVM hypervisor maintains */
+	ffa_setup_partitions("arm,ffa-1.0-hypervisor", &ffa_fops);
+
+	return 0;
+}
-- 
2.25.1

