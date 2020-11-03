Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4A192A4D63
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 18:44:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729037AbgKCRoL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 12:44:11 -0500
Received: from foss.arm.com ([217.140.110.172]:53126 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727901AbgKCRoL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 12:44:11 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17B2B1480;
        Tue,  3 Nov 2020 09:44:10 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 98F043F718;
        Tue,  3 Nov 2020 09:44:08 -0800 (PST)
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
Subject: [PATCH v2 7/9] firmware: arm_ffa: Setup in-kernel users of FFA partitions
Date:   Tue,  3 Nov 2020 17:43:48 +0000
Message-Id: <20201103174350.991593-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201103174350.991593-1-sudeep.holla@arm.com>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Parse the FFA nodes from the device-tree and register all the partitions
whose services will be used in the kernel.

In order to also enable in-kernel users of FFA interface, let us add
simple set of operations for such devices.

The in-kernel users are registered without the character device interface.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_ffa/bus.c    |   2 +
 drivers/firmware/arm_ffa/driver.c | 281 ++++++++++++++++++++++++++++++
 include/linux/arm_ffa.h           |  15 ++
 include/uapi/linux/arm_ffa.h      |  56 ++++++
 4 files changed, 354 insertions(+)
 create mode 100644 include/uapi/linux/arm_ffa.h

diff --git a/drivers/firmware/arm_ffa/bus.c b/drivers/firmware/arm_ffa/bus.c
index 2dbcf356bd8b..de4f8b54271a 100644
--- a/drivers/firmware/arm_ffa/bus.c
+++ b/drivers/firmware/arm_ffa/bus.c
@@ -90,6 +90,7 @@ static void ffa_release_device(struct device *dev)
 {
 	struct ffa_device *ffa_dev = to_ffa_dev(dev);
 
+	mutex_destroy(&ffa_dev->mutex);
 	kfree(ffa_dev);
 }
 
@@ -127,6 +128,7 @@ int ffa_device_register(struct ffa_device *ffa_dev)
 
 	dev = &ffa_dev->dev;
 	cdev = &ffa_dev->cdev;
+	mutex_init(&ffa_dev->mutex);
 
 	dev->bus = &ffa_bus_type;
 	dev->type = &ffa_dev_type;
diff --git a/drivers/firmware/arm_ffa/driver.c b/drivers/firmware/arm_ffa/driver.c
index 1c4a5e5095b5..2e5fa56fffb7 100644
--- a/drivers/firmware/arm_ffa/driver.c
+++ b/drivers/firmware/arm_ffa/driver.c
@@ -24,9 +24,16 @@
 
 #include <linux/arm_ffa.h>
 #include <linux/bitfield.h>
+#include <linux/device.h>
+#include <linux/fs.h>
 #include <linux/io.h>
+#include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/uuid.h>
+#include <uapi/linux/arm_ffa.h>
 
 #include "common.h"
 
@@ -48,6 +55,13 @@
 /* Keeping RX TX buffer size as 64K for now */
 #define RXTX_BUFFER_SIZE	SZ_64K
 
+#define list_to_ffa_dev(n)	container_of(n, struct ffa_device, node)
+
+/* List of all FFA devices active in system */
+static LIST_HEAD(ffa_devs_list);
+/* Protection for the entire list */
+static DEFINE_MUTEX(ffa_devs_list_mutex);
+
 static ffa_fn *invoke_ffa_fn;
 
 static const int ffa_linux_errmap[] = {
@@ -104,6 +118,20 @@ static int ffa_version_check(u32 *version)
 	return 0;
 }
 
+static int ffa_rx_release(void)
+{
+	ffa_res_t ret;
+
+	ret = invoke_ffa_fn(FFA_RX_RELEASE, 0, 0, 0, 0, 0, 0, 0);
+
+	if (ret.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)ret.a2);
+
+	/* check for ret.a0 == FFA_RX_RELEASE ? */
+
+	return 0;
+}
+
 static int ffa_rxtx_map(phys_addr_t tx_buf, phys_addr_t rx_buf, u32 pg_cnt)
 {
 	ffa_res_t ret;
@@ -128,6 +156,50 @@ static int ffa_rxtx_unmap(u16 vm_id)
 	return 0;
 }
 
+static int ffa_partition_info_get(u32 uuid0, u32 uuid1, u32 uuid2, u32 uuid3,
+				  struct ffa_partition_info **buffer)
+{
+	int count;
+	ffa_res_t partition_info;
+
+	mutex_lock(&drv_info->rx_lock);
+	partition_info = invoke_ffa_fn(FFA_PARTITION_INFO_GET, uuid0, uuid1,
+				       uuid2, uuid3, 0, 0, 0);
+
+	if (partition_info.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)partition_info.a2);
+
+	count = partition_info.a2;
+
+	if (buffer)
+		memcpy(*buffer, drv_info->rx_buffer, sizeof(*buffer) * count);
+
+	ffa_rx_release();
+
+	mutex_unlock(&drv_info->rx_lock);
+
+	return count;
+}
+
+static int ffa_partition_probe(const char *uuid_str,
+			       struct ffa_partition_info *buffer)
+{
+	int count;
+	uuid_t uuid;
+	u32 uuid0_4[4] = { 0 };
+
+	if (uuid_parse(uuid_str, &uuid)) {
+		pr_err("invalid uuid (%s)\n", uuid_str);
+		return -ENODEV;
+	}
+
+	export_uuid((u8 *)uuid0_4, &uuid);
+	count = ffa_partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
+				       uuid0_4[3], &buffer);
+
+	return count;
+}
+
 #define VM_ID_MASK	GENMASK(15, 0)
 static int ffa_id_get(u16 *vm_id)
 {
@@ -143,6 +215,205 @@ static int ffa_id_get(u16 *vm_id)
 	return 0;
 }
 
+static int ffa_msg_send_direct_req(u16 src_id, u16 dst_id,
+				   struct ffa_send_direct_data *data)
+{
+	u32 src_dst_ids = PACK_TARGET_INFO(src_id, dst_id);
+	ffa_res_t ret;
+
+	ret = invoke_ffa_fn(FFA_FN_NATIVE(MSG_SEND_DIRECT_REQ), src_dst_ids, 0,
+			    data->data0, data->data1, data->data2,
+			    data->data3, data->data4);
+
+	while (ret.a0 == FFA_INTERRUPT)
+		ret = invoke_ffa_fn(FFA_RUN, ret.a1, 0, 0, 0, 0, 0, 0);
+	if (ret.a0 == FFA_ERROR)
+		return ffa_to_linux_errno((int)ret.a2);
+
+	if (ret.a0 == FFA_FN_NATIVE(MSG_SEND_DIRECT_RESP)) {
+		data->data0 = ret.a3;
+		data->data1 = ret.a4;
+		data->data2 = ret.a5;
+		data->data3 = ret.a6;
+		data->data4 = ret.a7;
+	}
+
+	return 0;
+}
+
+static void ffa_device_get(struct ffa_device *ffa_dev)
+{
+	mutex_lock(&ffa_dev->mutex);
+	ffa_dev->num_users++;
+	mutex_unlock(&ffa_dev->mutex);
+}
+
+static void ffa_device_put(struct ffa_device *ffa_dev)
+{
+	mutex_lock(&ffa_dev->mutex);
+	ffa_dev->num_users--;
+	mutex_unlock(&ffa_dev->mutex);
+}
+
+static const struct ffa_dev_ops ffa_ops;
+
+const struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev)
+{
+	struct list_head *p;
+	const struct ffa_dev_ops *ops = NULL;
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
+		return drv_info->version;
+	case FFA_GET_PARTITION_ID:
+		return ffa_dev->vm_id;
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
+	default:
+		r = -EINVAL;
+	}
+
+	return r;
+}
+
+static const struct ffa_dev_ops ffa_ops = {
+	.open = ffa_dev_open,
+	.close = ffa_dev_close,
+	.ioctl = ffa_dev_ioctl,
+};
+
+static int ffa_device_alloc_register(const char *name, u16 vm_id, uuid_t *uuid,
+				     const struct file_operations *fops)
+{
+	int ret;
+	struct ffa_device *ffa_dev;
+
+	ffa_dev = kzalloc(sizeof(*ffa_dev), GFP_KERNEL);
+	if (!ffa_dev)
+		return -ENOMEM;
+
+	ffa_dev->vm_id = vm_id;
+	if (uuid)
+		uuid_copy(&ffa_dev->uuid, uuid);
+
+	dev_set_name(&ffa_dev->dev, name);
+	dev_set_drvdata(&ffa_dev->dev, drv_info);
+	cdev_init(&ffa_dev->cdev, fops);
+
+	ret = ffa_device_register(ffa_dev);
+	if (ret)
+		return ret;
+
+	mutex_lock(&ffa_devs_list_mutex);
+	list_add_tail(&ffa_dev->node, &ffa_devs_list);
+	mutex_unlock(&ffa_devs_list_mutex);
+
+	return 0;
+}
+
+int ffa_setup_partitions(const char *compatible,
+			 const struct file_operations *fops)
+{
+	int ret;
+	struct ffa_partition_info pbuf;
+	struct device_node *child, *parent;
+	const char *p_uuid, *pfx = "Ignoring FFA partition";
+	uuid_t uuid = UUID_INIT(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
+
+	parent = of_find_compatible_node(NULL, NULL, compatible);
+	if (!parent)
+		return 0;
+
+	for_each_child_of_node(parent, child) {
+		if (!of_device_is_compatible(child, "arm,ffa-1.0-partition")) {
+			of_node_put(child);
+			continue;
+		}
+
+		if (of_property_read_string(child, "uuid", &p_uuid)) {
+			pr_err("%s: failed to parse \"uuid\" property\n", pfx);
+			of_node_put(child);
+			continue;
+		}
+
+		of_node_put(child);
+
+		if (uuid_parse(p_uuid, &uuid)) {
+			pr_err("%s: invalid \"uuid\" property (%s)\n",
+			       pfx, p_uuid);
+			continue;
+		}
+
+		ret = ffa_partition_probe(p_uuid, &pbuf);
+		if (ret != 1) {
+			pr_err("%s: %s partition info probe failed\n",
+			       pfx, p_uuid);
+			return -EINVAL;
+		}
+
+		ret = ffa_device_alloc_register(p_uuid, pbuf.id, &uuid, fops);
+		if (ret) {
+			pr_err("%s: failed to register %s\n", pfx, p_uuid);
+			continue;
+		}
+	}
+
+	of_node_put(parent);
+	return 0;
+}
+
 static int __init ffa_init(void)
 {
 	int ret;
@@ -192,6 +463,9 @@ static int __init ffa_init(void)
 	mutex_init(&drv_info->rx_lock);
 	mutex_init(&drv_info->tx_lock);
 
+	/* Set up all the partitions which have in-kernel drivers */
+	ffa_setup_partitions("arm,ffa-1.0", NULL);
+
 	return 0;
 free_pages:
 	if (drv_info->tx_buffer)
@@ -205,6 +479,13 @@ module_init(ffa_init);
 
 static void __exit ffa_exit(void)
 {
+	struct list_head *p;
+
+	mutex_lock(&ffa_devs_list_mutex);
+	list_for_each(p, &ffa_devs_list)
+		ffa_device_unregister(list_to_ffa_dev(p));
+	mutex_unlock(&ffa_devs_list_mutex);
+
 	ffa_rxtx_unmap(drv_info->vm_id);
 	free_pages_exact(drv_info->tx_buffer, RXTX_BUFFER_SIZE);
 	free_pages_exact(drv_info->rx_buffer, RXTX_BUFFER_SIZE);
diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
index 6185d0d12f15..719ef02fe42d 100644
--- a/include/linux/arm_ffa.h
+++ b/include/linux/arm_ffa.h
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/types.h>
 #include <linux/uuid.h>
+#include <uapi/linux/arm_ffa.h>
 
 #define FFA_SMC(calling_convention, func_num)				\
 	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, (calling_convention),	\
@@ -94,6 +95,9 @@ struct ffa_device {
 	uuid_t uuid;
 	struct device dev;
 	struct cdev cdev;
+	size_t num_users;
+	struct mutex mutex;	/* protects num_users */
+	struct list_head node;
 };
 
 #define to_ffa_dev(d) container_of(d, struct ffa_device, dev)
@@ -113,12 +117,19 @@ struct ffa_driver {
 
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
+const struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev);
 
 #else
 static inline int ffa_device_register(struct ffa_device *ffa_dev)
@@ -137,6 +148,10 @@ ffa_driver_register(struct ffa_driver *driver, struct module *owner,
 
 static inline void ffa_driver_unregister(struct ffa_driver *driver) {}
 
+const struct ffa_dev_ops *ffa_dev_ops_get(struct ffa_device *dev)
+{
+	return NULL;
+}
 #endif /* CONFIG_ARM_FFA_TRANSPORT */
 
 #define ffa_register(driver) \
diff --git a/include/uapi/linux/arm_ffa.h b/include/uapi/linux/arm_ffa.h
new file mode 100644
index 000000000000..88ddddb4742f
--- /dev/null
+++ b/include/uapi/linux/arm_ffa.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/*
+ * Copyright (C) 2020 Arm Ltd.
+ */
+
+#ifndef _UAPI_LINUX_ARM_FFA_H
+#define _UAPI_LINUX_ARM_FFA_H
+
+#include <linux/types.h>
+#include <linux/ioctl.h>
+
+#define FFA_BASE	0xFF
+
+struct ffa_partition_info {
+	__u16 id;
+	__u16 exec_ctxt;
+/* partition supports receipt of direct requests */
+#define FFA_PARTITION_DIRECT_RECV	BIT(0)
+/* partition can send direct requests. */
+#define FFA_PARTITION_DIRECT_SEND	BIT(1)
+/* partition can send and receive indirect messages. */
+#define FFA_PARTITION_INDIRECT_MSG	BIT(2)
+	__u32 properties;
+};
+
+struct ffa_part_info {
+	char uuid_str[36];
+	struct ffa_partition_info info;
+};
+
+struct ffa_send_direct_data {
+	unsigned long data0;
+	unsigned long data1;
+	unsigned long data2;
+	unsigned long data3;
+	unsigned long data4;
+};
+
+struct ffa_send_recv_sync {
+	__u16 endpoint_id;
+	struct ffa_send_direct_data data;
+};
+
+struct ffa_send_recv_async {
+	__u16 endpoint_id;
+	int length;
+	char buffer[];
+};
+
+#define FFA_GET_API_VERSION	_IO(FFA_BASE, 0x00)
+#define FFA_GET_PARTITION_ID	_IO(FFA_BASE, 0x01)
+#define FFA_GET_PARTITION_INFO	_IOWR(FFA_BASE, 0x02, struct ffa_part_info)
+#define FFA_SEND_RECEIVE_SYNC	_IOWR(FFA_BASE, 0x03, struct ffa_send_recv_sync)
+#define FFA_SEND_RECEIVE_ASYNC	_IOW(FFA_BASE, 0x04, struct ffa_send_recv_async)
+
+#endif /*_UAPI_LINUX_ARM_FFA_H*/
-- 
2.25.1

