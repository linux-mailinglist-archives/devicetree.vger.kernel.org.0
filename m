Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3001EF5BD
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2019 07:50:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387731AbfKEGuK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Nov 2019 01:50:10 -0500
Received: from mail-pl1-f201.google.com ([209.85.214.201]:47517 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387569AbfKEGuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Nov 2019 01:50:09 -0500
Received: by mail-pl1-f201.google.com with SMTP id v2so12242527plp.14
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2019 22:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=5TtiPZ8JG3IZB9IHfZXJzJVA9bfv9F4xuxgcwBO6hmE=;
        b=swKu7CCOFsKCOAmFIWpmsKIU7pduBcL1SqT3rmb98vb6Dxl/uwlwROMOqGkwUNtk+m
         8Ej14ROYhooPiRond/JSp9GzM+cvW8btlVUnzypeL/CXta0LoH6St5ltAxsj8GK3fuFF
         moz+FFZXw0aqqeppnltv0t80+cWywykpG+tHir/JF15kbXnHGlxFJAF3wViJmx81JnIq
         NZX/5oWwR69XfrUdtGAuLr+FHOXwgNXmBrRIpppiwiNSgbArFtp4yLJ675clsmEAdqMA
         kNRyIR9nIh5ebxV2sPo5OcVDVcp+ME7Z28IxFagQY3oDbYdD4UzOrAQQ84s3GOcWrkyz
         vsKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=5TtiPZ8JG3IZB9IHfZXJzJVA9bfv9F4xuxgcwBO6hmE=;
        b=b6w2H2YGS/FeGennAz/XKmfoYnipIJ45ZtcLFq1NNXUY+RfQOapmGrwBpTakWGqDb8
         kfe9bWgEmcbKRR1MYgt1IoUzHeznzFA2DQQDpMltt8Qgk3Veki3oLrHHFVGW63MiqBMq
         oGOK4kOjH01svgURtLkY3hHpoHAvBMuFG2AiTTxlL7d+6MKsG8cFXjH5nSOqy3zU9wuu
         xWS39F4BwXpFbewIjtgcE6B7AXW/cBUMzW/IylI36GcgUJZ1nqSu6TjB2Pdr0jHVPhnK
         e5JQpBOwibLuFWAVvJijAh2QAKlmDE8YL++xEijuSp2DRPFoAnKK76NcS1pwsCB9F8qh
         /X8g==
X-Gm-Message-State: APjAAAVLk0MAb84+DyzZYaodDER1i+bVyRN6V5Ve8xSEbVMFRwHp8IwV
        9YhtM+FjHBnTaeoyWU6paH0nNjIfQmbiraU=
X-Google-Smtp-Source: APXvYqwGRo54xKLFvAWpMkEuE+JgzaNYYlCcpLlRiqwkuvcW3Tcs2e3YTm4OBkeH9oUA2q79g2EH8wSrcCPAuQM=
X-Received: by 2002:a65:654e:: with SMTP id a14mr10978626pgw.170.1572936607242;
 Mon, 04 Nov 2019 22:50:07 -0800 (PST)
Date:   Mon,  4 Nov 2019 22:49:58 -0800
In-Reply-To: <20191105065000.50407-1-saravanak@google.com>
Message-Id: <20191105065000.50407-2-saravanak@google.com>
Mime-Version: 1.0
References: <20191105065000.50407-1-saravanak@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v1 1/3] of: property: Minor style clean up of of_link_to_phandle()
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding a debug log instead of silently ignoring a phandle for an early
device. Also, return the right error code instead of 0 even though the
actual execution flow won't change.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index e225ab17f598..fbc201330ba0 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1051,8 +1051,14 @@ static int of_link_to_phandle(struct device *dev, struct device_node *sup_np,
 	sup_dev = get_dev_from_fwnode(&sup_np->fwnode);
 	is_populated = of_node_check_flag(sup_np, OF_POPULATED);
 	of_node_put(sup_np);
-	if (!sup_dev)
-		return is_populated ? 0 : -EAGAIN;
+	if (!sup_dev && is_populated) {
+		/* Early device without struct device. */
+		dev_dbg(dev, "Not linking to %pOFP - No struct device\n",
+			sup_np);
+		return -ENODEV;
+	} else if (!sup_dev) {
+		return -EAGAIN;
+	}
 	if (!device_link_add(dev, sup_dev, dl_flags))
 		ret = -EAGAIN;
 	put_device(sup_dev);
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

