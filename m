Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4BB934F141
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 20:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232880AbhC3SvY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 14:51:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232866AbhC3SvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 14:51:01 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04C1BC061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 11:51:01 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id v186so15824010ybe.5
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 11:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=4NHP43juSFcuS58x/2UJlpN5oUfnrImFRp3vOEH4PN8=;
        b=S6AFP5Qy+AU/01vWzoL9JaSqyN7AfGb8GGMRngnLpimCg385C9xGE6DKo5e794jQb9
         sWLgKOq5Lp2RfbGAy3+d/r2L7LyQhPjAE9DyEwz9NwC3DZv9HtIStbZuXmu60BxB7XSd
         oGyp9AZo5Rl/uQvCFxwT7n09qqKF1ViF7zcQSOtZjbuuS+5BST4MGaRFnMh3Se1nC5fz
         EPLUrtALBebPCL+H8K65zogbJHDXpyp114HBWaGTsv6Uflsiu2Yt+AlZ6ZbkfBWXtNdq
         4rZcELRqhdhXwqzgxz9tihwHh3g3+2PennOZYzQZmJLA5XntelV0RNh7jO8X0EAkNXoV
         cBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=4NHP43juSFcuS58x/2UJlpN5oUfnrImFRp3vOEH4PN8=;
        b=uPwCNqUOS+0SGIbDqU/w6/HNQl+TuKrUVoMruDXERWb8Q0W+WpSAadbIYZaXu0HjFG
         kNjlvAqjxfRG7coBgd1Cme586tzGRII2w5jquEpcIYUQEVXB0uzT8D3TOrPmR7q9j7tG
         srsD+9vioBAEnPFSL6++rf4XstFjL/X/fLo1Jntqnq7+lNqsiHsN8+erA9t/6C4P38fN
         h+H78YRKARyuTSEmTISLsCXKwJNdV9GvHStl0Hf81Wdr8AsdqTZ5eAPwRHCrhCGy9kLm
         jyYV+dth2twPSIjyWOfYzFye5UgLWJmBpd1fAFxDdhOF+MA70LeZO0ptPtOzUTgakPB6
         Tjdg==
X-Gm-Message-State: AOAM532f0CPCNKO5vR370NGY+r2IT2EXTAsvwX5d2p2w/XYMd9E8A9eh
        ayh2G6WdNl+X2HNvAuJuZ3qP5N0YlS4A1iA=
X-Google-Smtp-Source: ABdhPJwwoy56RNAduffEGyvuYBBdd7wuC969T2A6ZUYV5Z46JKKLZEtku9FnCTzE0ejEMfF/FzefVJU2IrM+62M=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:2107:7fd6:da76:59c1])
 (user=saravanak job=sendgmr) by 2002:a25:105:: with SMTP id
 5mr47986347ybb.296.1617130260209; Tue, 30 Mar 2021 11:51:00 -0700 (PDT)
Date:   Tue, 30 Mar 2021 11:50:55 -0700
Message-Id: <20210330185056.1022008-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v1] of: property: fw_devlink: Add support for remote-endpoint
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>
Cc:     Stephen Boyd <swboyd@chromium.org>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

remote-endpoint property seems to always come in pairs where two devices
point to each other. So, we can't really tell from DT if there is a
functional probe order dependency between these two devices.

However, there can be other dependencies between two devices that point
to each other with remote-endpoint. This non-remote-endpoint dependency
combined with one of the remote-endpoint dependency can lead to a cyclic
dependency[1].

To avoid this cyclic dependency from incorrectly blocking probes,
fw_devlink needs to be made aware of remote-endpoint dependencies even
though remote-endpoint dependencies by themselves won't affect probe
ordering (because fw_devlink will see the cyclic dependency between
remote-endpoint devices and ignore the dependencies that cause the
cycle).

Also, if a device ever needs to know if a non-probe-blocking
remote-endpoint has finished probing, it can now use the sync_state() to
figure it out.

[1] - https://lore.kernel.org/lkml/CAGETcx9Snf23wrXqjDhJiTok9M3GcoVYDSyNYSMj9QnSRrA=cA@mail.gmail.com/#t
Fixes: ea718c699055 ("Revert "Revert "driver core: Set fw_devlink=on by default""")
Reported-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
Rob/Greg,

This needs to go into driver-core due to the Fixes.

-Saravana

 drivers/of/property.c | 48 ++++++++++++++++++++++++++++---------------
 1 file changed, 32 insertions(+), 16 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 5036a362f52e..2bb3158c9e43 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1038,6 +1038,25 @@ static bool of_is_ancestor_of(struct device_node *test_ancestor,
 	return false;
 }
 
+static struct device_node *of_get_compat_node(struct device_node *np)
+{
+	of_node_get(np);
+
+	while (np) {
+		if (!of_device_is_available(np)) {
+			of_node_put(np);
+			np = NULL;
+		}
+
+		if (of_find_property(np, "compatible", NULL))
+			break;
+
+		np = of_get_next_parent(np);
+	}
+
+	return np;
+}
+
 /**
  * of_link_to_phandle - Add fwnode link to supplier from supplier phandle
  * @con_np: consumer device tree node
@@ -1061,25 +1080,11 @@ static int of_link_to_phandle(struct device_node *con_np,
 	struct device *sup_dev;
 	struct device_node *tmp_np = sup_np;
 
-	of_node_get(sup_np);
 	/*
 	 * Find the device node that contains the supplier phandle.  It may be
 	 * @sup_np or it may be an ancestor of @sup_np.
 	 */
-	while (sup_np) {
-
-		/* Don't allow linking to a disabled supplier */
-		if (!of_device_is_available(sup_np)) {
-			of_node_put(sup_np);
-			sup_np = NULL;
-		}
-
-		if (of_find_property(sup_np, "compatible", NULL))
-			break;
-
-		sup_np = of_get_next_parent(sup_np);
-	}
-
+	sup_np = of_get_compat_node(sup_np);
 	if (!sup_np) {
 		pr_debug("Not linking %pOFP to %pOFP - No device\n",
 			 con_np, tmp_np);
@@ -1225,6 +1230,8 @@ static struct device_node *parse_##fname(struct device_node *np,	     \
  * @parse_prop.prop_name: Name of property holding a phandle value
  * @parse_prop.index: For properties holding a list of phandles, this is the
  *		      index into the list
+ * @optional: The property can be an optional dependency.
+ * @node_not_dev: The consumer node containing the property is never a device.
  *
  * Returns:
  * parse_prop() return values are
@@ -1236,6 +1243,7 @@ struct supplier_bindings {
 	struct device_node *(*parse_prop)(struct device_node *np,
 					  const char *prop_name, int index);
 	bool optional;
+	bool node_not_dev;
 };
 
 DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
@@ -1260,6 +1268,7 @@ DEFINE_SIMPLE_PROP(pinctrl5, "pinctrl-5", NULL)
 DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
 DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
 DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
+DEFINE_SIMPLE_PROP(remote_endpoint, "remote-endpoint", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 DEFINE_SUFFIX_PROP(gpios, "-gpios", "#gpio-cells")
@@ -1334,6 +1343,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl6, },
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
+	{ .parse_prop = parse_remote_endpoint, .node_not_dev = true, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
@@ -1378,10 +1388,16 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
 		}
 
 		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
+			struct device_node *con_dev_np;
+
+			con_dev_np = s->node_not_dev
+					? of_get_compat_node(con_np)
+					: of_node_get(con_np);
 			matched = true;
 			i++;
-			of_link_to_phandle(con_np, phandle);
+			of_link_to_phandle(con_dev_np, phandle);
 			of_node_put(phandle);
+			of_node_put(con_dev_np);
 		}
 		s++;
 	}
-- 
2.31.0.291.g576ba9dcdaf-goog

