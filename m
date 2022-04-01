Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7254A4EFB49
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 22:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352193AbiDAUVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 16:21:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352198AbiDAUUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 16:20:50 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1D4A2742B3
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 13:18:27 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r13so5761188wrr.9
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 13:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6swuCZEj1H9IhNG3rWy6ySopJSL6Uc0TxbQDyYEwsKg=;
        b=8C3fbPHtza/5r5DTDDDrqPm6SzR5PRyXchIQF339yDpy9jZGj6gueNLC2NpLYZbu8y
         Wjq5eMI7J8X+BVGGjwZo12aUBBejeq8Tb4g5E4QDKTOW9Hj64oh/tqxkLN3SdDzH864P
         9YHdTmixVyU8C1DoecpA7cCbKvW4AV0QtnCyAFaVY53bz6WeXRQiUe4HYWiVLzuAkSMA
         Yq12HPehBT8OeUwqQ5SqrU8PwO00Mk31Ff9DorptyqKyu/RYVmLGvw0bA0i6Q2uZX7n9
         7wZrNUSl7XoWH/uOnc5ZqTmPPI5L54+EHjHDPlNucXbhvnNFGJF015H2UaBHiqlOEbfI
         Xvrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6swuCZEj1H9IhNG3rWy6ySopJSL6Uc0TxbQDyYEwsKg=;
        b=sH5QFh3hdZCAW5EP/ctE2e5QTIgO6sbSMzbrSkXCovKtkwZsRa6TONkpbexg3l1U+0
         bSkvNcTGNZXKTrF2BariPBvtuiEKiB7qPcmUKb+8FJQ/XDW0XA4i7fTTIkik7G1oBc2r
         1APex+3IvOft1HlQWPGnK9E87ixwTD3NlVGUsgkukcKlU+V33HSLVzdK7MP5gpZrtPVU
         5QdpA2XPF5hq40bSssWaZbAfWCFvGonHW4vehFEgYUQmuTjcBNyohZyBhP2W6agYbswk
         2ZQXmuUM/bfkG+CkGY5H5m6AloScjOto0kp/1rgDWsYFmf+VPEXfqQuA6TLp4H860Wrm
         YzeA==
X-Gm-Message-State: AOAM530JH6EzD1aMy4iIAkDMPk0xTZFpJf8Xwoxn4yXgR+VFR1mH2EwE
        d3xNiNP2t6D0T48yk8xmFl4NbA==
X-Google-Smtp-Source: ABdhPJxm8ZRkHhR9rWbyI2Z49YGWfivSKi/w6w2YNPzqFvYzIofiteGHryo/kLviJbYvlwrDpDnx5g==
X-Received: by 2002:adf:d1e5:0:b0:205:85f5:656c with SMTP id g5-20020adfd1e5000000b0020585f5656cmr8796129wrd.65.1648844306256;
        Fri, 01 Apr 2022 13:18:26 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 13:18:25 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 21/33] crypto: rockchip: rework rk_handle_req function
Date:   Fri,  1 Apr 2022 20:17:52 +0000
Message-Id: <20220401201804.2867154-22-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch rework the rk_handle_req(), simply removing the
rk_crypto_info parameter.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 68 +++++--------------
 1 file changed, 17 insertions(+), 51 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index c5e7090c77c8..0920b1ae3862 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -92,10 +92,12 @@ static int rk_cipher_fallback(struct skcipher_request *areq)
 	return err;
 }
 
-static int rk_handle_req(struct rk_crypto_info *dev,
-			 struct skcipher_request *req)
+static int rk_cipher_handle_req(struct skcipher_request *req)
 {
-	struct crypto_engine *engine = dev->engine;
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
+	struct rk_cipher_ctx *tctx = crypto_skcipher_ctx(tfm);
+	struct rk_crypto_info *rkc = tctx->dev;
+	struct crypto_engine *engine = rkc->engine;
 
 	if (rk_cipher_need_fallback(req))
 		return rk_cipher_fallback(req);
@@ -152,135 +154,99 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
 
 static int rk_aes_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_ECB_MODE;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_ECB_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_CBC_MODE;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_aes_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_AES_CBC_MODE | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = 0;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_CHAINMODE_CBC | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_ecb_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_ecb_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_cbc_encrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static int rk_des3_ede_cbc_decrypt(struct skcipher_request *req)
 {
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 	struct rk_cipher_rctx *rctx = skcipher_request_ctx(req);
-	struct rk_crypto_info *dev = ctx->dev;
 
 	rctx->mode = RK_CRYPTO_TDES_SELECT | RK_CRYPTO_TDES_CHAINMODE_CBC |
 		    RK_CRYPTO_DEC;
-	return rk_handle_req(dev, req);
+	return rk_cipher_handle_req(req);
 }
 
 static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_request *req)
-- 
2.35.1

