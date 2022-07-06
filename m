Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6127A5682DC
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 11:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232768AbiGFJFO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 05:05:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232697AbiGFJE6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 05:04:58 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3A3E22B33
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 02:04:41 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id h14-20020a1ccc0e000000b0039eff745c53so8587615wmb.5
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 02:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Lb5wXjXl71KLOn69lH3EgInZyalgQlnigOqDmtk2Tt0=;
        b=zzT8S8RHrwSOYDYb4nSxX1Vj2+7cZjylmxpA5nZxp11NT/r63jTYcVVHZVl1lod/vB
         s4xJiX61UpU/2yD2nDSoAXIUQOjT25go1QRplexRcmJizflXuNntueAVYZ4v4ZLopP8/
         gL6ba9Slb3Y8RCW5lRpR8O/XRgUTDBfYs8WszlEED2WevNhp5huie9+dYgrB0wxuN+Bt
         iaN0wmPl8OrU95zsa3j5H2CK/L2eZYGG0cPCFukjkmOKO5VREcFxavuSxGROA/kv+GHZ
         kEbvvxkjoCQ+tNJ+fYZc2xx2gOoSiQyhMMtENoQzsznYrFRR1EAxEVMH9i+YrweM2h9E
         Xbhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lb5wXjXl71KLOn69lH3EgInZyalgQlnigOqDmtk2Tt0=;
        b=X0wbyD4TIiKsXZq1zPxv+EaFf1NoTka/qbjyjM7lHkPpJ3m2NbQwfH7c1plDx3qDGf
         71mQXCrJA56/x5K6EQfKfTR4pgdmMZPck7W4SLAWlw6atnCR9qmvOmwBlP5u/LB9cgnh
         tuhZiUuhNPs9lkBEoffk+SvgYm+wGiHGXf8EpIXG/5adB5uep89ctH+DSFgw/OgT4kEA
         g9x3tAK26Jsia5oZ/sjlonp7lOJ5JCoa+YvV26dpZX9d8t+PPnnKfSJx8IiwM4odOulQ
         ezs++trQOBzvVj45K+OFwrmuYywutv0UjZQD18pjGs77tx7upM87GUpGavzlazw53h8l
         xqgA==
X-Gm-Message-State: AJIora9uMicHhjjy9MMun68+OiQOP7tkC3VEhecRWB8y+h8JbVrmCjTU
        EddJqx2mNC0GxGH6s90QK6sJLpRlcS+cww==
X-Google-Smtp-Source: AGRyM1tU/eQs9y3rllPt7O3uf71DaGtNf9lf86F+8T4gDenqt/KrF5cKS5X1r9zX5d+0CXqvHL2xqA==
X-Received: by 2002:a7b:cb93:0:b0:3a0:4d00:2517 with SMTP id m19-20020a7bcb93000000b003a04d002517mr41934646wmi.117.1657098280280;
        Wed, 06 Jul 2022 02:04:40 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:39 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        john@metanate.com, didi.debian@cknow.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 07/33] crypto: rockchip: add fallback for ahash
Date:   Wed,  6 Jul 2022 09:03:46 +0000
Message-Id: <20220706090412.806101-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
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

Adds a fallback for all case hardware cannot handle.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Reviewed-by: John Keeping <john@metanate.com>
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

