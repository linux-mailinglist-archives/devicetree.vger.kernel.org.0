Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0742D4EFB16
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 22:18:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351967AbiDAUUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 16:20:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352009AbiDAUUW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 16:20:22 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DEBC26E1
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 13:18:17 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id i4so5804149wrb.5
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 13:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
        b=QvdtuXJUDVErKeJtsEhLz1nBAGfbgmN1mQYGN07MjOynZL/vSdAtL/G8vPaRDZ1y3Q
         EkMDhz34rwNCYGMTGWORRmFK9cUYKj8gMSqCLql9swylJSrtuiYHBpNhtx+3Q6SLvVvy
         5U2l92TxwXtT05eBLI2gm3sDHZCiTum+G4FHkKcFCb/gxFglJGkX6IMOhy3KWEZTINI8
         lkOrT8Gfo6zYr5IA5Db35TQCSUJbLfy7sQ6Z8NH2pzEfnATmACUSDmIJUFtPNLYBSEkq
         2fzdAUdVxfTwRunvya/oUuRFa1pcDffJ+2GVCM9knByIDrgOHX6JHTLY7n4GhyvqmkNQ
         jz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
        b=waZQAHRt0my0NLgsJxeDcoIW7k11NWk0TRitWLryrbQC2lL1oQhZGRs72kN/Z9nZDy
         9yhofWcJbWMoOu2p4eup/Bq3knzMWgixL+IP2OqivliKqG8Qrxz4McFHbjzmz2gOyJ33
         k1HHvRSI9NBlYOUq3+1GNM7b/vJgosprtM1rDApc39D0WwT2qyregv5tqSVjoxMoiFOd
         TLLmArulQlPCVZcWuHsiSXJ26GqUr5LCVKRsI7qGI7h/HudraA8sZ4aCU7DxA8uI5qZB
         Kd/QnBD2rvthkrRvpCY2FQhYUYuOpTO/zYJvREnZMpNAFMRKXd4UyfDBoNyi2uu2ezbW
         4ylw==
X-Gm-Message-State: AOAM530xinUBhzEiZ6ZKsnnLWS/T31/7aX97LsNyWgwMSKMUpeXVEL9p
        ll8qC6QhD/QY2VqT0zFxfT76Nw==
X-Google-Smtp-Source: ABdhPJzagPANYHiKjLhY479oe6/09+78LAgtlNmTUDvX4KAKnhWhGpyAZriJPqTM0HpBWXX4pLApyg==
X-Received: by 2002:adf:e947:0:b0:205:9051:ab61 with SMTP id m7-20020adfe947000000b002059051ab61mr8954855wrn.510.1648844295909;
        Fri, 01 Apr 2022 13:18:15 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 13:18:15 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 07/33] crypto: rockchip: add fallback for ahash
Date:   Fri,  1 Apr 2022 20:17:38 +0000
Message-Id: <20220401201804.2867154-8-clabbe@baylibre.com>
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

Adds a fallback for all case hardware cannot handle.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 49017d1fb510..16009bb0bf16 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -16,6 +16,40 @@
  * so we put the fixed hash out when met zero message.
  */
 
+static bool rk_ahash_need_fallback(struct ahash_request *req)
+{
+	struct scatterlist *sg;
+
+	sg = req->src;
+	while (sg) {
+		if (!IS_ALIGNED(sg->offset, sizeof(u32))) {
+			return true;
+		}
+		if (sg->length % 4) {
+			return true;
+		}
+		sg = sg_next(sg);
+	}
+	return false;
+}
+
+static int rk_ahash_digest_fb(struct ahash_request *areq)
+{
+	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct rk_ahash_ctx *tfmctx = crypto_ahash_ctx(tfm);
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags &
+					CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	rctx->fallback_req.nbytes = areq->nbytes;
+	rctx->fallback_req.src = areq->src;
+	rctx->fallback_req.result = areq->result;
+
+	return crypto_ahash_digest(&rctx->fallback_req);
+}
+
 static int zero_message_process(struct ahash_request *req)
 {
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
@@ -167,6 +201,9 @@ static int rk_ahash_digest(struct ahash_request *req)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 	struct rk_crypto_info *dev = tctx->dev;
 
+	if (rk_ahash_need_fallback(req))
+		return rk_ahash_digest_fb(req);
+
 	if (!req->nbytes)
 		return zero_message_process(req);
 	else
@@ -309,6 +346,7 @@ static void rk_cra_hash_exit(struct crypto_tfm *tfm)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(tfm);
 
 	free_page((unsigned long)tctx->dev->addr_vir);
+	crypto_free_ahash(tctx->fallback_tfm);
 }
 
 struct rk_crypto_tmp rk_ahash_sha1 = {
-- 
2.35.1

