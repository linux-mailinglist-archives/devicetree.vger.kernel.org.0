Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A94F922A09B
	for <lists+devicetree@lfdr.de>; Wed, 22 Jul 2020 22:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732914AbgGVUNU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jul 2020 16:13:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728332AbgGVUNU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jul 2020 16:13:20 -0400
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CBAAC0619DC
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 13:13:20 -0700 (PDT)
Received: by mail-qt1-x849.google.com with SMTP id h10so2166807qtc.4
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 13:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=bHKxXLzRxjp9sEodI13FMKA+gAY4CEHn5pKoXQX0rac=;
        b=Jzml84ERxyON/0dqHs6IN8pWEjMh/QmFsgLXzpjdyKxK3ZfpSq+8radDDcLKWiX6mp
         xEMUN4dHkCM4alWtyKevkNUQrUO5TG2bOiKu/HtVR0drayo34qNM8OL1cH1bsVpCCU92
         gXEGQAHjUzoQsd+NQNpGFjGBvVJTzjgv/sGOtIsMmC2X4Oz+gs0tE1sAQS6ZoKeaL6T+
         uPqdt0PwvAdIdJuCdiyGd6LvscIk/c0isaS49EHK1EDTXlZDHDkYe7bndI+hJZxlS0hW
         Y+fPG7uRQFrMmM6UNgrMlRfag6Hfmcl2HPlYADPfrrFiFZdPA8oPMolwuHvkgSHV534i
         EW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=bHKxXLzRxjp9sEodI13FMKA+gAY4CEHn5pKoXQX0rac=;
        b=OtpnvrMVW4jsJCTBIBggSfqbQWWS7xG1nvmvrAjRMpVA2mHdkHxC8HU2M2YLe7Y4im
         RTKP+K1CBIrkL2TmfN0evLEkyXJM/vUuXdeNe3tv5cskntJe1P4LVZIyFbd0dvsvu56+
         u19+n2ocYQA0SqUSFXM3jYzu+baZQUs7UlWInVyKpZNrylalr8oju3vsgPZCYsXQrsAk
         7IcaLEy4pGJNc5l0ZWrzc+2R/f5CoFTPb6z/T22EoJwaKSkC6MQypi7pfIj6vr3xzysT
         ibiHRMjKvWmZfIw3fTcv+6XizWlj2HtPH4NS5g8FjDUrDQr0w2jslLDrkCsPWBqkNt4d
         +NPA==
X-Gm-Message-State: AOAM531HqZfYNp42h8+PMHuCBJgGLQprm1HjwLnlZ1sUrIJBTvXDWWwl
        b50C5xN58rRYgBLrmR+SEozcmSiLNkMgCAk=
X-Google-Smtp-Source: ABdhPJwj4x5AqnsnHuU7eLFaaCrg7iFEgECz0x2EW+4lWy5xpGyNNzbzxFRm5bhYysPyfFoZL3rvQRkwzt8D9MY=
X-Received: by 2002:ad4:476a:: with SMTP id d10mr1724517qvx.13.1595448799289;
 Wed, 22 Jul 2020 13:13:19 -0700 (PDT)
Date:   Wed, 22 Jul 2020 13:13:13 -0700
In-Reply-To: <20200722201313.754671-1-saravanak@google.com>
Message-Id: <20200722201313.754671-2-saravanak@google.com>
Mime-Version: 1.0
References: <20200722201313.754671-1-saravanak@google.com>
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v1 2/2] of: property: Add device link support for pinctrl-0
 through pinctrl-8
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for pinctrl-0 through pinctrl-8 explicitly instead of trying
to add support for pinctrl-%d properties.

Of all the pinctrl-* properties in dts files (20322), only 47% (9531)
are pinctrl-%d properties. Of all the pinctrl-%d properties, 99.5%
(9486) are made up of pinctrl-[0-2].

Trying to parse all pinctrl-* properties and checking for pinctrl-%d is
unnecessarily complicated. So, just add support for pinctrl-[0-8] for
now. In the unlikely event we ever exceed pinctrl-8, we can come back
and improve this.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index b06edeb1f88b..d40d923ffeaf 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1274,6 +1274,15 @@ DEFINE_SIMPLE_PROP(interrupts_extended, "interrupts-extended",
 DEFINE_SIMPLE_PROP(nvmem_cells, "nvmem-cells", NULL)
 DEFINE_SIMPLE_PROP(phys, "phys", "#phy-cells")
 DEFINE_SIMPLE_PROP(wakeup_parent, "wakeup-parent", NULL)
+DEFINE_SIMPLE_PROP(pinctrl0, "pinctrl-0", NULL)
+DEFINE_SIMPLE_PROP(pinctrl1, "pinctrl-1", NULL)
+DEFINE_SIMPLE_PROP(pinctrl2, "pinctrl-2", NULL)
+DEFINE_SIMPLE_PROP(pinctrl3, "pinctrl-3", NULL)
+DEFINE_SIMPLE_PROP(pinctrl4, "pinctrl-4", NULL)
+DEFINE_SIMPLE_PROP(pinctrl5, "pinctrl-5", NULL)
+DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
+DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
+DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 DEFINE_SUFFIX_PROP(gpios, "-gpios", "#gpio-cells")
@@ -1303,6 +1312,15 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_nvmem_cells, },
 	{ .parse_prop = parse_phys, },
 	{ .parse_prop = parse_wakeup_parent, },
+	{ .parse_prop = parse_pinctrl0, },
+	{ .parse_prop = parse_pinctrl1, },
+	{ .parse_prop = parse_pinctrl2, },
+	{ .parse_prop = parse_pinctrl3, },
+	{ .parse_prop = parse_pinctrl4, },
+	{ .parse_prop = parse_pinctrl5, },
+	{ .parse_prop = parse_pinctrl6, },
+	{ .parse_prop = parse_pinctrl7, },
+	{ .parse_prop = parse_pinctrl8, },
 	{ .parse_prop = parse_regulators, },
 	{ .parse_prop = parse_gpio, },
 	{ .parse_prop = parse_gpios, },
-- 
2.28.0.rc0.105.gf9edc3c819-goog

