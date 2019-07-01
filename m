Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C031D33C7C
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 02:32:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726691AbfFDAch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 20:32:37 -0400
Received: from mail-ot1-f73.google.com ([209.85.210.73]:46785 "EHLO
        mail-ot1-f73.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726465AbfFDAcg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 20:32:36 -0400
Received: by mail-ot1-f73.google.com with SMTP id z52so9773492otb.13
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 17:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=P97dfBzpFswAlWiRxO0PqsO4yzuQcoq0aayONejphOk=;
        b=plnNgjklAyqRAXEF+E9H5r9ORM0Eqb/JEDN5WADuJOl5bcCDtP5PmEiVwx0tfKUa47
         ziED0bEsUWLEQ/5p5wRTM3q+d8rO9bHS0Sic4arUNeON15fHVaBDg6vhfj4jBfuElulD
         fcku3OD915AfOJGcX/LFdUzRC4C1007rNeftYe0Yy67Uz5M+2N+LM0+mZ5NIGnjMHa5G
         pHXpP7/zYWFeaQUPmOp5+79dgn6x37a5IHyKx1s0VWdyomM7q5VEiAyYzQZc89/J2qsw
         FglVo6mFMuU0G6wjpqDMZU8VRrfBOdhNXad2tiP5bTkc/xIp9y+31p6ScJ93t1vMUsvi
         ll5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=P97dfBzpFswAlWiRxO0PqsO4yzuQcoq0aayONejphOk=;
        b=eROJKcmdQI7rry2T+6rd0DNL2zS+TQA7QJdE7dXNwbs/FaFh7pf3WiaIsG0RKeSCy2
         3iiZKRkRfJkZVCIhhAYdp5MQeVNVZQ67irg7u4xdJpJ3x7zNwUqz4TRrVM82rOfvfe3l
         4yslrDEfixfp5DFQyuCUZ8Nca0yVK4uKc/sgi3GHRUIe+t8VBQsGB6Z3M2v2h/lEjr11
         GPHD42XexnDIEyLJclUQbQxj/QnhsjQkJrXlFZ+UC72pDThKKidbovNg/prKhX29EyfU
         X/ok5TkO9M7GSr5GwoBcKUTYgxWsv0ofzugmPgcTIQiBH8NocD+UTihCNK2hb5nvZgSb
         YNag==
X-Gm-Message-State: APjAAAW4lKAsQdlKos/iHMWAcHfZ9URipETxoAzYijjeLwmeJO3DBZsZ
        MTb8aYCkCcNN4gMEMpqdqbfTcMt/vvX3d+c=
X-Google-Smtp-Source: APXvYqznO8b+1gDPz4/CrHwBUoUKCISbZ4k00lcxYUId8ufe5oN1tgpsQZCT2xkjkSCH+Mgme9syvAtHwYkzAgA=
X-Received: by 2002:aca:afc2:: with SMTP id y185mr2584300oie.140.1559608355956;
 Mon, 03 Jun 2019 17:32:35 -0700 (PDT)
Date:   Mon,  3 Jun 2019 17:32:17 -0700
In-Reply-To: <20190604003218.241354-1-saravanak@google.com>
Message-Id: <20190604003218.241354-5-saravanak@google.com>
Mime-Version: 1.0
References: <20190604003218.241354-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [RESEND PATCH v1 4/5] of/platform: Add functional dependency link
 from "depends-on" property
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

