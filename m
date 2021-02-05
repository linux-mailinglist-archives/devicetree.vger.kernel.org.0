Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DC7431185D
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 03:36:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbhBFCgA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 21:36:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230324AbhBFCdd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 21:33:33 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 036B2C08EB2C
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 14:27:08 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id c12so8706227ybf.1
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 14:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=hqgmXDFwubR/4OnYp87mHqkgPgat9JpTuiz1JNw02ec=;
        b=HlWJductGnrWtiPlz4VOZAKZtOtHqGtLYG+/m1uG/3j65UbnLXs2ZbOsEsXyQxmcET
         g5WBXP+ZNdGYsnDNt1AesV/YgtyYbWi8DAfFoP0DUlB0H5AivhCjx7cacjqpzdvJGJkd
         KJC2axaJVKWb1aZIsjpltmtFIvFilsr/MFeX+VgPTcT+ctffNfukCK16/1DH2bNHZiHq
         Hs7/PR9SRig14irkeZyDibp5UYV06N4v4E99Aa8HWCyCWoP6sXyRZruGYn7FnGjIrZAc
         i9RLCHWExeGNkOCk36mOaRKleCDV2qf/Or99/FRsSW4kmlVWj7q6WRTD/+sE9+7tZQaK
         FlQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=hqgmXDFwubR/4OnYp87mHqkgPgat9JpTuiz1JNw02ec=;
        b=KDLdad1qt3FaU7YOHxEqxANPD+OnY+aO0n1jZAg5eaDd8TP7vtHEOGUCM19VjZpivY
         TnRmoYHvIoiUoby6v5qEAMnUts44OeZX1G+4ofLz5RLQrndc/rx8yeEGhPEkMuaU20Fm
         UpR8/9/X9TQQ7Vbrcr795t6DNcpa8KESanAHKQGOp31eSSc/EaZURb5s2lqOVHOvWvkL
         zRLkVz0ZeRfzZM1XmoHS/w7D5WvSMn/HQdGpLBLf0s+/F1724blejkdAMUptmbZO9SHM
         OMM89Nx1NmHReG+krEwGUCTWAJd1mpYSGQKPL43q0hF5crSxui7HdRX8Rl3l3hQuKk7V
         32jg==
X-Gm-Message-State: AOAM5311CZ266kRfTBaPcGEvpjV862XD4dg9l9i5IYxich8380Sk2/Qr
        jJRo/yc5bNUEwi4j4jUxoW2aGVt76fAE6qs=
X-Google-Smtp-Source: ABdhPJypj8OxFVj8NpBAu+RA/WW+/KzA+etEoUDFgMecuxAKnsbx9dKd514JBTdlGgxWwGx8SVTerVvqi1AS370=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:6d36:b798:55d7:f5c5])
 (user=saravanak job=sendgmr) by 2002:a25:5b8a:: with SMTP id
 p132mr10020763ybb.67.1612564027217; Fri, 05 Feb 2021 14:27:07 -0800 (PST)
Date:   Fri,  5 Feb 2021 14:26:43 -0800
In-Reply-To: <20210205222644.2357303-1-saravanak@google.com>
Message-Id: <20210205222644.2357303-8-saravanak@google.com>
Mime-Version: 1.0
References: <20210205222644.2357303-1-saravanak@google.com>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH v4 7/8] PM: domains: Mark fwnodes when their powerdomain is added/removed
From:   Saravana Kannan <saravanak@google.com>
To:     Jonathan Corbet <corbet@lwn.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Kevin Hilman <khilman@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Len Brown <len.brown@intel.com>, Len Brown <lenb@kernel.org>,
        Pavel Machek <pavel@ucw.cz>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc:     Saravana Kannan <saravanak@google.com>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This allows fw_devlink to recognize power domain drivers that don't use
the device-driver model to initialize the device. fw_devlink will use
this information to make sure consumers of such power domain aren't
indefinitely blocked from probing, waiting for the power domain device
to appear and bind to a driver.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/power/domain.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
index 9a14eedacb92..6ac52a038bb9 100644
--- a/drivers/base/power/domain.c
+++ b/drivers/base/power/domain.c
@@ -2164,6 +2164,7 @@ static int genpd_add_provider(struct device_node *np, genpd_xlate_t xlate,
 	cp->node = of_node_get(np);
 	cp->data = data;
 	cp->xlate = xlate;
+	fwnode_dev_initialized(&np->fwnode, true);
 
 	mutex_lock(&of_genpd_mutex);
 	list_add(&cp->link, &of_genpd_providers);
@@ -2353,6 +2354,7 @@ void of_genpd_del_provider(struct device_node *np)
 				}
 			}
 
+			fwnode_dev_initialized(&cp->node->fwnode, false);
 			list_del(&cp->link);
 			of_node_put(cp->node);
 			kfree(cp);
-- 
2.30.0.478.g8a0d178c01-goog

