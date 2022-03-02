Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5AF4CB102
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 22:13:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245139AbiCBVM2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 16:12:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245141AbiCBVMO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 16:12:14 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD667DD94E
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 13:11:27 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t11so4746751wrm.5
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 13:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
        b=BGC8nrmMzBNASLXkYa2JNo0/+8z6t4pK8iDFZsnFwNbRNywY9MSW+in1XAfzhpduHG
         M90eCf634zQDtoqa+KxYP+4Q/F9NrnUwkV0Hq71kfygDD9iDFhDTHeVYM8n8ancu8Wro
         q9/ekreyuQmJOIiEAHj2lugGcj8qN6donBz7TnBgMRMjnxKurRav02a5XZt0s7bdm37f
         jOPee5RfiLPG/58Cp4IT85T9UADV/4UDPF/HI21FDDDpr6paXJoX+WUysCA/MpY9mPG4
         ow3IXPTXuH8j0L7sjRZWe+DrZywMI/VqaQ9slo4SDoglDlfHEfFdESIhiJ1pYZCEv+VJ
         JhYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
        b=sePnq3fnBS19aNt2cDNjY8yE2OAlJKirtJWRiuC+HjEbwxyA/5RTK4LhM4CgaMQk+j
         7ykvfHU6mhnowSp3Kk/0cOTaofm/ST3XcrhwBRRmsY/YwYR9XEVNZUmeNQugpxBL+wUu
         Lsk8ZlCGGmqWzYZSlPDkkr84StO2xt9dpbQwZewfkhTo4Ba448J6c7mxOJQbc9rNF0cB
         GGn/gM3ayiA7T6vUaNA+D/CIbuKeWbJVKZ37mSr5iVJTrwBK/qd5DZgktnSS93L26rYC
         ON1sYihxzPQRRL+oV+xGEqfNgLvRUZpVa0qLgOPp33gHuFES6o0bUGBqyXc7GafVablT
         4Xpg==
X-Gm-Message-State: AOAM532EiGlDxetNbRkU9pYCVeC0vZOhZ7LOa/ussy96PbEq9xWePyha
        BjdKburDmncpgBVqcru9RPBvwg==
X-Google-Smtp-Source: ABdhPJy3A1W9tLBSCIWiQnLMKAnn7XqQUscUgC/xxLeQMr8lptDLl6mme9vRIINzoq6iIM5uwmaMFg==
X-Received: by 2002:a5d:64c4:0:b0:1f0:36ee:15c with SMTP id f4-20020a5d64c4000000b001f036ee015cmr3143058wri.126.1646255486175;
        Wed, 02 Mar 2022 13:11:26 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 13:11:25 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, john@metanate.com,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 04/18] crypto: rockchip: fix privete/private typo
Date:   Wed,  2 Mar 2022 21:10:59 +0000
Message-Id: <20220302211113.4003816-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
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

