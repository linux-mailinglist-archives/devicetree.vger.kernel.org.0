Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CFD550EA22
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 22:26:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245355AbiDYUZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 16:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245345AbiDYUZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 16:25:28 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC4112EB5E
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:47 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id d5so7272634wrb.6
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 13:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
        b=oNa9cg5QsPwwP4uLrV+YbTdL9gqvb/dfY9l6gDFTVL86Z2ljrwrlOp+UqdK9YUYY5+
         8hyKkQM0y/sN2QGVNqYZVWZYA5tWkkkQFJ8vS0ebBlNGUfEkmMISnd+RUnLz+khNW1Fa
         ob1wL+3kdho0gYV+dOagIVU//4y+gbBWc45DbDRsciupfmFioao8ygk+3vUwnmnm2h70
         LS9l7pOZJVjbio9ScR2wpWVHN2KykUoEL6VCteLaIDYVWQCFmMxT1x/ox4H/kiIfSH5e
         rKzi+mrz/BycqwmKuYcURG2P7lGC8TqTaRspWC3UzAlp9B55VXupvcqdS1xfsTwQuxXB
         p7oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
        b=GLc7fYA8QcnzwzeQT3rG2XFsel46F+EexgnraTrIL7kOdlGDDcLKr96TeTXBkVTvl1
         T+1fdUD1z5g3aU1HtL+BzrhR+4AQbZ2Trg7Rh+O9tr8fjm4QbG0Vg+xzEFCPlDo+8Gt8
         n7b4Hx3VRbveMMmboiAxAcrK9EYSOf9P8zHuTHBLK9jEKME1ToRCY5GoxPrwT/vukNTE
         nqr5vY/m95vePaOsJMofpAsx9BV+9glt6hBq1fJAtuogaoy6eZWcnKThkrOq1WJCihw6
         QqiFbD/IgQ3Ag9DhMwgHQ1xFQ4es39Mk50i5yGvPBSD0K3u/Rozxj+Dm3mACJV/oxIGG
         Z08g==
X-Gm-Message-State: AOAM530zpgCsDijP/b06FDxLWS2gcwkHVOMNA89+VJ7yfwMOnZLvOVJW
        qCJaR6IE43HeuB6LStQMi4kTDw==
X-Google-Smtp-Source: ABdhPJzWVdJF9EEfqt9FZpmuVTK4chwSLrTU0dDvxl6PARMF3rJ1c+XK/DWisIC9K5f/fe3rM+8S7w==
X-Received: by 2002:adf:e289:0:b0:1e3:14ad:75fe with SMTP id v9-20020adfe289000000b001e314ad75femr15468017wri.685.1650918105802;
        Mon, 25 Apr 2022 13:21:45 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 13:21:45 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 19/33] crypto: rockchip: add support for rk3328
Date:   Mon, 25 Apr 2022 20:21:05 +0000
Message-Id: <20220425202119.3566743-20-clabbe@baylibre.com>
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

The rk3328 could be used as-is by the rockchip driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 97ef59a36be6..6147ce44f757 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -197,6 +197,7 @@ static void rk_crypto_unregister(void)
 
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
+	{ .compatible = "rockchip,rk3328-crypto" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
-- 
2.35.1

