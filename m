Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F22F32A71B0
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 00:26:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732580AbgKDXZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 18:25:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732832AbgKDXYV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 18:24:21 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E51E1C0613CF
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 15:24:20 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id l16so12673423qvt.17
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 15:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=+Pnss2jZrmflP1wbnV6Je3ogMQfHXywiMZfR1W5P9qc=;
        b=FQOg8vXeOgd9z8U6hdMl0s35oKDTY2o/ycG2xGfWs76vwOr0bSbCe1uWfyGtLi8FY1
         7fp8RK8A1Gt2+rZJy+F00fB7dR6NsCuPUekPmHQwz6oRXbnAJo+2PnoiRC+50ViETk1a
         nuIVEqhY9aWLoLDh5wUpt9Lgip56yhabhc2kFoxb4bW2At5fc8tN7uL05b/ziUWUqB9d
         Cv9N7La+66OgQ2Jc46NSc2rER/4Ss8uopOVJdI+aAwvripdE4aHzS6TJGAbOO61YTwsA
         ZafNxqqdKNo/VXLAXgumWAkM8SKhmDufAbXpP2Z1iAsdoldKQv3kEFRV55Fj+Jz1bh7k
         ulPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=+Pnss2jZrmflP1wbnV6Je3ogMQfHXywiMZfR1W5P9qc=;
        b=SFu3OYi7CWbI/BViOXiGA5IPiyniwAJP7UMrVkMP0a7HRqrruiweJaT1HPYRh84/i9
         rLB4qiQq3VNqZ5T1ahovPe40OB3ebVp2/sxuOGSNOGAlcA3/Ca1lOPVSerSGBtNZleYP
         kQL9m+vV22AU9wRqk9ZJWgoMz9yJE67XsOPfXq0dOKZZGZezEQEU9CWdnkOXMbnq/4gG
         7CCQzh9YKqGkym7QbZ1+BqOQkFQfj5d0w5hJo8cSiwxD+T/Gyaz2S7K/xg0ufPamxKsh
         9qFM7E7H/e0Qtl/LXV7v7DoCr+WxR4ItyWX6X2avowH8UfO42w3h50eTjtEHs5aV1Bi+
         gxrQ==
X-Gm-Message-State: AOAM532i688SWsbW8/D/dRBIISZRK6qANZvIxXNh7EZCpBtPN/EoX4q/
        DVw+u5nKo8hqpxKW9X4HyXNhv87ibxNXRPg=
X-Google-Smtp-Source: ABdhPJwjwtYvM7Ivv/FR7C/GC1NY2CdbIozJW3wSd7EecAEAgIod7zxLX2aUIUJyv0xOb6b1ZAh3UM7kBIOqzf0=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:ad4:59cf:: with SMTP id
 el15mr268323qvb.17.1604532260064; Wed, 04 Nov 2020 15:24:20 -0800 (PST)
Date:   Wed,  4 Nov 2020 15:23:45 -0800
In-Reply-To: <20201104232356.4038506-1-saravanak@google.com>
Message-Id: <20201104232356.4038506-9-saravanak@google.com>
Mime-Version: 1.0
References: <20201104232356.4038506-1-saravanak@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v1 08/18] driver core: Add fwnode link support
From:   Saravana Kannan <saravanak@google.com>
To:     "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Saravana Kannan <saravanak@google.com>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        kernel-team@android.com, linux-acpi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-efi@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for creating supplier-consumer links between
fwnode. It is intentionally kept simple and with limited APIs as it is
meant to be used only by driver core and firmware code (Eg: device tree,
ACPI, etc).

We can expand the APIs later if there is ever a need for
drivers/frameworks to start using them.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 95 ++++++++++++++++++++++++++++++++++++++++++
 drivers/of/dynamic.c   |  1 +
 include/linux/fwnode.h | 14 +++++++
 3 files changed, 110 insertions(+)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 31a76159f118..1a1d9a55645c 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -50,6 +50,101 @@ static LIST_HEAD(wait_for_suppliers);
 static DEFINE_MUTEX(wfs_lock);
 static LIST_HEAD(deferred_sync);
 static unsigned int defer_sync_state_count = 1;
+static DEFINE_MUTEX(fwnode_link_lock);
+
+/**
+ * fwnode_link_add - Create a link between two fwnode_handles.
+ * @con: Consumer end of the link.
+ * @sup: Supplier end of the link.
+ *
+ * Creates a fwnode link between two fwnode_handles. These fwnode links are
+ * used by the driver core to automatically generate device links. Attempts to
+ * create duplicate links are simply ignored and there is no refcounting.
+ *
+ * These links are automatically deleted once they are converted to device
+ * links or when the fwnode_handles (or their corresponding devices) are
+ * deleted.
+ */
+int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup)
+{
+	struct fwnode_link *link;
+	int ret = 0;
+
+	mutex_lock(&fwnode_link_lock);
+
+	/* Duplicate requests are intentionally not refcounted. */
+	list_for_each_entry(link, &sup->consumers, s_hook)
+		if (link->consumer == con)
+			goto out;
+
+	link = kzalloc(sizeof(*link), GFP_KERNEL);
+	if (!link) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	link->supplier = sup;
+	INIT_LIST_HEAD(&link->s_hook);
+	link->consumer = con;
+	INIT_LIST_HEAD(&link->c_hook);
+
+	list_add(&link->s_hook, &sup->consumers);
+	list_add(&link->c_hook, &con->suppliers);
+out:
+	mutex_unlock(&fwnode_link_lock);
+
+	return ret;
+}
+
+/**
+ * fwnode_links_purge_suppliers - Delete all supplier links of fwnode_handle.
+ * @fwnode: fwnode whose supplier links needs to be deleted
+ *
+ * Deletes all supplier links connecting directly to a fwnode.
+ */
+static void fwnode_links_purge_suppliers(struct fwnode_handle *fwnode)
+{
+	struct fwnode_link *link, *tmp;
+
+	mutex_lock(&fwnode_link_lock);
+	list_for_each_entry_safe(link, tmp, &fwnode->suppliers, c_hook) {
+		list_del(&link->s_hook);
+		list_del(&link->c_hook);
+		kfree(link);
+	}
+	mutex_unlock(&fwnode_link_lock);
+}
+
+/**
+ * fwnode_links_purge_consumers - Delete all consumer links of fwnode_handle.
+ * @fwnode: fwnode whose consumer links needs to be deleted
+ *
+ * Deletes all consumer links connecting directly to a fwnode.
+ */
+static void fwnode_links_purge_consumers(struct fwnode_handle *fwnode)
+{
+	struct fwnode_link *link, *tmp;
+
+	mutex_lock(&fwnode_link_lock);
+	list_for_each_entry_safe(link, tmp, &fwnode->consumers, s_hook) {
+		list_del(&link->s_hook);
+		list_del(&link->c_hook);
+		kfree(link);
+	}
+	mutex_unlock(&fwnode_link_lock);
+}
+
+/**
+ * fwnode_links_purge - Delete all links connected to a fwnode_handle.
+ * @fwnode: fwnode whose links needs to be deleted
+ *
+ * Deletes all links connecting directly to a fwnode.
+ */
+void fwnode_links_purge(struct fwnode_handle *fwnode)
+{
+	fwnode_links_purge_suppliers(fwnode);
+	fwnode_links_purge_consumers(fwnode);
+}
 
 #ifdef CONFIG_SRCU
 static DEFINE_MUTEX(device_links_lock);
diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index fe64430b438a..9a824decf61f 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -356,6 +356,7 @@ void of_node_release(struct kobject *kobj)
 
 	property_list_free(node->properties);
 	property_list_free(node->deadprops);
+	fwnode_links_purge(of_fwnode_handle(node));
 
 	kfree(node->full_name);
 	kfree(node->data);
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 593fb8e58f21..afde643f37a2 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -10,6 +10,7 @@
 #define _LINUX_FWNODE_H_
 
 #include <linux/types.h>
+#include <linux/list.h>
 
 struct fwnode_operations;
 struct device;
@@ -18,6 +19,15 @@ struct fwnode_handle {
 	struct fwnode_handle *secondary;
 	const struct fwnode_operations *ops;
 	struct device *dev;
+	struct list_head suppliers;
+	struct list_head consumers;
+};
+
+struct fwnode_link {
+	struct fwnode_handle *supplier;
+	struct list_head s_hook;
+	struct fwnode_handle *consumer;
+	struct list_head c_hook;
 };
 
 /**
@@ -173,8 +183,12 @@ static inline void fwnode_init(struct fwnode_handle *fwnode,
 			       const struct fwnode_operations *ops)
 {
 	fwnode->ops = ops;
+	INIT_LIST_HEAD(&fwnode->consumers);
+	INIT_LIST_HEAD(&fwnode->suppliers);
 }
 
 extern u32 fw_devlink_get_flags(void);
+int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup);
+void fwnode_links_purge(struct fwnode_handle *fwnode);
 
 #endif
-- 
2.29.1.341.ge80a0c044ae-goog

