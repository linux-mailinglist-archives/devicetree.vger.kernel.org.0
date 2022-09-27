Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0B135EBC3F
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 09:57:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231497AbiI0H5H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 03:57:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231417AbiI0H4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 03:56:21 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D6F5AB424
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:55:49 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so4991491wmb.0
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=5JnoAw4X1z7bCscIjsjfjSMoE54Bwt7ulA7ZsyJ5jyg=;
        b=BAEIwPdPo97GcH+1wCKYAvWzAKOymsVbLsGocAIxNn6gxhCoMqYd5T+1ct3/STEMc0
         P88AJfOkg1nRgg3ELPKYgEXSPs5bG5jfe34eznuA2GSLRs6cT0awTDEFkjwoDio3bJsh
         gHJiOv2k2UKAV7JkG4LPvNvA/kNpHHClPSdyDK1q4ZZoihg45ujIrrJYViNPRmip1yiS
         GbAVKvWMtHaPz4BoVgnl114K/5Y19j3p5Rtg84C8YwjhtW4JFbowgU4NHcUbw/sEM2EU
         owzHS9E+tJGEgHZnC24mSqSaKbeEz4Hn4YbSmGsp5KZduNJiI+s5oEwacyOvdAGsgUJP
         vwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5JnoAw4X1z7bCscIjsjfjSMoE54Bwt7ulA7ZsyJ5jyg=;
        b=Tb50yK6c+bzZesb53MKkVLRmVmg32DVt4SHWdaS7NaLSOreR3v/1hP6y71rqnePnWB
         JE+IZsEVPROkjeNRy0cNNanuO4DswFAtyBkMwYBNqBOqzBqZI+HV3FD8lsM4vmRuF7Nc
         Jv/gzWdft+11UJKCluQ+m+pV+/9mCS3449ZeIYkpHE4V8p8gVi1hU7Ub37ECmYCrjZfU
         Pz7TsgpSKZlCY8VzlA2Xe8u5Y0jV0YQxmcGK18KLitoc+fTyTBRKUN0stLiNyqsoM+AX
         h1r2VzfNMzQuD3fp94NSi4KNAZM+/dP6VE0Szu4XqLvWSlzc5kOyNe16cABdojFxX1ll
         98tg==
X-Gm-Message-State: ACrzQf1iBS5rHtm2cRlEyjj+x9//CuIhzlpgOTnDOV1nAbwMFUuZ/CG6
        ewrE4lbDCge9Xgnn7Oyhx2iQjA==
X-Google-Smtp-Source: AMsMyM4uL0HObRJBotMMVGLYbEpvjLQleTH4GKMAsTIxMiv2kESR0p82m1H8rmbo2gqmUlSYI2Y8FQ==
X-Received: by 2002:a05:600c:1f05:b0:3b4:ae0a:b2e5 with SMTP id bd5-20020a05600c1f0500b003b4ae0ab2e5mr1691511wmb.104.1664265348751;
        Tue, 27 Sep 2022 00:55:48 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:48 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, ardb@kernel.org, davem@davemloft.net,
        herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 14/33] crypto: rockchip: handle reset also in PM
Date:   Tue, 27 Sep 2022 07:54:52 +0000
Message-Id: <20220927075511.3147847-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
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
We keep the initial reset pulse to be sure the hw is a know device state
after probe.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d9258b9e71b3..399829ef92e0 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -74,14 +74,23 @@ static int rk_crypto_pm_suspend(struct device *dev)
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
 	rk_crypto_disable_clk(rkdev);
+	reset_control_assert(rkdev->rst);
+
 	return 0;
 }
 
 static int rk_crypto_pm_resume(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
+	int ret;
+
+	ret = rk_crypto_enable_clk(rkdev);
+	if (ret)
+		return ret;
+
+	reset_control_deassert(rkdev->rst);
+	return 0;
 
-	return rk_crypto_enable_clk(rkdev);
 }
 
 static const struct dev_pm_ops rk_crypto_pm_ops = {
@@ -222,13 +231,6 @@ static void rk_crypto_unregister(void)
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
@@ -258,10 +260,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 	usleep_range(10, 20);
 	reset_control_deassert(crypto_info->rst);
 
-	err = devm_add_action_or_reset(dev, rk_crypto_action, crypto_info);
-	if (err)
-		goto err_crypto;
-
 	crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(crypto_info->reg)) {
 		err = PTR_ERR(crypto_info->reg);
-- 
2.35.1

