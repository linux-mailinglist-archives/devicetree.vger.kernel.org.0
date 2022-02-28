Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 379154C7907
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 20:49:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbiB1Trv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 14:47:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229600AbiB1Tro (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 14:47:44 -0500
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B04B22017ED
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 11:45:56 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id 10-20020a05600c26ca00b003814df019c2so52934wmv.3
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 11:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F29NhyhRGwZzMFTx8mQRXilZvucaQuN0j6i5TN7/b3I=;
        b=VQXUifG0yVtXpgJZZlDW91n8TBcQ1Gf9UgRoho0rrVVplb120K1t18s+NcwxGoAbNz
         Xe55meGo81BEee65Kzi+Ql5BTOQd+Lx8hvBQyv8mfzgPGBC6goTuMfWnxWPjAEmdbV7D
         n4fUJsNoy8SMxorYJ6sL2nUqVxgWgonj9Z3ak1OSQRVHDKVq+C9zIDhbDvwPDqhs3YgF
         TC1vG5JC1w5xlf4g2v8W/jb0tM8pTHGQqjvaVpGtdLPN0f2AMpt4i6xd3uKuFge1K3YC
         4ZlnVWEoQtavNghlofYcHOP6GcwdoBZuvp6AEf9yUGkOq9djs7YQoY4loIxHSxZoEDsN
         96lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F29NhyhRGwZzMFTx8mQRXilZvucaQuN0j6i5TN7/b3I=;
        b=vkqm+Q1xVn2JI+cVGW+xBrL3M9NoCTi23VxXY7J2NhjQ+zFoxfgYfQ7zhwA2Gdom9a
         OFzjd0VEa9v4Rozf2bYiKSCkLHzqfX/vxjIWd8WISuw6myOurkbG2eFyacnFXLMh4VeW
         l193dpAhcRmpKdX3MZxjJHdP/3LnqaQSk1DpSQ70agQLBhnKAYS9EVK3Rbw6UKe0cv8d
         NZS6fXvYgtpvgPVtIchKOLEu9B9g1pUgvftUVqhJZIdi8uiMgjSvZYxL19BhwyD9JcTK
         UYgsgboG3s8yIGuXKFwau/d6lPgYIYmJUUtwMj+Znrw0q/BJD/oZWoTFipuuy8JvOwqF
         P82w==
X-Gm-Message-State: AOAM530UJYcVvgdR6/YXUO11LDMhl2O0F3X4zyu6Gyr6Yy54tZAmnskl
        jyP3b+8t7aj5FRmKMPvlYqbjkQ==
X-Google-Smtp-Source: ABdhPJw3awcmd3PzDK6cgXM+7gY5JHwNU8oy961e1ncnFg6bhv5kCTrmL0gcmLKYifc0TFgTTF0RLw==
X-Received: by 2002:a05:600c:297:b0:381:41d3:e22f with SMTP id 23-20020a05600c029700b0038141d3e22fmr11662361wmk.108.1646077249449;
        Mon, 28 Feb 2022 11:40:49 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 11:40:49 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 08/16] crypto: rockchip: better handle cipher key
Date:   Mon, 28 Feb 2022 19:40:29 +0000
Message-Id: <20220228194037.1600509-9-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The key should not be set in hardware too much in advance, this will
fail it 2 TFM with different keys generate alternative requests.
The key should be stored and used just before doing cipher operations.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h          | 1 +
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 9 ++++++---
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 8b1e15d8ddc6..826508e4a0c3 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -245,6 +245,7 @@ struct rk_ahash_rctx {
 struct rk_cipher_ctx {
 	struct rk_crypto_info		*dev;
 	unsigned int			keylen;
+	u32 key[AES_MAX_KEY_SIZE / 4];
 	u8				iv[AES_BLOCK_SIZE];
 	struct crypto_skcipher *fallback_tfm;
 };
diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 060d52f18b31..cc817d361fda 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -95,7 +95,7 @@ static int rk_aes_setkey(struct crypto_skcipher *cipher,
 	    keylen != AES_KEYSIZE_256)
 		return -EINVAL;
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
 
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
@@ -111,7 +111,7 @@ static int rk_des_setkey(struct crypto_skcipher *cipher,
 		return err;
 
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
 
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
@@ -127,7 +127,8 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
 		return err;
 
 	ctx->keylen = keylen;
-	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
+	memcpy(ctx->key, key, keylen);
+
 	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
 }
 
@@ -283,6 +284,7 @@ static void rk_ablk_hw_init(struct rk_crypto_info *dev)
 			     RK_CRYPTO_TDES_BYTESWAP_IV;
 		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, rctx->mode);
 		memcpy_toio(dev->reg + RK_CRYPTO_TDES_IV_0, req->iv, ivsize);
+		memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
 		conf_reg = RK_CRYPTO_DESSEL;
 	} else {
 		rctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
@@ -295,6 +297,7 @@ static void rk_ablk_hw_init(struct rk_crypto_info *dev)
 			rctx->mode |= RK_CRYPTO_AES_256BIT_key;
 		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, rctx->mode);
 		memcpy_toio(dev->reg + RK_CRYPTO_AES_IV_0, req->iv, ivsize);
+		memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
 	}
 	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
 		    RK_CRYPTO_BYTESWAP_BRFIFO;
-- 
2.34.1

