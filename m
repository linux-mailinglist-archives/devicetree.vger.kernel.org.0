Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9552550EA2D
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 22:26:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245340AbiDYUZf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 16:25:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245338AbiDYUZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 16:25:27 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8188B1291E3
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:46 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id k2so2043311wrd.5
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
        b=gkkLdFaSFOADuQpex7MgMLo3q4WHaUhNXEw9O3ZM6oZIBtP0PG69DqNLxD8Jq6s08D
         Hu48yf7Gi3pH5BWFcQyuoQZ902YYQ6mZWKaKZmjIxbCZyZ1m7tga+Jn8FIv9sMtWi/bh
         4FJIBHiGvi6IQXbEees57YriwC5I/0x44U2WGcgRdKXz0BEKxFg9wTsFzgKpYEPbSioT
         Pc9PPxebTrrDxqz3S5W4S6AWq8r/vZRhthOlJu0v+YnP+Im6OVBXvPSrJ2Qg5SnsDDgY
         7N2R3M+GhcEP0DqRgyvXpmMnkVXLPP3vLFje+GBGExtzvHQhdrv9DhRUJ/2/QntaeV3h
         M2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X5cmGbysdlCxPOGBZlu+t3JbOARc2ikAJ1rgjSkwJRA=;
        b=T4gK+ZyH6njftO41AficbfUdiWUYW/JvP5DAxbeWMbNAplG00xRzXASCVkm9p6SloQ
         21u3m5Bmhhh4walGmsIQYeTiSjRTDUWIJISHA8CWCb8d5iz0eEysvIN5IU2hOZQ6SEFk
         C+jgHHpvFSdSGrtvrFZdwzfmktyYjERphtg9YJ8cHZX3ZavrTJ0gUkV1uAtOH06aiSiS
         bT0cEtOL8qzpkNNShJa0E3i/TZG2MlxfGj19H8rX0+sdJ8Mw6wEym7ppZsE8s3XXM0bA
         GuXvctFdWLAoihjKlBowQKuPsfyaEf21uvZ26/oSxKqzs6Ome7hSQamc7kUoRNiOoVMb
         JaVQ==
X-Gm-Message-State: AOAM5331YE6U8aPsMOZrgRUf4Sd6S+vbR2cajis3/RLqI24+zS2FAjhz
        JwMaBWm2gkBm/kmpiwRIYS+f9A==
X-Google-Smtp-Source: ABdhPJx0ehWDWEpwXPfa0LsCViUZIZpEn0Nh5dIMf8V9qNJCHLboNq+t7FnAM3CEdE2QivxRKgTvGw==
X-Received: by 2002:a5d:42c8:0:b0:20a:d91f:87b5 with SMTP id t8-20020a5d42c8000000b0020ad91f87b5mr6850064wrr.301.1650918104899;
        Mon, 25 Apr 2022 13:21:44 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 13:21:44 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 18/33] crypto: rockchip: fix style issue
Date:   Mon, 25 Apr 2022 20:21:04 +0000
Message-Id: <20220425202119.3566743-19-clabbe@baylibre.com>
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

This patch fixes some warning reported by checkpatch

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 1fbab86c9238..fae779d73c84 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -336,7 +336,7 @@ static int rk_cra_hash_init(struct crypto_tfm *tfm)
 
 	/* for fallback */
 	tctx->fallback_tfm = crypto_alloc_ahash(alg_name, 0,
-					       CRYPTO_ALG_NEED_FALLBACK);
+						CRYPTO_ALG_NEED_FALLBACK);
 	if (IS_ERR(tctx->fallback_tfm)) {
 		dev_err(tctx->dev->dev, "Could not load fallback driver.\n");
 		return PTR_ERR(tctx->fallback_tfm);
@@ -394,8 +394,8 @@ struct rk_crypto_tmp rk_ahash_sha1 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -424,8 +424,8 @@ struct rk_crypto_tmp rk_ahash_sha256 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
-			 }
+			}
+		}
 	}
 };
 
@@ -454,7 +454,7 @@ struct rk_crypto_tmp rk_ahash_md5 = {
 				  .cra_init = rk_cra_hash_init,
 				  .cra_exit = rk_cra_hash_exit,
 				  .cra_module = THIS_MODULE,
-				  }
 			}
+		}
 	}
 };
-- 
2.35.1

