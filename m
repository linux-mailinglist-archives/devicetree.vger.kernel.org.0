Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADCCD475D84
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:34:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244868AbhLOQeG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244873AbhLOQeE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 11:34:04 -0500
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85F26C06173E
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:34:04 -0800 (PST)
Received: by mail-qt1-x82b.google.com with SMTP id j17so22391737qtx.2
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F5dEv0XsUK/LL/vq8qVvTJtdjJBhL87KpYRMX7FjIi8=;
        b=xb1QzrqDInG7zJo6aTCTMBg4hrEF3y2HMXCaIoJSaeHnAgya6V4TRPENc+jqFultGZ
         sDRhR0OjbJlGm7G215+LxyMkINy61AsUQZEn0Ao1aNaV4sPJ8+Zpa0Ma7nKzg49ZKKoe
         enuP9YOUBvxG8qphe7Udvbvr/MFQygYa3pNUYMSzFbm3lbYM2uU1P0Mt+J0nhX+kEepU
         XpW0p7YUh6lNqNkiG5bVfEf+ygNNAFQBZnTPFYiYQt8S4gJ+l4RfJIyRsla5nQ54z0aS
         Y6LWkGcpT4B09b/HdChh5uPkoigOQ6YB9naSHHVKiFA5ZOLIlbVK62BNpTAVoQYWzKVp
         rqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F5dEv0XsUK/LL/vq8qVvTJtdjJBhL87KpYRMX7FjIi8=;
        b=jUWJmgsGrc+xjEhDFItlHm8ZGXI71AA3EP9f0sB23Zpj7XPrW0wV0BS5IKDGq+dR1A
         1YYG9ker7KVzKO3S8vxXfyiZF5ksMAQtVcIEH3ym3mDjjtL8QiuIMUZq5kCbRYSNXteN
         aUnYEtwrbkeoayi/swBJcaX4m8bd7AePlmTultmPQ/wlwDhlB9FZBprUJLimv/IE/ygj
         nNKZ0GOIKXcUco40GUK2Lk2MVdwglQd63BmeTmfm9HrMVPnEkbKQZ3L1wd9UoApClg2b
         1clwnfmVN0K5y+v8RjKGLNULeEx/bv8BpaLn+78tLGDQZfrirLbXAidn35ckpkHgiTyL
         sTBA==
X-Gm-Message-State: AOAM533+7zpAY80JyJNyYLKx8XxCbClkvJz/ew3NqS06fon5QXeoBIrf
        vIAmNNA68UXa9dMhZLNO2Vt4cg==
X-Google-Smtp-Source: ABdhPJzrT7H1kacCFJnt7pbm8rbdzKiRrak7rk2e1XT6elT+OOPo0lhOhbGy9bqx0wMXlDsVAIYTaA==
X-Received: by 2002:ac8:5bcc:: with SMTP id b12mr12984500qtb.249.1639586043584;
        Wed, 15 Dec 2021 08:34:03 -0800 (PST)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id w10sm1824832qtj.37.2021.12.15.08.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 08:34:03 -0800 (PST)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        daniel.lezcano@linaro.org, rafael@kernel.org, rui.zhang@intel.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [Patch v2 1/3] thermal: qcom: lmh: Add support for sm8150
Date:   Wed, 15 Dec 2021 11:33:58 -0500
Message-Id: <20211215163400.33349-2-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215163400.33349-1-thara.gopinath@linaro.org>
References: <20211215163400.33349-1-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible to support LMh for sm8150 SoC.
sm8150 does not require explicit enabling for various LMh subsystems.
Add a variable indicating the same as match data which is set for sdm845.
Execute the piece of code enabling various LMh subsystems only if
enable algorithm match data is present.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---

v1->v2:
	- Added LMH_ENABLE_ALGOS of_device_id match data to indicate
	  whether LMh subsytems need explicit enabling or not.

 drivers/thermal/qcom/lmh.c | 62 +++++++++++++++++++++-----------------
 1 file changed, 35 insertions(+), 27 deletions(-)

diff --git a/drivers/thermal/qcom/lmh.c b/drivers/thermal/qcom/lmh.c
index eafa7526eb8b..80d26d043498 100644
--- a/drivers/thermal/qcom/lmh.c
+++ b/drivers/thermal/qcom/lmh.c
@@ -28,6 +28,8 @@
 
 #define LMH_REG_DCVS_INTR_CLR		0x8
 
+#define LMH_ENABLE_ALGOS		((void *)1)
+
 struct lmh_hw_data {
 	void __iomem *base;
 	struct irq_domain *domain;
@@ -87,6 +89,7 @@ static int lmh_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
+	const struct of_device_id *of_id;
 	struct device_node *cpu_node;
 	struct lmh_hw_data *lmh_data;
 	int temp_low, temp_high, temp_arm, cpu_id, ret;
@@ -141,32 +144,36 @@ static int lmh_probe(struct platform_device *pdev)
 	if (!qcom_scm_lmh_dcvsh_available())
 		return -EINVAL;
 
-	ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_CRNT, LMH_ALGO_MODE_ENABLE, 1,
-				 LMH_NODE_DCVS, node_id, 0);
-	if (ret)
-		dev_err(dev, "Error %d enabling current subfunction\n", ret);
-
-	ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_REL, LMH_ALGO_MODE_ENABLE, 1,
-				 LMH_NODE_DCVS, node_id, 0);
-	if (ret)
-		dev_err(dev, "Error %d enabling reliability subfunction\n", ret);
-
-	ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_BCL, LMH_ALGO_MODE_ENABLE, 1,
-				 LMH_NODE_DCVS, node_id, 0);
-	if (ret)
-		dev_err(dev, "Error %d enabling BCL subfunction\n", ret);
-
-	ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_THERMAL, LMH_ALGO_MODE_ENABLE, 1,
-				 LMH_NODE_DCVS, node_id, 0);
-	if (ret) {
-		dev_err(dev, "Error %d enabling thermal subfunction\n", ret);
-		return ret;
-	}
-
-	ret = qcom_scm_lmh_profile_change(0x1);
-	if (ret) {
-		dev_err(dev, "Error %d changing profile\n", ret);
-		return ret;
+	of_id = of_match_device(dev->driver->of_match_table, dev);
+
+	if (of_id && of_id->data == LMH_ENABLE_ALGOS) {
+		ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_CRNT, LMH_ALGO_MODE_ENABLE, 1,
+					 LMH_NODE_DCVS, node_id, 0);
+		if (ret)
+			dev_err(dev, "Error %d enabling current subfunction\n", ret);
+
+		ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_REL, LMH_ALGO_MODE_ENABLE, 1,
+					 LMH_NODE_DCVS, node_id, 0);
+		if (ret)
+			dev_err(dev, "Error %d enabling reliability subfunction\n", ret);
+
+		ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_BCL, LMH_ALGO_MODE_ENABLE, 1,
+					 LMH_NODE_DCVS, node_id, 0);
+		if (ret)
+			dev_err(dev, "Error %d enabling BCL subfunction\n", ret);
+
+		ret = qcom_scm_lmh_dcvsh(LMH_SUB_FN_THERMAL, LMH_ALGO_MODE_ENABLE, 1,
+					 LMH_NODE_DCVS, node_id, 0);
+		if (ret) {
+			dev_err(dev, "Error %d enabling thermal subfunction\n", ret);
+			return ret;
+		}
+
+		ret = qcom_scm_lmh_profile_change(0x1);
+		if (ret) {
+			dev_err(dev, "Error %d changing profile\n", ret);
+			return ret;
+		}
 	}
 
 	/* Set default thermal trips */
@@ -213,7 +220,8 @@ static int lmh_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id lmh_table[] = {
-	{ .compatible = "qcom,sdm845-lmh", },
+	{ .compatible = "qcom,sdm845-lmh", .data = LMH_ENABLE_ALGOS},
+	{ .compatible = "qcom,sm8150-lmh", },
 	{}
 };
 MODULE_DEVICE_TABLE(of, lmh_table);
-- 
2.25.1

