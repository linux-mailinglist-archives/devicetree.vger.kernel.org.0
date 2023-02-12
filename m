Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38480693977
	for <lists+devicetree@lfdr.de>; Sun, 12 Feb 2023 19:59:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbjBLS72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Feb 2023 13:59:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbjBLS71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Feb 2023 13:59:27 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62C1C10ABD
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 10:59:25 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so7524531wms.1
        for <devicetree@vger.kernel.org>; Sun, 12 Feb 2023 10:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GmOvnEkaqrRpifwEMdH8ouHFrGB+gA1HRCLLbZbkxcE=;
        b=A/A9bnKggSe4CtixJPIXg2+ocd3ky1Zf88YMRLyyctEVsVzTjAuGLCYwMqY+b1uXRF
         1b6lKDkCcNyCryVa4tNBGBZMbr5UT5fBc+O7Gpsb/yGgxOOcg7NwQanPKAfrF6EH97mB
         Y+Svm/g/09FFelQy+xYSR61uoGxlLE3WO4sRaSOGER9CqMFe5nKOl2PkVf4Z0lR53qGi
         xV26sAos0E8gn0AnkE0zFPhlZnmu8Ng+UWYeKNKOVtKNzjJfE7uiSH/RkV0MQHRA7kks
         WOVtB0PZyKUWJ5eAifKTNvF2DI6GCIC6O17Tv5daf3tVHfve7ziLPCMDxDEVzspZAcet
         Do3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GmOvnEkaqrRpifwEMdH8ouHFrGB+gA1HRCLLbZbkxcE=;
        b=UzjFyAUS8K0fsVR4iSS9/7IImksAr4apu7ApDaVWuxOZf9ErSDP9rpCZ/5KGGXOqRY
         2+cP22FwfmIpsAzNyLGWZci44ORTEEvRpx3zCJB8qD88ZOObMJ0ajyGHdpqMryXbuluD
         pSYnbpViEtnnYe9PiXW+k6a3pcdkynQXq6N0ez+KngAxXWlNcbJy0W3KwAgmaPb8DhYb
         dw6lJVfBG1WxYSCcQ18MN6mEUtbFnwuJmg7Zoa5vstPKjR3OB8ZX7CsYviehW3IMbpTL
         HfsdFv8VFCmFkeHWBDa5C4M1nLwFDVu3a3aTbXeE8/Xz92s1edPirMMxUmIKAxWo9Xfr
         yIlg==
X-Gm-Message-State: AO0yUKXwpXsOK3cEXF91zAISfOkcSQYM1XdeBgWaqm4VKG2D8My0Jv6P
        kbiaQ5+AeK1o4l4SCQ1N0qOTwQ==
X-Google-Smtp-Source: AK7set+SpidB+O2lsrnojHpqhI3WV5OLqCeRA0fDizUjdBPfOefwNNQTUyaGj7CS1grOOenVKI5CEQ==
X-Received: by 2002:a05:600c:30ca:b0:3df:c284:7e78 with SMTP id h10-20020a05600c30ca00b003dfc2847e78mr19176238wmn.38.1676228363627;
        Sun, 12 Feb 2023 10:59:23 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bg1-20020a05600c3c8100b003e118684d56sm12391350wmb.45.2023.02.12.10.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Feb 2023 10:59:23 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Tomasz Figa <t.figa@samsung.com>,
        Mateusz Krawczuk <m.krawczuk@partner.samsung.com>,
        Kukjin Kim <kgene.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: exynos: correct whitespace in Midas
Date:   Sun, 12 Feb 2023 19:58:17 +0100
Message-Id: <20230212185818.43503-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Correct indentation and whitespace in Exynos4412 Midas board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos4412-midas.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
index 763bd3441c5b..3be48de5c130 100644
--- a/arch/arm/boot/dts/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
@@ -497,8 +497,7 @@ &fimc_is {
 	pinctrl-0 = <&fimc_is_uart>;
 	pinctrl-names = "default";
 	status = "okay";
-
-	};
+};
 
 &fimc_lite_0 {
 	status = "okay";
-- 
2.34.1

