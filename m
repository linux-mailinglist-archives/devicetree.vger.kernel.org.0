Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 84ACD72351
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 02:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727631AbfGXAL3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 20:11:29 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:39368 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727605AbfGXAL2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 20:11:28 -0400
Received: by mail-pl1-f201.google.com with SMTP id r7so22984552plo.6
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 17:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=q/JO0jIzFDUcBLNa0OLAVEbtuFfd8ssnFHaHdmtCpxU=;
        b=WYmp9wsxezkT2R/MikeKx4t2kiHMyW2mvw+vnqop1fKm18UGsdFrOX0WMvp0211oE5
         AenkmFgmV5Fd3/Kob7ksNJEBQ5BHl8zs1JzyycKcNyBaseoUHZcFMx6ZWsdHZU92y0E0
         Dzyw6ffhd60WvwW1dAxMzf2Bw1rXvf8tft38BNZ/9xEHqn8dkzW3wMW49PAIcMGw6eR5
         9+5VreZKwIO5czdaW+ToF0ZASnI1NQZlEzr6pNvgpH06DfFYBDVN2OyI69rdIn6kpJlu
         CQJMTpeetGIPTol0Z9tGdsf6G3WGCRMgmk5IWKNGrriIaXe6bMmUPkRQnOEodnqoyC/+
         hWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=q/JO0jIzFDUcBLNa0OLAVEbtuFfd8ssnFHaHdmtCpxU=;
        b=fDZXOvqXyQrD8n8guDfC8UnW8iCtB5cbvpIAW5+1qPP5Ni0B1k15/t8s374ibsemJN
         ijRBWhPZlBn/ERtaj02dGgjM8i2Tha1zA+kaPTjE5UQJNeDdj0e3Du9npWu8kwUwJKmG
         eTy+tq3GR/1XquHcRoNQnSa60XqE9UgqEFl7UU96zcOr0ghU9u6mOHGZjcCqaY1U8vXs
         iTc6Zm6ROnWIT93aU0hANPuyBMY5khPHZb6xoJvEVyoWbN2uvpzYEHL1d3vpiw0os/u9
         ueIGCDexhFhmaZBAznxtHIEm1AxuhJQ8Ml3snpLheuditjO4QRlTptxOi/lqIDfsA+25
         GG+w==
X-Gm-Message-State: APjAAAUMsjoRscVRcBx7/VhAjM6+f3R4/1jATUWFa9hZGVPsOhuU8PPs
        f2DPT6nJ3y4vwr+3lZY2huCMYnqb8OkevHQ=
X-Google-Smtp-Source: APXvYqyfrpfG7foa9SWIkR5PY0wl5lzzhUJJl9ryESw4iWhqCn6wdu4L8I+nTmuFAxhxJl22/uYxTDoF1Fgo0zY=
X-Received: by 2002:a65:6259:: with SMTP id q25mr38982937pgv.145.1563927087442;
 Tue, 23 Jul 2019 17:11:27 -0700 (PDT)
Date:   Tue, 23 Jul 2019 17:11:00 -0700
In-Reply-To: <20190724001100.133423-1-saravanak@google.com>
Message-Id: <20190724001100.133423-8-saravanak@google.com>
Mime-Version: 1.0
References: <20190724001100.133423-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v7 7/7] of/platform: Don't create device links for default busses
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
index 41499ddc8d95..676b2f730d1b 100644
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

