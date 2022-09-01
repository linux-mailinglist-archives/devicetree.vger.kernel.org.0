Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 489E75A9798
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 14:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233680AbiIAM5g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 08:57:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233539AbiIAM5Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 08:57:24 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FDF686732
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 05:57:22 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id s23so8967783wmj.4
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 05:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=rDF1idJDvMgd1slZPtIOFydLsr/QY+6sEYiNV+jLIIOBKWN7fXF1q08wS5SK69LMbw
         NCG69o1ZUcYBnQex7Q+2biQV7SjyIe0VoUdhyjkGoAgkVsWZ7nnU+WRE486yZW/7tZtC
         /6Lu5QTpxEefboD577lvcRfeErfcQCD1b7TW0MIhd8c2qyczHsu+DKssPe3kxzZoM7fZ
         yrawoI5iXeP73B8SFYxAbMTiDyJOLDM5NCYKbVMWBwl/SjNrC8VICFxoYRuO9MnzECHW
         6TutXiS7YS3dO3XYhEG2zgjoJvn9axJd4ZiAvBGG3XoP6wIfF4MY5D3r55t0FcyV0Soo
         +W6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=nck6EUQYRgCfOrRrsXsKiolQq66+mO7AqAkTd22pzBx+gXute70nuS+ZhdF0EGGC/2
         yPioae7a+X+AblQaJsuzvMYvPrAm1vVU6otybKRU6AV6HxAfPSZaxT4Ud/AqxRH+mS44
         HibvrLgEzd4HybpbuNA+PSLVVcf22z/1Q2JxcxdnVaXYzy0UaTPVhM6U1hRtXKy7mZnt
         lt/NRmowUu8q/IJ9qBMkytD04s+k7zxXsJxnFMiO9XdK2IWfCEHRg1Grvjq5b/FK7fTh
         94I/lh1Wb83o6jBIXikUbZlJ5PANH6eFq9lYvc8+5x+Ir7V/msqhMAWE0SZVoW56eYas
         DBgQ==
X-Gm-Message-State: ACgBeo1V3BkPSAAVBzT9v/3Vnjqdo2c47uGSThTbFzZXi4IGAz0vVaLn
        hfvd4jSpefFn3mQE+GXDuatOvg==
X-Google-Smtp-Source: AA6agR59aMWYsCOPWc0ZKAYC9b9Kg5CQrnbJzXg5aOklf16iRgHqumCQg6tvrkmk57oEfxrlLYSO7Q==
X-Received: by 2002:a7b:c84c:0:b0:3a5:dde3:2a9e with SMTP id c12-20020a7bc84c000000b003a5dde32a9emr5458936wml.84.1662037041027;
        Thu, 01 Sep 2022 05:57:21 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:20 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, ardb@kernel.org,
        davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        John Keeping <john@metanate.com>
Subject: [PATCH v9 04/33] crypto: rockchip: fix privete/private typo
Date:   Thu,  1 Sep 2022 12:56:41 +0000
Message-Id: <20220901125710.3733083-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
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

This fix a simple typo on private word.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 2fa7131e4060..656d6795d400 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -235,7 +235,7 @@ struct rk_ahash_ctx {
 	struct crypto_ahash		*fallback_tfm;
 };
 
-/* the privete variable of hash for fallback */
+/* the private variable of hash for fallback */
 struct rk_ahash_rctx {
 	struct ahash_request		fallback_req;
 	u32				mode;
-- 
2.35.1

