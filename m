Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6371823111
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 12:13:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732457AbfETKMl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 06:12:41 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:43772 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732444AbfETKMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 06:12:37 -0400
Received: by mail-pf1-f196.google.com with SMTP id c6so6975712pfa.10
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 03:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HpWLJW0AsyMzUk7aFfWV1G46hR6bm2Fq1Ta1KdUw0ic=;
        b=DTIHo9/mhznHhmMPsPg2GreBFfHF6EqewzBibeH6J1rwd6xeG3CJaiSCAzzM0YX1tO
         rDYGkQdhqxkOfEx0wELCbz7sxgZ+bOojR87F94462mSYPW3J5rhmvbmhzad45atYa0WH
         9hO34uiRK2xFzSLn3r61HSZ0Ru7VfMkZcb3mClqKzRsMRRr9QQ8RtgBlhpuWyVBDiIRm
         enY5MU3j77jwUVAX0AOhzawX9LeWp4YlatlPNLWMFrmF2sBHw97X6F6PS++hkNI1XozR
         PNaWJDkBBRlDIPXBgEIjqdEHxh6uIZLsAT3Zqhjy0nijV3nkFeIYannK9MLNIPhACU2C
         l+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=HpWLJW0AsyMzUk7aFfWV1G46hR6bm2Fq1Ta1KdUw0ic=;
        b=Et6Vi9H2nvFU9lAJAwajTkHczPLlm/Gib+xKL/al60i6nAO7s15qgx8l3Bgl4wUA64
         sR1z4xAKH1D+RH03qP0zX1h+pOMp26x2/AEFqDxoVQnEx3ex/vTgjbK5g7q6sxE+E+3M
         CZh86YCpjuS/5NbQhHGLmkpKtDps5AVP9XefqS7ysipUI1dgqkHh0E9owiYUSZdQMX/l
         mlYWRQaxhHKBJFzgohZykhgRvS5YoZjyxohlTtYZKQhuDR9dt5314gdecQ2WWdbicbhY
         Q2RoPKhOorVS6fbKDCKgJq5wT44sPbG9O1n1EDMB7EdY7I3weqFhhj42bHXBomTjMsLN
         S9MQ==
X-Gm-Message-State: APjAAAU4twhw6cvZ0YjjRVsrZXt6NGDECXfdUuyNn3RFKMzzr+A/l3KR
        WpzlIxnvxmkXNjOIxgUSsitouA==
X-Google-Smtp-Source: APXvYqyKn94vJ5CsjPXp5irkHGu4cvwA/ruoAz5XoeRBKKfQeXMWlb5PC2WjqcZmRCe9cINHLnP+jA==
X-Received: by 2002:a63:e451:: with SMTP id i17mr74906860pgk.312.1558347156596;
        Mon, 20 May 2019 03:12:36 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
        by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.32
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 May 2019 03:12:36 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
Cc:     baolin.wang@linaro.org, vincent.guittot@linaro.org, arm@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 3/9] mmc: sdhci-sprd: Add optional gate clock support
Date:   Mon, 20 May 2019 18:11:56 +0800
Message-Id: <16b895cf30c235dc656eeed5888069b6266ab5f8.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For the Spreadtrum SC9860 platform, we should enable another gate clock
'2x_enable' to make the SD host controller work well.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/mmc/host/sdhci-sprd.c |   35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index e741491..31ba7d6 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -60,6 +60,7 @@ struct sdhci_sprd_host {
 	u32 version;
 	struct clk *clk_sdio;
 	struct clk *clk_enable;
+	struct clk *clk_2x_enable;
 	u32 base_rate;
 	int flags; /* backup of host attribute */
 };
@@ -364,6 +365,10 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	}
 	sprd_host->clk_enable = clk;
 
+	clk = devm_clk_get(&pdev->dev, "2x_enable");
+	if (!IS_ERR(clk))
+		sprd_host->clk_2x_enable = clk;
+
 	ret = clk_prepare_enable(sprd_host->clk_sdio);
 	if (ret)
 		goto pltfm_free;
@@ -372,6 +377,10 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_disable;
 
+	ret = clk_prepare_enable(sprd_host->clk_2x_enable);
+	if (ret)
+		goto clk_disable2;
+
 	sdhci_sprd_init_config(host);
 	host->version = sdhci_readw(host, SDHCI_HOST_VERSION);
 	sprd_host->version = ((host->version & SDHCI_VENDOR_VER_MASK) >>
@@ -408,6 +417,9 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_set_suspended(&pdev->dev);
 
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
+
+clk_disable2:
 	clk_disable_unprepare(sprd_host->clk_enable);
 
 clk_disable:
@@ -427,6 +439,7 @@ static int sdhci_sprd_remove(struct platform_device *pdev)
 	mmc_remove_host(mmc);
 	clk_disable_unprepare(sprd_host->clk_sdio);
 	clk_disable_unprepare(sprd_host->clk_enable);
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
 
 	mmc_free_host(mmc);
 
@@ -449,6 +462,7 @@ static int sdhci_sprd_runtime_suspend(struct device *dev)
 
 	clk_disable_unprepare(sprd_host->clk_sdio);
 	clk_disable_unprepare(sprd_host->clk_enable);
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
 
 	return 0;
 }
@@ -459,19 +473,28 @@ static int sdhci_sprd_runtime_resume(struct device *dev)
 	struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
 	int ret;
 
-	ret = clk_prepare_enable(sprd_host->clk_enable);
+	ret = clk_prepare_enable(sprd_host->clk_2x_enable);
 	if (ret)
 		return ret;
 
+	ret = clk_prepare_enable(sprd_host->clk_enable);
+	if (ret)
+		goto clk_2x_disable;
+
 	ret = clk_prepare_enable(sprd_host->clk_sdio);
-	if (ret) {
-		clk_disable_unprepare(sprd_host->clk_enable);
-		return ret;
-	}
+	if (ret)
+		goto clk_disable;
 
 	sdhci_runtime_resume_host(host);
-
 	return 0;
+
+clk_disable:
+	clk_disable_unprepare(sprd_host->clk_enable);
+
+clk_2x_disable:
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
+
+	return ret;
 }
 #endif
 
-- 
1.7.9.5

