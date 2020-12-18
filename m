Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F62F2DE844
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 18:36:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725932AbgLRRfG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 12:35:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732696AbgLRReH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Dec 2020 12:34:07 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 290B7C0619DF
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:41 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id g18so1759266pgk.1
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S1HgCKBSeYWceu/5Tsos67As2E/8FgrkAm9u2K2eWO4=;
        b=K3x5/W+4ULJWJq8l1Xd1CrmV5GLr2egnactNfaaxBBudoYDP98hWuY9AKWADXn3sNo
         rg8GirM0BO7YfJ6Xx/jTtMdlMnhoP1HC1SMcRAlMtni21IomvYF98rQ9V5uYtB7P8fuw
         jK05p4Xz1+HGRGpohfJXxFPnqPXtoFsL2qlnqbf/diJ+x+XukYL95mfJNYxypHI2uybz
         VB0lkh1qPoU3TrgQXk8THBwebaCScTknt+tyZqOAar1y0PXPA9m+rb7hhm4ieF7vVO1W
         FOoHkIvQup28bX6TAzsW4LKjS/884fW9yO5LVDXkBrbfvRDWrspz/gugSNIaOkDb40I9
         vdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S1HgCKBSeYWceu/5Tsos67As2E/8FgrkAm9u2K2eWO4=;
        b=sqwEtZ0jan/qqVD1aKFsEkvgj3axoo8+Y9odJyDAmvvwBrXsJ5PC+D0mvVb6qcCZmX
         +6gcLaRS0g0OutTcLEZCtCpUm+UNU4wRzs81LupGT1+HB2NfiQtasM2AV+sWrapXbax/
         W82OLDnBQ9jHl3shcwP0HGnBBZE432X2qPX27b9QXGP40dT9ferOR7N44cx6oE2XOfh1
         rCj6n+gJ2GIncjBY7CsCGnlAkuHDFHNkGGumufSHEx/pZhkRbZZSNZlQmAKydsd7QAJ2
         4sMwcnm1MTmFwfzKzsnfxtxv7jdq1JUY0SiwtEpjTa/bbDxl1H+Awv1kIgJuO6vNJZ7X
         RSow==
X-Gm-Message-State: AOAM532LiPAzFKDgRUhI/JW3uddwPLc4uyk8SzDKKf3KvJ5Fj5XJofZL
        vG8vatHLDQo85ZBwFo+liqIhUw==
X-Google-Smtp-Source: ABdhPJz0u6bhRN0P+E0shxtDgSEotIsq6JFr2tK1pJBY/vhdVJJ5rnIxc8u9MwxAcby/zCik8akL1A==
X-Received: by 2002:a62:19cc:0:b029:19e:321b:a22e with SMTP id 195-20020a6219cc0000b029019e321ba22emr4824607pfz.73.1608312760748;
        Fri, 18 Dec 2020 09:32:40 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id l11sm9892957pgt.79.2020.12.18.09.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 09:32:40 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 09/17] remoteproc: Properly deal with a kernel panic when attached
Date:   Fri, 18 Dec 2020 10:32:20 -0700
Message-Id: <20201218173228.2277032-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
References: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The panic handler operation of registered remote processors
should also be called when remote processors have been
attached to.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 19545b7925e2..fc28053c7f89 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -2414,7 +2414,11 @@ static int rproc_panic_handler(struct notifier_block *nb, unsigned long event,
 
 	rcu_read_lock();
 	list_for_each_entry_rcu(rproc, &rproc_list, node) {
-		if (!rproc->ops->panic || rproc->state != RPROC_RUNNING)
+		if (!rproc->ops->panic)
+			continue;
+
+		if (rproc->state != RPROC_RUNNING &&
+		    rproc->state != RPROC_ATTACHED)
 			continue;
 
 		d = rproc->ops->panic(rproc);
-- 
2.25.1

