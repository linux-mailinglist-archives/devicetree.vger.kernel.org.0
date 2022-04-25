Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC36F50EA6D
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 22:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239066AbiDYUZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 16:25:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245328AbiDYUZV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 16:25:21 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBF5C12C41A
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:43 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id c190-20020a1c35c7000000b0038e37907b5bso272419wma.0
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pUlPI4V8y0jA00wHnfC+uOcvlIsr/c356N4se7BTI1o=;
        b=xPampHwEOvNqW/dpMuuecPF9ncCuBnCbh8gYn5//yPbRTIvJvnC7CWLmxShA1oF39j
         icNr6VbxM9qeDL5Ly/4rj52n4u5o8zEzjI+mASxpR2VomEBdlYsdP7DJiL7nJ70jBudh
         Zl1gQHxU/pQYdSjCuaLOvWbavOpM5eXsQY9Z8YCGSSpUgAsiD73RO/6GD/vISZaMlMe5
         DEV0BgYHZ2FT9Xi7XGP7YT7gUtBC3vOQikQ4THV7PcZ5wf0nJ79PSoE6AI+szXqSkisj
         b+kP7xrf7Fni5z1ovmweAZiiie77ZMwGw1VzLUOdJ9KnU/E5NstMqBVViHcubgS8fj0/
         DSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pUlPI4V8y0jA00wHnfC+uOcvlIsr/c356N4se7BTI1o=;
        b=xlozROzVldFerYeucVFmahLbsRg3B9Sc517xHtM3U6+xk2OWCzOG1zKAwmNktB0x6t
         NxHRl2Pli5LUtZV81WKz5I+yeUACqeAItLp5jYV9KVsxUgpX2677gkK+9DmTymmRha3D
         zxEqH7z57KKQ6HEnYLPCs9IgzuV8vbnXMrV/uskXQ+n+bOkLoRw+/CQwYTJHrstQ3hZO
         8uL3YASZ9Wb3aJ7q6asFSIaUWmgvzlKeF5ZG+yCaIdyIfXxJLdajOHyIcxnOCJzhh2fY
         MXMrMaJ/9Jm3jS9g5WiVv3i9LSmATXImLEYbX6/NxvcELMTzZkuP1GI5Pgkb1YbmyCrM
         8JhQ==
X-Gm-Message-State: AOAM532tDIQi6j/wWTfel0aoYJOecsNDWjei1ED6GyIa6AbqpK+iee97
        A49poe+P5Tza79dYB+kgASobJw==
X-Google-Smtp-Source: ABdhPJxiP+6kNXvL4c5W/UZKulvaF/zan8h9UyeMqOd6Vqk6EtMp9lnegC4nYlzjai1p6Oh6zwHXeA==
X-Received: by 2002:a7b:c4d1:0:b0:38e:c1a7:c796 with SMTP id g17-20020a7bc4d1000000b0038ec1a7c796mr27247794wmk.150.1650918102103;
        Mon, 25 Apr 2022 13:21:42 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 13:21:41 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 15/33] crypto: rockchip: use clk_bulk to simplify clock management
Date:   Mon, 25 Apr 2022 20:21:01 +0000
Message-Id: <20220425202119.3566743-16-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

rk3328 does not have the same clock names than rk3288, instead of using a complex
clock management, let's use clk_bulk to simplify their handling.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 66 ++++---------------------
 drivers/crypto/rockchip/rk3288_crypto.h |  6 +--
 2 files changed, 11 insertions(+), 61 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index a11a92e1f3fd..97ef59a36be6 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -22,47 +22,16 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
 {
 	int err;
 
-	err = clk_prepare_enable(dev->sclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock sclk\n",
-			__func__, __LINE__);
-		goto err_return;
-	}
-	err = clk_prepare_enable(dev->aclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock aclk\n",
-			__func__, __LINE__);
-		goto err_aclk;
-	}
-	err = clk_prepare_enable(dev->hclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock hclk\n",
-			__func__, __LINE__);
-		goto err_hclk;
-	}
-	err = clk_prepare_enable(dev->dmaclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
-			__func__, __LINE__);
-		goto err_dmaclk;
-	}
-	return err;
-err_dmaclk:
-	clk_disable_unprepare(dev->hclk);
-err_hclk:
-	clk_disable_unprepare(dev->aclk);
-err_aclk:
-	clk_disable_unprepare(dev->sclk);
-err_return:
+	err = clk_bulk_prepare_enable(dev->num_clks, dev->clks);
+	if (err)
+		dev_err(dev->dev, "Could not enable clock clks\n");
+
 	return err;
 }
 
 static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
 {
-	clk_disable_unprepare(dev->dmaclk);
-	clk_disable_unprepare(dev->hclk);
-	clk_disable_unprepare(dev->aclk);
-	clk_disable_unprepare(dev->sclk);
+	clk_bulk_disable_unprepare(dev->num_clks, dev->clks);
 }
 
 /*
@@ -257,27 +226,10 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->aclk = devm_clk_get(&pdev->dev, "aclk");
-	if (IS_ERR(crypto_info->aclk)) {
-		err = PTR_ERR(crypto_info->aclk);
-		goto err_crypto;
-	}
-
-	crypto_info->hclk = devm_clk_get(&pdev->dev, "hclk");
-	if (IS_ERR(crypto_info->hclk)) {
-		err = PTR_ERR(crypto_info->hclk);
-		goto err_crypto;
-	}
-
-	crypto_info->sclk = devm_clk_get(&pdev->dev, "sclk");
-	if (IS_ERR(crypto_info->sclk)) {
-		err = PTR_ERR(crypto_info->sclk);
-		goto err_crypto;
-	}
-
-	crypto_info->dmaclk = devm_clk_get(&pdev->dev, "apb_pclk");
-	if (IS_ERR(crypto_info->dmaclk)) {
-		err = PTR_ERR(crypto_info->dmaclk);
+	crypto_info->num_clks = devm_clk_bulk_get_all(&pdev->dev,
+						      &crypto_info->clks);
+	if (crypto_info->num_clks < 3) {
+		err = -EINVAL;
 		goto err_crypto;
 	}
 
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index ddbb9246ce16..28bf09fe1c1d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -190,10 +190,8 @@
 
 struct rk_crypto_info {
 	struct device			*dev;
-	struct clk			*aclk;
-	struct clk			*hclk;
-	struct clk			*sclk;
-	struct clk			*dmaclk;
+	struct clk_bulk_data		*clks;
+	int num_clks;
 	struct reset_control		*rst;
 	void __iomem			*reg;
 	int				irq;
-- 
2.35.1

