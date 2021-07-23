Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5984D3D3474
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 08:11:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhGWFbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 01:31:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbhGWFbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 01:31:04 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D754FC061575
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 23:11:37 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d17so1945321plh.10
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 23:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BPDQ2kVL0UdvRLtrnYW5IaWsLJTP3znWjR1im+Y6laM=;
        b=RvwcrzV5uqh1+tuqehkGGlROHKEcLre8WM6HULfyzeNhzxZS3xa0TDvLo7rqbPwM8f
         6/TmZMCTk98uBL6PRA4fWEKrT4kWSWdVo1EPXell3eibaPvYB5BGl4ElmL5zV4q5GNgU
         Y4hGXuo+FyXcm97D5To7/8AklWcrz0VLt48wF95DChUyC0JY90o/B8U+erPmvFpKZqFe
         rBR8al5p7HUYanfJjWxwmU0Uq6k25KOl75QP/F9TfMB+CFNa4rn7Ne+I2VLKgiPCbizA
         G4T2Ju6JCVrO65waa3hCnRMGfpZr6F0GJ5B3F2g/g+LGRxCmGvoV9TEJ5C0O/wvP9x3a
         Vl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BPDQ2kVL0UdvRLtrnYW5IaWsLJTP3znWjR1im+Y6laM=;
        b=NMrsF7kh8mE+jeUyMZuZBTY7EAdPNx0zF8nLE1f2g3bd8URLa0MZ2WnU3BeI6yuhXy
         OY5ZE+IFOTp3tyq5lRfLm/WkK4T5e+95jMb2IGxEtlCE2RJWbjiDcYOmZCjN4evtYhbO
         3XlCtJJYuL4yp42XshwV6qzch0AAnwVqDVbAg5G1y/i/9eoEzb1MSm2qXbfiLzcwJrh4
         H3+DEe15NRUw/4feg5wUGQiOD/HLhFpdeTVCFqtLpfdesoTYh6oRaUXnx7pIbZd4H0Po
         IxEQgwTq83YQiPRW9DYH8qZiG7i6kUwiTah7q7avfGrot1zz8qhur0SGKATGHyzjkN8V
         9Qqg==
X-Gm-Message-State: AOAM532ic86Ex02OrD0JUSa+eNAgUlidWoLOqSG7uensBKxsatsvGhq2
        BZkYYAzky2iH7OMXNA7uMEp2uA==
X-Google-Smtp-Source: ABdhPJySZza7P56XmnuJ3Cil+h7yPhUfS2othNjGYfb7MFSL04v38Aiyv3G2haUnbVxgIAr6POQIzA==
X-Received: by 2002:a17:90a:c57:: with SMTP id u23mr843021pje.186.1627020697200;
        Thu, 22 Jul 2021 23:11:37 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id ie13sm4902106pjb.45.2021.07.22.23.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 23:11:35 -0700 (PDT)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org
Subject: [PATCH V2.1 5/5] virtio: Bind virtio device to device-tree node
Date:   Fri, 23 Jul 2021 11:41:31 +0530
Message-Id: <3606cdcc637682a3eb401d617e6e247431b78ec6.1627019436.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <026ad5f274d64d46590623f9f3a04b8abfbe62d7.1626947324.git.viresh.kumar@linaro.org>
References: <026ad5f274d64d46590623f9f3a04b8abfbe62d7.1626947324.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bind the virtio devices with their of_node. This will help users of the
virtio devices to mention their dependencies on the device in the DT
itself. Like GPIO pin users can use the phandle of the device node, or
the node may contain more subnodes to add i2c or spi eeproms and other
users.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
V2->V2.1
- Remove list of virtio device and use of_device_is_compatible() instead.

 drivers/virtio/virtio.c | 56 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 53 insertions(+), 3 deletions(-)

diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index 4b15c00c0a0a..7c56b3416895 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -4,6 +4,7 @@
 #include <linux/virtio_config.h>
 #include <linux/module.h>
 #include <linux/idr.h>
+#include <linux/of.h>
 #include <uapi/linux/virtio_ids.h>
 
 /* Unique numbering for virtio devices. */
@@ -292,6 +293,9 @@ static int virtio_dev_remove(struct device *_d)
 
 	/* Acknowledge the device's existence again. */
 	virtio_add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);
+
+	of_node_put(dev->dev.of_node);
+
 	return 0;
 }
 
@@ -319,6 +323,42 @@ void unregister_virtio_driver(struct virtio_driver *driver)
 }
 EXPORT_SYMBOL_GPL(unregister_virtio_driver);
 
+static int virtio_device_of_init(struct virtio_device *dev)
+{
+	struct device_node *np, *pnode = dev->dev.parent->of_node;
+	int ret, count;
+	char compat[12];
+
+	if (!pnode)
+		return 0;
+
+	count = of_get_available_child_count(pnode);
+	if (!count)
+		return 0;
+
+	/* There can be only 1 child node */
+	if (WARN_ON(count > 1))
+		return -EINVAL;
+
+	np = of_get_next_available_child(pnode, NULL);
+	if (WARN_ON(!np))
+		return -ENODEV;
+
+	snprintf(compat, sizeof(compat), "virtio,%x", dev->id.device);
+
+	if (!of_device_is_compatible(np, compat)) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	dev->dev.of_node = np;
+	return 0;
+
+out:
+	of_node_put(np);
+	return ret;
+}
+
 /**
  * register_virtio_device - register virtio device
  * @dev        : virtio device to be registered
@@ -343,6 +383,10 @@ int register_virtio_device(struct virtio_device *dev)
 	dev->index = err;
 	dev_set_name(&dev->dev, "virtio%u", dev->index);
 
+	err = virtio_device_of_init(dev);
+	if (err)
+		goto out_ida_remove;
+
 	spin_lock_init(&dev->config_lock);
 	dev->config_enabled = false;
 	dev->config_change_pending = false;
@@ -362,10 +406,16 @@ int register_virtio_device(struct virtio_device *dev)
 	 */
 	err = device_add(&dev->dev);
 	if (err)
-		ida_simple_remove(&virtio_index_ida, dev->index);
+		goto out_of_node_put;
+
+	return 0;
+
+out_of_node_put:
+	of_node_put(dev->dev.of_node);
+out_ida_remove:
+	ida_simple_remove(&virtio_index_ida, dev->index);
 out:
-	if (err)
-		virtio_add_status(dev, VIRTIO_CONFIG_S_FAILED);
+	virtio_add_status(dev, VIRTIO_CONFIG_S_FAILED);
 	return err;
 }
 EXPORT_SYMBOL_GPL(register_virtio_device);
-- 
2.31.1.272.g89b43f80a514

