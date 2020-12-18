Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C4732DE815
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 18:35:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732311AbgLRRds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 12:33:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729999AbgLRRdr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Dec 2020 12:33:47 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D7EEC0611BB
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:36 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id z12so1670133pjn.1
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=veV/gWfMA9I6EK7puOMUDziv6Q4utmhzFu5s8pwfL6Y=;
        b=IsLC2tdb+Pf1zJzmBqdfU+7Lt9+J5U7obCdktnUBK+t6z1PscQocz5RbK7ptqQeZjh
         69aoGazTQg7QNqyHvMLxy/ABKuxk9AgbBGPQNYMDymkMmlRzPg86LNJ1joQmNVaCdlgP
         g3w1obCYUxvM5RqGHIxQQMzCWI9CVpB4UvfmRhn1kpc+pRnEsU7xDo7EdhO4SPqhHle4
         0hC5qeLZLQmoHqsR62Tjt1n6rFzv+0jyB/+ktGqldWh9wVVroMVkhLW6czNqzNSHOLXe
         W/4g2TJNzrN1P3SHIqN2FpEvfDWRqDJPIgIdT/bmTzzAeFqeuwhhze8+kFm6yPTSCDDR
         a8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=veV/gWfMA9I6EK7puOMUDziv6Q4utmhzFu5s8pwfL6Y=;
        b=IKrGpTOW1QJH2arZzlipLvHPxxPhDNDouQmSF0yh2OBfSWRtBajR3Ok1uyubF3G89x
         tvC+hdE6Lvz0I9PMVjBRI4490AU5pa3PojoyiRxu4GH9eH9Kc+rQiXiL4n6A2/kAIF8e
         1u6L5PSLliBJ3YkYhdpDNwLEeYy3sLEwf1G+lt5whBqsTiGABIkg6JcpyNV6x9ZgOoUy
         te/9WH1/AUZc7suMwmspyDaWGIuR6L2hkPhQX2HDaKg+cZdfjNYW1UHoDejcZ4CH21GJ
         gGEAudm1CkKQ6YN39yYTD+N2MwQV5PQG4iJql/Rri4F1v1PfzLkwpDe/x15syFjYJwWM
         jKQg==
X-Gm-Message-State: AOAM532r6ZFuVbk39IIZK5CX0suCRLQvJZVK6RC5QRrehVCDOUj/fV+v
        IpmlZE3GmdUPkHmojRj0SoDB+w==
X-Google-Smtp-Source: ABdhPJzHmw4O0E81CRBdka7o0ha8Z0dVqrVsPj5ehQXfwhJdIdMg9OLEWdMOvxuxH3LsQllACxmV0Q==
X-Received: by 2002:a17:90b:1249:: with SMTP id gx9mr5207245pjb.169.1608312755974;
        Fri, 18 Dec 2020 09:32:35 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id l11sm9892957pgt.79.2020.12.18.09.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 09:32:35 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 05/17] remoteproc: Add new get_loaded_rsc_table() remoteproc operation
Date:   Fri, 18 Dec 2020 10:32:16 -0700
Message-Id: <20201218173228.2277032-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
References: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an new get_loaded_rsc_table() operation in order to support
scenarios where the remoteproc core has booted a remote processor
and detaches from it.  When re-attaching to the remote processor,
the core needs to know where the resource table has been placed
in memory.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/remoteproc/remoteproc_core.c     | 6 ++++++
 drivers/remoteproc/remoteproc_internal.h | 8 ++++++++
 include/linux/remoteproc.h               | 5 ++++-
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index d0f6b39b56f9..3d87c910aca7 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1556,6 +1556,12 @@ static int rproc_attach(struct rproc *rproc)
 		return ret;
 	}
 
+	ret = rproc_get_loaded_rsc_table(rproc);
+	if (ret) {
+		dev_err(dev, "can't load resource table: %d\n", ret);
+		goto disable_iommu;
+	}
+
 	/* reset max_notifyid */
 	rproc->max_notifyid = -1;
 
diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
index c34002888d2c..c48b301d6ad1 100644
--- a/drivers/remoteproc/remoteproc_internal.h
+++ b/drivers/remoteproc/remoteproc_internal.h
@@ -177,6 +177,14 @@ struct resource_table *rproc_find_loaded_rsc_table(struct rproc *rproc,
 	return NULL;
 }
 
+static inline int rproc_get_loaded_rsc_table(struct rproc *rproc)
+{
+	if (rproc->ops->get_loaded_rsc_table)
+		return rproc->ops->get_loaded_rsc_table(rproc);
+
+	return 0;
+}
+
 static inline
 bool rproc_u64_fit_in_size_t(u64 val)
 {
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 3fa3ba6498e8..571615e77e6f 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -368,7 +368,9 @@ enum rsc_handling_status {
  * RSC_HANDLED if resource was handled, RSC_IGNORED if not handled and a
  * negative value on error
  * @load_rsc_table:	load resource table from firmware image
- * @find_loaded_rsc_table: find the loaded resouce table
+ * @find_loaded_rsc_table: find the loaded resource table from firmware image
+ * @get_loaded_rsc_table: get resource table installed in memory
+ *			  by external entity
  * @load:		load firmware to memory, where the remote processor
  *			expects to find it
  * @sanity_check:	sanity check the fw image
@@ -389,6 +391,7 @@ struct rproc_ops {
 			  int offset, int avail);
 	struct resource_table *(*find_loaded_rsc_table)(
 				struct rproc *rproc, const struct firmware *fw);
+	int (*get_loaded_rsc_table)(struct rproc *rproc);
 	int (*load)(struct rproc *rproc, const struct firmware *fw);
 	int (*sanity_check)(struct rproc *rproc, const struct firmware *fw);
 	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
-- 
2.25.1

