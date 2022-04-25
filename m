Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06CDF50EA5D
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 22:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238273AbiDYUZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 16:25:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245309AbiDYUZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 16:25:18 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF14412B440
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:42 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id k2so2043144wrd.5
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
        b=PF1zI95b49yWI+mnHScTa0xQUyNrVzG+3/JzFircumtVU8P9BWpymUIILCqS09uDbH
         p18rzBQCQEAxWcYqIqgRLH6cd4hahqCRPjLPFPKWVgruSgGBRoNTNk3H3iNmti2pxEpB
         3daWEmaPwXma4qhCAH02b+wrl9fi86NpXq8qfAprA8uXvfQ5qWijMjjk0FjsDE8aLVr4
         237kKFYg666EcgwzcZVGjvk3bae9IeJrRbFneqRIko8ra5FtS9t4wxEf0JNauFxmvrI4
         0WrtMbhfZwSBv/Yp/OfTcGsxYAu7q/wEMaOfz2H3h8hwGFkvXcKI2aqMR67kHFGN6BCz
         B0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
        b=a7ALnqMVwYdjFMMD41UifyZYFXLVN5zgfiVCD12EdGVPYm5DEOyCI0TtpAJRxy423B
         qvEZQJ1S6eRgKmAWTa+4AeFFCMv68k2N+0ksATQWlBwHyucQ/WtQAoZGemarLO8BpFVK
         a1pNsVonucwEXS7f9DPNe3RZthQhYO10+hFmq+eHwKcFKc5Y65pPClSgiuBzxBsZul8y
         pvnpq241OMeaanBllT6J9wwSt+RkFM0HIA3jkg7bfcn92+vVdt+rb2yKNKtyKWfBDMF6
         Tmnv0elsBvE0+OYjfft++PJNruPah1hrICIXYmIb+4puYH0cy87s5qC10K0zj6jwAz8P
         yzAQ==
X-Gm-Message-State: AOAM533h03yKeTNpOuoq26DXf+ovESpozjpQiFiUZo1og6maqn1Pv5dq
        caqEMGnXZ3m8Yvuo977sbPmy4g==
X-Google-Smtp-Source: ABdhPJyALsJcalzGMaIk+TyI2QpcwxPUZ1lkje01D9V37WU9soehA4t9yZ/vHK0Gho1nucCKItKPRQ==
X-Received: by 2002:a5d:4311:0:b0:205:f439:cbf0 with SMTP id h17-20020a5d4311000000b00205f439cbf0mr15952343wrq.164.1650918101249;
        Mon, 25 Apr 2022 13:21:41 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 13:21:40 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 14/33] crypto: rockchip: handle reset also in PM
Date:   Mon, 25 Apr 2022 20:21:00 +0000
Message-Id: <20220425202119.3566743-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

reset could be handled by PM functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d9258b9e71b3..a11a92e1f3fd 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -73,6 +73,8 @@ static int rk_crypto_pm_suspend(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_assert(rkdev->rst);
+
 	rk_crypto_disable_clk(rkdev);
 	return 0;
 }
@@ -81,6 +83,8 @@ static int rk_crypto_pm_resume(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_deassert(rkdev->rst);
+
 	return rk_crypto_enable_clk(rkdev);
 }
 
@@ -222,13 +226,6 @@ static void rk_crypto_unregister(void)
 	}
 }
 
-static void rk_crypto_action(void *data)
-{
-	struct rk_crypto_info *crypto_info = data;
-
-	reset_control_assert(crypto_info->rst);
-}
-
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
 	{}
@@ -254,14 +251,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	reset_control_assert(crypto_info->rst);
-	usleep_range(10, 20);
-	reset_control_deassert(crypto_info->rst);
-
-	err = devm_add_action_or_reset(dev, rk_crypto_action, crypto_info);
-	if (err)
-		goto err_crypto;
-
 	crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(crypto_info->reg)) {
 		err = PTR_ERR(crypto_info->reg);
-- 
2.35.1

