Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 394FA28E78
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 03:02:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388788AbfEXBBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 21:01:45 -0400
Received: from mail-ua1-f74.google.com ([209.85.222.74]:57103 "EHLO
        mail-ua1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388739AbfEXBBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 21:01:44 -0400
Received: by mail-ua1-f74.google.com with SMTP id p9so1979784uad.23
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 18:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=P97dfBzpFswAlWiRxO0PqsO4yzuQcoq0aayONejphOk=;
        b=CzW1eVeUVATFZxkUrfaQ8DSWpI/ti8ZxYQrSQSZIgAwnZzcqvwuARJjn8QkNxe4wtv
         MXg0sm+gTiMKZFe/V0VQy2enPlPonzfVqnoRxYU5Rdigj5lSpo2TW3d35URIr49ZnmWy
         3xOjlrsZLOKeejpTDd3+yesXduG2t5CDi+dBeJK8yydy55Xmpq69Z0qUlq5BJfkdoOdr
         /G6cJt/SwXZM0pqiTKKHqTRdYBYs0LB4yQOHYvrWCudVGfYLu1M6hgwCg32aJRxoAz7a
         JxMbz96FMOSLoOpE5D1Gw7GT5CQZKqMXjR+zXySlSZ3R7Bos8kAIDvqvoGZ4TEPnyVqh
         yZLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=P97dfBzpFswAlWiRxO0PqsO4yzuQcoq0aayONejphOk=;
        b=qex2rCTfca3lpxOiexCiqWy8qAHNX0CgngPpIYMcYwe5zyAoVbydoEatl1x+edz75k
         w9af23SPNHpSneBr+RKgIrg7MxfGLjidZxba3knNVuhPGD0ytOdbpfUkigv/GpmX7BwX
         EVG3EM6DkMgN0qmHKDhH0dEnr9LsUAUU5HnZ9t2gGMeNBTaKU8km1sRGxY+SZzxB8nHs
         kK3ep0QDvFYy6yY5rbEWe9sJ3eihWHyy+t2s0Q9XL5MZ3ECRYWx9mmOek3lA1gMLAalz
         yT0ZWAWk3opj3JdUwZ9Nr9qGsI5JuA+E521lAkOO1nyqKVzqrczFGjeLxz1oFljxQeB+
         MLAQ==
X-Gm-Message-State: APjAAAWKTC0AnKsQ6BRdFaTXK9A0r2badWUTylV9ppI977wxdYhulI6D
        v3YMpW7uf3b/tuddxQab3yUA86uo5pIZkDY=
X-Google-Smtp-Source: APXvYqyz//p7JiVB6INTnvvIemgF7+zb9Kl8nhvMlqeWp1rZGdelnBaE19Sc8UOKfXKCcWkZ2KOx1VQFMYy5Ilk=
X-Received: by 2002:ab0:7150:: with SMTP id k16mr7045378uao.22.1558659703301;
 Thu, 23 May 2019 18:01:43 -0700 (PDT)
Date:   Thu, 23 May 2019 18:01:15 -0700
In-Reply-To: <20190524010117.225219-1-saravanak@google.com>
Message-Id: <20190524010117.225219-5-saravanak@google.com>
Mime-Version: 1.0
References: <20190524010117.225219-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
Subject: [PATCH v1 4/5] of/platform: Add functional dependency link from
 "depends-on" property
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device-links after the devices are created (but before they are
probed) by looking at the "depends-on" DT property that allows
specifying mandatory functional dependencies between devices.

This property is used instead of existing DT properties that specify
phandles of other devices (Eg: clocks, pinctrl, regulators, etc). This
is because not all resources referred to by existing DT properties are
mandatory functional dependencies. Some devices/drivers might be able
to operate with reduced functionality when some of the resources
aren't available. For example, a device could operate in polling mode
if no IRQ is available, a device could skip doing power management if
clock or voltage control isn't available and they are left on, etc.

Automatically adding device-links for functional dependencies at the
framework level provides the following benefits:

- Optimizes device probe order and avoids the useless work of
  attempting probes of devices that will not probe successfully
  (because their suppliers aren't present or haven't probed yet).

  For example, in a commonly available mobile SoC, registering just one
  consumer device's driver at an initcall level earlier than the
  supplier device's driver causes 11 failed probe attempts before the
  consumer device probes successfully. This was with a kernel with all
  the drivers statically compiled in. This problem gets a lot worse if
  all the drivers are loaded as modules without direct symbol
  dependencies.

- Supplier devices like clock providers, regulators providers, etc
  need to keep the resources they provide active and at a particular
  state(s) during boot up even if their current set of consumers don't
  request the resource to be active. This is because the rest of the
  consumers might not have probed yet and turning off the resource
  before all the consumers have probed could lead to a hang or
  undesired user experience.

  Some frameworks (Eg: regulator) handle this today by turning off
  "unused" resources at late_initcall_sync and hoping all the devices
  have probed by then. This is not a valid assumption for systems with
  loadable modules. Other frameworks (Eg: clock) just don't handle
  this due to the lack of a clear signal for when they can turn off
  resources. This leads to downstream hacks to handle cases like this
  that can easily be solved in the upstream kernel.

  By linking devices before they are probed, we give suppliers a clear
  count of the number of dependent consumers. Once all of the consumers
  are active, the suppliers can turn off the unused resources without
  making assumptions about the number of consumers.

By default we just add device-links to track "driver presence" (probe
succeeded) of the supplier device. If any other functionality provided
by device-links are needed, it is left to the consumer/supplier devices
to change the link when they probe.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 46 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 1115a8d80a33..da1aa52b310a 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -74,6 +74,45 @@ struct platform_device *of_find_device_by_node(struct device_node *np)
 EXPORT_SYMBOL(of_find_device_by_node);
 
 #ifdef CONFIG_OF_ADDRESS
+static int of_link_to_suppliers(struct device *dev)
+{
+	struct device_node *sup_node;
+	struct platform_device *sup_dev;
+	unsigned int i = 0, links = 0;
+	u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
+
+	if (unlikely(!dev->of_node))
+		return 0;
+
+	while ((sup_node = of_parse_phandle(dev->of_node, "depends-on", i))) {
+		i++;
+		sup_dev = of_find_device_by_node(sup_node);
+		if (!sup_dev)
+			continue;
+		if (device_link_add(dev, &sup_dev->dev, dl_flags))
+			links++;
+		put_device(&sup_dev->dev);
+	}
+	if (links < i)
+		return -ENODEV;
+	return 0;
+}
+
+static void link_waiting_consumers_func(struct work_struct *work)
+{
+	device_link_check_waiting_consumers(of_link_to_suppliers);
+}
+static DECLARE_WORK(link_waiting_consumers_work, link_waiting_consumers_func);
+
+static bool link_waiting_consumers_enable;
+static void link_waiting_consumers_trigger(void)
+{
+	if (!link_waiting_consumers_enable)
+		return;
+
+	schedule_work(&link_waiting_consumers_work);
+}
+
 /*
  * The following routines scan a subtree and registers a device for
  * each applicable node.
@@ -205,11 +244,14 @@ static struct platform_device *of_platform_device_create_pdata(
 	dev->dev.platform_data = platform_data;
 	of_msi_configure(&dev->dev, dev->dev.of_node);
 
+	if (of_link_to_suppliers(&dev->dev))
+		device_link_wait_for_supplier(&dev->dev);
 	if (of_device_add(dev) != 0) {
 		platform_device_put(dev);
 		goto err_clear_flag;
 	}
 	np->dev = &dev->dev;
+	link_waiting_consumers_trigger();
 
 	return dev;
 
@@ -555,6 +597,10 @@ static int __init of_platform_default_populate_init(void)
 	/* Populate everything else. */
 	of_platform_default_populate(NULL, NULL, NULL);
 
+	/* Make the device-links between suppliers and consumers */
+	link_waiting_consumers_enable = true;
+	device_link_check_waiting_consumers(of_link_to_suppliers);
+
 	return 0;
 }
 arch_initcall_sync(of_platform_default_populate_init);
-- 
2.22.0.rc1.257.g3120a18244-goog

