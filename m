Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA0168F475
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 18:27:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbjBHR1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 12:27:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230464AbjBHR1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 12:27:15 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E87EF1BA
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 09:26:51 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso1995452wmp.3
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 09:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IthlQVOkiWnqAVOrcwnjK/hncHhlqSzAla08vNnpBBs=;
        b=ncjbK/IjIRjZSVVCm5UW/GTZ1pFctUORIJobSApOZCmKKSaTi8doyaI2SmDiYIXOuG
         rZCkrlI+NHcVmxry6ifJ4MAkKZL1YE0JPWja0PStq6Aw7JZGWO9Z6S3HdgR/lG5EEbM2
         v/FajlbuQxgf5O1u1+aX3dWS768NFcmn0JB40cDNaGVZaqSOoGIJwwtEMY57DU3SIGAd
         gelL1ma1E7EG3akq1gsdZ1/fgbQgknvnrkX2M+voDswgWdUm7YELvKoejTQ/foUtBQha
         NbORHWu5QUl+RAwboA40YAC7FtpjrbBTL78i+KBfCYD+PsVlz4P/Z7azRNuZfKwG+yqi
         c3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IthlQVOkiWnqAVOrcwnjK/hncHhlqSzAla08vNnpBBs=;
        b=3PwbbCsUL2BYJUVY4CrY06IyNIWXQOcyPXi9Molir9j73gS06vDI1oQY2dbgXwngEw
         dOpSFHdAVM/sJZfAUV25xO33xFjPKtXiHlwrnJtC3xM100nEPA1twGDycsmOPyv9ho/8
         gozIqQu+XqIeeFlcTco5ZD/nYahOUwh8tqGRv9giOQlyTSvavEuXTM4Ka9NmXz8uv6Xw
         MQrao6vQQ3YZlNwTC/V49+tT+7ONFBi6WdDwZtI8zdtSLmC1HhqmS2MW0R+jav33uT3D
         2a2VCKzCxz57PrET9nMrJ8SvSnUEYdm84G9iR8oaJbN1InfktDAL5hpXjwztNwT4xcK7
         kFjw==
X-Gm-Message-State: AO0yUKUzpnnXkWUzGpO8HvPkE8ubkA278MDjg9sHxGu7F0ImzrIB8fta
        EqAly6mzlhOETQv+qf8Q0O9shQ==
X-Google-Smtp-Source: AK7set9hYTQx01kSCRhx6wENRzX+3TI0Zpz69KEaHspoUsv96TSaQhWtq5bJLXPkeBD+xH475unMCQ==
X-Received: by 2002:a05:600c:16c5:b0:3d6:ecc4:6279 with SMTP id l5-20020a05600c16c500b003d6ecc46279mr7464750wmn.27.1675877207384;
        Wed, 08 Feb 2023 09:26:47 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h1-20020a05600c2ca100b003dc3f3d77e3sm2624502wmc.7.2023.02.08.09.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 09:26:47 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Henrik Grimler <henrik@grimler.se>
Subject: [RFT PATCH 3/3] ARM: dts: s5pv210: add "gpios" suffix to wlf,ldo1ena on Aries
Date:   Wed,  8 Feb 2023 18:26:34 +0100
Message-Id: <20230208172634.404452-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208172634.404452-1-krzysztof.kozlowski@linaro.org>
References: <20230208172634.404452-1-krzysztof.kozlowski@linaro.org>
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

The GPIOs properties should end with "gpios" suffix and Linux gpiolib
already handles both names, so switch to preferred one.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 964c5fe51755..f628d3660493 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -135,8 +135,8 @@ wm8994: audio-codec@1a {
 					0xa101 0x0100 0x8100 0x0100 0x0100
 					0x0100>;
 
-			wlf,ldo1ena = <&gpf3 4 GPIO_ACTIVE_HIGH>;
-			wlf,ldo2ena = <&gpf3 4 GPIO_ACTIVE_HIGH>;
+			wlf,ldo1ena-gpios = <&gpf3 4 GPIO_ACTIVE_HIGH>;
+			wlf,ldo2ena-gpios = <&gpf3 4 GPIO_ACTIVE_HIGH>;
 
 			wlf,lineout1-se;
 			wlf,lineout2-se;
-- 
2.34.1

