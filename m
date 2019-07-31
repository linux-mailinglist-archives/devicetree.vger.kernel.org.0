Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFED37D0B4
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 00:17:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731456AbfGaWRv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 18:17:51 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:37617 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728651AbfGaWRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 18:17:50 -0400
Received: by mail-pl1-f201.google.com with SMTP id n4so37819112plp.4
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 15:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=Fle61vPJ2CgF1ZWEm2BgqpUqqKQrrfp1g/3hZXhBAk8=;
        b=nqaTxhRofcFBWxS5KV3bTh0/mFTwJ6GGQRRbYUnLgbrgS2BvuZuu1R0kLCjqJIwl+V
         opGYrKeXTGaIg4Um9sH2UJO0gWCV/TEuf6DMTJxXn3JtsRxNtMkQnYHwV94Fm+1RM3CS
         BQlgsKPTdD21JVzX5zxSkKOX5bPQQN4M1rdBO1H2uXGXuqe1TU3wiqIAwYpjzdVdio0b
         quWjsq8T85BYZJjirNpZNUDNLw88c02LJhb/6cGFnSecYnUy2nGQtVBqRQibDvdMBF4U
         YFGzGsc5ibxxJOQ4TK5ChE9OKUSrM8vOHOHZ58ouC0NblMJixvRlLQi7b2Bdyp3skAev
         +jZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Fle61vPJ2CgF1ZWEm2BgqpUqqKQrrfp1g/3hZXhBAk8=;
        b=SkIwWENhaEvO3mPf5PI2TvXi7PTyJVZ5bsi9X/+JVzCGIEO15nHANUDtGynqJG+jBY
         okCOqP0bw1+ngjMqxOHRuL6ZgwnHlgg/UVCynXF6tGvZ91/kOlmeCWOfKSGDYRupjzy8
         A2QPbkKT9c6lKFaOOpskWsXMLW7mzGmAgXG9xr7KQ0TA7WM0sUcRHiL7fnhaCrO/IYVa
         iETomzpjAjE9RuhzCZxSamRHpQGe7ljRORsIyY9nEADDiPpaEG8UKcj5U77nuPg1a1rV
         eRv8XZVrxR4IgA8fp3Rh/JuOVhePfbZnpvnb32fMdIgOoQ/WGqvEKDXckIuUfB0lq079
         u9LQ==
X-Gm-Message-State: APjAAAXauHKPMo1MNg9K1PHizHrJocUZb5Qa3leDTi3v30rMK+SNpvt8
        72u7U0AkaS1tRwK8RKiokGFxhpq2KDBFIv4=
X-Google-Smtp-Source: APXvYqxNTYEUITyUwn6GDLByMZFsij2bVHdtvK1JPN4+FWR688CFRK3H0bgrIM/X0wWVsRmHxcak7Y1MsgFhBiI=
X-Received: by 2002:a65:5a8c:: with SMTP id c12mr4729150pgt.73.1564611469231;
 Wed, 31 Jul 2019 15:17:49 -0700 (PDT)
Date:   Wed, 31 Jul 2019 15:17:20 -0700
In-Reply-To: <20190731221721.187713-1-saravanak@google.com>
Message-Id: <20190731221721.187713-8-saravanak@google.com>
Mime-Version: 1.0
References: <20190731221721.187713-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v9 7/7] of/platform: Don't create device links for default busses
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        David Collins <collinsd@codeaurora.org>,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Default busses also have devices created for them. But there's no point
in creating device links for them. It's especially wasteful as it'll
cause the traversal of the entire device tree and also spend a lot of
time checking and figuring out that creating those links isn't allowed.
So check for default busses and skip trying to create device links for
them.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/platform.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 36e25136e807..33cac801e50b 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -682,6 +682,8 @@ static int of_link_to_suppliers(struct device *dev)
 		return 0;
 	if (unlikely(!dev->of_node))
 		return 0;
+	if (of_match_node(of_default_bus_match_table, dev->of_node))
+		return 0;
 
 	return __of_link_to_suppliers(dev, dev->of_node);
 }
-- 
2.22.0.709.g102302147b-goog

