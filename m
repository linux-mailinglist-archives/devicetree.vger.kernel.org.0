Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4805A338B08
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:08:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233910AbhCLLIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:08:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233779AbhCLLIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:08:07 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE684C061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:06 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l11so4567897wrp.7
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xE16iWVrd/Dz2OStGgcbMQc82tadivuaZyZu3WDq4F4=;
        b=EeAJHIWUnnRZrbfgqRD8sH2Bb66d8WsCAn34rgGxA/jfeVYyJ+mEcFI1+cJVsLmoAu
         GrMSJd6sc2u0qwU6gfduVq9xSLQ18QwQpgSrlFZcmLRsApiNR4Op3sNIFuWnSRunwdiI
         tNKCxcWujNnIx8pi80XzVz1hYfnMPArSy7bU/yEWXDzc6AMX6dfhTXujg9f0LXzSPDTp
         Gz0mHr6iQstp5z0SR5UqQ50E/nIOCOM6ue1/QdC2fXv5TwXEgdPyvzGAMhX1GsXyiJWX
         mZ++VXA8u9xxknhkdI4KCrjmsKFk2hC6neZgTcNuLnV9QFlOvbYAegmz/l7lKyw7dYHs
         C76g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xE16iWVrd/Dz2OStGgcbMQc82tadivuaZyZu3WDq4F4=;
        b=b5FfrAq/NdK5XK/Bn/XMquatNZDWaG4JjCyiDo6RcIg4LYiZy24+ZTVK7j9KWWlq0k
         U8B7Lhj3K5zrdPRshIvgCoF64krQMcHQY8LHH5RySj3/E3G+5hc7OpXJsu9NmXeXY1j5
         fxTnnyfm0IKWzHzD880tn1/tNH3j0ayqJaX0gXWFmoAVdZTahgxK2M/8Yv1HpdjiQRKs
         +ipWwkLC+VwZ47EPF01X0A9kTPAVm+0oKjQGsRgY90FaUd0Qedmq9EzPBDBywllSTxm/
         hELKp7M9wQXdb4zav5YCOK/FZCyUR2dYinz/jGWfZCH7DYYjIYhoWNg29T69tKmS6tVI
         Hpww==
X-Gm-Message-State: AOAM530ZrfqpxI0rXhrusekqD0/LIXc43e/kPWRR7ecu/feARVKHF/vC
        2FQQPjE+wya8ToxsXPxkl+DOmWBKijljCA==
X-Google-Smtp-Source: ABdhPJypeu4b3s1vla9CbVWZHOQGvyj/52c04I4/kpBdBjdEYA8wHL1/IsClg3imnrRx4g+ZmamUyQ==
X-Received: by 2002:a5d:6c69:: with SMTP id r9mr13168817wrz.11.1615547285441;
        Fri, 12 Mar 2021 03:08:05 -0800 (PST)
Received: from dell.default ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id f126sm1813003wmf.17.2021.03.12.03.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:08:05 -0800 (PST)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org
Subject: [PATCH 04/10] of: base: Fix some formatting issues and demote non-conformant kernel-doc headers
Date:   Fri, 12 Mar 2021 11:07:52 +0000
Message-Id: <20210312110758.2220959-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210312110758.2220959-1-lee.jones@linaro.org>
References: <20210312110758.2220959-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/base.c:315: warning: Function parameter or member 'cpun' not described in '__of_find_n_match_cpu_property'
 drivers/of/base.c:315: warning: Function parameter or member 'prop_name' not described in '__of_find_n_match_cpu_property'
 drivers/of/base.c:315: warning: Function parameter or member 'cpu' not described in '__of_find_n_match_cpu_property'
 drivers/of/base.c:315: warning: Function parameter or member 'thread' not described in '__of_find_n_match_cpu_property'
 drivers/of/base.c:315: warning: expecting prototype for property holds the physical id of the(). Prototype was for __of_find_n_match_cpu_property() instead
 drivers/of/base.c:1139: warning: Function parameter or member 'match' not described in 'of_find_matching_node_and_match'
 drivers/of/base.c:1779: warning: Function parameter or member 'np' not described in '__of_add_property'
 drivers/of/base.c:1779: warning: Function parameter or member 'prop' not described in '__of_add_property'
 drivers/of/base.c:1800: warning: Function parameter or member 'np' not described in 'of_add_property'
 drivers/of/base.c:1800: warning: Function parameter or member 'prop' not described in 'of_add_property'
 drivers/of/base.c:1849: warning: Function parameter or member 'np' not described in 'of_remove_property'
 drivers/of/base.c:1849: warning: Function parameter or member 'prop' not described in 'of_remove_property'
 drivers/of/base.c:2137: warning: Function parameter or member 'dn' not described in 'of_console_check'
 drivers/of/base.c:2137: warning: Function parameter or member 'name' not described in 'of_console_check'
 drivers/of/base.c:2137: warning: Function parameter or member 'index' not described in 'of_console_check'

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/base.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8a348f0d3c5e7..e0319e5f5793a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -305,7 +305,7 @@ bool __weak arch_match_cpu_phys_id(int cpu, u64 phys_id)
 	return (u32)phys_id == cpu;
 }
 
-/**
+/*
  * Checks if the given "prop_name" property holds the physical id of the
  * core/thread corresponding to the logical cpu 'cpu'. If 'thread' is not
  * NULL, local thread number within the core is returned in it.
@@ -1128,7 +1128,7 @@ EXPORT_SYMBOL(of_match_node);
  *			will; typically, you pass what the previous call
  *			returned. of_node_put() will be called on it
  *	@matches:	array of of device match structures to search in
- *	@match		Updated to point at the matches entry which matched
+ *	@match:		Updated to point at the matches entry which matched
  *
  *	Returns a node pointer with refcount incremented, use
  *	of_node_put() on it when done.
@@ -1772,7 +1772,7 @@ int of_count_phandle_with_args(const struct device_node *np, const char *list_na
 }
 EXPORT_SYMBOL(of_count_phandle_with_args);
 
-/**
+/*
  * __of_add_property - Add a property to a node without lock operations
  */
 int __of_add_property(struct device_node *np, struct property *prop)
@@ -1793,7 +1793,7 @@ int __of_add_property(struct device_node *np, struct property *prop)
 	return 0;
 }
 
-/**
+/*
  * of_add_property - Add a property to a node
  */
 int of_add_property(struct device_node *np, struct property *prop)
@@ -1837,7 +1837,7 @@ int __of_remove_property(struct device_node *np, struct property *prop)
 	return 0;
 }
 
-/**
+/*
  * of_remove_property - Remove a property from a node.
  *
  * Note that we don't actually remove it, since we have given out
@@ -2125,9 +2125,9 @@ EXPORT_SYMBOL_GPL(of_alias_get_highest_id);
 
 /**
  * of_console_check() - Test and setup console for DT setup
- * @dn - Pointer to device node
- * @name - Name to use for preferred console without index. ex. "ttyS"
- * @index - Index to use for preferred console.
+ * @dn: Pointer to device node
+ * @name: Name to use for preferred console without index. ex. "ttyS"
+ * @index: Index to use for preferred console.
  *
  * Check if the given device node matches the stdout-path property in the
  * /chosen node. If it does then register it as the preferred console and return
-- 
2.27.0

