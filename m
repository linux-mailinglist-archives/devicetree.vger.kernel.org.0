Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E399A79C47
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 00:12:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388185AbfG2WLa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 18:11:30 -0400
Received: from mail-qt1-f202.google.com ([209.85.160.202]:49269 "EHLO
        mail-qt1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387676AbfG2WL3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 18:11:29 -0400
Received: by mail-qt1-f202.google.com with SMTP id l16so49762826qtq.16
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 15:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=q/JO0jIzFDUcBLNa0OLAVEbtuFfd8ssnFHaHdmtCpxU=;
        b=RAfvxQcl4h2BOyaK31H1/xWYCyBx/eMduTNV0vQvG5cGkn5cGK3RzQnHoHIatewHnm
         Fg1LrxZP4gf7iMy/GnI+7ngsBGnaRAZjvWfL4bpRWJKpKv0/5v8jJJ54kIYZll1fkhrs
         CXXej9PXznYSVaqvLO4jibT0OH+iqf5eceI834QosZHeYCIlkQTBEqAYfwFwSt4dLmuw
         p49wppWLaI3vC7K4KJRvbYvAbQ8Uu8YGMIn/Ymu/YE8ZZOEgVLlGivl3A6edYaBM1xtW
         +v4tiDen5L66O2NJg/9wyISohBTn/MqJv8xjwO5aYduPo5+sY0d122+2EzQXQz0RNUx5
         j4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=q/JO0jIzFDUcBLNa0OLAVEbtuFfd8ssnFHaHdmtCpxU=;
        b=gDuN/4tEuNZaL7P9F/TMdPrHRgLEpMwjblAym32IZSwIpPhCigL9m0kMp9Y4fIVanO
         hkTfDQDqpdpn/AnQSQdX6seEqLb15Ro1pVvrBs2VrqkqQBo8rfRMj/eTlhzeqYqK+zSu
         NOsKw/qq4w4ZdLWdWrArTdQCWMKg2wnedQOX1mpqz3pUJYc0ebebDfpLGg3K9f0igiit
         aGC2dk4wE7Q6EPWPHi9n5Yt7rbLQljvrLIQ0eiBNh38u+P926Zgza46SYXBUeub18bKc
         976boQ1JuQGYyrdyYsQhAFrNN+QLBz3jaI9WvzAsfPpQGJzZXruJeVX70xVzWXE0P58l
         9KIQ==
X-Gm-Message-State: APjAAAUU8v+n6YgnJg349KIM4u9IuN33BISRygJBUH4flXqtlMz3FSLg
        5ek1jJ5ppCGln4pyTZkKgEeslbrpbnWJnJk=
X-Google-Smtp-Source: APXvYqydELxRbsHighcxSWgGx87UveXV5heA+fTgZ2mjwG8HEYlndd5i5Hfoa3E9mNglZFW6alDPgxqaqeQ/Og8=
X-Received: by 2002:a05:620a:1228:: with SMTP id v8mr29782991qkj.357.1564438288576;
 Mon, 29 Jul 2019 15:11:28 -0700 (PDT)
Date:   Mon, 29 Jul 2019 15:11:01 -0700
In-Reply-To: <20190729221101.228240-1-saravanak@google.com>
Message-Id: <20190729221101.228240-8-saravanak@google.com>
Mime-Version: 1.0
References: <20190729221101.228240-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v8 7/7] of/platform: Don't create device links for default busses
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

