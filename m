Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F11C2675943
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 16:54:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230083AbjATPyw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 10:54:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231422AbjATPyi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 10:54:38 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 793F75E510
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:54:28 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id l8so4431778wms.3
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 07:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EQJmlP0ahwhCy64nPp0f4kxP53tZ/X2Yzc+wIK+4yII=;
        b=xJEAZC6zlx+KwoAgbRUrd6wC8Z+xMWPQ/cjEV/s7q0OZa18GQC8b4uqmQwk6+x1k28
         yLpDOVrsxt4FBP0g3XhheOlOSsCzEixck84v6F/5WTzCfrdoPUrfQWxqgM7iC6opeF6N
         j1oqf2Hzow9Kw0saP59ws39+NCbVPlCxfucQDoyVAG7yVoAchmK/7Hskd0YfQCEGyk8x
         +542TcO2ivk+zNbab1z6p8hglEl98/3Rwp/35s/I3nyxp/9JOT/71z9SIlRfbSDnqBXY
         lNuQJKwYsx0Skh1Q6XRE5H07m84V19mTA3cjLo1Qrv/odT21lJq4ZtTaVO2sSce1TV0c
         h3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EQJmlP0ahwhCy64nPp0f4kxP53tZ/X2Yzc+wIK+4yII=;
        b=fZ2U/OGCRVs07hGRi8L3GcrCm+Ty2qMWHWabzi3/uXqwGN6UUYBnVrMwQDsdCOtySe
         P9LnSZJs32O8U0x18YJTCa9QFJ6w0FBeOTcxupNTNK+zlPDvI3S/KMv7DOpk0az3jWf8
         ZPgDllCsvz3IRhqTGZH6MtDRTBqXndz5ecYkLNwZXVChvljQymb5RG/Ga+2Oa+tdyvFT
         MASevKHS+TOgX7+2Jne+RLbWQVLSzE7W/mOsniTzntl5h3xStrL6UxSDGL+GIclbw7Ui
         plvIoup8nmHKblB+keJVuKlW1KtvgWWlOcFHQFfK4EGlILXklbO8xK4vKE8CJUx/SkHW
         8u1g==
X-Gm-Message-State: AFqh2kqneIeP5XC88cx0FKnW15KwnXpqX+IUZgREKhYl6OTjiT0YpAzY
        gAP7TtzpRSNIZ9JE6c3VZHZ3+ET4EE1gB3UY
X-Google-Smtp-Source: AMrXdXv+1xCnGZdqR61XFQ54dLuSwc59oBvmfaV7eF7lDZj6FpAid213KGUX2amnLnSCslLlf5t4Pg==
X-Received: by 2002:a05:600c:4b0f:b0:3d6:2952:679b with SMTP id i15-20020a05600c4b0f00b003d62952679bmr14509508wmp.34.1674230068008;
        Fri, 20 Jan 2023 07:54:28 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n42-20020a05600c3baa00b003d96efd09b7sm3349596wms.19.2023.01.20.07.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 07:54:27 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Inki Dae <inki.dae@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Henrik Grimler <henrik@grimler.se>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 10/11] ARM: dts: exynos: correct HS200 property in Exynos5260
Date:   Fri, 20 Jan 2023 16:54:03 +0100
Message-Id: <20230120155404.323386-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230120155404.323386-1-krzysztof.kozlowski@linaro.org>
References: <20230120155404.323386-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no supports-hs200-mode property for MMC nodes, so assume
intention was mmc-hs200-1_8v:

  exynos5260-xyref5260.dtb: mmc@12140000: Unevaluated properties are not allowed ('supports-hs200-mode' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos5260-xyref5260.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5260-xyref5260.dts b/arch/arm/boot/dts/exynos5260-xyref5260.dts
index 3c3b751d4360..387b8494f18f 100644
--- a/arch/arm/boot/dts/exynos5260-xyref5260.dts
+++ b/arch/arm/boot/dts/exynos5260-xyref5260.dts
@@ -87,7 +87,7 @@ &mmc_0 {
 	status = "okay";
 	broken-cd;
 	cap-mmc-highspeed;
-	supports-hs200-mode; /* 200 MHz */
+	mmc-hs200-1_8v;
 	card-detect-delay = <200>;
 	samsung,dw-mshc-ciu-div = <3>;
 	samsung,dw-mshc-sdr-timing = <0 4>;
-- 
2.34.1

