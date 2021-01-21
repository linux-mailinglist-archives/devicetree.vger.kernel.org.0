Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C0DD2FF46B
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 20:29:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726488AbhAUTSr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 14:18:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727170AbhAUTRz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 14:17:55 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DA04C06178A
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 11:16:44 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id u14so3122341ybu.9
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 11:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=uXaJ+OStKaU1TSDiW6h4CbV+WkJ9mG9O+r64LsV2Mn0=;
        b=eYA5oY8hKyFgrd6TaGKQAuh6YxqMlqPxpbJ8pyoyuBQ5PnSRAWEUsOSfVIlKlrnTNe
         1g9UPvefodcMNDtEPBEVZO417AdPQEKhx4hr9piNifguWGsv4TKREN42AXZzhMzK9/Pv
         ixaynA7Sd0OdpCfDWG+36lcv/ab/sSQE2olYxokM9JRdaDHeEbW8pE9Sg5rrPc4H3YjU
         cwK/ti8L3uMXvyX6jMTKTQx3IEddmzePDlcylcPGlkZkp60JX3KEGnYxxtO63Q8m9ckF
         dNphdkfdARYdmL25bczQDMud97R+KKV6D91nxyiHcUxDJbUzJWW+BjgdiPzlxbM4he64
         C+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=uXaJ+OStKaU1TSDiW6h4CbV+WkJ9mG9O+r64LsV2Mn0=;
        b=FiiuHiZiFo/f+OO/RuX+UO68ajV/BM2OXA4VeSh22j5njwdYf7LLsPgi7PQXpIK7K3
         oDI6v54TkHxciBxUAiJHmMhaeph4lTyiz0OKcJ53lyZ5dJcnrrCiNYjsJKK2wxtRDTsB
         QG59PQ7MkA+yyFSog0c59WMfdVaGabMlqBkURlHUvlVFoKFFLFCxbfUPf7QbLJJRav8C
         bBngCDeb5MJAx1XQKH9wSVeNE3sie7OEKeuWyKR7VMOidbTVMxUlC4LljOJA3g0WUSDt
         ZXkPSfgJYy+A3pv35FDQgmTdqXvGXA1XaK04pcqyqfTlPqDVBAeG8wnMTljzbgN3YEAt
         JWjQ==
X-Gm-Message-State: AOAM531cUMu+CUEZsocVL8Fza+P0VjHx1xQqDgt/SnKXh4mE7uiSYQd7
        rV6LpVJvPm30TMRfgD/xM/4YoGU+6ZqvPx0=
X-Google-Smtp-Source: ABdhPJy4L6QwhSe0V+bSgCGU7lb6sP9PuorwKblCURljHt9RwnFbXh8XjG13AZV/uRwJfoVT4D3nP1Zn8jH2KNU=
Sender: "saravanak via sendgmr" <saravanak@saravanak.san.corp.google.com>
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7220:84ff:fe09:fedc])
 (user=saravanak job=sendgmr) by 2002:a25:243:: with SMTP id
 64mr1209671ybc.257.1611256603164; Thu, 21 Jan 2021 11:16:43 -0800 (PST)
Date:   Thu, 21 Jan 2021 11:16:36 -0800
In-Reply-To: <20210121191637.1067630-1-saravanak@google.com>
Message-Id: <20210121191637.1067630-2-saravanak@google.com>
Mime-Version: 1.0
References: <20210121191637.1067630-1-saravanak@google.com>
X-Mailer: git-send-email 2.30.0.296.g2bfb1c46d8-goog
Subject: [PATCH v2 1/2] of: property: Add fw_devlink support for "gpio" and
 "gpios" binding
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Saravana Kannan <saravanak@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     kernel-team@android.com, linux-tegra <linux-tegra@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh@kernel.org>,
        Thierry Reding <treding@nvidia.com>,
        Jon Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To provide backward compatibility for boards that use deprecated DT
bindings, we need to add fw_devlink support for "gpio" and "gpios".

We also need to ignore these properties on nodes with "gpio-hog"
property because their gpio[s] are all supplied by the parent node.

Cc: linux-tegra <linux-tegra@vger.kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Fixes: e590474768f1 ("driver core: Set fw_devlink=on by default")
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Thierry Reding <treding@nvidia.com>
Tested-by: Jon Hunter <jonathanh@nvidia.com>
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 5f9eed79a8aa..b2ea1951d937 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1271,6 +1271,28 @@ static struct device_node *parse_iommu_maps(struct device_node *np,
 	return of_parse_phandle(np, prop_name, (index * 4) + 1);
 }
 
+static struct device_node *parse_gpio_compat(struct device_node *np,
+					     const char *prop_name, int index)
+{
+	struct of_phandle_args sup_args;
+
+	if (strcmp(prop_name, "gpio") && strcmp(prop_name, "gpios"))
+		return NULL;
+
+	/*
+	 * Ignore node with gpio-hog property since its gpios are all provided
+	 * by its parent.
+	 */
+	if (of_find_property(np, "gpio-hog", NULL))
+		return NULL;
+
+	if (of_parse_phandle_with_args(np, prop_name, "#gpio-cells", index,
+				       &sup_args))
+		return NULL;
+
+	return sup_args.np;
+}
+
 static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
@@ -1296,6 +1318,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl6, },
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
+	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_regulators, },
 	{ .parse_prop = parse_gpio, },
 	{ .parse_prop = parse_gpios, },
-- 
2.30.0.296.g2bfb1c46d8-goog

