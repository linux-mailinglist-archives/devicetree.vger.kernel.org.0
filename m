Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 789B042BE66
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 13:00:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234118AbhJMLCS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 07:02:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbhJMLBr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 07:01:47 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24000C0613B0
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:57:18 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id w14so1549969pll.2
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GmspT9v4sA/scFmja8QBhp8iujwCZQoVmVVy3lhUAPw=;
        b=GzaFZFELa5u5ICSJTCgBw25KydWG7aF9ucRHVeV27g18BGy45TJtjNp97c/wq9CJwn
         10h4ly/cYuxAUfENyX4RELnfsqzDXLdP33/jBp1GFLNon4519yy5PJqds3ukem36gMEn
         ZpsSITqxK1kEldtF/zg6UUJqYN2Smsulg/0+Qhka7M0caGo+GdGgKUQlX+ND45l4UsKP
         ahZz4CAOxNVXdzd/9nQa131A3Ql8jK6fZxQ6fcRMfGJ9cNB+FR8dCxseM5/oVmVbioau
         PsWNpRoeTgzuMp1W0ojfKaOj5bVSUalEfgx3cA/+ncpVRu6J4fsOWLsoUQQ7ECBM+s1x
         g1+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GmspT9v4sA/scFmja8QBhp8iujwCZQoVmVVy3lhUAPw=;
        b=mv4izSdaHPI8HlYJ3bO+WdndhvZEj4Bq2vbmPdO3I9tz7DO2UgaQ5IvhVigCi1+fcE
         kjZJgyXW9WW5pstSZ1RpYa+QDIb3sMQh/lsJkdyhcyw4/tq/z49AjjxAgHKqj4AnY0ok
         HNwHLdFTD/Wxq5vL8djay9YcH3fDA7h7CtM8XPlE8w+eVPNEx95U/dtnzsX4jhekgEO4
         qfAGr78Jq0110ryZbKCcokbX21fH+OJfUKsmo+c40/6y/rAU1S6KqhIGYsYL6bl1Mj6P
         fANHrigSgR2mTSeZWY2icC1h02MwCej5RYFBPnUqDpOHJTQd4U9h05dvyLISw3xFhcju
         yZug==
X-Gm-Message-State: AOAM533X4Xd309MOuaqa33nYdb/eyQvFeB5wYJxjr9TNMDtngXVXybgM
        +USPWqWw56EyG2ibigxO7W0T4Q==
X-Google-Smtp-Source: ABdhPJzmSj2IalSjIh3ROQZUOOW9esrWa3UxvoxBfYyLPiGIK6oNIqQjChFfkhTVnJBpYE7NL6cM5A==
X-Received: by 2002:a17:90b:4b89:: with SMTP id lr9mr12677708pjb.11.1634122637643;
        Wed, 13 Oct 2021 03:57:17 -0700 (PDT)
Received: from localhost.name ([122.161.48.68])
        by smtp.gmail.com with ESMTPSA id b13sm6155351pjl.15.2021.10.13.03.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 03:57:17 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v4 18/20] crypto: qce: Defer probing if BAM dma channel is not yet initialized
Date:   Wed, 13 Oct 2021 16:25:39 +0530
Message-Id: <20211013105541.68045-19-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the Qualcomm qce crypto driver needs the BAM dma driver to be
setup first (to allow crypto operations), it makes sense to defer
the qce crypto driver probing in case the BAM dma driver is not yet
probed.

Move the code leg requesting dma channels earlier in the
probe() flow. This fixes the qce probe failure issues when both qce
and BMA dma are compiled as static part of the kernel.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/crypto/qce/core.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index cb8c77709e1e..c6f686126fc9 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -209,9 +209,19 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	if (ret < 0)
 		return ret;
 
+	/* qce driver requires BAM dma driver to be setup first.
+	 * In case the dma channel are not set yet, this check
+	 * helps use to return -EPROBE_DEFER earlier.
+	 */
+	ret = qce_dma_request(qce->dev, &qce->dma);
+	if (ret)
+		return ret;
+
 	qce->mem_path = of_icc_get(qce->dev, "memory");
-	if (IS_ERR(qce->mem_path))
+	if (IS_ERR(qce->mem_path)) {
+		qce_dma_release(&qce->dma);
 		return PTR_ERR(qce->mem_path);
+	}
 
 	qce->core = devm_clk_get_optional(qce->dev, "core");
 	if (IS_ERR(qce->core)) {
@@ -247,10 +257,6 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_clks_iface;
 
-	ret = qce_dma_request(qce->dev, &qce->dma);
-	if (ret)
-		goto err_clks;
-
 	ret = qce_check_version(qce);
 	if (ret)
 		goto err_clks;
@@ -265,12 +271,10 @@ static int qce_crypto_probe(struct platform_device *pdev)
 
 	ret = qce_register_algs(qce);
 	if (ret)
-		goto err_dma;
+		goto err_clks;
 
 	return 0;
 
-err_dma:
-	qce_dma_release(&qce->dma);
 err_clks:
 	clk_disable_unprepare(qce->bus);
 err_clks_iface:
-- 
2.31.1

