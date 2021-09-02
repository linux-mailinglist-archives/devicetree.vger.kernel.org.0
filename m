Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C7283FE7DA
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 04:55:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243331AbhIBC4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 22:56:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243307AbhIBC4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 22:56:32 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00EB7C061575
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 19:55:35 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id z15-20020a25868f000000b0059c56f47e94so676939ybk.21
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 19:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=g9pSyOxnjCOWosqjO3t3a4imI5grRUjzERw2nKICPFM=;
        b=Uz60v/HepgsdIMq6/b3xr9Y15p3q+GlRpCsECJtXu9BUJf8fX2QdSSEjlPkokaZaLP
         WFIqenWncZy6Rj5d/Ww/Lq72NR33+mAVdOkiQQlmniBSXvPL5bSaMRu8ifVYTD6c3DZI
         hKi9p+pPjhdIq3b0LQtFH81X9PqHj0GAzvoTmd9orzBSiDvnQrel9kR6B/4tmyH3714N
         clMneMSFs318vpYkFjcMTZh9VKAHeCQA6DmhvMqjjqOM2SiDTkRwqt5N2+T2FqYGYGsF
         4GajYutwb5iJAy7Y4Ay8NIkICWlwu8HUr3zIB9oKZFdognEeQbgk9cAUjx7oKmYfEvts
         gYJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=g9pSyOxnjCOWosqjO3t3a4imI5grRUjzERw2nKICPFM=;
        b=Z1eG3rxSvffFQN1aYG4n0luYlX68ehZhKzxDH6M1077DQNij8iRU3z/QXgZIazE/mk
         IQlyehoW5hGHT/45hlGypfy6x1lnpBNOaANuXRXheojtYN7vTUza+VMN2yF6FTapYyRx
         CmbudfsUtFA6jEC1qvGypFntcWrtJ/dWXbJxmxc9P/HI2E1Xx7cBtkDXnGW3T1iXpdjJ
         oI2r6Qg3halsOzCzuasqAqqvxr0ZSKdXnmQawWlDqc0yZev+Lp9GMdUzaEifsZ84c9Zi
         ueXfozH0XP9c20G69XzVINtBMR9g2dsBrOvOAd1xJ1y3Jin4Pur5U3cMvDc6RS0VPVqL
         wdzA==
X-Gm-Message-State: AOAM531h/kB/+vsqcYO6VBu9GR3uPuutxds6sV9p82Ks7xvmTsw7HMWs
        R3WN8sMn5r4iEfcCppCgr0ftDRCVK+rvbMk=
X-Google-Smtp-Source: ABdhPJyRB5mf+UxJSXvDkK4JLboJqCYcys9YaGzUBC7l8K4y81wcdm3OOQ8B/BqapBpkqtg7BloRSVCGz7fw4tg=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:17e:f0b7:5862:e47d])
 (user=saravanak job=sendgmr) by 2002:a25:becd:: with SMTP id
 k13mr1429669ybm.198.1630551334262; Wed, 01 Sep 2021 19:55:34 -0700 (PDT)
Date:   Wed,  1 Sep 2021 19:55:26 -0700
In-Reply-To: <20210902025528.1017391-1-saravanak@google.com>
Message-Id: <20210902025528.1017391-2-saravanak@google.com>
Mime-Version: 1.0
References: <20210902025528.1017391-1-saravanak@google.com>
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH v1 1/2] driver core: Add support for FWNODE_FLAG_NEVER_PROBES
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a fwnode flag to mark a device as one that will never be probed even
though it's added to a bus.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 8 ++++++++
 include/linux/fwnode.h | 8 +++++---
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index f6360490a4a3..5d14897a53e6 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -1719,6 +1719,14 @@ static int fw_devlink_create_devlink(struct device *con,
 	struct device *sup_dev;
 	int ret = 0;
 
+	/*
+	 * If the consumer or supplier is a device that'll never be probed,
+	 * don't create devices link for it.
+	 */
+	if (con->fwnode->flags & FWNODE_FLAG_NEVER_PROBES ||
+	    sup_handle->flags & FWNODE_FLAG_NEVER_PROBES)
+		return -EINVAL;
+
 	sup_dev = get_dev_from_fwnode(sup_handle);
 	if (sup_dev) {
 		/*
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 59828516ebaf..3ad667ae97d8 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -19,13 +19,15 @@ struct device;
 /*
  * fwnode link flags
  *
- * LINKS_ADDED:	The fwnode has already be parsed to add fwnode links.
- * NOT_DEVICE:	The fwnode will never be populated as a struct device.
- * INITIALIZED: The hardware corresponding to fwnode has been initialized.
+ * LINKS_ADDED:	 The fwnode has already be parsed to add fwnode links.
+ * NOT_DEVICE:	 The fwnode will never be populated as a struct device.
+ * INITIALIZED:  The hardware corresponding to fwnode has been initialized.
+ * NEVER_PROBES: The device that corresponds to this fwnode will never probe.
  */
 #define FWNODE_FLAG_LINKS_ADDED		BIT(0)
 #define FWNODE_FLAG_NOT_DEVICE		BIT(1)
 #define FWNODE_FLAG_INITIALIZED		BIT(2)
+#define FWNODE_FLAG_NEVER_PROBES	BIT(3)
 
 struct fwnode_handle {
 	struct fwnode_handle *secondary;
-- 
2.33.0.259.gc128427fd7-goog

