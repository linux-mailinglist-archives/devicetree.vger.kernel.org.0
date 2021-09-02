Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EF743FE7DD
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 04:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243311AbhIBC4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 22:56:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243373AbhIBC4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 22:56:35 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACDB9C061760
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 19:55:37 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 63-20020a250d42000000b0059dc43162c9so667173ybn.23
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 19:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=tjSyGojTOT8uYCifLvLdr4amA8l8CDhQi4qAmFSjHg8=;
        b=NUaF4WJ6oZa5lpk/IiiIJ0R3QbFs2N3ApjmoemgvLZkF2vVGNK1ttkWqATbJVTg2R3
         1dR7jf0TtWVEkcENrRJqt2NFC3IYu4Uufevgq2aM1OzOtkhKjbpj62a59O19dplK+5NL
         r8tQw626ubHYPXeRUJafN9ubJQYNkXglCC/UgrWI/SE8fzmhwKoLS5o6AZQ4JUv6cjX8
         Ax4/og6p55XQKqEb2zj76gPWC/xfNSvaXugCuG4CtquiuhC2axyCuVlAlwElb3bJRqBd
         ciqf8Li7nDtv+42zKvi40yvQ6W3Ar2obFSY4LUhptC/stQU1TfsLAGg2FtBrUgFFX0QN
         HWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=tjSyGojTOT8uYCifLvLdr4amA8l8CDhQi4qAmFSjHg8=;
        b=AvwqhMG9Isa/eilPdbhE8RffdWgKHJ15jC4zNPVKx/juk35JysnSJPjQEYTZlDxBOw
         tNoh/PPkdWnFFo1YkDPhBvJ1wRFBsiwCYdNW2aJxesHZCu+M2jbOey+Dk7M5U8D/w4y9
         qJnUPuN0xuV6vTLZr8I6CWqh8ZqeIadMGcDQpG6y0MoqQORTR83wTVgymFDFpBQNXVZl
         1wAF+rrSS1XPh8f1tl+5g4WCaMjgg/Uth3Ds744zf126iFLjUCbPsNpu1wmVB+vg0oMs
         a7UrmNcE+LpHlDoRuwofh9T6bVYYVFb8iY4uXul4tmQu6wpopeBAzpKg5iBuWSRCMtiS
         Dwkg==
X-Gm-Message-State: AOAM533zzZsvUyRiTd0Gxk+o98NkxtJaKukxYD/4I+Xo154hmDJD87+M
        vx9ANCcbhs25i30c9uWAGgcuBFBakuzim9g=
X-Google-Smtp-Source: ABdhPJyc1/FZExAbR1nIydLj5ad1RBb0+ykfyYU2JXEXQOtJcQqi7SJtFMPOeSkQkh9TiI23NXiJ6yeOth8BWIk=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:17e:f0b7:5862:e47d])
 (user=saravanak job=sendgmr) by 2002:a25:2142:: with SMTP id
 h63mr1586569ybh.70.1630551336984; Wed, 01 Sep 2021 19:55:36 -0700 (PDT)
Date:   Wed,  1 Sep 2021 19:55:27 -0700
In-Reply-To: <20210902025528.1017391-1-saravanak@google.com>
Message-Id: <20210902025528.1017391-3-saravanak@google.com>
Mime-Version: 1.0
References: <20210902025528.1017391-1-saravanak@google.com>
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH v1 2/2] of: platform: Mark bus devices nodes with FWNODE_FLAG_NEVER_PROBES
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We don't want fw_devlink creating device links for bus devices as
they'll never probe. So mark those device node with this flag.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 74afbb7a4f5e..42b3936d204a 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -392,6 +392,22 @@ static int of_platform_bus_create(struct device_node *bus,
 	if (!dev || !of_match_node(matches, bus))
 		return 0;
 
+	/*
+	 * If the bus node has only one compatible string value and it has
+	 * matched as a bus node, it's never going to get probed by a device
+	 * driver. So flag it as such so that fw_devlink knows not to create
+	 * device links with this device.
+	 *
+	 * This doesn't catch all devices that'll never probe, but this is good
+	 * enough for now.
+	 *
+	 * This doesn't really work for PPC because of how it uses
+	 * of_platform_bus_probe() to add normal devices. So ignore PPC cases.
+	 */
+	if (!IS_ENABLED(CONFIG_PPC) &&
+	    of_property_count_strings(bus, "compatible") == 1)
+		bus->fwnode.flags |= FWNODE_FLAG_NOT_DEVICE;
+
 	for_each_child_of_node(bus, child) {
 		pr_debug("   create child: %pOF\n", child);
 		rc = of_platform_bus_create(child, matches, lookup, &dev->dev, strict);
-- 
2.33.0.259.gc128427fd7-goog

