Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 175115A97F9
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 15:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234229AbiIANAq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 09:00:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234057AbiIAM6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 08:58:47 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09DF693203
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 05:57:51 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id e20so22216007wri.13
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 05:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=gxFS041sKmCJ8gotE/rzRHIFcK8pgteVLsHohzmHGLL/Asvsnk4TqKRaOJx2n2JSxl
         33hGjEieWt9UJm8s4yv7CVA5XS9LFVlbGGs9a8nqvSovNxG7/2HP4rrROSOZJrYmUvXX
         MfsKyCI8gUr/kjw3RcjCzVH8Z8qNhIkkAAf8mxKe5BjnZypSBNxB0FPddIgyfb10blqA
         aiQzQL8JBz5NrW2n2FKFzuuH12j3hPhdLuSyVsocChUGMiqV/jDjBKWUJ/PgrGbdDFOD
         PdkzhEE5laWc34/FtNaacKvoN0PCBNxlW5nK1TegOu3msHpNYhauUnTtfnfQE2XcK+H8
         hh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=mcs9X/RAE1EpslIMysNrzlEjSFuGsHMkzzUgiz4Ez20/rgkr7NipRrJq5KAsMRVIJH
         iW8GuK54HEeWfED3a/V3/9bzRudHvX4LqBVqFAe1H6cfYDevbCZqx+86Vmrs4lrDvwI5
         bxzDYI4Aqgx+wMAPqNKoa2wsFq8QEfQQOjpU5e8ztbmxPPHbgaNR8AHZcE+4iFjXhXG0
         nU8qImXLITAG0pomhrdcBEXH7ecK5CcBH3kP7Zp7JeHB8kGfhLyfp4V1VEqQDiQmE1nV
         UTvP1G//6Pr5ZRMAi/jJGBNFuaw5fWO1E+7cvB02EePbKdR/DbjQdHf/QUzwinhRHJhh
         QX7g==
X-Gm-Message-State: ACgBeo0SgHAYPdu07wUwsC3pwZKvWBfU+kqxtIzDA3BHgfFu2awVRUST
        lsaWv38sWU0FnmRMhkt3g4ymkQ==
X-Google-Smtp-Source: AA6agR42iXjNLWIdpiBHP13edGTdQ/2uIMitreBQnTgTu+13p4zqUS0pjcpdsslMonKuDmBkZbHpkg==
X-Received: by 2002:a5d:5281:0:b0:224:fe40:798f with SMTP id c1-20020a5d5281000000b00224fe40798fmr14952340wrv.90.1662037069759;
        Thu, 01 Sep 2022 05:57:49 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:49 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, ardb@kernel.org,
        davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v9 32/33] crypto: rockchip: permit to have more than one reset
Date:   Thu,  1 Sep 2022 12:57:09 +0000
Message-Id: <20220901125710.3733083-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
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

The RK3399 has 3 resets, so the driver to handle multiple resets.
This is done by using devm_reset_control_array_get_exclusive().

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 232dc625d6e5..d96f375423d5 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -281,7 +281,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	crypto_info->rst = devm_reset_control_get(dev, "crypto-rst");
+	crypto_info->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(crypto_info->rst)) {
 		err = PTR_ERR(crypto_info->rst);
 		goto err_crypto;
-- 
2.35.1

