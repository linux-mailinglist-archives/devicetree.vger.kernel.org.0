Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5206940C186
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 10:19:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231649AbhIOIU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 04:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231610AbhIOIU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 04:20:57 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE553C061575
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 01:19:37 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 124-20020a251182000000b005a027223ed9so2598469ybr.13
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 01:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=xksPysZDVZhrOtkfjh5uX2r1uF1vasoJ9BL4wGJBhp4=;
        b=PVLDc2/w6cE/8CsXU2F+JvjwMWiHmYQ6Q4yqg5hibiHawgrVswftPmjJmQedrlCeSD
         FBPm6h8oGKKqVWTc9+KnUB7cgyioao1y50r45cYSJ23eYHUhXxkswfpHXtV4Eaqghh6F
         ANNXUGReCdSgaF9wAK6N4BUV7JiEYQo3VHmCj/R0RnXWLGCLpPPKbWof6JIyv7t/wbOC
         tzHYPUaOx+01bh9THvl+yDQqW0GUUS8yGcUPDzCo906DFDWQRMhj+DZUofWHNFevVMUH
         MDd4I5ht6ZeD+TiVck3c1xlQccIHN/ThBiWpPueFR+Q4TlPS7QP9L3OmQvJdiXnYMqW2
         7qWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=xksPysZDVZhrOtkfjh5uX2r1uF1vasoJ9BL4wGJBhp4=;
        b=2+e5hXWSwRF4Txo53BKWLxLkpFYzytTK8Po/Y+Zfabdky3ll+qyVTvVd70jmtXniWX
         wz139kQQiYy+HqE+/milOb+I0UbxchQvlG3E8h2WBtf8ll5Bte3sJYWaUPZJoNQ4JD3g
         fZ0cdVmgJApSgd0Xeb2ToW30TpKj4MPcoArNVycXJEtOewNKTUo9HyjDBjd8vYwmjsdx
         3uaIDvBIe9e5E+Tt2YtNhZ2AToPgAIOp28S/Fov2E1+7VRLHNxNpRCK2AIVCbFFQIPue
         BNqaHEaIh00u87ktd6L0rKkKfqdVhVk+YAGYl0hqRBKaYtMlb7SqFaUUFocp2P7gvUJU
         iLog==
X-Gm-Message-State: AOAM531vtDMCecVk+CBX6CdIMmHvuqzRR4p7fdcO/YdAizOOtDhK8aZs
        HKR3ZqM6z3XZCQHbkv4ghrrdVKD82C6hTI8=
X-Google-Smtp-Source: ABdhPJym4yqW4KVwALzCsXgboRciDkT6O5qKX9PFgO307Nl7m2pFGImULENAojAxKBDeIitTqWcKFHNl2RQl/OQ=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:16d1:ab0e:fc4a:b9b1])
 (user=saravanak job=sendgmr) by 2002:a25:5e41:: with SMTP id
 s62mr4998900ybb.456.1631693976809; Wed, 15 Sep 2021 01:19:36 -0700 (PDT)
Date:   Wed, 15 Sep 2021 01:19:32 -0700
Message-Id: <20210915081933.485112-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH] Revert "of: property: fw_devlink: Add support for
 "phy-handle" property"
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit cf4b94c8530d14017fbddae26aad064ddc42edd4.

Some PHYs pointed to by "phy-handle" will never bind to a driver until a
consumer attaches to it. And when the consumer attaches to it, they get
forcefully bound to a generic PHY driver. In such cases, parsing the
phy-handle property and creating a device link will prevent the consumer
from ever probing. We don't want that. So revert support for
"phy-handle" property until we come up with a better mechanism for
binding PHYs to generic drivers before a consumer tries to attach to it.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 3fd74bb34819..a3483484a5a2 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1291,7 +1291,6 @@ DEFINE_SIMPLE_PROP(pwms, "pwms", "#pwm-cells")
 DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
 DEFINE_SIMPLE_PROP(leds, "leds", NULL)
 DEFINE_SIMPLE_PROP(backlight, "backlight", NULL)
-DEFINE_SIMPLE_PROP(phy_handle, "phy-handle", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
@@ -1380,7 +1379,6 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_resets, },
 	{ .parse_prop = parse_leds, },
 	{ .parse_prop = parse_backlight, },
-	{ .parse_prop = parse_phy_handle, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
-- 
2.33.0.309.g3052b89438-goog

