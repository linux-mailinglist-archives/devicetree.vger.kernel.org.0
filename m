Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34ECE2BBBEF
	for <lists+devicetree@lfdr.de>; Sat, 21 Nov 2020 03:06:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727144AbgKUCDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 21:03:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726596AbgKUCDF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Nov 2020 21:03:05 -0500
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6314C061A48
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 18:03:03 -0800 (PST)
Received: by mail-qv1-xf49.google.com with SMTP id du18so8531174qvb.14
        for <devicetree@vger.kernel.org>; Fri, 20 Nov 2020 18:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=BEFBYjf850Ydzo63+5rwraIHDR8Cqu0fdfzu8DbL0fA=;
        b=gSBeYkC3hQ7wzIslfgvOpCfXurXfCRj9ddCikE8lToem57W+ZgEmKV4/7kwvRk4nkU
         B+Yq0fCMAX+BTSVg+KpXb7dCkTyHmv0Vs8YcqMGzKEnJxEoD6zAITT29pEfe50aT5Vw5
         lqaeRb+2fFZDseJzctWDDDyxolv/P8Xoyt31sKR6LtFF7bu+GwPw9Wr1UAuqljOC5xmX
         Pq3XphLdk4mVFlHUIhUGDCGBx0u3KJ7wFlsV6X/tkJO3bTCgKm7ylfq7fLqqRNeXjayQ
         noIKMKbcbZ+xGLAnX7Dy7ijL7bpPlFFfcTjukDUZE84H2VUZflsZWWwYjXH4dawoQS7f
         Pcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=BEFBYjf850Ydzo63+5rwraIHDR8Cqu0fdfzu8DbL0fA=;
        b=DgD6nnpK1qoPWOWtMMfyY27fIAx6o14LCOFnheN73iJLDXidrLYQ2M4fl6a6YMgsGW
         N/2woqYtpYwmVEKvnI0i5Qg4AaonTBtQARulu4Frbht23pCV9N6ZerVPjNhYlz6VHCax
         rFGHWw0odOGgquo3MjgnH9iqj5Dqky1/JZEwbsIrzzeLWNHSytpE74fuiCy1XjVHfpRN
         4f/tiwR07UyR2z8xjvnKMXSMH/dWBoF3dS1z6X9PcTsTN3WPT7I9FMrb8fu2sbka+4a3
         Yp+hGeuhrwwMHWlSIW4A7drZJNJD+UpLT7VGJE6C7BS4/4y+qv6TykQtAtkuCdli9M9o
         IenQ==
X-Gm-Message-State: AOAM533ZGIg9eiMIyaKgdllfE8oK3pvUbTSbp4+esTjqyuuncy/o9+2X
        y8jgm4OUwJjsnrJIZFftvgV6hSQkShmLSsA=
X-Google-Smtp-Source: ABdhPJztIuCkrLcn+gUs8LJYiOxV3Oj6qHuVK25FKWOhywIwi1DvpSREzSMr8PjNIvYy5JgUGDysjhQxV+JLf+M=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a0c:9121:: with SMTP id
 q30mr2362792qvq.17.1605924182604; Fri, 20 Nov 2020 18:03:02 -0800 (PST)
Date:   Fri, 20 Nov 2020 18:02:22 -0800
In-Reply-To: <20201121020232.908850-1-saravanak@google.com>
Message-Id: <20201121020232.908850-8-saravanak@google.com>
Mime-Version: 1.0
References: <20201121020232.908850-1-saravanak@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v2 07/17] driver core: Add fwnode_init()
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

There are multiple locations in the kernel where a struct fwnode_handle
is initialized. Add fwnode_init() so that we have one way of
initializing a fwnode_handle.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/acpi/property.c         | 2 +-
 drivers/acpi/scan.c             | 2 +-
 drivers/base/swnode.c           | 2 +-
 drivers/firmware/efi/efi-init.c | 8 ++++----
 include/linux/fwnode.h          | 6 ++++++
 include/linux/of.h              | 2 +-
 kernel/irq/irqdomain.c          | 2 +-
 7 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/acpi/property.c b/drivers/acpi/property.c
index d04de10a63e4..24e87b630573 100644
--- a/drivers/acpi/property.c
+++ b/drivers/acpi/property.c
@@ -76,7 +76,7 @@ static bool acpi_nondev_subnode_extract(const union acpi_object *desc,
 		return false;
 
 	dn->name = link->package.elements[0].string.pointer;
-	dn->fwnode.ops = &acpi_data_fwnode_ops;
+	fwnode_init(&dn->fwnode, &acpi_data_fwnode_ops);
 	dn->parent = parent;
 	INIT_LIST_HEAD(&dn->data.properties);
 	INIT_LIST_HEAD(&dn->data.subnodes);
diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
index bc6a79e33220..519963bcc047 100644
--- a/drivers/acpi/scan.c
+++ b/drivers/acpi/scan.c
@@ -1589,7 +1589,7 @@ void acpi_init_device_object(struct acpi_device *device, acpi_handle handle,
 	device->device_type = type;
 	device->handle = handle;
 	device->parent = acpi_bus_get_parent(handle);
-	device->fwnode.ops = &acpi_device_fwnode_ops;
+	fwnode_init(&device->fwnode, &acpi_device_fwnode_ops);
 	acpi_set_device_status(device, sta);
 	acpi_device_get_busid(device);
 	acpi_set_pnp_ids(handle, &device->pnp, type);
diff --git a/drivers/base/swnode.c b/drivers/base/swnode.c
index 010828fc785b..4a4b2008fbc2 100644
--- a/drivers/base/swnode.c
+++ b/drivers/base/swnode.c
@@ -653,7 +653,7 @@ swnode_register(const struct software_node *node, struct swnode *parent,
 	swnode->parent = parent;
 	swnode->allocated = allocated;
 	swnode->kobj.kset = swnode_kset;
-	swnode->fwnode.ops = &software_node_ops;
+	fwnode_init(&swnode->fwnode, &software_node_ops);
 
 	ida_init(&swnode->child_ids);
 	INIT_LIST_HEAD(&swnode->entry);
diff --git a/drivers/firmware/efi/efi-init.c b/drivers/firmware/efi/efi-init.c
index f55a92ff12c0..b148f1459fb3 100644
--- a/drivers/firmware/efi/efi-init.c
+++ b/drivers/firmware/efi/efi-init.c
@@ -359,9 +359,7 @@ static const struct fwnode_operations efifb_fwnode_ops = {
 	.add_links = efifb_add_links,
 };
 
-static struct fwnode_handle efifb_fwnode = {
-	.ops = &efifb_fwnode_ops,
-};
+static struct fwnode_handle efifb_fwnode;
 
 static int __init register_gop_device(void)
 {
@@ -375,8 +373,10 @@ static int __init register_gop_device(void)
 	if (!pd)
 		return -ENOMEM;
 
-	if (IS_ENABLED(CONFIG_PCI))
+	if (IS_ENABLED(CONFIG_PCI)) {
+		fwnode_init(&efifb_fwnode, &efifb_fwnode_ops);
 		pd->dev.fwnode = &efifb_fwnode;
+	}
 
 	err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
 	if (err)
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index e0abafbb17f8..5589799708b5 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -170,6 +170,12 @@ struct fwnode_operations {
 	} while (false)
 #define get_dev_from_fwnode(fwnode)	get_device((fwnode)->dev)
 
+static inline void fwnode_init(struct fwnode_handle *fwnode,
+			       const struct fwnode_operations *ops)
+{
+	fwnode->ops = ops;
+}
+
 extern u32 fw_devlink_get_flags(void);
 
 #endif
diff --git a/include/linux/of.h b/include/linux/of.h
index 5d51891cbf1a..27fba2472eee 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -108,7 +108,7 @@ static inline void of_node_init(struct device_node *node)
 #if defined(CONFIG_OF_KOBJ)
 	kobject_init(&node->kobj, &of_node_ktype);
 #endif
-	node->fwnode.ops = &of_fwnode_ops;
+	fwnode_init(&node->fwnode, &of_fwnode_ops);
 }
 
 #if defined(CONFIG_OF_KOBJ)
diff --git a/kernel/irq/irqdomain.c b/kernel/irq/irqdomain.c
index cf8b374b892d..06fce7e39033 100644
--- a/kernel/irq/irqdomain.c
+++ b/kernel/irq/irqdomain.c
@@ -91,7 +91,7 @@ struct fwnode_handle *__irq_domain_alloc_fwnode(unsigned int type, int id,
 	fwid->type = type;
 	fwid->name = n;
 	fwid->pa = pa;
-	fwid->fwnode.ops = &irqchip_fwnode_ops;
+	fwnode_init(&fwid->fwnode, &irqchip_fwnode_ops);
 	return &fwid->fwnode;
 }
 EXPORT_SYMBOL_GPL(__irq_domain_alloc_fwnode);
-- 
2.29.2.454.gaff20da3a2-goog

