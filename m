Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAD446EDFC
	for <lists+devicetree@lfdr.de>; Sat, 20 Jul 2019 08:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726399AbfGTGRM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Jul 2019 02:17:12 -0400
Received: from mail-pf1-f202.google.com ([209.85.210.202]:34825 "EHLO
        mail-pf1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726393AbfGTGRL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Jul 2019 02:17:11 -0400
Received: by mail-pf1-f202.google.com with SMTP id r142so19965893pfc.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 23:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=MUMtT5fNTfc8RU/9CTuiAA1krAnocmy3WUu1kHP2UCU=;
        b=ZcIRGpRC6ImMsB6lcmhdeaG93F5yso9QsFv9UIzd6S5yw7j2RNg1NtSCBlBy+f4ZAY
         6P56F61pR2uLx+g/zNIHkg0JMQe7cIRSmmy4NlCWha09GyVjqC7qfmsGDfQEQxk3AGrP
         iITpXE9OIe8zumu3B9dSA5PAe+icAYbflENH/oV2phFwkKcYlL9ZClqStukx79N9bG4G
         mUBTuhquOiEyDSd2g5IlFbuOUWnNu74J3I4FNIYLLE58b54ephRO1JKPUKbApN3lWIe6
         1KxQcmRIOOI7Q8+50cLSr0K2fNg3NVl2p56m6tBhN1kAp9Q7+9lTvfpFGSSTcTDSNsFT
         Uz/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=MUMtT5fNTfc8RU/9CTuiAA1krAnocmy3WUu1kHP2UCU=;
        b=jZJHfmdrO9WPYFW17axhTmX0AKIClLUqZ8BVskzQj6R72sdLGZ6ParVHMply6xI4O9
         6Ft/V+7GXptS5+aNdStbFz3y4X8GcrQAYaJz+zqrQxfBpzl74zj9U3mBIPJOJEY8eh96
         IE1L7jvnWXtVmVrgNpMZVqQe/BYdAmA3FPRQk0/McgjNGHu60pg1lLqTBxwtPJ2F36LC
         7Nqu9GQPMjS6xcx3SXF6XegXdHbI2PRiSjFCXSGqSXn36Lepp1AXCYf//1wRKqg6Hq6Z
         pjBa8o0jnYJZ/28Ec94DL4A1DhuR94IFlWhoGj+6FPfLcboKxFaT4tkqDBxRg+yYixby
         S82A==
X-Gm-Message-State: APjAAAX+DX7zRc/92RzhEvdKpVHVO7+4aXXo8eN6Ryo3t5dBUntAjv/r
        +Bk2Obu59pymeEKmNK8idPgbNH6tNLBhd3o=
X-Google-Smtp-Source: APXvYqxKQVDMn5SLR1DIDSF3SNu3xYVoESeaCay+MnIMKEFONMVfjtcEKZrqhK6l1f0tlgMzemu+Qsq2kckBBMs=
X-Received: by 2002:a65:6406:: with SMTP id a6mr22156058pgv.393.1563603430627;
 Fri, 19 Jul 2019 23:17:10 -0700 (PDT)
Date:   Fri, 19 Jul 2019 23:16:44 -0700
In-Reply-To: <20190720061647.234852-1-saravanak@google.com>
Message-Id: <20190720061647.234852-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190720061647.234852-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
Subject: [PATCH v6 5/7] of/platform: Pause/resume sync state during init and of_platform_populate()
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
index 88a2086e26fa..d0c2f6443247 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -486,6 +486,7 @@ int of_platform_populate(struct device_node *root,
 	pr_debug("%s()\n", __func__);
 	pr_debug(" starting at: %pOF\n", root);
 
+	device_links_supplier_sync_state_pause();
 	for_each_child_of_node(root, child) {
 		rc = of_platform_bus_create(child, matches, lookup, parent, true);
 		if (rc) {
@@ -493,6 +494,8 @@ int of_platform_populate(struct device_node *root,
 			break;
 		}
 	}
+	device_links_supplier_sync_state_resume();
+
 	of_node_set_flag(root, OF_POPULATED_BUS);
 
 	of_node_put(root);
@@ -682,6 +685,7 @@ static int __init of_platform_default_populate_init(void)
 		return -ENODEV;
 
 	platform_bus_type.add_links = of_link_to_suppliers;
+	device_links_supplier_sync_state_pause();
 	/*
 	 * Handle certain compatibles explicitly, since we don't want to create
 	 * platform_devices for every node in /reserved-memory with a
@@ -702,6 +706,13 @@ static int __init of_platform_default_populate_init(void)
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
2.22.0.657.g960e92d24f-goog

