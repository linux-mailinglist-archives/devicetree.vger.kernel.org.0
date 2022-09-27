Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 614685EBC1F
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 09:55:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231278AbiI0Hzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 03:55:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231289AbiI0Hzm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 03:55:42 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A2E804AF
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:55:38 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id bk15so5926583wrb.13
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=P95BMFMDCHcO/e4sMvbmMHIOXf3JyWC1JZaC8Mwvo8kE2gufm3WLSd6cGrmXuuXlwX
         U7DwYY4omAj6WdZCKCSGyChwxyh19b4NogvvtB9PucKATKIlova7ivlr6I8uP8KDJsYU
         3lhY1Zo8/s961maBxbAyjey46UF/rv1BR4Kz8Lb1k7ht+7NE4Shw5RiSheKPr0MIR89l
         geDeZ3nV+XPKarqYxmhTRBCfOlelWva94NRZNlFq/meiEsxlFveBeR4OiZBa5FImhFuA
         /Act2YafmvPTSX0K+Fyq1iRCzhjcpbN/ZN1PSbmxlEzLN3g5A0WQ13IERLR1x5Usocjz
         Mp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=PF3dhRJQxRV9x7DXtWIWPWrqJAteEybRM2RnWMxrVS6U/D/7biilpex3rtDiiG7VhI
         pVY8PgryXlBoGtjR27yvE3lvBtFpultjVwNA21PD4tV1ndLHo0d+meGKww5qXzOQdcYN
         EdeXqliEPwA/4NhSdbsuae6F7NqdTo1hf2zfpt7alrE+hOvqrQ5cvnv3WbFgKS6eLdaG
         OqRKdG3aIhl0WeJ9xEyJOlQCIGaBaeROsA5XBQXLcBvnNlU2D6Ghkbs/ddriv7ex325+
         UPuAAiGMLbIZIWCdkzbYdqFFBOA25IkxAMERPAiyG3aQML9/OoHhyw4ZjBnRT3QL99xF
         KyXw==
X-Gm-Message-State: ACrzQf20g83TC5yHTISHfCpiJaYIC+1otJ6VLMd/5SWIoDEvMaVxTwdG
        BFtB5gZmybye8QqEs4+HWDkxEg==
X-Google-Smtp-Source: AMsMyM5wMBHZjEBDjBgQmGUPkspEyex1NfqvseieXleEWYVoezEZEP/zQqKwVAGX27Q/YbgBLAP4DA==
X-Received: by 2002:a05:6000:154a:b0:22a:b8eb:ba53 with SMTP id 10-20020a056000154a00b0022ab8ebba53mr15726563wry.594.1664265337400;
        Tue, 27 Sep 2022 00:55:37 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:36 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, ardb@kernel.org, davem@davemloft.net,
        herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>,
        John Keeping <john@metanate.com>
Subject: [PATCH v10 04/33] crypto: rockchip: fix privete/private typo
Date:   Tue, 27 Sep 2022 07:54:42 +0000
Message-Id: <20220927075511.3147847-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
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

