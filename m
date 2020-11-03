Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7729E2A4D60
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 18:44:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729059AbgKCRoF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 12:44:05 -0500
Received: from foss.arm.com ([217.140.110.172]:53082 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727901AbgKCRoF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 12:44:05 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED74214F6;
        Tue,  3 Nov 2020 09:44:04 -0800 (PST)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8137A3F718;
        Tue,  3 Nov 2020 09:44:03 -0800 (PST)
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
Subject: [PATCH v2 4/9] firmware: arm_ffa: Add initial FFA bus support for device enumeration
Date:   Tue,  3 Nov 2020 17:43:45 +0000
Message-Id: <20201103174350.991593-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201103174350.991593-1-sudeep.holla@arm.com>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arm FF for Armv8-A specification has concept of endpoints or
partitions. In the Normal world, a partition could be a VM when
the Virtualization extension is enabled or the kernel itself.

In order to handle multiple partitions, we can create a FFA device for
each partition on a dedicated FFA bus. Similarly, different drivers
requiring FFA transport can be registered on the same bus. We can match
the device and drivers using UUID. This is mostly for the in-kernel
users with FFA drivers.

However, to support usage of FFA transport from user-space, there is also
a provision to create character device interface for the same.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/Kconfig          |   1 +
 drivers/firmware/Makefile         |   1 +
 drivers/firmware/arm_ffa/Kconfig  |  16 +++
 drivers/firmware/arm_ffa/Makefile |   4 +
 drivers/firmware/arm_ffa/bus.c    | 205 ++++++++++++++++++++++++++++++
 include/linux/arm_ffa.h           |  81 ++++++++++++
 6 files changed, 308 insertions(+)
 create mode 100644 drivers/firmware/arm_ffa/Kconfig
 create mode 100644 drivers/firmware/arm_ffa/Makefile
 create mode 100644 drivers/firmware/arm_ffa/bus.c
 create mode 100644 include/linux/arm_ffa.h

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 3315e3c21586..be9056226a07 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -295,6 +295,7 @@ config TURRIS_MOX_RWTM
 	  other manufacturing data and also utilize the Entropy Bit Generator
 	  for hardware random number generation.
 
+source "drivers/firmware/arm_ffa/Kconfig"
 source "drivers/firmware/broadcom/Kconfig"
 source "drivers/firmware/google/Kconfig"
 source "drivers/firmware/efi/Kconfig"
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index 5e013b6a3692..546ac8e7f6d0 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -22,6 +22,7 @@ obj-$(CONFIG_TI_SCI_PROTOCOL)	+= ti_sci.o
 obj-$(CONFIG_TRUSTED_FOUNDATIONS) += trusted_foundations.o
 obj-$(CONFIG_TURRIS_MOX_RWTM)	+= turris-mox-rwtm.o
 
+obj-y				+= arm_ffa/
 obj-y				+= arm_scmi/
 obj-y				+= broadcom/
 obj-y				+= meson/
diff --git a/drivers/firmware/arm_ffa/Kconfig b/drivers/firmware/arm_ffa/Kconfig
new file mode 100644
index 000000000000..261a3660650a
--- /dev/null
+++ b/drivers/firmware/arm_ffa/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config ARM_FFA_TRANSPORT
+	tristate "Arm Firmware Framework for Armv8-A"
+	depends on OF
+	depends on ARM64
+	default n
+	help
+	  This Firmware Framework(FF) for Arm A-profile processors describes
+	  interfaces that standardize communication between the various
+	  software images which includes communication between images in
+	  the Secure world and Normal world. It also leverages the
+	  virtualization extension to isolate software images provided
+	  by an ecosystem of vendors from each other.
+
+	  This driver provides interface for all the client drivers making
+	  use of the features offered by ARM FF-A.
diff --git a/drivers/firmware/arm_ffa/Makefile b/drivers/firmware/arm_ffa/Makefile
new file mode 100644
index 000000000000..bfe4323a8784
--- /dev/null
+++ b/drivers/firmware/arm_ffa/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+ffa-bus-y = bus.o
+ffa-module-objs := $(ffa-bus-y)
+obj-$(CONFIG_ARM_FFA_TRANSPORT) = ffa-module.o
diff --git a/drivers/firmware/arm_ffa/bus.c b/drivers/firmware/arm_ffa/bus.c
new file mode 100644
index 000000000000..5d7102419e6c
--- /dev/null
+++ b/drivers/firmware/arm_ffa/bus.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/arm_ffa.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+
+#define DEVICE_NAME "arm_ffa"
+#define FFA_MAX_CDEVS	32
+
+static DEFINE_IDA(ffa_dev_id);
+static dev_t ffa_devt;
+
+static int ffa_device_match(struct device *dev, struct device_driver *drv)
+{
+	const struct ffa_device_id *id_table;
+	struct ffa_device *ffa_dev;
+
+	id_table = to_ffa_driver(drv)->id_table;
+	ffa_dev = to_ffa_dev(dev);
+
+	while (!uuid_is_null(&id_table->uuid)) {
+		if (uuid_equal(&ffa_dev->uuid, &id_table->uuid))
+			return 1;
+		id_table++;
+	}
+
+	return 0;
+}
+
+static int ffa_device_probe(struct device *dev)
+{
+	struct ffa_driver *ffa_drv = to_ffa_driver(dev->driver);
+	struct ffa_device *ffa_dev = to_ffa_dev(dev);
+
+	if (!ffa_device_match(dev, dev->driver))
+		return -ENODEV;
+
+	return ffa_drv->probe(ffa_dev);
+}
+
+static int ffa_device_uevent(struct device *dev, struct kobj_uevent_env *env)
+{
+	uuid_t *dev_id = &to_ffa_dev(dev)->uuid;
+
+	return add_uevent_var(env, "MODALIAS=arm_ffa:%pUb", dev_id);
+}
+
+struct bus_type ffa_bus_type = {
+	.name		= "arm_ffa",
+	.match		= ffa_device_match,
+	.probe		= ffa_device_probe,
+	.uevent		= ffa_device_uevent,
+};
+EXPORT_SYMBOL_GPL(ffa_bus_type);
+
+int ffa_driver_register(struct ffa_driver *driver, struct module *owner,
+			const char *mod_name)
+{
+	int ret;
+
+	driver->driver.bus = &ffa_bus_type;
+	driver->driver.name = driver->name;
+	driver->driver.owner = owner;
+	driver->driver.mod_name = mod_name;
+
+	ret = driver_register(&driver->driver);
+	if (!ret)
+		pr_debug("registered new ffa driver %s\n", driver->name);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(ffa_driver_register);
+
+void ffa_driver_unregister(struct ffa_driver *driver)
+{
+	driver_unregister(&driver->driver);
+}
+EXPORT_SYMBOL_GPL(ffa_driver_unregister);
+
+static void ffa_release_device(struct device *dev)
+{
+	struct ffa_device *ffa_dev = to_ffa_dev(dev);
+
+	kfree(ffa_dev);
+}
+
+static int __ffa_devices_unregister(struct device *dev, void *data)
+{
+	ffa_release_device(dev);
+
+	return 0;
+}
+
+static void ffa_devices_unregister(void)
+{
+	bus_for_each_dev(&ffa_bus_type, NULL, NULL,
+			 __ffa_devices_unregister);
+}
+
+static char *
+ffa_devnode(struct device *dev, umode_t *mode, kuid_t *uid, kgid_t *gid)
+{
+	return kasprintf(GFP_KERNEL, DEVICE_NAME "/%s", dev_name(dev));
+}
+
+static struct device_type ffa_dev_type = {
+	.devnode = ffa_devnode,
+};
+
+int ffa_device_register(struct ffa_device *ffa_dev)
+{
+	int ret;
+	struct cdev *cdev;
+	struct device *dev;
+
+	if (!ffa_dev)
+		return -EINVAL;
+
+	dev = &ffa_dev->dev;
+	cdev = &ffa_dev->cdev;
+
+	dev->bus = &ffa_bus_type;
+	dev->type = &ffa_dev_type;
+	dev->release = ffa_release_device;
+
+	device_initialize(dev);
+
+	if (cdev->ops) {
+		ret = ida_simple_get(&ffa_dev_id, 0, FFA_MAX_CDEVS, GFP_KERNEL);
+		if (ret < 0) {
+			put_device(dev);
+			return ret;
+		}
+
+		dev->devt = MKDEV(MAJOR(ffa_devt), ret);
+
+		cdev->owner = cdev->ops->owner;
+	}
+
+	ret = cdev_device_add(cdev, dev);
+	if (ret) {
+		dev_err(dev, "unable to cdev_device_add() %s, major %d, minor %d, err=%d\n",
+			dev_name(dev), MAJOR(dev->devt), MINOR(dev->devt),
+			ret);
+		put_device(dev);
+		return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(ffa_device_register);
+
+void ffa_device_unregister(struct ffa_device *ffa_dev)
+{
+	if (!ffa_dev)
+		return;
+
+	cdev_device_del(&ffa_dev->cdev, &ffa_dev->dev);
+
+	put_device(&ffa_dev->dev);
+}
+EXPORT_SYMBOL_GPL(ffa_device_unregister);
+
+static int __init arm_ffa_bus_init(void)
+{
+	int ret;
+
+	ret = alloc_chrdev_region(&ffa_devt, 0, FFA_MAX_CDEVS, DEVICE_NAME);
+	if (ret) {
+		pr_err("failed to allocate char dev region\n");
+		return ret;
+	}
+
+	ret = bus_register(&ffa_bus_type);
+	if (ret) {
+		pr_err("ffa bus register failed (%d)\n", ret);
+		unregister_chrdev_region(ffa_devt, FFA_MAX_CDEVS);
+	}
+
+	return ret;
+}
+subsys_initcall(arm_ffa_bus_init);
+
+static void __exit arm_ffa_bus_exit(void)
+{
+	ffa_devices_unregister();
+	bus_unregister(&ffa_bus_type);
+	unregister_chrdev_region(ffa_devt, FFA_MAX_CDEVS);
+}
+
+module_exit(arm_ffa_bus_exit);
+
+MODULE_ALIAS("arm-ffa-bus");
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("Arm FF-A bus driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/arm_ffa.h b/include/linux/arm_ffa.h
new file mode 100644
index 000000000000..2fe16176149f
--- /dev/null
+++ b/include/linux/arm_ffa.h
@@ -0,0 +1,81 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+
+#ifndef _LINUX_ARM_FFA_H
+#define _LINUX_ARM_FFA_H
+
+#include <linux/cdev.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/types.h>
+#include <linux/uuid.h>
+
+struct ffa_device {
+	u32 vm_id;
+	uuid_t uuid;
+	struct device dev;
+	struct cdev cdev;
+};
+
+#define to_ffa_dev(d) container_of(d, struct ffa_device, dev)
+
+struct ffa_device_id {
+	uuid_t uuid;
+};
+
+struct ffa_driver {
+	const char *name;
+	int (*probe)(struct ffa_device *sdev);
+	void (*remove)(struct ffa_device *sdev);
+	const struct ffa_device_id *id_table;
+
+	struct device_driver driver;
+};
+
+#define to_ffa_driver(d) container_of(d, struct ffa_driver, driver)
+
+#if IS_REACHABLE(CONFIG_ARM_FFA_TRANSPORT)
+int ffa_device_register(struct ffa_device *ffa_dev);
+void ffa_device_unregister(struct ffa_device *ffa_dev);
+int ffa_driver_register(struct ffa_driver *driver, struct module *owner,
+			const char *mod_name);
+void ffa_driver_unregister(struct ffa_driver *driver);
+
+#else
+static inline int ffa_device_register(struct ffa_device *ffa_dev)
+{
+	return -EINVAL;
+}
+
+static inline void ffa_device_unregister(struct ffa_device *dev) {}
+
+static inline int
+ffa_driver_register(struct ffa_driver *driver, struct module *owner,
+		    const char *mod_name)
+{
+	return -EINVAL;
+}
+
+static inline void ffa_driver_unregister(struct ffa_driver *driver) {}
+
+#endif /* CONFIG_ARM_FFA_TRANSPORT */
+
+#define ffa_register(driver) \
+	ffa_driver_register(driver, THIS_MODULE, KBUILD_MODNAME)
+#define ffa_unregister(driver) \
+	ffa_driver_unregister(driver)
+
+/**
+ * module_ffa_driver() - Helper macro for registering a psa_ffa driver
+ * @__ffa_driver: ffa_driver structure
+ *
+ * Helper macro for psa_ffa drivers to set up proper module init / exit
+ * functions.  Replaces module_init() and module_exit() and keeps people from
+ * printing pointless things to the kernel log when their driver is loaded.
+ */
+#define module_ffa_driver(__ffa_driver)	\
+	module_driver(__ffa_driver, ffa_register, ffa_unregister)
+
+#endif /* _LINUX_ARM_FFA_H */
-- 
2.25.1

