Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A15D34E311D
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 21:08:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352969AbiCUUJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 16:09:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352925AbiCUUJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 16:09:25 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4FB5103DBA
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:07:53 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b19so22194422wrh.11
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
        b=F3u4P2haN80NrYC3ry5184pwPLJ/YQ3Giy8swGovoQmMsCQ6epOO6PnK/ZYYrgUlG4
         XrFw44QYsT+1XIdOx8Apq84YhG+Bmip+iW14+CfVb5HO9Up36ocNDiqUqWFpxlCcVnYU
         MXentJLxLq1zjQ5EbW+iCgXlPPXr06Js/lSjzmXhCa9Tzp9iEqGMsgbr7PWoFB3HyB+j
         olxsoLTCA3bzP73p2v4DC4Vn7SqT+htvS3Bw/Ynaje3tRX7TcNRePnKo9XOyBJOsN05q
         Y+iplil8uOnefQb9/1ELEnNGEP73Nt+vqB1dpisFP2PQC7sTR15IYQBp+ejIJyfjcuAK
         EYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
        b=t5vur1f1YQCxaDigS4i9G6g7D9/YaTnt8ibI0+uE12Jgv0JfrWR8PFzWO4mb6bzs2W
         n9vjWR8ErgFEHJgaDG4sYcsecspTyFwMRZk4YoojtmhzB56lqZBbW9yp3/RslDx/6XYU
         FbSl76jl1XJWJZB/iA5p2rEeG7dqqxEVllde3G32YoN5hJx6MPcvsVXf1vV9vwphK61q
         OJyChtaNGSr6WwD8r3vVFZrXWyUcjXkw/8Vpj5R2iCcs2LOtvxUj7979nH9ykZ4kArbE
         Eog2Lzt6xlK6RGBuqKN+DWH6/QwwyGdQ5S9fZA+GM+Nn2iZRcsaVSMcKgwKevUAiBXAF
         A4ug==
X-Gm-Message-State: AOAM5336ugcMwoSFjtav7wTP+HLNKT8RaK/tRH9msDLwkxQRsCwL5E1c
        SLa2FbNGD9wBIMWZhEVgaD1fxA==
X-Google-Smtp-Source: ABdhPJxkRI1qN0mzT6Z/8NVjt0akO5/CVOtecvW98ZeN8iahdZXAXfJOQaJBPSBncrIHwFoZBScOrQ==
X-Received: by 2002:a5d:59a1:0:b0:204:1777:fc08 with SMTP id p1-20020a5d59a1000000b002041777fc08mr3923959wrr.545.1647893272263;
        Mon, 21 Mar 2022 13:07:52 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 13:07:51 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 04/26] crypto: rockchip: fix privete/private typo
Date:   Mon, 21 Mar 2022 20:07:17 +0000
Message-Id: <20220321200739.3572792-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
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
2.34.1

