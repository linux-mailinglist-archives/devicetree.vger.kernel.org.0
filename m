Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA9133C7F
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 02:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726589AbfFDAc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 20:32:28 -0400
Received: from mail-vk1-f202.google.com ([209.85.221.202]:35345 "EHLO
        mail-vk1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726572AbfFDAc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 20:32:27 -0400
Received: by mail-vk1-f202.google.com with SMTP id q13so4974855vke.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 17:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=oMHoMPQmhEqS1OrwCj/awDAcMj4261wJxPL5IX32+TA=;
        b=NjRhrHy8fU5O2aDJA2tERBWPr37OiPoexIAhjVocKMGANjhAMsOAgCoXQOrJgyz9KD
         SOJsDJ6enVuIkQYTwQb+07KGs6es1p6flkGOa0IulpUQdLz0z5sJWApcRlVWDeH+JbQo
         62+FnG5MAwVp2nzuk3402x/g6AjJvpyjyrkjq95IXDu480AoKlwcVrmj+5kmK9V9zocB
         vjlEOA3w5ZNHPZaid0uCdAIPrlvhYd1OUS7CyLnLVcUHTIfM2uDu7yO/4xVryJxA0p5I
         iH7bkl57RdIQvc8lkn8FOzZCjycSlvVn9uVABMhseQ8nOaNWWjm+rNtPGObyYOgWSy5u
         raVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=oMHoMPQmhEqS1OrwCj/awDAcMj4261wJxPL5IX32+TA=;
        b=ZXrNvLmPUKJ1G+poE5XYdEF4JaDyonUXND/aEq33cYsEw5EvGN1vM5kmPy+kyewQ7a
         ViCQGY7sklM6Vagz5L0d35anDeDkLHLzzuSo2zQFI+RrGay+6ZeVOamZCSK8NJxxy8HO
         0B+fRXe4G0K0/X/Xhh5Ypunh8IaswROXhm7mTccQ3atW7uExR12+n4rxyOXyQIzVUHKO
         Fw+4wXmYpublReGHXz2Q6SW9P5amssLOiTWD9+OhZNFpAN5nhkq2na+Ri1B4j20U/NZ8
         WIXOsl6KyxchPoBJ3Yca9EsKPPxAJbofNw7xHcU6GQL0/4PBM2o8+RiUhYPvaVbTNini
         4r3g==
X-Gm-Message-State: APjAAAUWzZYX8ZOHy/UPy7dtdnKGdUj2BkO7M+7csZQLYTfINiIqO7lq
        XhWODFLuB0plyiLm9kvyFtfLZoeoeZ9BZLU=
X-Google-Smtp-Source: APXvYqwKLG5UNIjNvW32LmVnGB/cQYr9t1NRghUfOPU8Q9WsGHWlu2R+D87+73k0P0biFV9BITmWhROBtb9AyGk=
X-Received: by 2002:a1f:551:: with SMTP id 78mr10292646vkf.45.1559608346588;
 Mon, 03 Jun 2019 17:32:26 -0700 (PDT)
Date:   Mon,  3 Jun 2019 17:32:14 -0700
In-Reply-To: <20190604003218.241354-1-saravanak@google.com>
Message-Id: <20190604003218.241354-2-saravanak@google.com>
Mime-Version: 1.0
References: <20190604003218.241354-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [RESEND PATCH v1 1/5] of/platform: Speed up of_find_device_by_node()
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>,
        David Collins <collinsd@codeaurora.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a pointer from device tree node to the device created from it.
This allows us to find the device corresponding to a device tree node
without having to loop through all the platform devices.

However, fallback to looping through the platform devices to handle
any devices that might set their own of_node.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 20 +++++++++++++++++++-
 include/linux/of.h    |  3 +++
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 04ad312fd85b..1115a8d80a33 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -42,6 +42,8 @@ static int of_dev_node_match(struct device *dev, void *data)
 	return dev->of_node == data;
 }
 
+static DEFINE_SPINLOCK(of_dev_lock);
+
 /**
  * of_find_device_by_node - Find the platform_device associated with a node
  * @np: Pointer to device tree node
@@ -55,7 +57,18 @@ struct platform_device *of_find_device_by_node(struct device_node *np)
 {
 	struct device *dev;
 
-	dev = bus_find_device(&platform_bus_type, NULL, np, of_dev_node_match);
+	/*
+	 * Spinlock needed to make sure np->dev doesn't get freed between NULL
+	 * check inside and kref count increment inside get_device(). This is
+	 * achieved by grabbing the spinlock before setting np->dev = NULL in
+	 * of_platform_device_destroy().
+	 */
+	spin_lock(&of_dev_lock);
+	dev = get_device(np->dev);
+	spin_unlock(&of_dev_lock);
+	if (!dev)
+		dev = bus_find_device(&platform_bus_type, NULL, np,
+				      of_dev_node_match);
 	return dev ? to_platform_device(dev) : NULL;
 }
 EXPORT_SYMBOL(of_find_device_by_node);
@@ -196,6 +209,7 @@ static struct platform_device *of_platform_device_create_pdata(
 		platform_device_put(dev);
 		goto err_clear_flag;
 	}
+	np->dev = &dev->dev;
 
 	return dev;
 
@@ -556,6 +570,10 @@ int of_platform_device_destroy(struct device *dev, void *data)
 	if (of_node_check_flag(dev->of_node, OF_POPULATED_BUS))
 		device_for_each_child(dev, NULL, of_platform_device_destroy);
 
+	/* Spinlock is needed for of_find_device_by_node() to work */
+	spin_lock(&of_dev_lock);
+	dev->of_node->dev = NULL;
+	spin_unlock(&of_dev_lock);
 	of_node_clear_flag(dev->of_node, OF_POPULATED);
 	of_node_clear_flag(dev->of_node, OF_POPULATED_BUS);
 
diff --git a/include/linux/of.h b/include/linux/of.h
index 0cf857012f11..f2b4912cbca1 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -48,6 +48,8 @@ struct property {
 struct of_irq_controller;
 #endif
 
+struct device;
+
 struct device_node {
 	const char *name;
 	phandle phandle;
@@ -68,6 +70,7 @@ struct device_node {
 	unsigned int unique_id;
 	struct of_irq_controller *irq_trans;
 #endif
+	struct device *dev;		/* Device created from this node */
 };
 
 #define MAX_PHANDLE_ARGS 16
-- 
2.22.0.rc1.257.g3120a18244-goog

