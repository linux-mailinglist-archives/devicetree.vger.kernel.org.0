Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE8F5682ED
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 11:10:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232740AbiGFJGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 05:06:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232856AbiGFJF5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 05:05:57 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44B8124BFF
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 02:04:53 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id u12-20020a05600c210c00b003a02b16d2b8so8603682wml.2
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 02:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=e0yxJClSSXUpxDCwHaDOIvRbSdrRABgnEeecbOpuZA4XLCVBkpW4gXL+Wk1VaIiSVL
         /yCdOstHJFcouC915CbdVqS7Tx868WNSlZHGvvOdjzkN+8V4Iv948hnotFeMmebif5KJ
         jIcJMhNoBQlK/G0WDrkfLcATnb9vue15d+/tkV0tTl32cpb+D5dpTGg0Xj77/c19ZvxH
         WPqz6PrZNnUt8yLrm11Rz6kMcDArUEH6QWDdDV8MwpK3kf9HDJ+QTxhEc+4S0/vzEyPb
         3lGPUJhBlXEb7UCNljr3yotpXx9k6NmWl69/f13H4yxs8XCnIHf4nt4r8hN3UbP+WjrO
         hs5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=Kwd/F6fgQuK7/jaN/d5lxsasQcNhu/mXNl8mft8asElulgEo7zKL5WQH8PyqepwhWQ
         haSf2A28IXVb3RBVunIAejJY7VaN7OOEAr/xL10k2cqQVnRpdIrSu1/Hy+AvMbhHBoKG
         mQJy1s3Ayp5GRIKZEPlaiZ2Q8ltibC50nI5mRTJVBsUQ/0DjVEYUItMoDFftiMdfVh5o
         lsgHFO5hBqlFWYtpT1btsViZnPcs4Ae6dwS/Uu6JuHOa0lYxbJf2UmbDRP332eT32wa7
         pjW44WRKNENJIPOAQYQ7TUydIkIV1KODs3LlB9qk/0pK4ysi3Zr0fYW1yTRTSueLKnaN
         zm7g==
X-Gm-Message-State: AJIora/LB27abw0aMeoxl0cEmUiJAFiUhjTENNij/UuHoar9qT9X5+i6
        wK/LzR1YKYUx9+IndQWdtOPmaA==
X-Google-Smtp-Source: AGRyM1vhku6FFRqMSgg0ZToVK+4jD8sS/eXzzi4dV/619Zhx8Ilio+pxWWjXHv62NgKXwOO5OBzU6w==
X-Received: by 2002:a7b:ca54:0:b0:3a0:522c:d0ec with SMTP id m20-20020a7bca54000000b003a0522cd0ecmr40784122wml.63.1657098292893;
        Wed, 06 Jul 2022 02:04:52 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:52 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        john@metanate.com, didi.debian@cknow.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 19/33] crypto: rockchip: add support for rk3328
Date:   Wed,  6 Jul 2022 09:03:58 +0000
Message-Id: <20220706090412.806101-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
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

The rk3328 could be used as-is by the rockchip driver.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index a635029ac71d..c92559b83f7d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -202,6 +202,7 @@ static void rk_crypto_unregister(void)
 
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
+	{ .compatible = "rockchip,rk3328-crypto" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
-- 
2.35.1

