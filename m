Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8BCE2FF84F
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 00:00:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727165AbhAUW7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 17:59:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727073AbhAUW6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 17:58:49 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25534C06178B
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 14:57:21 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id p80so3673905ybg.10
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 14:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=uK0Guj4THP5+g44Z1zImR7+l85HfUzHMOtHW5TTbFrQ=;
        b=ImsE1yIWnsaLWJKqkKF6DHLyG4Jfq9a8VZaWAtFYT5/ADnPXhERzP1ZWXSFdsvDIDD
         EuHN6GEGCtOpkwE9UYUFBJUYv7S++PFMoMcUjMNu+zv6BPbShHbfo+/Hbtf7ZothLc57
         TlsHjBXz7qc8X9ugUrxMCKCQAJi8q30LOuPfn7T4SOgTa9bEUuFALFvycM/5XteYnO0p
         W5R7fzwIewBeXDQzuwGiqboXlgy3cFEibVvuWrFzkx308XTVrK3HijFfsQ6IcnD0QxrY
         gSsINIMbyPfnooS281kGwFZo96F79RBV8twjIcXpc/Ewj0Oear7t/jSdS3G6VgPZP7yR
         8ZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=uK0Guj4THP5+g44Z1zImR7+l85HfUzHMOtHW5TTbFrQ=;
        b=I9cxYrvWse5yxf8ODkVyHagwaeulWr8HXDhATvUWJ0Y02gk7UGBAe30w7sjzDmeboR
         PyuW76l+2Y5KEVLiCgh2LH2kJl18HdyYWu1u2wURSqLIFA2oPOsqgX7woXTSLZcccinZ
         i0jjyy2BdGPvSRXmtdG+Ib+9k9hOR7tiEC34nS6sHEXhees3d018uxZ6kNitSBeH3utt
         Cgy5GnqgazYd/MAbdxcaVSrTY5kP//Ugsk6Z2ZW0/mysrJT3+6r6lM/s7lllcDEMLrdE
         89tIjMpogfO724+m0w/u2cJ5PeUV/Fg5nb0AA49077kHh8z8E0gKzEn9qYwYK4hOcJpd
         7iiA==
X-Gm-Message-State: AOAM533iaooChvGpZNFh8bIkbUID709VgEID+9WtFZhLgrC9uOuQ/tzl
        bMXKAEEikS6A6ltr6DXJiF3bZQQJnFSZ4rw=
X-Google-Smtp-Source: ABdhPJwFPya6ZpnojdN9+DfUQ2rdg/34vXkXUzMjpHddMGECP5xV2BbOs91bcILedlNvkfi3tEmbyaqkd6sPwjI=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a25:7c46:: with SMTP id
 x67mr2450968ybc.464.1611269840361; Thu, 21 Jan 2021 14:57:20 -0800 (PST)
Date:   Thu, 21 Jan 2021 14:57:12 -0800
In-Reply-To: <20210121225712.1118239-1-saravanak@google.com>
Message-Id: <20210121225712.1118239-3-saravanak@google.com>
Mime-Version: 1.0
References: <20210121225712.1118239-1-saravanak@google.com>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
Subject: [PATCH v2 2/2] of: property: Add fw_devlink support for interrupts
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Saravana Kannan <saravanak@google.com>,
        linux-tegra <linux-tegra@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Marc Zyngier <maz@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>, kernel-team@android.com,
        Rob Herring <robh@kernel.org>,
        Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This allows fw_devlink to create device links between consumers of an
interrupt and the supplier of the interrupt.

Cc: Marc Zyngier <maz@kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Thierry Reding <treding@nvidia.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index b2ea1951d937..6287c6d60bb7 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -24,6 +24,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
+#include <linux/of_irq.h>
 #include <linux/string.h>
 #include <linux/moduleparam.h>
 
@@ -1293,6 +1294,15 @@ static struct device_node *parse_gpio_compat(struct device_node *np,
 	return sup_args.np;
 }
 
+static struct device_node *parse_interrupts(struct device_node *np,
+					    const char *prop_name, int index)
+{
+	if (strcmp(prop_name, "interrupts") || index)
+		return NULL;
+
+	return of_irq_find_parent(np);
+}
+
 static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
@@ -1319,6 +1329,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
 	{ .parse_prop = parse_gpio_compat, },
+	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
 	{ .parse_prop = parse_gpio, },
 	{ .parse_prop = parse_gpios, },
-- 
2.30.0.296.g2bfb1c46d8-goog

