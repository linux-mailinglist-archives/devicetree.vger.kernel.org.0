Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C64DD6EDF7
	for <lists+devicetree@lfdr.de>; Sat, 20 Jul 2019 08:17:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726429AbfGTGRP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Jul 2019 02:17:15 -0400
Received: from mail-qk1-f201.google.com ([209.85.222.201]:47850 "EHLO
        mail-qk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726425AbfGTGRO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Jul 2019 02:17:14 -0400
Received: by mail-qk1-f201.google.com with SMTP id x17so28309125qkf.14
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 23:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=czN7OgNyihOa9VdIP6ZEMSedIRrbUsmUmhpHuJJjXTo=;
        b=JjeSiWUWj0/rue13YU+ELAHX6hLfpI4PJnFZ3Q3aZh5PTfek/rlsbRkh9vntEdz3pc
         RVJXwy8Z/Eq5iaSAz00CO7t/AzU/8PBLyovCjFnjha9Q3UbeEUv8jNIVllc5UZDvQbu6
         iz5YOIH9wo86uj6dUCcIKZv9wTyW4SpxKEYiPy34pOz7dy3/Aax9RQLXEFYjhITigF2y
         eVurdpmIiZe3KXQMcoyvXqVq8XJ9iVAm7XR4T+aZ1r/sN4eIAhud6GkZvhQFh7732JAZ
         DKrXi6HKEMhxT1OhGFzJq1scn0ol5E0tdLDkd88gWhZ9U0UH1LCxNybbbYW0T3oWHtCq
         MTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=czN7OgNyihOa9VdIP6ZEMSedIRrbUsmUmhpHuJJjXTo=;
        b=DMaJT/PUbi6s3yF79+GmIpX63l6tvY4dYX8tkOsXq27302yhUDmMj551fJJSHpY4Dg
         iCn4UCXzSdE3DJ76E2/c0t05SnRu1lcBPY3wjWPZO+aUtlxsSBUBah5ZWdoitOQkjs3i
         Frh4Umibzo/+w8QujxtJM6CUZM6HCpKSAsGGAAaG9yf5Jgja1EUHovsec2ULCOEsaw2o
         xfTfn67XkD6nvOiJdSLJ1whCOT9pjUYx55b+m/5w8AkRR1oM7OuFFEXF8fcoXObso7Vy
         5NR1sETxLwb4HHitLZOYmytMGYa8tKC2Wuur3/1bMLqtELh69hQgHeU99KwiJFnPTwHZ
         NgTQ==
X-Gm-Message-State: APjAAAX83RjvdZbC8Kjc0mCgWq6nfTH9b38AzfTyikYqsU97Fhd6xJej
        dtZmWVm0rG/CwweQ908leJ8cOnFVq9iMqKo=
X-Google-Smtp-Source: APXvYqygd13xcNmYEyZjLdS4UFApbnJ8wQTgyJWml2t3cpy9zX8fatUprOcbabMm7FZ5uWgUmhb8yrS73/j7zmE=
X-Received: by 2002:a37:7ec1:: with SMTP id z184mr38505880qkc.491.1563603433832;
 Fri, 19 Jul 2019 23:17:13 -0700 (PDT)
Date:   Fri, 19 Jul 2019 23:16:45 -0700
In-Reply-To: <20190720061647.234852-1-saravanak@google.com>
Message-Id: <20190720061647.234852-7-saravanak@google.com>
Mime-Version: 1.0
References: <20190720061647.234852-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
Subject: [PATCH v6 6/7] of/platform: Create device links for all
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
index d0c2f6443247..c1a116f7a087 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -649,24 +649,35 @@ static bool of_link_property(struct device *dev, struct device_node *con_np,
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
2.22.0.657.g960e92d24f-goog

