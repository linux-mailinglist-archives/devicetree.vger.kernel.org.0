Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54FFC4E316C
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 21:10:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352980AbiCUUJz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 16:09:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353001AbiCUUJm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 16:09:42 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1C242606
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:08:02 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v22so8308460wra.2
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TC2ukNpjnca3/C/2NpZDQj5qjEIJ5Lf4AutHU4Vrcn0=;
        b=VL1++qWq+V/AY+U1OwOt2RXityXZahi+1XI8ynS0pv6KFqc45EOtiW+MTLa1cu01bp
         SfRJ0DDCpB6kgyFj5aViXSnqxqcYwjw88kTO/EJ2DYGYL3LditWQBolYH21wuFtAomwa
         9fh8fKH61kDT3LsZPRSDplVpnFzEIjEWQsb00G6Mrg/Davzbwc87OSsLCq1zp2Btp4u2
         HEOMzmAAi5w2A0Xthpx3BZtJacIq8RtuuIk4V235lsjY5mRnrmguybNdh3rBqlrN+L6w
         LbdpVp8XTkDEjhKB1SgK5f3vBUCGuNcW43f+JDfzuaummMyZN/yf+XE9OVTsChKsqwoN
         VWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TC2ukNpjnca3/C/2NpZDQj5qjEIJ5Lf4AutHU4Vrcn0=;
        b=FwTfsM5/FgQOESDW6+Fl1PsBYdB1Tg/XuBZUn5+r0Q22+IhMf1QIKAk95TmmmrtHRo
         CS7R4l2sBBc9O3P482RKMPffzYrf1n2KXjBJVVBaQ+ckFqCln1oPVRPOgxBcX5wctbfp
         QSh0JQIcqsOOnMpE50add//roEmACZQSQvyAGyObSTKGc5Yn7hgJDh5jjldLwCAe4egC
         8hNqJDmTVAPFO4v+kZyv6/eDVYKanus1yQ48xjjUByhOG/nKuc2g4RBp2ev5I5QsPHeS
         /zYiGHwILMj1AzoW35RU4asLOy8xjnaB7Lph4+mRAm/la++j4nKe5ixGafEOWB4RKbmS
         l2Kg==
X-Gm-Message-State: AOAM530mBYKg5ZlTgd5EyZ5Zr3kWzbCd4obfRliaFofoLxLGps6wRcH1
        3L2ffGB21A8Kvql1YJpf4uyRmQ==
X-Google-Smtp-Source: ABdhPJxnHLouyElDQFO1AvalQF392AVWAvEZN6CoSfdeQNnoN6hQ5PZK3LK6wUdDa4lf2qX3bPSwgw==
X-Received: by 2002:a05:6000:388:b0:204:445:6a56 with SMTP id u8-20020a056000038800b0020404456a56mr8931941wrf.372.1647893281110;
        Mon, 21 Mar 2022 13:08:01 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 13:08:00 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 15/26] crypto: rockchip: use clk_bulk to simplify clock management
Date:   Mon, 21 Mar 2022 20:07:28 +0000
Message-Id: <20220321200739.3572792-16-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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
index 6a1f09d409bf..b6cd67d1d0cb 100644
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
2.34.1

