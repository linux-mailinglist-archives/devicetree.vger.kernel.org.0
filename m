Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 357F0338B03
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:08:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233745AbhCLLIQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:08:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233770AbhCLLIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:08:05 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC54BC061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:04 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id y16so4583909wrw.3
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bB37NURGh8EFIJQIa++3BQSCU0th5hoxHg0xcGpcKp8=;
        b=tmsGKcKgEnsj0KhVWe2+k8A1ABsaHdyGtihJMLmEKBibW/MwchKqZMucJ2Bf+JeJ3H
         emjiTOGPn2KKQHgYfwXPrPP0h4r5bpWUTcm/MqMz4umjl7cmtNMU6tLxJZMB1CfwtwoY
         RzOMlRnrDNriNMrFjVPrsEFYifdnuqjZ1LW0RJ+P+DSIZiMBtarte05Al7uuVAYGJdgo
         wah2axV51h3tdIaVigzP4kWCabECr2Ev2XhZtcdQ0cUo1UTJxkj1tXXeKzohVxF3Pio6
         5XXUaA2g5cFG7/OXLNewYIBG9BAb7ce+/laDOYDRarSDwxv+UpsTlj5RXLqk5LaC/+YN
         vegA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bB37NURGh8EFIJQIa++3BQSCU0th5hoxHg0xcGpcKp8=;
        b=CsYnHgMwp99Hw1AGlA8vms7OkIJ3vxjtcQH6xkHAwunRMwUNnB+8G4NeDpEAnYckhV
         J6hct6PVZ50o3hxjlFAXPfvZASUeugQIzTTusfakFCcVIt8ZSwUF9Kq6d0cqpc5hhQEq
         HqSox3gNw4q+0Qz8Wk6g/8lMNFMpH4tT7hUw5vEGNQ6FC7i1cxjHBraAww7Gts4Yqmt9
         3Ubxj+Bd+01OSdE2iQk78ZGO32m/z/ZWThjipYkvYan62MSzErb/wXny6xxExIeyOWd6
         ZbbSdqgkqal23Xgsv+DdaYeoBBEkxaYrxBnuQ55e5gMCk9pRr3JYrBmYASgkrYspYYuH
         WBIA==
X-Gm-Message-State: AOAM530mfxYcUqWSeNdkc+i1kU8ZILo4VK+TnRLwdYR9uanUpMTYnZrG
        kXtyWqXwV9SH9t03vkLj/lqtuQ==
X-Google-Smtp-Source: ABdhPJxdZXEXsyo56YWGdpLI+TV2w0Bi6ry8On8Jgv+w757A5JzCjLQDf2n33EIQZ7P2cWgMcG9uAA==
X-Received: by 2002:adf:e68e:: with SMTP id r14mr13195066wrm.273.1615547283597;
        Fri, 12 Mar 2021 03:08:03 -0800 (PST)
Received: from dell.default ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id f126sm1813003wmf.17.2021.03.12.03.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:08:03 -0800 (PST)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 02/10] of: dynamic: Fix incorrect parameter name and demote kernel-doc abuse
Date:   Fri, 12 Mar 2021 11:07:50 +0000
Message-Id: <20210312110758.2220959-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210312110758.2220959-1-lee.jones@linaro.org>
References: <20210312110758.2220959-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/dynamic.c:234: warning: Function parameter or member 'np' not described in 'of_attach_node'
 drivers/of/dynamic.c:286: warning: Function parameter or member 'np' not described in 'of_detach_node'
 drivers/of/dynamic.c:326: warning: Function parameter or member 'kobj' not described in 'of_node_release'
 drivers/of/dynamic.c:326: warning: Excess function parameter 'kref' description in 'of_node_release'

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/dynamic.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index 9a824decf61f1..93b35f3c92c18 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -227,7 +227,7 @@ static void __of_attach_node(struct device_node *np)
 	of_node_clear_flag(np, OF_DETACHED);
 }
 
-/**
+/*
  * of_attach_node() - Plug a device node into the tree and global list.
  */
 int of_attach_node(struct device_node *np)
@@ -279,7 +279,7 @@ void __of_detach_node(struct device_node *np)
 	__of_phandle_cache_inv_entry(np->phandle);
 }
 
-/**
+/*
  * of_detach_node() - "Unplug" a node from the device tree.
  */
 int of_detach_node(struct device_node *np)
@@ -318,7 +318,7 @@ static void property_list_free(struct property *prop_list)
 
 /**
  * of_node_release() - release a dynamically allocated node
- * @kref: kref element of the node to be released
+ * @kobj: kernel object of the node to be released
  *
  * In of_node_put() this function is passed to kref_put() as the destructor.
  */
-- 
2.27.0

