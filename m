Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FE37690E2C
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 17:17:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbjBIQRu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 11:17:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbjBIQRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 11:17:50 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 233F15C8AC
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 08:17:49 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id 200-20020a2505d1000000b0088347752c5fso2294130ybf.18
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 08:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=d/HpDgAjJLm8RR4YFKWxuCVmqCkRynq6P7Mvmr0XMfs=;
        b=hMzhYzdODO0P3vPW4wAtDnpodRdyeR64LM6pHL1Zj6mYcs0ZxyRDmlAWfXWhECbX9r
         FuIC+R6H1N0pxWrVxzA1Biyp9Iujpb3G49C5J8qtSIbix5q60oh5gcAte/JLb10D6hgJ
         H4I0z4CBKiclx8qxRPPpx4OZ3cq2KSV5DNZC+DQoXG8WI70E6KA7iINC7b2YW5j28R01
         1KyNAdMkruBZNUE7dmCALw4PxQXyuW5CY59oALavUMk5DHZ5b8VpiIDj83indYMBX9RV
         eZlnFjuhszzPG9htkE57tElT21DUDpHYzFcmzThv82sOp0IN3ke8jxWhTFCtDR1aHx6f
         MWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d/HpDgAjJLm8RR4YFKWxuCVmqCkRynq6P7Mvmr0XMfs=;
        b=ywTeqxQnsjVjlroKyeb++rsC7rJpSdrg6AcZ3dxHvBJFWvLfgilKuXuailZXPcIoS5
         5LgY4XA5D859VpkShc2e0GUJZUFE9WGeNJ1ZiWHRzx09gGaBsS/MvYQHUZiWy8kpHHMH
         vs4IP5uaIAiZMX41CtSh7p/Ua5YN6eP6FIdw+jeOQ4OMToRjRUE6eLpeHIht4yTbZr3l
         E/MdZ4vVKaaVYKUGpSWg7WAGLf4gExYIzdK5fFjeTLQJ4Uuw0H8LbwSCO6Upk3xDtYlS
         mxuQvFpD0nYHGtDO0cWqhXLQfsRb8lhTpXPvDQWEbjU+tNY/ZMaH5ywyIkzg5an7YeLg
         gbAQ==
X-Gm-Message-State: AO0yUKVUTU5JPlJSUs1bgw+ufHGQyDgHzdANP5xfeRFgWmRPARahYgQ/
        MQQTQwtaDYRgOHuBj8d6mcD9xYpE4DW1big=
X-Google-Smtp-Source: AK7set9r6K6pI7BTczvvj7nJRkbHESi5IL2NeFvUeMpRWWRZRth19AWW+HHFNCe1LyRbXbF+zSlu5D9tTrJypDU=
X-Received: from liumartin.ntc.corp.google.com ([2401:fa00:fc:202:5f12:75ad:1626:6390])
 (user=liumartin job=sendgmr) by 2002:a5b:649:0:b0:868:8a61:2225 with SMTP id
 o9-20020a5b0649000000b008688a612225mr1273604ybq.461.1675959468422; Thu, 09
 Feb 2023 08:17:48 -0800 (PST)
Date:   Fri, 10 Feb 2023 00:09:55 +0800
Mime-Version: 1.0
X-Mailer: git-send-email 2.39.1.519.gcb327c4b5f-goog
Message-ID: <20230209160954.1471909-1-liumartin@google.com>
Subject: [PATCH v2] of: reserved-mem: print out reserved-mem details during boot
From:   Martin Liu <liumartin@google.com>
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        surenb@google.com, minchan@kernel.org, tkjos@google.com,
        liumartin@google.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It's important to know reserved-mem information in mobile world
since reserved memory via device tree keeps increased in platform
(e.g., 45% in our platform). Therefore, it's crucial to know the
reserved memory sizes breakdown for the memory accounting.

This patch prints out reserved memory details during boot to make
them visible.

Below is an example output:

[    0.000000] OF: reserved mem: 0x00000009f9400000..0x00000009fb3fffff ( 32768 KB ) map reusable test1
[    0.000000] OF: reserved mem: 0x00000000ffdf0000..0x00000000ffffffff ( 2112 KB ) map non-reusable test2
[    0.000000] OF: reserved mem: 0x0000000091000000..0x00000000912fffff ( 3072 KB ) nomap non-reusable test3

Signed-off-by: Martin Liu <liumartin@google.com>
---
Changes in V2:
-- instead of using debugfs, just print them out during boot

 drivers/of/of_reserved_mem.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 65f3b02a0e4e..00e75064ca19 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -284,6 +284,16 @@ void __init fdt_init_reserved_mem(void)
 				else
 					memblock_phys_free(rmem->base,
 							   rmem->size);
+			} else {
+				phys_addr_t end = rmem->base + rmem->size - 1;
+				bool reusable =
+					(of_get_flat_dt_prop(node, "reusable", NULL)) != NULL;
+
+				pr_info("%pa..%pa ( %lu KB ) %s %s %s\n",
+					&rmem->base, &end, (unsigned long)(rmem->size / SZ_1K),
+					nomap ? "nomap" : "map",
+					reusable ? "reusable" : "non-reusable",
+					rmem->name ? rmem->name : "unknown");
 			}
 		}
 	}
-- 
2.39.1.519.gcb327c4b5f-goog

