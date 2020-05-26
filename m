Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4582B1B7AC6
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2020 17:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728455AbgDXPyP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Apr 2020 11:54:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728377AbgDXPyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Apr 2020 11:54:13 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB276C09B049
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2020 08:54:11 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id r26so11396701wmh.0
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2020 08:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/iFrHWjpEQFllhiousMPvh6YDgZDuc/kiivc+CfG0N0=;
        b=k2Jv5JZjKSfYr+XoQhrnCnBUBxfvlT9jRIOks01E1OALGMCFTUVTfzLu8e25uINL+s
         HcuzdygMlZpzicpal5ELlxboPiw6SJDZlwVP9ynqj76BcTroj8sTwPc7RkzjgZRfdnYa
         PK1eCAgOLeU7H/OKhtBbFq+5TGk7PPGgIIgWQ8+BLGvimEojnDyzt/nw5XoKifw8WAFZ
         RB/JqwfkewoWiG9Qpg3j24hjUy2RPJvrp/DuKTQi+zb6EvPQv5G7h4ZlF2xiA6AgUda8
         q1/ikJF7Xi1qpfLSR+GHuRZof2PVBg0YcJhMx6GJafk9kkt7n/j9poGgMvTury7LAyYk
         yLPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/iFrHWjpEQFllhiousMPvh6YDgZDuc/kiivc+CfG0N0=;
        b=pzQAfWO9ua70ACBHcs3+Ye8HXm/ZR81VWAqlWak22QXTDD4KTiK7WnysRg1SulUsdz
         kdg7tlQ43sIpKayjIjGztgctXV+TncfJwYKPDeLsh2bbsRyDpdb6TroKDjm+HwibOmNo
         6OUyZljwGkAemDs61tiZAErlXQ9xo14auFKlGV2Jxlw24Xq64C7Ka/8uVLEI3FNwgPrT
         nd47B2sEregH8wsVD+tuTqcxnnhpzv/a3VyOEG19ZV/Ap6RLpA+c/nOhxyZCDe6VSFzJ
         eJp5D81n4AfPWX5x5HWDk6JYEb8OtKcoGCYogMsYHF2E6+f+otPAVstoG5EODYPFT4tI
         +iBw==
X-Gm-Message-State: AGi0PuaRaCTueG9sIKRGIVb3IwniRlD/RzkmMQ7YJlfBqnpCM9kSMJk4
        pG9JkQwMueEoRFTSyEt9v4yzYA==
X-Google-Smtp-Source: APiQypIROfDOssqcbWL96GKP2rc2eEHRS78EvPMDS/ZDqonDkPwro+FUS8o6924bQXO5kPPmLk/CtA==
X-Received: by 2002:a1c:9a16:: with SMTP id c22mr10439609wme.38.1587743650649;
        Fri, 24 Apr 2020 08:54:10 -0700 (PDT)
Received: from localhost.localdomain ([87.120.218.65])
        by smtp.googlemail.com with ESMTPSA id z76sm3923583wmc.9.2020.04.24.08.54.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 08:54:10 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        robh+dt@kernel.org, rjw@rjwysocki.net, saravanak@google.com,
        sibis@codeaurora.org
Cc:     rnayak@codeaurora.org, bjorn.andersson@linaro.org,
        vincent.guittot@linaro.org, jcrouse@codeaurora.org,
        evgreen@chromium.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        georgi.djakov@linaro.org
Subject: [PATCH v7 3/7] interconnect: Add of_icc_get_by_index() helper function
Date:   Fri, 24 Apr 2020 18:54:00 +0300
Message-Id: <20200424155404.10746-4-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424155404.10746-1-georgi.djakov@linaro.org>
References: <20200424155404.10746-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the same as the traditional of_icc_get() function, but the
difference is that it takes index as an argument, instead of name.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
v7:
* Addressed review comments from Sibi.
* Re-based patch.

v2: https://lore.kernel.org/r/20190423132823.7915-3-georgi.djakov@linaro.org

 drivers/interconnect/core.c  | 68 +++++++++++++++++++++++++++---------
 include/linux/interconnect.h |  6 ++++
 2 files changed, 58 insertions(+), 16 deletions(-)

diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
index 2c6515e3ecf1..648237f4de49 100644
--- a/drivers/interconnect/core.c
+++ b/drivers/interconnect/core.c
@@ -351,9 +351,9 @@ static struct icc_node *of_icc_get_from_provider(struct of_phandle_args *spec)
 }
 
 /**
- * of_icc_get() - get a path handle from a DT node based on name
+ * of_icc_get_by_index() - get a path handle from a DT node based on index
  * @dev: device pointer for the consumer device
- * @name: interconnect path name
+ * @idx: interconnect path index
  *
  * This function will search for a path between two endpoints and return an
  * icc_path handle on success. Use icc_put() to release constraints when they
@@ -365,13 +365,12 @@ static struct icc_node *of_icc_get_from_provider(struct of_phandle_args *spec)
  * Return: icc_path pointer on success or ERR_PTR() on error. NULL is returned
  * when the API is disabled or the "interconnects" DT property is missing.
  */
-struct icc_path *of_icc_get(struct device *dev, const char *name)
+struct icc_path *of_icc_get_by_index(struct device *dev, int idx)
 {
 	struct icc_path *path = ERR_PTR(-EPROBE_DEFER);
 	struct icc_node *src_node, *dst_node;
 	struct device_node *np = NULL;
 	struct of_phandle_args src_args, dst_args;
-	int idx = 0;
 	int ret;
 
 	if (!dev || !dev->of_node)
@@ -391,12 +390,6 @@ struct icc_path *of_icc_get(struct device *dev, const char *name)
 	 * lets support only global ids and extend this in the future if needed
 	 * without breaking DT compatibility.
 	 */
-	if (name) {
-		idx = of_property_match_string(np, "interconnect-names", name);
-		if (idx < 0)
-			return ERR_PTR(idx);
-	}
-
 	ret = of_parse_phandle_with_args(np, "interconnects",
 					 "#interconnect-cells", idx * 2,
 					 &src_args);
@@ -439,12 +432,8 @@ struct icc_path *of_icc_get(struct device *dev, const char *name)
 		return path;
 	}
 
-	if (name)
-		path->name = kstrdup_const(name, GFP_KERNEL);
-	else
-		path->name = kasprintf(GFP_KERNEL, "%s-%s",
-				       src_node->name, dst_node->name);
-
+	path->name = kasprintf(GFP_KERNEL, "%s-%s",
+			       src_node->name, dst_node->name);
 	if (!path->name) {
 		kfree(path);
 		return ERR_PTR(-ENOMEM);
@@ -452,6 +441,53 @@ struct icc_path *of_icc_get(struct device *dev, const char *name)
 
 	return path;
 }
+EXPORT_SYMBOL_GPL(of_icc_get_by_index);
+
+/**
+ * of_icc_get() - get a path handle from a DT node based on name
+ * @dev: device pointer for the consumer device
+ * @name: interconnect path name
+ *
+ * This function will search for a path between two endpoints and return an
+ * icc_path handle on success. Use icc_put() to release constraints when they
+ * are not needed anymore.
+ * If the interconnect API is disabled, NULL is returned and the consumer
+ * drivers will still build. Drivers are free to handle this specifically,
+ * but they don't have to.
+ *
+ * Return: icc_path pointer on success or ERR_PTR() on error. NULL is returned
+ * when the API is disabled or the "interconnects" DT property is missing.
+ */
+struct icc_path *of_icc_get(struct device *dev, const char *name)
+{
+	struct device_node *np = NULL;
+	int idx = 0;
+
+	if (!dev || !dev->of_node)
+		return ERR_PTR(-ENODEV);
+
+	np = dev->of_node;
+
+	/*
+	 * When the consumer DT node do not have "interconnects" property
+	 * return a NULL path to skip setting constraints.
+	 */
+	if (!of_find_property(np, "interconnects", NULL))
+		return NULL;
+
+	/*
+	 * We use a combination of phandle and specifier for endpoint. For now
+	 * lets support only global ids and extend this in the future if needed
+	 * without breaking DT compatibility.
+	 */
+	if (name) {
+		idx = of_property_match_string(np, "interconnect-names", name);
+		if (idx < 0)
+			return ERR_PTR(idx);
+	}
+
+	return of_icc_get_by_index(dev, idx);
+}
 EXPORT_SYMBOL_GPL(of_icc_get);
 
 /**
diff --git a/include/linux/interconnect.h b/include/linux/interconnect.h
index d70a914cba11..34e97231a6ab 100644
--- a/include/linux/interconnect.h
+++ b/include/linux/interconnect.h
@@ -28,6 +28,7 @@ struct device;
 struct icc_path *icc_get(struct device *dev, const int src_id,
 			 const int dst_id);
 struct icc_path *of_icc_get(struct device *dev, const char *name);
+struct icc_path *of_icc_get_by_index(struct device *dev, int idx);
 void icc_put(struct icc_path *path);
 int icc_set_bw(struct icc_path *path, u32 avg_bw, u32 peak_bw);
 void icc_set_tag(struct icc_path *path, u32 tag);
@@ -46,6 +47,11 @@ static inline struct icc_path *of_icc_get(struct device *dev,
 	return NULL;
 }
 
+static inline struct icc_path *of_icc_get_by_index(struct device *dev, int idx)
+{
+	return NULL;
+}
+
 static inline void icc_put(struct icc_path *path)
 {
 }
