Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1CBE8E7C14
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2019 23:01:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390684AbfJ1WAp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Oct 2019 18:00:45 -0400
Received: from mail-ua1-f74.google.com ([209.85.222.74]:49028 "EHLO
        mail-ua1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390646AbfJ1WAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Oct 2019 18:00:44 -0400
Received: by mail-ua1-f74.google.com with SMTP id h32so1770716uah.15
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2019 15:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=p1q/Pw/wuy9bjo/DrQQAdF+Yb7XQb+VfuKZvKfT16cM=;
        b=WAfl1XmPbwo+7VE/CZN0905b+HEiYar7/NvUthq601HPXxT94eCGYY2F4WfuKln4W7
         +SfqttoOOX9bXAFCz8ORqsda1Ic2Uh3Ud+PYGT6xFRU4sjsX8FxhctSmhYGWjuK2/dMW
         LHMMJUos6oA87dNWQjCZ1EcxcjqfBavBeCcLKRO/W91UmWen/BnwZhnKmCsTTpXml3ho
         DduqFtcrLux5Npe9TmskCDaZBmz6ho7fI1oGF2ZSxPAddumrBpli4aTCIVo5rDh+5hnZ
         e/DiPNdXDAbp0iWTPlfNBmMt/jewBkIKimoHqF6EbT/oggxlma0OCQPTQc/K3+BotBRD
         oXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=p1q/Pw/wuy9bjo/DrQQAdF+Yb7XQb+VfuKZvKfT16cM=;
        b=I0QaZJqYaNu1tOKFvDR/mzywNAIeajS78eNmMbDU5d2/gDz6eU80rhJwFf43eLyDJx
         iQ/ilxsZ0+IzTj+hYI59rmklRXPGr166C4yDiInIMQ9ixPKhHrRApSZnr7uUn+sWee/L
         xaFcVwaWFAKfUiFWbGYZ+R5CbY6uwIGA2CAp6CSlUmjzaWUE6/iaMvtgyhgvO3cSO/5+
         DdwumQDz97LQqffQKaYoAkuz1ZLkomSQvl/jdaRCrCccYvmyxwLxqrQXKOQrccqV4sPI
         GTm22BxywhCshacx7XkReq+viEzxHD6ZHgchKA48mIewRkCuEGxLRPp16c9WwfaqpQjk
         utuA==
X-Gm-Message-State: APjAAAWAoB4Gai/B+UZdfvY771Y1Shy72PAKJOLfrbmd8sLrpqdeJg8C
        91mXBY+JcJdUFGOVCQHsTXdFQUq10O28fPA=
X-Google-Smtp-Source: APXvYqyedBmeKcCmUfQlI/6WF0HNof2bWz1MwtqdnVskuaQNyPZRJ7ILHAIvQWm0quDgwRzmEACcOOkgvrFUk10=
X-Received: by 2002:a05:6102:835:: with SMTP id k21mr10123988vsb.11.1572300043709;
 Mon, 28 Oct 2019 15:00:43 -0700 (PDT)
Date:   Mon, 28 Oct 2019 15:00:25 -0700
In-Reply-To: <20191028220027.251605-1-saravanak@google.com>
Message-Id: <20191028220027.251605-5-saravanak@google.com>
Mime-Version: 1.0
References: <20191028220027.251605-1-saravanak@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v1 4/5] of: property: Make sure child dependencies don't block
 probing of parent
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When creating device links to proxy the sync_state() needs of child
dependencies, create SYNC_STATE_ONLY device links so that children
dependencies don't block probing of the parent.

Also, differentiate between missing suppliers of parent device vs
missing suppliers of child devices so that driver core doesn't block
parent device probing when only child supplier dependencies are missing.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 2808832b2e86..f16f85597ccc 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1032,10 +1032,10 @@ static bool of_is_ancestor_of(struct device_node *test_ancestor,
  * - -EINVAL if the supplier link is invalid and should not be created
  * - -ENODEV if there is no device that corresponds to the supplier phandle
  */
-static int of_link_to_phandle(struct device *dev, struct device_node *sup_np)
+static int of_link_to_phandle(struct device *dev, struct device_node *sup_np,
+			      u32 dl_flags)
 {
 	struct device *sup_dev;
-	u32 dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
 	int ret = 0;
 	struct device_node *tmp_np = sup_np;
 
@@ -1195,13 +1195,20 @@ static int of_link_property(struct device *dev, struct device_node *con_np,
 	unsigned int i = 0;
 	bool matched = false;
 	int ret = 0;
+	u32 dl_flags;
+
+	if (dev->of_node == con_np)
+		dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
+	else
+		dl_flags = DL_FLAG_SYNC_STATE_ONLY;
 
 	/* Do not stop at first failed link, link all available suppliers. */
 	while (!matched && s->parse_prop) {
 		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
 			matched = true;
 			i++;
-			if (of_link_to_phandle(dev, phandle) == -EAGAIN)
+			if (of_link_to_phandle(dev, phandle, dl_flags)
+								== -EAGAIN)
 				ret = -EAGAIN;
 			of_node_put(phandle);
 		}
@@ -1219,10 +1226,10 @@ static int of_link_to_suppliers(struct device *dev,
 
 	for_each_property_of_node(con_np, p)
 		if (of_link_property(dev, con_np, p->name))
-			ret = -EAGAIN;
+			ret = -ENODEV;
 
 	for_each_child_of_node(con_np, child)
-		if (of_link_to_suppliers(dev, child))
+		if (of_link_to_suppliers(dev, child) && !ret)
 			ret = -EAGAIN;
 
 	return ret;
-- 
2.24.0.rc0.303.g954a862665-goog

