Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B6CB5A97D6
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 15:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233971AbiIAM7l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 08:59:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233799AbiIAM6O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 08:58:14 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EBCD84ECA
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 05:57:34 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id bd26-20020a05600c1f1a00b003a5e82a6474so1393351wmb.4
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 05:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=eJrWPz90vueiK3A/H8oVrUd6nj9ISq0Y+RyhJZ5xFG8jbsh6YMVV2c6a7fS9nLg3t/
         ci+2vZYIKoiUtrJvUlRhAGFASFokpdE+VnphNpJWQENXRBUANKKuSZCSSE8uC+iF4WqR
         x+cx2Wh9Q9EELsvds6YMhjoCeRBcf3vEBl4rSOroVYiKzWUOC0S+Cf0q86SEDNpVnIPw
         +3RLYdkQdHbAzhtA/i0oT9TS2xguJ9LTjKOHuK2vWsBqIsjYUiqBT4VGa6FDNl5KtFP+
         OcnGXZlih/FsSXZ3iKnQAccmsu8Ioie5N0AYuJnzFGeWDBPJuZ9MZr9wgWmgjQSCLHoz
         OUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=cJE9JrNh4HvbwKuPRZxdjE4sOr8yHsnud2KqNuPrCRY=;
        b=pthnjuR+kUpRAfCQvvWjirJzUutl2Ord6ah7M2A0OORpT6l/N5dSO8vrQarLmQ77yV
         VHHzsGPORvij8r7iYM3YV9zFcGNA0WjyHWF/XHjeu8+RvqM14YpFubMoF44dgHWHvfnr
         DURwPhIe7XdOnCtODly2MSR+AnoBkHQ1ovEy1GJfBEKjFare2wJKvYnXIS9CC97KJ8K8
         v2//7p/LwQJ1M3694DmmSbjFI4snh55+KU1CnnYV//WZtNT+8SKsfXC1eY3CXi2xjZJN
         AqY24bU8ZG42zH8S9iHzVVR/3s7EGDgv8KSyWa2kNuv6iRFRvDDIxstzPSZRoaK3xNJP
         8hkw==
X-Gm-Message-State: ACgBeo0DsAOGhJWDM6oLc983eDtO/Z8OHyBM9cRi9Ph+dVbp5JQxQbiq
        Pbr8pSdoDIlUFMiWSOYZOhZL5w==
X-Google-Smtp-Source: AA6agR5DXoFlCKdfdusOr/u9AHDjFvT0CFyVXgc7HSt4BUV78VZv6oBoXK/8i4WguWPANHx56rJNgw==
X-Received: by 2002:a05:600c:29ca:b0:3a6:75fe:82af with SMTP id s10-20020a05600c29ca00b003a675fe82afmr5249856wmd.3.1662037054338;
        Thu, 01 Sep 2022 05:57:34 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:33 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, ardb@kernel.org,
        davem@davemloft.net, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        John Keeping <john@metanate.com>
Subject: [PATCH v9 17/33] crypto: rockchip: use read_poll_timeout
Date:   Thu,  1 Sep 2022 12:56:54 +0000
Message-Id: <20220901125710.3733083-18-clabbe@baylibre.com>
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

Use read_poll_timeout instead of open coding it.
In the same time, fix indentation of related comment.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 137013bd4410..1fbab86c9238 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -10,6 +10,7 @@
  */
 #include <linux/device.h>
 #include <asm/unaligned.h>
+#include <linux/iopoll.h>
 #include "rk3288_crypto.h"
 
 /*
@@ -295,18 +296,17 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		sg = sg_next(sg);
 	}
 
-		/*
-		 * it will take some time to process date after last dma
-		 * transmission.
-		 *
-		 * waiting time is relative with the last date len,
-		 * so cannot set a fixed time here.
-		 * 10us makes system not call here frequently wasting
-		 * efficiency, and make it response quickly when dma
-		 * complete.
-		 */
-	while (!CRYPTO_READ(tctx->dev, RK_CRYPTO_HASH_STS))
-		udelay(10);
+	/*
+	 * it will take some time to process date after last dma
+	 * transmission.
+	 *
+	 * waiting time is relative with the last date len,
+	 * so cannot set a fixed time here.
+	 * 10us makes system not call here frequently wasting
+	 * efficiency, and make it response quickly when dma
+	 * complete.
+	 */
+	readl_poll_timeout(tctx->dev->reg + RK_CRYPTO_HASH_STS, v, v == 0, 10, 1000);
 
 	for (i = 0; i < crypto_ahash_digestsize(tfm) / 4; i++) {
 		v = readl(tctx->dev->reg + RK_CRYPTO_HASH_DOUT_0 + i * 4);
-- 
2.35.1

