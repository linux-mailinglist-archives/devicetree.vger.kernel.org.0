Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B16C7D0C5
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 00:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731449AbfGaWRo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 18:17:44 -0400
Received: from mail-pg1-f201.google.com ([209.85.215.201]:42590 "EHLO
        mail-pg1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731430AbfGaWRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 18:17:43 -0400
Received: by mail-pg1-f201.google.com with SMTP id q10so20567006pgi.9
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 15:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=E8qO1r9zkBco8i30LKei27yj1HI5jtBG2cEcj4TXoIY=;
        b=d/VtDTsSh8Z2c3zckzKtYvsAs7OIu4ECPYUplkE9TuBlbHkpKKw+4yhGFky4IbY0Me
         +ZJoIPZ6CYae79eKbVDE8AuXHelQJvpDQeu4uRwY/SbxpzvSNH7/YR3SIO112Cc/PV7d
         wKaRwZdjlaRx+LFGslqNYoog4KNTRKMiqDRHqa7uVQVQRdip1+ZdtLdlXcxQjVru2fqj
         MZtBoRnhsjhmNcaa3+FaargqMkuKSSB+SMGtcoQB5EVDkS3NBF9A9DE8B54UbhFu30qs
         wrTICeNOu46P656Vfzwj9RmqEhgJAbr1UHef6f7QuM1wNJKF0I8DZNamlH8zpPRQ+K6h
         3wLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=E8qO1r9zkBco8i30LKei27yj1HI5jtBG2cEcj4TXoIY=;
        b=GXj6hvOwPQm0af2S+c29gxVgX1HnvNTtbisd7fZEYAvRQKLV01qE1is6uLaPtMNsKs
         +v7a0RmrWM2VUUjFsiPQrle3X/vsrDJZrnyo0AjUImDRtBHT6+1vI9RYCNJOjTrv+I3w
         qlZCvcgxvKrlNUIyUV7xQIBcv74+NHwv5x8jsjN0Zizq3SuPKzdoq95CS96EUWVJwNVb
         fwqhFQ2ZPDuP+Woh06sqV4ekX87mrb3QnBZGupouUISgIuegWUs69tWlirBac2cF40lj
         IgdiIfM3kF6KJjUnzl7U/on+zucbZr+LZqTt9LspGf9lKhIVR+t7Snh7RLn0i71Ia51y
         Cxmg==
X-Gm-Message-State: APjAAAVSpy9H0ty5Dok31I67FijxjEl1NAmet8G+qGvTCLpHZP65M0I4
        Tii8l2j898EvRStN/P8kTAdJjhmFXjHcwL8=
X-Google-Smtp-Source: APXvYqxFHtbYH5daMidBua+QXHW/9hpGhJGW4N6/7EqrJehpvMYplMteVpFPEXqIjUZer9mgfGXCxBsrP/pYmSw=
X-Received: by 2002:a63:69c1:: with SMTP id e184mr111461437pgc.198.1564611462635;
 Wed, 31 Jul 2019 15:17:42 -0700 (PDT)
Date:   Wed, 31 Jul 2019 15:17:18 -0700
In-Reply-To: <20190731221721.187713-1-saravanak@google.com>
Message-Id: <20190731221721.187713-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190731221721.187713-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v9 5/7] of/platform: Pause/resume sync state during init and of_platform_populate()
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
index 64c4b91988f2..6c9c8dcee912 100644
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

