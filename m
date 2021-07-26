Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB0863D52B2
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 06:52:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231502AbhGZELu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 00:11:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231674AbhGZELs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 00:11:48 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 576CDC061757
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 21:52:17 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id k1so10041239plt.12
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 21:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/etw2x/IOV61XRm5aQ4SVHdlMT8behp6226Zn4BBbvI=;
        b=zuRFX0GsaWbTMCQA/Ng8TO6XyGJferSVQ0pAR0GxmcQn7+Kzm77KAn2t5e4HF2W9uF
         FMEIR74TtOxn5m6zy27FZBynywpPlZcsMfoq89vx7yljF/e+K98SPrmyPYRc8YhfF7c7
         P213mVoA1mMTBDcd8QWJTLv9MPuZcn7fvQ1ZSmq8h/9RB5ELESMVb5AdoIHbBLvmrrbr
         01gn8WRioJm45UWG1fwg/UqyWFqFgi4BFpshTukJxa7vWqKfZCf5xv9DOnBXiLtIuceT
         +uQ2Yx/KFTVSligZUmlPiOVxl6pXLyWWPzc9+QeeIvvlrmwzi/UqDfYw19ItXSYPOKlN
         Mg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/etw2x/IOV61XRm5aQ4SVHdlMT8behp6226Zn4BBbvI=;
        b=CmYGqFJmFVd7aSaZK00Gf7upnjNRNAkZoq0ObkZXZCbd/5KA8lZS1PwJfhZV+6b84u
         +alCmkWS8Q+60psrHriFvIiyxaTAnKSd06KhdiTrZc/wXkDzRmA7CWRtgJ6OBcopSmq+
         V7W3Upw2d/jmAyvXUW0npYH5g/ioq+oiGOUgawKVP7K5dmvF+Vyn0WpfAySJrRi1h3BR
         UJDi+hRpz6acl2HIAOO+Gllld58dGPNSoDQ7hI8rCiYpZS8WtNbcV0IYnQdTE7YHzRvh
         /rxo+rQBgPepCuG6SdnCFgs2pcdR1K1sTkMowAIkHiYj6MmpxPA1PXdU+Jb6ufzBYzvy
         Wgsg==
X-Gm-Message-State: AOAM532V6VeVB07lnloBczCN0iZY4bxtTgJnHb2mgHqreJ56q0vBY90M
        usp5/bTmKQcoRJWuWkIthAjsOw==
X-Google-Smtp-Source: ABdhPJyr8wbdIszb+A/hmmA5994NGNnh9M1G2XZiayIibgeTjTIa3VkrXBI39bw6Y6b6tUCfsOEbkg==
X-Received: by 2002:a05:6a00:2306:b029:331:ebe8:a4b4 with SMTP id h6-20020a056a002306b0290331ebe8a4b4mr15787418pfh.15.1627275136900;
        Sun, 25 Jul 2021 21:52:16 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id b2sm46529295pgh.9.2021.07.25.21.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jul 2021 21:52:14 -0700 (PDT)
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
        virtualization@lists.linux-foundation.org,
        Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH V3 5/5] virtio: Bind virtio device to device-tree node
Date:   Mon, 26 Jul 2021 10:21:45 +0530
Message-Id: <454a58f998b0d16847d72a97b32192829fab2c8c.1627273794.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1627273794.git.viresh.kumar@linaro.org>
References: <cover.1627273794.git.viresh.kumar@linaro.org>
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

Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/virtio/virtio.c | 57 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 3 deletions(-)

diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index 4b15c00c0a0a..d001e84a5b23 100644
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
 
@@ -319,6 +323,43 @@ void unregister_virtio_driver(struct virtio_driver *driver)
 }
 EXPORT_SYMBOL_GPL(unregister_virtio_driver);
 
+static int virtio_device_of_init(struct virtio_device *dev)
+{
+	struct device_node *np, *pnode = dev_of_node(dev->dev.parent);
+	char compat[] = "virtio,XXXXXXXX"; /* Reserve enough space 32-bit id */
+	int ret, count;
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
+	BUG_ON(snprintf(compat, sizeof(compat), "virtio,%x", dev->id.device) >=
+	       sizeof(compat));
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
@@ -343,6 +384,10 @@ int register_virtio_device(struct virtio_device *dev)
 	dev->index = err;
 	dev_set_name(&dev->dev, "virtio%u", dev->index);
 
+	err = virtio_device_of_init(dev);
+	if (err)
+		goto out_ida_remove;
+
 	spin_lock_init(&dev->config_lock);
 	dev->config_enabled = false;
 	dev->config_change_pending = false;
@@ -362,10 +407,16 @@ int register_virtio_device(struct virtio_device *dev)
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

