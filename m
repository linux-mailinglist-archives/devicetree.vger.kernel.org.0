Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4A1C72348
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 02:11:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727509AbfGXALK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 20:11:10 -0400
Received: from mail-vk1-f202.google.com ([209.85.221.202]:49618 "EHLO
        mail-vk1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726617AbfGXALJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 20:11:09 -0400
Received: by mail-vk1-f202.google.com with SMTP id o202so19837824vko.16
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 17:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=l3AiDzXuhUM+bCuy8gx3HoMz2dQhMIpUyx7lspv3OUk=;
        b=fDbx4YoSncTaBDrPNUnrnTmCfZtrKhhhYrN5WHXO5Ixcf/rQ+sR2Gkqd3DpWxoqvQV
         sGqlwrqsSYgxiNnJWPXSwKxKg0uaXrn4lFO6ELhJtjeH+bs38vKgy7KVslDmaG7kzQ3D
         vtpe7lWa9hrmCnpDyMH6qq0RVXtkMVjMeWlU4gu6GtrslNCpo8x9qpVXTb+SkWPQflAd
         39usHyzaihzj0579OwuPcEe7HQnJyq+eH+by+pVygVR/xjEgoduxcuZELtrcDPtxe7BI
         w30/CQEpPcMA+SmhhjQY04KzrWU9+sr4PLRpjIAz13lbNOKsuFThXaTplwSGQzF19tJ/
         Ex+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=l3AiDzXuhUM+bCuy8gx3HoMz2dQhMIpUyx7lspv3OUk=;
        b=cCzv8GTgauoT7K42WZXZ0xlY32SQeuCOOMlHBW9nGUkazpGonc8ZGjjwdpgBZbhXdw
         G33VBGMFJytIkQHG0XH0LoOBYDmSd9ZsbbmoGsyF0njEtocagIK0iYieOw8FGoHA7aQf
         Ybf9yAseKRp/MuFddJHf3vHnben+gpLD4cY0PKEM8aggMRL2kglJ0Dbx14LrE7qZ92Wd
         84GK38a0YOpdUT1jLcWdyMbrwMDzxz9GiB8kMw9wBhPgRYiBVkZ6arXw4BGaGzqqL+nH
         ZJTyAVm0qJ4gTX6EGIlJDB6P5SVecG+oX4kkqQwbTuaKhJFHApoXgxLi6bxF3Py6GVpm
         5rjg==
X-Gm-Message-State: APjAAAXoRZc9RBkEzpOgWEusPQx2Mlri0V9VA8oQkggXw5bISSdegCtU
        MkFPVpF1AvFVLdRbz5p9kU3cO1JCHswFnaM=
X-Google-Smtp-Source: APXvYqwm8BhPD52BS/rdDGay3WOkmbMQpLmABhBApi24tI5k75ksrWkiennbDLywg2uJ2+QVYq3tJ3PcSvYCdxI=
X-Received: by 2002:a67:fb02:: with SMTP id d2mr40618831vsr.207.1563927068278;
 Tue, 23 Jul 2019 17:11:08 -0700 (PDT)
Date:   Tue, 23 Jul 2019 17:10:54 -0700
In-Reply-To: <20190724001100.133423-1-saravanak@google.com>
Message-Id: <20190724001100.133423-2-saravanak@google.com>
Mime-Version: 1.0
References: <20190724001100.133423-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v7 1/7] driver core: Add support for linking devices during
 device addition
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        David Collins <collinsd@codeaurora.org>,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When devices are added, the bus might want to create device links to track
functional dependencies between supplier and consumer devices. This
tracking of supplier-consumer relationship allows optimizing device probe
order and tracking whether all consumers of a supplier are active. The
add_links bus callback is added to support this.

However, when consumer devices are added, they might not have a supplier
device to link to despite needing mandatory resources/functionality from
one or more suppliers. A waiting_for_suppliers list is created to track
such consumers and retry linking them when new devices get added.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 83 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/device.h | 14 +++++++
 2 files changed, 97 insertions(+)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index da84a73f2ba6..1b4eb221968f 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -44,6 +44,8 @@ early_param("sysfs.deprecated", sysfs_deprecated_setup);
 #endif
 
 /* Device links support. */
+static LIST_HEAD(wait_for_suppliers);
+static DEFINE_MUTEX(wfs_lock);
 
 #ifdef CONFIG_SRCU
 static DEFINE_MUTEX(device_links_lock);
@@ -401,6 +403,51 @@ struct device_link *device_link_add(struct device *consumer,
 }
 EXPORT_SYMBOL_GPL(device_link_add);
 
+/**
+ * device_link_wait_for_supplier - Mark device as waiting for supplier
+ * @consumer: Consumer device
+ *
+ * Marks the consumer device as waiting for suppliers to become available. The
+ * consumer device will never be probed until it's unmarked as waiting for
+ * suppliers. The caller is responsible for adding the link to the supplier
+ * once the supplier device is present.
+ *
+ * This function is NOT meant to be called from the probe function of the
+ * consumer but rather from code that creates/adds the consumer device.
+ */
+static void device_link_wait_for_supplier(struct device *consumer)
+{
+	mutex_lock(&wfs_lock);
+	list_add_tail(&consumer->links.needs_suppliers, &wait_for_suppliers);
+	mutex_unlock(&wfs_lock);
+}
+
+/**
+ * device_link_check_waiting_consumers - Try to unmark waiting consumers
+ *
+ * Loops through all consumers waiting on suppliers and tries to add all their
+ * supplier links. If that succeeds, the consumer device is unmarked as waiting
+ * for suppliers. Otherwise, they are left marked as waiting on suppliers,
+ *
+ * The add_links bus callback is expected to return 0 if it has found and added
+ * all the supplier links for the consumer device. It should return an error if
+ * it isn't able to do so.
+ *
+ * The caller of device_link_wait_for_supplier() is expected to call this once
+ * it's aware of potential suppliers becoming available.
+ */
+static void device_link_check_waiting_consumers(void)
+{
+	struct device *dev, *tmp;
+
+	mutex_lock(&wfs_lock);
+	list_for_each_entry_safe(dev, tmp, &wait_for_suppliers,
+				 links.needs_suppliers)
+		if (!dev->bus->add_links(dev))
+			list_del_init(&dev->links.needs_suppliers);
+	mutex_unlock(&wfs_lock);
+}
+
 static void device_link_free(struct device_link *link)
 {
 	while (refcount_dec_not_one(&link->rpm_active))
@@ -535,6 +582,19 @@ int device_links_check_suppliers(struct device *dev)
 	struct device_link *link;
 	int ret = 0;
 
+	/*
+	 * If a device is waiting for one or more suppliers (in
+	 * wait_for_suppliers list), it is not ready to probe yet. So just
+	 * return -EPROBE_DEFER without having to check the links with existing
+	 * suppliers.
+	 */
+	mutex_lock(&wfs_lock);
+	if (!list_empty(&dev->links.needs_suppliers)) {
+		mutex_unlock(&wfs_lock);
+		return -EPROBE_DEFER;
+	}
+	mutex_unlock(&wfs_lock);
+
 	device_links_write_lock();
 
 	list_for_each_entry(link, &dev->links.suppliers, c_node) {
@@ -812,6 +872,10 @@ static void device_links_purge(struct device *dev)
 {
 	struct device_link *link, *ln;
 
+	mutex_lock(&wfs_lock);
+	list_del(&dev->links.needs_suppliers);
+	mutex_unlock(&wfs_lock);
+
 	/*
 	 * Delete all of the remaining links from this device to any other
 	 * devices (either consumers or suppliers).
@@ -1673,6 +1737,7 @@ void device_initialize(struct device *dev)
 #endif
 	INIT_LIST_HEAD(&dev->links.consumers);
 	INIT_LIST_HEAD(&dev->links.suppliers);
+	INIT_LIST_HEAD(&dev->links.needs_suppliers);
 	dev->links.status = DL_DEV_NO_DRIVER;
 }
 EXPORT_SYMBOL_GPL(device_initialize);
@@ -2108,6 +2173,24 @@ int device_add(struct device *dev)
 					     BUS_NOTIFY_ADD_DEVICE, dev);
 
 	kobject_uevent(&dev->kobj, KOBJ_ADD);
+
+	/*
+	 * Check if any of the other devices (consumers) have been waiting for
+	 * this device (supplier) to be added so that they can create a device
+	 * link to it.
+	 *
+	 * This needs to happen after device_pm_add() because device_link_add()
+	 * requires the supplier be registered before it's called.
+	 *
+	 * But this also needs to happe before bus_probe_device() to make sure
+	 * waiting consumers can link to it before the driver is bound to the
+	 * device and the driver sync_state callback is called for this device.
+	 */
+	device_link_check_waiting_consumers();
+
+	if (dev->bus && dev->bus->add_links && dev->bus->add_links(dev))
+		device_link_wait_for_supplier(dev);
+
 	bus_probe_device(dev);
 	if (parent)
 		klist_add_tail(&dev->p->knode_parent,
diff --git a/include/linux/device.h b/include/linux/device.h
index c330b75c6c57..5d70babb7462 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -78,6 +78,17 @@ extern void bus_remove_file(struct bus_type *, struct bus_attribute *);
  *		-EPROBE_DEFER it will queue the device for deferred probing.
  * @uevent:	Called when a device is added, removed, or a few other things
  *		that generate uevents to add the environment variables.
+ * @add_links:	Called, perhaps multiple times per device, after a device is
+ *		added to this bus.  The function is expected to create device
+ *		links to all the suppliers of the input device that are
+ *		available at the time this function is called.  As in, the
+ *		function should NOT stop at the first failed device link if
+ *		other unlinked supplier devices are present in the system.
+ *
+ *		Return 0 if device links have been successfully created to all
+ *		the suppliers of this device.  Return an error if some of the
+ *		suppliers are not yet available and this function needs to be
+ *		reattempted in the future.
  * @probe:	Called when a new device or driver add to this bus, and callback
  *		the specific driver's probe to initial the matched device.
  * @remove:	Called when a device removed from this bus.
@@ -122,6 +133,7 @@ struct bus_type {
 
 	int (*match)(struct device *dev, struct device_driver *drv);
 	int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
+	int (*add_links)(struct device *dev);
 	int (*probe)(struct device *dev);
 	int (*remove)(struct device *dev);
 	void (*shutdown)(struct device *dev);
@@ -893,11 +905,13 @@ enum dl_dev_state {
  * struct dev_links_info - Device data related to device links.
  * @suppliers: List of links to supplier devices.
  * @consumers: List of links to consumer devices.
+ * @needs_suppliers: Hook to global list of devices waiting for suppliers.
  * @status: Driver status information.
  */
 struct dev_links_info {
 	struct list_head suppliers;
 	struct list_head consumers;
+	struct list_head needs_suppliers;
 	enum dl_dev_state status;
 };
 
-- 
2.22.0.709.g102302147b-goog

