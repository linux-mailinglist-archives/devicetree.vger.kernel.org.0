Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EA507234E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 02:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727584AbfGXALX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 20:11:23 -0400
Received: from mail-pf1-f202.google.com ([209.85.210.202]:42046 "EHLO
        mail-pf1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727574AbfGXALW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 20:11:22 -0400
Received: by mail-pf1-f202.google.com with SMTP id 21so27278478pfu.9
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 17:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=dW/eX2JkclSqL7u9D8ywYYaolgPaeztKnKrJrmo9wG4=;
        b=u946jxc1RmSvSOtzAKB3GMM86YLHchlYMuLFogO7YsdmMYJyI/7JXiQonjz3bcjopu
         elHlrksvcvbieQ5JZrC8tfVphdsbpDrryd7Z/sFe+tWszPgvfTmkqDd+g1wm/sTmt499
         gtOymTg8kvR2Y7hXivULQm/EfjGEB1KEAhZVwElnZH5RTntDEw55/zGR0eFNE7cjSF2m
         Fr4IlI72U7F4mZfaFKNfmZVADen5GkW7me5ZUjC141Y4ao4x5wfsMcbswStnYrBe3lLm
         fgxpOMKVuceTCQhNsmeK1NhqpvhIT5GPsRSahADu5u1Xwkbf5FYCT6XOXBPf+mymKQV0
         w+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=dW/eX2JkclSqL7u9D8ywYYaolgPaeztKnKrJrmo9wG4=;
        b=NC3pslYqOdvH1X9461iNEDL5jRCQEjMgSinA8dBgmTA3bzCm1RanYfHr7F3CJA2/eJ
         5/VLjuJaXxvRqzNjVV0LP3D3CS3fbt+osZmLA+6bm55e9SCV0AxGvPzWDzGvpdSRgCzT
         ifJj+Z5h0Ig5s+YMbVTg1UbkXelSPkRuKSEBPtUhFVJyYPooHmAuIbqFB1pyk5uRHk4R
         RbIdJNufUIAp8JiNxjQXQkoVBAbi0R7M4Ya3OZpxEuo8UvzSfbyenfEnAghppy1m1Avu
         niw7J6xIlPYdI3IvO2i2qaqBEl40hoWJ3vUTdZywq7VP4bdCx2ZmlRHuEMJ3yAl0xFb7
         JpLA==
X-Gm-Message-State: APjAAAULz1tIaPypO97yA1yB0N0jXhw3kINXiwlyfgzgz+lZUgE/EXt5
        qs7UrDikTdrhbtQ5R6/SE58LmU70ZEF/8lo=
X-Google-Smtp-Source: APXvYqz9YflAXImGtKl/9HK7UKMqSBdU9Tp6PYpqM84Q1eb8vrgbKFOPzUha0/HYyHn1gr8xv8NM/AwgD1w+mT8=
X-Received: by 2002:a65:4103:: with SMTP id w3mr63674222pgp.1.1563927081240;
 Tue, 23 Jul 2019 17:11:21 -0700 (PDT)
Date:   Tue, 23 Jul 2019 17:10:58 -0700
In-Reply-To: <20190724001100.133423-1-saravanak@google.com>
Message-Id: <20190724001100.133423-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190724001100.133423-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v7 5/7] of/platform: Pause/resume sync state during init and of_platform_populate()
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

When all the top level devices are populated from DT during kernel
init, the supplier devices could be added and probed before the
consumer devices are added and linked to the suppliers. To avoid the
sync_state() callback from being called prematurely, pause the
sync_state() callbacks before populating the devices and resume them
at late_initcall_sync().

Similarly, when children devices are populated after kernel init using
of_platform_populate(), there could be supplier-consumer dependencies
between the children devices that are populated. To avoid the same
problem with sync_state() being called prematurely, pause and resume
sync_state() callbacks across of_platform_populate().

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 4344419a26fc..71d6138698ec 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -485,6 +485,7 @@ int of_platform_populate(struct device_node *root,
 	pr_debug("%s()\n", __func__);
 	pr_debug(" starting at: %pOF\n", root);
 
+	device_links_supplier_sync_state_pause();
 	for_each_child_of_node(root, child) {
 		rc = of_platform_bus_create(child, matches, lookup, parent, true);
 		if (rc) {
@@ -492,6 +493,8 @@ int of_platform_populate(struct device_node *root,
 			break;
 		}
 	}
+	device_links_supplier_sync_state_resume();
+
 	of_node_set_flag(root, OF_POPULATED_BUS);
 
 	of_node_put(root);
@@ -688,6 +691,7 @@ static int __init of_platform_default_populate_init(void)
 		return -ENODEV;
 
 	platform_bus_type.add_links = of_link_to_suppliers;
+	device_links_supplier_sync_state_pause();
 	/*
 	 * Handle certain compatibles explicitly, since we don't want to create
 	 * platform_devices for every node in /reserved-memory with a
@@ -708,6 +712,13 @@ static int __init of_platform_default_populate_init(void)
 	return 0;
 }
 arch_initcall_sync(of_platform_default_populate_init);
+
+static int __init of_platform_sync_state_init(void)
+{
+	device_links_supplier_sync_state_resume();
+	return 0;
+}
+late_initcall_sync(of_platform_sync_state_init);
 #endif
 
 int of_platform_device_destroy(struct device *dev, void *data)
-- 
2.22.0.709.g102302147b-goog

