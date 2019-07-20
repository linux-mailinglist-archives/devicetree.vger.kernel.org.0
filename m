Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7276EDFD
	for <lists+devicetree@lfdr.de>; Sat, 20 Jul 2019 08:17:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726455AbfGTGRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Jul 2019 02:17:20 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:43299 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726436AbfGTGRR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Jul 2019 02:17:17 -0400
Received: by mail-pl1-f201.google.com with SMTP id t2so16954849plo.10
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 23:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=XHZhcOCJhaOJlDHmwmoOr4DNUGpZjh/DgPbCgvVVpt0=;
        b=UOqEDx5Bi4XIR97mxVHJYqDas/gsviEa+U5OwWS5eTKp23OgwAL8BATExEQrvB5K3e
         Ac5paop5IS6XUhdjTZWHgpDoDoOWqQi2476Ysg+MGrfgVAzjXMld8YKcJJHViAa1SGdX
         hUkYrdANakYTdX/zk5IO2S3mEAx8rXP3gNNE7HZjzxm4i2cCs2y3EQN9EWVdMCNnEBFz
         TpU/TMt9MQC+Ptilkiks31OWbz2LLdF0QU4/jbIyoYugEgz7isdRkNSSt9l9uvzBHksG
         rTwMTpV8jj00BNiu3t7MVWhQkTM61rPqYZoKZ3V1kwSsCQRysU/IpzFXBOUyyoWjFjvT
         HH2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=XHZhcOCJhaOJlDHmwmoOr4DNUGpZjh/DgPbCgvVVpt0=;
        b=NeTnDj5uZIS8r9TCP6J3cEptPxkIGSWeofxWJ+He+h4GLDg4W2C7iyC6KFJ+B5A8tT
         skY5BjtDzRitunNmC8a1JizjdJ2rzdddJ6BH539Ql2AdHu9g1Glmwxln+hFNfHKBs/Xs
         zJ5BxazWBoHzkfBftlPvuuE+ZI+VMujBxEvzQgGln2xpbcPYunnWXp8OEP8IJi60lIVU
         t28lFLemFTvjafD4pZ9uXy+hWwGarKiCfLEovG+4wt4baqo+TTgwa5Tb0MEtJhY/Rtze
         kuMShQRhqPXdOpOqenxWQfKdS0EPf5nvkqMBLzPj9qtjgF+iRhxY+0sfE9DG1joEEL3X
         Ao/A==
X-Gm-Message-State: APjAAAXPpY7hrfzx7LGllqpOrLy4CGWc1BGFb9e/Qc7dJTaU9NbY/rXt
        rwn61TvrgWFD0Ag8C3ARMLAQGZK3/bw2Fc8=
X-Google-Smtp-Source: APXvYqzAzcE5vBjP6RCbXmbEeN0ZSnHHEiMT4lXXkWB1Ez6n0o/JsYvE1WUbpT4tc6ua9le+jI6/+snaGAzggFc=
X-Received: by 2002:a63:1950:: with SMTP id 16mr58157917pgz.312.1563603436732;
 Fri, 19 Jul 2019 23:17:16 -0700 (PDT)
Date:   Fri, 19 Jul 2019 23:16:46 -0700
In-Reply-To: <20190720061647.234852-1-saravanak@google.com>
Message-Id: <20190720061647.234852-8-saravanak@google.com>
Mime-Version: 1.0
References: <20190720061647.234852-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
Subject: [PATCH v6 7/7] of/platform: Don't create device links for default busses
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
index c1a116f7a087..8bf975ee2ff7 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -676,6 +676,8 @@ static int of_link_to_suppliers(struct device *dev)
 		return 0;
 	if (unlikely(!dev->of_node))
 		return 0;
+	if (of_match_node(of_default_bus_match_table, dev->of_node))
+		return 0;
 
 	return __of_link_to_suppliers(dev, dev->of_node);
 }
-- 
2.22.0.657.g960e92d24f-goog

