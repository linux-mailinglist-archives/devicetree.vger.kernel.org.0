Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79E647D0C6
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 00:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730473AbfGaWRs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 18:17:48 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:48231 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731447AbfGaWRr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 18:17:47 -0400
Received: by mail-pf1-f201.google.com with SMTP id u21so44189999pfn.15
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 15:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=fA8Osu/oMdHmE5xK0cud5jz6KCAzT5KFwSK5LVxi8is=;
        b=rnbl4GZgBHsU8D6w4X2hphOjRolmjAp6kw5tG1urgr4enZ8I0UDeF2kkufwOTRLUQt
         yN/+MH8/hdbZKWSDhQ4Y3XdzOK706JLRQYkr929TkNWs6vWqwEv/nH7LcQFu+59HeGIp
         SxDFwJbYemIPlemlAyr6b/rj/upIPShk4XXLBxraCwAzwjfqO+Oz0EVlB6XE0MFpkC22
         XRJIyzvFrVme8jc4TSh4lWLjZyPHhdrc2Q+ehzroDiHf96gh6Y2i11rpin/lD1oiWSXH
         a0Ftf+aHdvgITk/3P53dv3BuEuAHJiRRnNEA/0QpqhWHRthXWrro4CZ7ezG+QkPGz0gb
         iMtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=fA8Osu/oMdHmE5xK0cud5jz6KCAzT5KFwSK5LVxi8is=;
        b=T5yA0jWd/kIEZKvH6s87tX+Xm8e8o5/i1z9ZpQicQAjtdvHEghogOmjZUll77p95+9
         VBzrMEAINbkuWB/N1KI2dUAY6oXJlrAgg5vlVQZ3th+R1mqy4Hjr8AbO5s4p9k2KQlRm
         buin7iWkna/gIGxUgwby6eaARXuX1gy+FDMtQjHfGYxtbvAHhPXF9S3wiN6QW/qHDrH9
         G0l4VXCn/kkJtnnoqXV4NIz+7TDYGVheQWoKYT0C1hYqXXfZxHGGT8h/nSK/Yoq3JzN8
         KWRYxmi/wBIyAh2LNWUA7N8PiQSCv/7cAUrmvAKrkQJifxv4+Zzp4rC70pFs/jber4KR
         0C4w==
X-Gm-Message-State: APjAAAWpw+blgE+BTLFZjldFiG5G60SP/Mr9xVwdAv1mVBjyKu0hqAcV
        THRc3yeAzUEcujKfEkcUGy7aTSZYO/ChT6Y=
X-Google-Smtp-Source: APXvYqzIXnYVLFJgnPx+KLDzqKZgFks0IFD55XI8BZirhVe365cEU+SqYVghHTbw0lrYfI3tPRt1xCOwXeQFjw8=
X-Received: by 2002:a63:1341:: with SMTP id 1mr8204047pgt.48.1564611466027;
 Wed, 31 Jul 2019 15:17:46 -0700 (PDT)
Date:   Wed, 31 Jul 2019 15:17:19 -0700
In-Reply-To: <20190731221721.187713-1-saravanak@google.com>
Message-Id: <20190731221721.187713-7-saravanak@google.com>
Mime-Version: 1.0
References: <20190731221721.187713-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v9 6/7] of/platform: Create device links for all
 child-supplier depencencies
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

A parent device can have child devices that it adds when it probes. But
this probing of the parent device can happen way after kernel init is done
-- for example, when the parent device's driver is loaded as a module.

In such cases, if the child devices depend on a supplier in the system, we
need to make sure the supplier gets the sync_state() callback only after
these child devices are added and probed.

To achieve this, when creating device links for a device by looking at its
DT node, don't just look at DT references at the top node level. Look at DT
references in all the descendant nodes too and create device links from the
ancestor device to all these supplier devices.

This way, when the parent device probes and adds child devices, the child
devices can then create their own device links to the suppliers and further
delay the supplier's sync_state() callback to after the child devices are
probed.

Example:
In this illustration, -> denotes DT references and indentation
represents child status.

Device node A
	Device node B -> D
	Device node C -> B, D

Device node D

Assume all these devices have their drivers loaded as modules.

Without this patch, this is the sequence of events:
1. D is added.
2. A is added.
3. Device D probes.
4. Device D gets its sync_state() callback.
5. Device B and C might malfunction because their resources got
   altered/turned off before they can make active requests for them.

With this patch, this is the sequence of events:
1. D is added.
2. A is added and creates device links to D.
3. Device link from A to B is not added because A is a parent of B.
4. Device D probes.
5. Device D does not get it's sync_state() callback because consumer A
   hasn't probed yet.
5. Device A probes.
5. a. Devices B and C are added.
5. b. Device links from B and C to D are added.
5. c. Device A's probe completes.
6. Device D does not get it's sync_state() callback because consumer A
   has probed but consumers B and C haven't probed yet.
7. Device B and C probe.
8. Device D gets it's sync_state() callback because all its consumers
   have probed.
9. None of the devices malfunction.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 6c9c8dcee912..36e25136e807 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -655,24 +655,35 @@ static bool of_link_property(struct device *dev, struct device_node *con_np,
 	return done ? 0 : -ENODEV;
 }
 
+static int __of_link_to_suppliers(struct device *dev,
+				  struct device_node *con_np)
+{
+	struct device_node *child;
+	struct property *p;
+	bool done = true;
+
+	for_each_property_of_node(con_np, p)
+		if (of_link_property(dev, con_np, p->name))
+			done = false;
+
+	for_each_child_of_node(con_np, child)
+		if (__of_link_to_suppliers(dev, child))
+			done = false;
+
+	return done ? 0 : -ENODEV;
+}
+
 static bool of_devlink;
 core_param(of_devlink, of_devlink, bool, 0);
 
 static int of_link_to_suppliers(struct device *dev)
 {
-	struct property *p;
-	bool done = true;
-
 	if (!of_devlink)
 		return 0;
 	if (unlikely(!dev->of_node))
 		return 0;
 
-	for_each_property_of_node(dev->of_node, p)
-		if (of_link_property(dev, dev->of_node, p->name))
-			done = false;
-
-	return done ? 0 : -ENODEV;
+	return __of_link_to_suppliers(dev, dev->of_node);
 }
 
 #ifndef CONFIG_PPC
-- 
2.22.0.709.g102302147b-goog

