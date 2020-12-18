Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 714B12DE82E
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 18:35:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732837AbgLRReY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 12:34:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732831AbgLRReW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Dec 2020 12:34:22 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABDE6C061A48
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:45 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id g18so1759405pgk.1
        for <devicetree@vger.kernel.org>; Fri, 18 Dec 2020 09:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uKSTphgWknohNFtSvHeL9OjdtOYRpK15kmrAWNQQraE=;
        b=Sgu23wLrVw115S9/YyqCMr2Y0KfHFTxj1vMq0A1WmMhO7T3Z3IYbXsGL9fZ9vZpWV+
         NwvwjEizp4EZgh5DHKkTO+7opKvFbblxnzEKwtbWFxMdGkeSl34oRCksoIWEySV1QSXW
         XOMLxcxDPy/6TNC6cCL1lYiaRLXsjbb7O9Ubco0yEr39D99u5hoXsmke5LvldHNQhp46
         YLb9nLKZFhQPXwmBCeLkmU6u2ZzV+25hq7ODVyshWIYIjNS+F5/bkEq/Ms+icIF0ismk
         0Xb6XXvH1CH9opA0XIjWOq2BrhSF0Cs6RBbq4RUU2KLCUBFedI0ujuavSJ51FAex/r7V
         3JNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uKSTphgWknohNFtSvHeL9OjdtOYRpK15kmrAWNQQraE=;
        b=MUetgUzsY4+qC/qYp8KV9VM5QyzEsVqjwP42lH2GNYtPfGektdfxZ/hUB1PcTF5HAw
         KHYJOvKGPmB7WmqkBG7fbK2HmrOEoN7GAG2MdRIfkBYLdIWFEzpoD9c8tlMatXcEJkYW
         zi2EOGDaXrROJ3bjgu8cHRa/9jl4ekgi1JmmjXwM8caRtoXn9EbVLc2E1FxmG+gTsFjd
         lcgiEcOtdCvibVRWTvXEyD9U9pGD6XLzWuqbl6fY/Tk70kQX6WSG0+jt0khO2BjpE2hn
         ErOzl367pzyrTVliQPGk+uYnfsopEc2kbY/A3GOz0634QKwG/MIvG30UVfH/hYah+ZKp
         AfxQ==
X-Gm-Message-State: AOAM531VRcz51Udxh5iBCaNZqSLJYXGmUYj4ACpCjQj6M0l/5Z0f0hfA
        qACvYb7mAWpPEwfICug41QO2T5jUmWGt/8Hl
X-Google-Smtp-Source: ABdhPJxvEiUvC4NMjZYIqkx7yflVwE+0LHTRmVO1sN51YXmbr6EuTkm70GnXFugiDs6d8eKiUvaawg==
X-Received: by 2002:a62:1749:0:b029:19d:960c:1bb8 with SMTP id 70-20020a6217490000b029019d960c1bb8mr5302964pfx.63.1608312765271;
        Fri, 18 Dec 2020 09:32:45 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id l11sm9892957pgt.79.2020.12.18.09.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 09:32:44 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     arnaud.pouliquen@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 13/17] remoteproc: Add return value to function rproc_shutdown()
Date:   Fri, 18 Dec 2020 10:32:24 -0700
Message-Id: <20201218173228.2277032-14-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
References: <20201218173228.2277032-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a return value to function rproc_shutdown() in order to
properly deal with error conditions that may occur.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_core.c | 19 ++++++++++++++-----
 include/linux/remoteproc.h           |  2 +-
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index ece3f15070b9..90057ad1bb6c 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1886,7 +1886,7 @@ EXPORT_SYMBOL(rproc_boot);
  *   returns, and users can still use it with a subsequent rproc_boot(), if
  *   needed.
  */
-void rproc_shutdown(struct rproc *rproc)
+int rproc_shutdown(struct rproc *rproc)
 {
 	struct device *dev = &rproc->dev;
 	int ret;
@@ -1894,15 +1894,19 @@ void rproc_shutdown(struct rproc *rproc)
 	ret = mutex_lock_interruptible(&rproc->lock);
 	if (ret) {
 		dev_err(dev, "can't lock rproc %s: %d\n", rproc->name, ret);
-		return;
+		return ret;
 	}
 
-	if (rproc->state != RPROC_RUNNING)
+	if (rproc->state != RPROC_RUNNING) {
+		ret = -EPERM;
 		goto out;
+	}
 
 	/* if the remote proc is still needed, bail out */
-	if (!atomic_dec_and_test(&rproc->power))
+	if (!atomic_dec_and_test(&rproc->power)) {
+		ret = -EBUSY;
 		goto out;
+	}
 
 	ret = rproc_stop(rproc, false);
 	if (ret) {
@@ -1914,7 +1918,11 @@ void rproc_shutdown(struct rproc *rproc)
 	rproc_resource_cleanup(rproc);
 
 	/* release HW resources if needed */
-	rproc_unprepare_device(rproc);
+	ret = rproc_unprepare_device(rproc);
+	if (ret) {
+		atomic_inc(&rproc->power);
+		goto out;
+	}
 
 	rproc_disable_iommu(rproc);
 
@@ -1924,6 +1932,7 @@ void rproc_shutdown(struct rproc *rproc)
 	rproc->table_ptr = NULL;
 out:
 	mutex_unlock(&rproc->lock);
+	return ret;
 }
 EXPORT_SYMBOL(rproc_shutdown);
 
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index 65ece6f177b7..aa5bceb72015 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -658,7 +658,7 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
 			     u32 da, const char *name, ...);
 
 int rproc_boot(struct rproc *rproc);
-void rproc_shutdown(struct rproc *rproc);
+int rproc_shutdown(struct rproc *rproc);
 int rproc_detach(struct rproc *rproc);
 int rproc_set_firmware(struct rproc *rproc, const char *fw_name);
 void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type);
-- 
2.25.1

