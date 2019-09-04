Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50235A94A3
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2019 23:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730893AbfIDVLs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 17:11:48 -0400
Received: from mail-pg1-f201.google.com ([209.85.215.201]:33999 "EHLO
        mail-pg1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730872AbfIDVLs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 17:11:48 -0400
Received: by mail-pg1-f201.google.com with SMTP id x19so13938639pgx.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 14:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=BNYZzlx9aTQ+LCgQZ8IG6mRelU0sVitbFkM6D5hbnnk=;
        b=YRrXlCAVnzOOK2AfKz9blA2WPrjNpEFwO6Leu6qgi/oZvs/DH9zgLemvWVbfxKWe0s
         YCxi/y1Mm7LjwnUr7HhL0vUqE/tbkSq31IsqlVHfvBPhSpEC4XwJGtllRI+Aph4kHhz5
         w35aCIKvqsH6vrHDhJYqLhBJmU0Py9hgPWxl5VpPKN8gMj2iaNMdX1oqh9SuENVPRlE0
         vuL7OAgySwzO1pszYEoAHk5QI404dziPwjaKEx5Dp0Ys9UTaBYjuXGHRiXIDK4HZQuTs
         97JdZlBhmpkBtfEIiemSRvuK+M7OqFzBYTaVLRdKXAsDFNHkmFldBvv6wGYmveq1NB66
         cqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=BNYZzlx9aTQ+LCgQZ8IG6mRelU0sVitbFkM6D5hbnnk=;
        b=fYy10ez3Mkz+nIpf6hOLy9dy+ZRG7wK5e4kfSsRuiRPkkVzmE1gcosiwjTFzQpz51P
         4oyeXBj/cWQZdWL9dNQJt7Faygd9Ug+Hl+0Yp825V7m9SGwxrdoWY6r8jwKVpUlkAyu8
         CTMFUkkZF3LzBHo8NvbNFFD56K0lFK7dACrwUNih1PlH5ZYUfqRKMhtbe2/vvYGU44t4
         JGrGYeKoFOaOSp3VmycXBmbHLIQVCmKnMMMhrIwIPEaNMMzeyt1+DNgqjphNHOVA7Foh
         3L4bFXn3Y/3pML83wf1+CqV/RuEYBsd3xg+BsDDW7Xk+S8jUkp1Mc9y2zMXl8Fkh8Ini
         Sv1A==
X-Gm-Message-State: APjAAAXWVqjWdFcpZuoawemFFx/6/UjthgIM1QgQ+tS9/sIq4hkqz7IM
        UdIWc6FIgfiLQAqJzlirpGZC2q3U6UnPBVs=
X-Google-Smtp-Source: APXvYqxa0Q445BT0USKWHcd+K+nDsZIoXWF5ccMgBrzd0E7J8jAJCvSVyiJOr/BJ7oiKfX/XVA1lQD7iaFaxsQU=
X-Received: by 2002:a63:2a08:: with SMTP id q8mr101014pgq.415.1567631507124;
 Wed, 04 Sep 2019 14:11:47 -0700 (PDT)
Date:   Wed,  4 Sep 2019 14:11:24 -0700
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
Message-Id: <20190904211126.47518-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190904211126.47518-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v11 5/6] of/platform: Pause/resume sync state during init and of_platform_populate()
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com,
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

Similarly, when children devices are populated from a module using
of_platform_populate(), there could be supplier-consumer dependencies
between the children devices that are populated. To avoid the same
problem with sync_state() being called prematurely, pause and resume
sync_state() callbacks across of_platform_populate().

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index b47a2292fe8e..d93891a05f60 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -480,6 +480,7 @@ int of_platform_populate(struct device_node *root,
 	pr_debug("%s()\n", __func__);
 	pr_debug(" starting at: %pOF\n", root);
 
+	device_links_supplier_sync_state_pause();
 	for_each_child_of_node(root, child) {
 		rc = of_platform_bus_create(child, matches, lookup, parent, true);
 		if (rc) {
@@ -487,6 +488,8 @@ int of_platform_populate(struct device_node *root,
 			break;
 		}
 	}
+	device_links_supplier_sync_state_resume();
+
 	of_node_set_flag(root, OF_POPULATED_BUS);
 
 	of_node_put(root);
@@ -518,6 +521,7 @@ static int __init of_platform_default_populate_init(void)
 	if (!of_have_populated_dt())
 		return -ENODEV;
 
+	device_links_supplier_sync_state_pause();
 	/*
 	 * Handle certain compatibles explicitly, since we don't want to create
 	 * platform_devices for every node in /reserved-memory with a
@@ -538,6 +542,14 @@ static int __init of_platform_default_populate_init(void)
 	return 0;
 }
 arch_initcall_sync(of_platform_default_populate_init);
+
+static int __init of_platform_sync_state_init(void)
+{
+	if (of_have_populated_dt())
+		device_links_supplier_sync_state_resume();
+	return 0;
+}
+late_initcall_sync(of_platform_sync_state_init);
 #endif
 
 int of_platform_device_destroy(struct device *dev, void *data)
-- 
2.23.0.187.g17f5b7556c-goog

