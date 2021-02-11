Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6981D319714
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 00:51:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230452AbhBKXuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 18:50:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230316AbhBKXtO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 18:49:14 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36490C061D7D
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:41 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id a24so2270525plm.11
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j+pNLbToLgdx106AOvWt9gZCfAGYBlkdberppemoXB8=;
        b=PgBkrZ6S9QNd1c222EuU5tDZ/KFOvbSt54l9FrE03eoiKhAFyfbxglppQkIBdDQ+sh
         cMGQmIG4Gd6H/PXQnTSw1HXhQk6OlJqooOE8viz0zLSvon8hPRcXfeSj/j8yPya+uv61
         +ZFHiWIwnRAnVG9mb/W0n2PuvyXZCD6tuMbpkhKCn+E/cBdgifw7+q66Hvy9HBTc6WFs
         Oc2M6h65eY7SN64Lb9ckO/4O2AqlemuqbJFTDIc9SlCc3M/QmGLIKWE0ACrt98vgpgiU
         SucdRGHwGC01TXNDppm6UEwQ/Kn8exbpEbsDOEdvHEhb7jSojnKYG6GezIk/9UQQfMGQ
         RgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j+pNLbToLgdx106AOvWt9gZCfAGYBlkdberppemoXB8=;
        b=AiZxnKXbHwZB30t64fCfvbegJjk1W1k7RCnrXxNwvD4b+p2IrpphRRzJIb/Vq2YEod
         iGAz749CF6FYX71JkGN8gFpoJivnh+at2eqxweQ4MWBAMpLeLBVGaKXWt6hFYtUrIqW+
         QqK96lTUBWlNmLu52164IXHvwdj1rbx+XejS2pNepxPsw2KiLiGfLGErR/IwbWud6sz+
         eedmoPy6jjqc311neJuLS8riirMEHxh6HtZcWN4pNqlVldVR9VpPYEUBQz75oLl90yIU
         BHVZ9ucA4948KHfZkN/duGmzFWK8Jc9snC99JMh9ses1sOvfnlIEbYO4aiQgmqd9V7uW
         F0kA==
X-Gm-Message-State: AOAM530d7RSxwQT9epStUcPwGtnbm1AuwfKbMWppMCcO+UFmDaDxuiH+
        wPWCH0zI//kl9tM8ZIwD4mhBKQ==
X-Google-Smtp-Source: ABdhPJyhSi+z3EpOLSBmKwtGZw5dqA3dXiU4Q1bIc7n6wom7HDxq1R9g+7X35d+c01Rw2UBwvcw9Fw==
X-Received: by 2002:a17:902:8d95:b029:e2:c956:f085 with SMTP id v21-20020a1709028d95b02900e2c956f085mr271805plo.35.1613087200695;
        Thu, 11 Feb 2021 15:46:40 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id iq6sm5932740pjb.6.2021.02.11.15.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 15:46:40 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        arnaud.pouliquen@st.com
Cc:     robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 12/19] remoteproc: Introduce function rproc_detach()
Date:   Thu, 11 Feb 2021 16:46:20 -0700
Message-Id: <20210211234627.2669674-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
References: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce function rproc_detach() to enable the remoteproc
core to release the resources associated with a remote processor
without stopping its operation.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
New for V5:
- Fixed comment about rproc_actuate() that no longer exists.
- Added call to rproc_unprepare_device() to balance rproc_prepare_device() in
  function rproc_attach().
- Removed RB from Peng and Arnaud because of the above.
---
 drivers/remoteproc/remoteproc_core.c | 66 +++++++++++++++++++++++++++-
 include/linux/remoteproc.h           |  1 +
 2 files changed, 66 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index b150138542d4..660dcc002ff6 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1712,7 +1712,7 @@ static int rproc_stop(struct rproc *rproc, bool crashed)
 /*
  * __rproc_detach(): Does the opposite of __rproc_attach()
  */
-static int __maybe_unused __rproc_detach(struct rproc *rproc)
+static int __rproc_detach(struct rproc *rproc)
 {
 	struct device *dev = &rproc->dev;
 	int ret;
@@ -1954,6 +1954,70 @@ void rproc_shutdown(struct rproc *rproc)
 }
 EXPORT_SYMBOL(rproc_shutdown);
 
+/**
+ * rproc_detach() - Detach the remote processor from the
+ * remoteproc core
+ *
+ * @rproc: the remote processor
+ *
+ * Detach a remote processor (previously attached to with rproc_attach()).
+ *
+ * In case @rproc is still being used by an additional user(s), then
+ * this function will just decrement the power refcount and exit,
+ * without disconnecting the device.
+ *
+ * Function rproc_detach() calls __rproc_detach() in order to let a remote
+ * processor know that services provided by the application processor are
+ * no longer available.  From there it should be possible to remove the
+ * platform driver and even power cycle the application processor (if the HW
+ * supports it) without needing to switch off the remote processor.
+ */
+int rproc_detach(struct rproc *rproc)
+{
+	struct device *dev = &rproc->dev;
+	int ret;
+
+	ret = mutex_lock_interruptible(&rproc->lock);
+	if (ret) {
+		dev_err(dev, "can't lock rproc %s: %d\n", rproc->name, ret);
+		return ret;
+	}
+
+	if (rproc->state != RPROC_RUNNING && rproc->state != RPROC_ATTACHED) {
+		ret = -EPERM;
+		goto out;
+	}
+
+	/* if the remote proc is still needed, bail out */
+	if (!atomic_dec_and_test(&rproc->power)) {
+		ret = -EBUSY;
+		goto out;
+	}
+
+	ret = __rproc_detach(rproc);
+	if (ret) {
+		atomic_inc(&rproc->power);
+		goto out;
+	}
+
+	/* clean up all acquired resources */
+	rproc_resource_cleanup(rproc);
+
+	/* release HW resources if needed */
+	rproc_unprepare_device(rproc);
+
+	rproc_disable_iommu(rproc);
+
+	/* Follow the same sequence as in rproc_shutdown() */
+	kfree(rproc->cached_table);
+	rproc->cached_table = NULL;
+	rproc->table_ptr = NULL;
+out:
+	mutex_unlock(&rproc->lock);
+	return ret;
+}
+EXPORT_SYMBOL(rproc_detach);
+
 /**
  * rproc_get_by_phandle() - find a remote processor by phandle
  * @phandle: phandle to the rproc
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index eff55ec72e80..e1c843c19cc6 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -662,6 +662,7 @@ rproc_of_resm_mem_entry_init(struct device *dev, u32 of_resm_idx, size_t len,
 
 int rproc_boot(struct rproc *rproc);
 void rproc_shutdown(struct rproc *rproc);
+int rproc_detach(struct rproc *rproc);
 int rproc_set_firmware(struct rproc *rproc, const char *fw_name);
 void rproc_report_crash(struct rproc *rproc, enum rproc_crash_type type);
 void rproc_coredump_using_sections(struct rproc *rproc);
-- 
2.25.1

