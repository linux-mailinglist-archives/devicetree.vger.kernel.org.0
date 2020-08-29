Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68773256944
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 19:09:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728479AbgH2RJo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 13:09:44 -0400
Received: from foss.arm.com ([217.140.110.172]:45064 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728471AbgH2RJn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Aug 2020 13:09:43 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8D78113E;
        Sat, 29 Aug 2020 10:09:42 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D67EC3F71F;
        Sat, 29 Aug 2020 10:09:41 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Sudeep Holla <sudeep.holla@arm.com>, kernel-team@android.com,
        Will Deacon <will@kernel.org>, tsoni@quicinc.com,
        pratikp@quicinc.com
Subject: [PATCH 9/9] firmware: arm_ffa: Setup in-kernel users of FFA partitions
Date:   Sat, 29 Aug 2020 18:09:23 +0100
Message-Id: <20200829170923.29949-10-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200829170923.29949-1-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In order to also enable in-kernel users of FFA interface along with
the access to user-space applications, let us add simple set of operations
for such devices.

The in-kernel users are registered without the character device interface.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_ffa/driver.c | 119 ++++++++++++++++++++++++++----
 include/linux/arm_ffa.h           |  12 +++
 2 files changed, 117 insertions(+), 14 deletions(-)

diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
index 96113e594db6..811558ef2a1d 100644
--- a/drivers/firmware/arm_ffa/driver.c
+++ b/drivers/firmware/arm_ffa/driver.c
@@ -372,6 +372,97 @@ static void ffa_device_put(struct ffa_device *ffa_dev)
 	mutex_unlock(&ffa_dev->mutex);
 }
 
+static int ffa_dev_open(struct ffa_device *ffa_dev)
+{
+	ffa_device_get(ffa_dev);
+
+	return 0;
+}
+
+static int ffa_dev_close(struct ffa_device *ffa_dev)
+{
+	ffa_device_put(ffa_dev);
+
+	return 0;
+}
+
+static long
+ffa_dev_ioctl(struct ffa_device *ffa_dev, unsigned int ioctl, void *arg)
+{
+	long r = -EINVAL;
+
+	switch (ioctl) {
+	case FFA_GET_API_VERSION:
+		r = drv_info->version;
+		break;
+	case FFA_GET_PARTITION_ID:
+		r = ffa_dev->vm_id;
+		break;
+	case FFA_GET_PARTITION_INFO: {
+		struct ffa_part_info *pinfo = arg;
+
+		if (ffa_partition_probe(pinfo->uuid_str, &pinfo->info) != 1)
+			r = -E2BIG;
+		break;
+	}
+	case FFA_SEND_RECEIVE_SYNC: {
+		struct ffa_send_recv_sync *kdata = arg;
+
+		r = ffa_msg_send_direct_req(ffa_dev->vm_id, kdata->endpoint_id,
+					    &kdata->data);
+		break;
+	}
+	case FFA_SEND_RECEIVE_ASYNC: {
+		struct ffa_send_recv_async *kdata = arg;
+
+		if (kdata->length < 0 || kdata->length > RXTX_BUFFER_SIZE) {
+			r = -EINVAL;
+			break;
+		}
+
+		r = ffa_msg_send(ffa_dev->vm_id, kdata->endpoint_id,
+				 kdata->buffer, kdata->length);
+		break;
+	}
+	default:
+		r = -EINVAL;
+	}
+
+	return r;
+}
+
+struct ffa_dev_ops ffa_ops = {
+	.open = ffa_dev_open,
+	.close = ffa_dev_close,
+	.ioctl = ffa_dev_ioctl,
+};
+
+struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev)
+{
+	struct list_head *p;
+	struct ffa_dev_ops *ops = NULL;
+
+	if (uuid_is_null(&dev->uuid))
+		return NULL;
+
+	mutex_lock(&ffa_devs_list_mutex);
+
+	list_for_each(p, &ffa_devs_list) {
+		struct ffa_device *tmp_dev;
+
+		tmp_dev = list_to_ffa_dev(p);
+
+		if (uuid_equal(&tmp_dev->uuid, &dev->uuid)) {
+			ops = &ffa_ops;
+			break;
+		}
+	}
+
+	mutex_unlock(&ffa_devs_list_mutex);
+
+	return ops;
+}
+
 static int ffa_open(struct inode *inode, struct file *filp)
 {
 	struct ffa_device *ffa_dev;
@@ -380,7 +471,7 @@ static int ffa_open(struct inode *inode, struct file *filp)
 	if (!ffa_dev)
 		return -EINVAL;
 
-	ffa_device_get(ffa_dev);
+	ffa_dev_open(ffa_dev);
 
 	filp->private_data = ffa_dev;
 
@@ -391,7 +482,7 @@ static int ffa_release(struct inode *inode, struct file *filp)
 {
 	struct ffa_device *ffa_dev = filp->private_data;
 
-	ffa_device_put(ffa_dev);
+	ffa_dev_close(ffa_dev);
 
 	filp->private_data = NULL;
 
@@ -406,14 +497,10 @@ static long ffa_ioctl(struct file *filp, unsigned int ioctl, unsigned long arg)
 
 	switch (ioctl) {
 	case FFA_GET_API_VERSION:
-		if (arg)
-			goto out;
-		r = drv_info->version;
-		break;
 	case FFA_GET_PARTITION_ID:
 		if (arg)
 			goto out;
-		r = ffa_dev->vm_id;
+		r = ffa_dev_ioctl(ffa_dev, FFA_GET_PARTITION_ID, NULL);
 		break;
 	case FFA_GET_PARTITION_INFO: {
 		struct ffa_partition_info pbuf;
@@ -499,7 +586,8 @@ static const struct file_operations ffa_fops = {
 	.llseek		= noop_llseek,
 };
 
-static int ffa_device_alloc_register(const char *name, u16 vm_id, uuid_t *uuid)
+static int ffa_device_alloc_register(const char *name, u16 vm_id,
+				     uuid_t *uuid, bool cdev_if)
 {
 	int ret;
 	struct ffa_device *ffa_dev;
@@ -514,7 +602,7 @@ static int ffa_device_alloc_register(const char *name, u16 vm_id, uuid_t *uuid)
 
 	dev_set_name(&ffa_dev->dev, name);
 	dev_set_drvdata(&ffa_dev->dev, drv_info);
-	cdev_init(&ffa_dev->cdev, &ffa_fops);
+	cdev_init(&ffa_dev->cdev, cdev_if ? &ffa_fops : NULL);
 
 	ret = ffa_device_register(ffa_dev);
 	if (ret)
@@ -527,13 +615,13 @@ static int ffa_device_alloc_register(const char *name, u16 vm_id, uuid_t *uuid)
 	return 0;
 }
 
-static int ffa_setup_partitions(void)
+static int ffa_setup_partitions(bool hyp)
 {
 	int ret;
 	struct ffa_partition_info pbuf;
 	struct device_node *child, *parent;
 	const char *p_uuid, *pfx = "Ignoring FFA partition";
-	const char *compatible = "arm,ffa-1.0-hypervisor";
+	const char *compatible = hyp ? "arm,ffa-1.0-hypervisor" : "arm,ffa-1.0";
 	uuid_t uuid = UUID_INIT(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
 
 	parent = of_find_compatible_node(NULL, NULL, compatible);
@@ -567,7 +655,7 @@ static int ffa_setup_partitions(void)
 			return -EINVAL;
 		}
 
-		ret = ffa_device_alloc_register(p_uuid, pbuf.id, &uuid);
+		ret = ffa_device_alloc_register(p_uuid, pbuf.id, &uuid, hyp);
 		if (ret) {
 			pr_err("%s: failed to register %s\n", pfx, p_uuid);
 			continue;
@@ -624,12 +712,15 @@ static int __init ffa_init(void)
 	mutex_init(&drv_info->tx_lock);
 
 	/* This will be default device both in theguests and host */
-	ret = ffa_device_alloc_register("self", drv_info->vm_id, NULL);
+	ret = ffa_device_alloc_register("self", drv_info->vm_id, NULL, true);
 	if (ret)
 		return ret;
 
 	/* Set up all the partitions that KVM hypervisor maintains */
-	ffa_setup_partitions();
+	ffa_setup_partitions(true);
+
+	/* Set up all the partitions which have in-kernel drivers */
+	ffa_setup_partitions(false);
 
 	return 0;
 free_pages:
diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
index 6824e0633c77..1df7399d207d 100644
--- a/include/linux/arm_ffa.h
+++ b/include/linux/arm_ffa.h
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/types.h>
 #include <linux/uuid.h>
+#include <uapi/linux/arm_ffa.h>
 
 struct ffa_device {
 	u32 vm_id;
@@ -39,12 +40,19 @@ struct ffa_driver {
 
 #define to_ffa_driver(d) container_of(d, struct ffa_driver, driver)
 
+struct ffa_dev_ops {
+	int (*open)(struct ffa_device *dev);
+	int (*close)(struct ffa_device *dev);
+	long (*ioctl)(struct ffa_device *dev, unsigned int ioctl, void *arg);
+};
+
 #if IS_REACHABLE(CONFIG_ARM_FFA_TRANSPORT)
 int ffa_device_register(struct ffa_device *ffa_dev);
 void ffa_device_unregister(struct ffa_device *ffa_dev);
 int ffa_driver_register(struct ffa_driver *driver, struct module *owner,
 			const char *mod_name);
 void ffa_driver_unregister(struct ffa_driver *driver);
+struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev);
 
 #else
 static inline int ffa_device_register(struct ffa_device *ffa_dev)
@@ -63,6 +71,10 @@ ffa_driver_register(struct ffa_driver *driver, struct module *owner,
 
 static inline void ffa_driver_unregister(struct ffa_driver *driver) {}
 
+struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev)
+{
+	return NULL;
+}
 #endif /* CONFIG_ARM_FFA_TRANSPORT */
 
 #define ffa_register(driver) \
-- 
2.17.1

