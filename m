Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23FBD4C790A
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 20:49:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229455AbiB1Tqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 14:46:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiB1Tqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 14:46:38 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABD01FEF9C
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 11:45:47 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id r187-20020a1c2bc4000000b003810e6b192aso84287wmr.1
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 11:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
        b=lQx2VbY+csJAyRFIt7eX5IaDOBUSlUvZt2a4k6mP7i9oFSuU1NpSPZPT3UjEEWpzwf
         3FRL8thZISZKU9o4hTP4wiuTTrK/BOfBbC1Dy94eU72AZnpZ7KVccfHPwLpL0NG+NKsg
         TMhNvapt7Mw2X+/IgEG5S1+gJlimzjha+FvLB/Solu0vabZAkAAXtf5cPnTcefa/VVz1
         hbbJYTsQh//MB+2TqZhHAzPEljRiaX5ydBw8Yl69/4HLp4au5KCeNB/CXOTLKfldQr0R
         CMlaeqCy1JhbCKIadokaJUGICFsQ7w8zqpaVrXbTK2FBgrrf+ESmvcBRbeJRAGB7aJws
         5Whw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
        b=wbWxlXL3x5kI7rlL+hP/YYTA3hP1JKhH7p0k3f56/fo3DS7Np0lMgI48gQZY2Sae2T
         f0ov7lEiH/ZnDpqkO+sQN9jzYVrTs+3O16R8xh9IfWA9vyXbE7djINkj1p0wnzLC1dIV
         34nVpWr83E0SNPmxYJTmacQ/bJaY26FzH4EINF1eI3FmkQpOhJZI2CAEzfoZn6mGMd2d
         B2LITFjuEgkts6sc/15gESKQQlNV8QFJ3fb2nQNhxHTvH/IUJSu4oDgzAsoO78tsR/N4
         LMPKOFPC5hyf54vedaJS1+OVBxmWCP6wvMdNjS1L3XU13WYq2XzgAOW2AY4DlDqPJwwt
         LG8A==
X-Gm-Message-State: AOAM531ThPhTDJ1t84kjGJoCdWRHODmxZK92FZNxR/XuBpglG5pamu5i
        jxFRlpcof+4z5LEeZODcAqzvvA==
X-Google-Smtp-Source: ABdhPJxdGc/N0K/WMNBAxdA2Xy90225k29BBt3Jrxn5PKmQwrQNvHXH7fJ0r/q2b37gubKletRecXw==
X-Received: by 2002:a05:600c:a51:b0:381:3dc6:c724 with SMTP id c17-20020a05600c0a5100b003813dc6c724mr12829847wmq.106.1646077246583;
        Mon, 28 Feb 2022 11:40:46 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 11:40:46 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 04/16] crypto: rockchip: fix privete/private typo
Date:   Mon, 28 Feb 2022 19:40:25 +0000
Message-Id: <20220228194037.1600509-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
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

