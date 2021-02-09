Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6185131453A
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 02:05:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbhBIBFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 20:05:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbhBIBFC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 20:05:02 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5165C06178A
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 17:04:42 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id l197so18936829ybf.17
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 17:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=+ejAYf6RFze/7mcFs9laQRj3JeOW5TThaToa2ePllHE=;
        b=uQGyN9/uid6kEc344dGUHhufvU0FWp5osHTigoBHyDdlIS+lEBdRvBqA/Wi+Qh3J99
         0rdO4rRhdmz0LHEaus2oo3yrxPRMaq8q4W5sFb20ajRSOmS0Fg7l04MCIgBbbX2CztqN
         GYuIUPpmg8plcfSJ48KTZTzwq9Tl85LJpYoJdmuRXy0ZvTKFFSQBudtoF2YkRpbotgTG
         fQwTaTPosMEWYTf9A0ahy0bKg5KawUoodNeO9AJJlRZO48zwP84phpyvtf7XHFfQCSbH
         X8MVLQX6AVY/5a+Jfz0JINKFMb43lLP1Jgr/zXKeWFn1Y3bxQPdXtzydEgRaL0kcIaBt
         OV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=+ejAYf6RFze/7mcFs9laQRj3JeOW5TThaToa2ePllHE=;
        b=sLfhrSvQ2THBMKPJtnsgobjksEv3Yy+Ct2nG2ypcTMtDvFZBwKTMekBFJQScUMGwLP
         0ZF+HbGTsTpG//nvHCzuJ234k6I3ThG4LjH/2BaN0L5yAf5mj5fZRbhGgS+N6zcs7XFI
         A20dihS65YKMs4Y9l7I3bLB8C85oTKqp7qP6N4rB7KB1EPKrs3UsoqjZu4p6ZgeyPfCc
         FE2GfKqZ97AzWGT2hfS/VrdOqk+oK1XmnvJrkU+KQZsX14HRd7J+3zR1qp90eV/KZDGa
         V4O88R+z4w5O/pAPv7vR+xSzLTF2yqxbDhkXBpfGcXBKZ0dKnEwtQ6xGxSfHIoWbsSut
         wXsQ==
X-Gm-Message-State: AOAM531G7yXKnp91Dy4wCcGq+a48nvVwP/ULeASSFmSwVs3as7CiAJdj
        ZAyv0P9IRCd84BiFFfogdZaoqwZi1XEFrMM=
X-Google-Smtp-Source: ABdhPJxC1JuXNwRRIWi0N8wFznbmeW788ZV3yjK+VcE9zY/ARsRMO1bJrgMpvf7GgY9Q/BjPTM7IPCLBjGFnJx4=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:d2a:da02:d812:71f7])
 (user=saravanak job=sendgmr) by 2002:a05:6902:1025:: with SMTP id
 x5mr28936258ybt.493.1612832682139; Mon, 08 Feb 2021 17:04:42 -0800 (PST)
Date:   Mon,  8 Feb 2021 17:04:38 -0800
Message-Id: <20210209010439.3529036-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH] of: property: Fix fw_devlink handling of interrupts/interrupts-extended
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Saravana Kannan <saravanak@google.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Thierry Reding <treding@nvidia.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        kernel-team@android.com, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 4104ca776ba3 ("of: property: Add fw_devlink support for interrupts")
was not taking interrupt-map into account. Fix that.

Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Fixes: 4104ca776ba3 ("of: property: Add fw_devlink support for interrupts")
Signed-off-by: Saravana Kannan <saravanak@google.com>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
Greg,

This needs to go into driver-core as the "Fixes" commit is only in
driver-core if I'm not mistaken.

-Saravana

 drivers/of/property.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 962109082df1..79b68519fe30 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1248,8 +1248,6 @@ DEFINE_SIMPLE_PROP(dmas, "dmas", "#dma-cells")
 DEFINE_SIMPLE_PROP(power_domains, "power-domains", "#power-domain-cells")
 DEFINE_SIMPLE_PROP(hwlocks, "hwlocks", "#hwlock-cells")
 DEFINE_SIMPLE_PROP(extcon, "extcon", NULL)
-DEFINE_SIMPLE_PROP(interrupts_extended, "interrupts-extended",
-					"#interrupt-cells")
 DEFINE_SIMPLE_PROP(nvmem_cells, "nvmem-cells", NULL)
 DEFINE_SIMPLE_PROP(phys, "phys", "#phy-cells")
 DEFINE_SIMPLE_PROP(wakeup_parent, "wakeup-parent", NULL)
@@ -1300,10 +1298,13 @@ static struct device_node *parse_gpio_compat(struct device_node *np,
 static struct device_node *parse_interrupts(struct device_node *np,
 					    const char *prop_name, int index)
 {
-	if (strcmp(prop_name, "interrupts") || index)
+	struct of_phandle_args sup_args;
+
+	if (strcmp(prop_name, "interrupts") &&
+	    strcmp(prop_name, "interrupts-extended"))
 		return NULL;
 
-	return of_irq_find_parent(np);
+	return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.np;
 }
 
 static const struct supplier_bindings of_supplier_bindings[] = {
@@ -1318,7 +1319,6 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_power_domains, },
 	{ .parse_prop = parse_hwlocks, },
 	{ .parse_prop = parse_extcon, },
-	{ .parse_prop = parse_interrupts_extended, },
 	{ .parse_prop = parse_nvmem_cells, },
 	{ .parse_prop = parse_phys, },
 	{ .parse_prop = parse_wakeup_parent, },
-- 
2.30.0.478.g8a0d178c01-goog

