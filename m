Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5122E769290
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:59:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232433AbjGaJ7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:59:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232628AbjGaJ6i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:58:38 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55BB910CC
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:57:40 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so11493236a12.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690797458; x=1691402258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cpkYmwWQAX5IRqIDyYqczdN8ZGCbV1KYfKad4Zm6mVk=;
        b=EZM3AIwQm6576bw8dxiCHAWmm2g+2+mSlfTMvqqSK4gs/zsi9M6ceknMqL0koW31UK
         RHOTdrW7hIoghuJbKhIv+J7sXrB7klxLevcXTj7ott7L05gIN5vQRH6KB/d79uEBkHN8
         IBRAFMKB6xKZXvy6v7d0XRw6zme8qkr8Rl5hEriAr8g1mQzxR/muKWud/oivstd8Xqm7
         fy17qi41OZ5l4okEoMcsVE285FNYT3PI2SzcEBT5fki6zIOl2vIc2RHFiZl61vSiy5hH
         7u5FnvyDdOjo8ctnOcrkcc0o/sgSqfRWBYSdN3fZ22m7Z92tcholMQMXlyvv8pth5UJU
         YWtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690797458; x=1691402258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cpkYmwWQAX5IRqIDyYqczdN8ZGCbV1KYfKad4Zm6mVk=;
        b=SRv3gOYEEPUjZsZ006/9U0BvkaE7GACMLjuct3lM/AzAHD6PvJvEHf9TrxnBifXWR4
         c/4jmcoPOlsoCbdcSvFoKP8abUCM7cEPKZ6suW01pAXKMhzmx506GICXhoLENS3XFiVo
         vVsfux6utftEGfv+Y7TcCC8vedzSDjBLc9UVbrBZvNndTJuhg/bLW42koXRmfIbssmCe
         yS8o3wYoj6+ni/uZABdZ94xqGlHZHB27lVDgwcsHo4OeQMiV9i31Njfhk42snnbzMBfi
         o/NkbeFaGMzG8L4/x11ETZtQFgwMpMtjYHOoKpXXf+GY4aSGvnfQg0KJxb/om0RkToFX
         zhlw==
X-Gm-Message-State: ABy/qLa5fYQm5mh8TZg7r9IZLsBwjXEV9ay52Qrjr+yMnZHwJomkDlnF
        rKD9IUzjoNMH1p+3ktUUi8bP3wuohRIRrfFn0h4=
X-Google-Smtp-Source: APBJJlFwFzW2HXitklWzRHyuo6DCMKzATKHjqcNeymxNEs2Hh4dyOJckagIfmIzchdXT4r8E2BZcyg==
X-Received: by 2002:a17:907:e8b:b0:988:d841:7f90 with SMTP id ho11-20020a1709070e8b00b00988d8417f90mr6421072ejc.27.1690797458470;
        Mon, 31 Jul 2023 02:57:38 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id kq6-20020a170906abc600b009828e26e519sm5860678ejb.122.2023.07.31.02.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:57:38 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/8] ARM: dts: samsung: exynos4412-odroid: switch sound card to audio-routing
Date:   Mon, 31 Jul 2023 11:57:27 +0200
Message-Id: <20230731095730.204567-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731095730.204567-1-krzysztof.kozlowski@linaro.org>
References: <20230731095730.204567-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"samsung,audio-routing" property is being deprecated, so switch to
generic "audio-routing".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos4412-odroidu3.dts | 13 ++++++-------
 arch/arm/boot/dts/samsung/exynos4412-odroidx.dts  |  9 ++++-----
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/exynos4412-odroidu3.dts b/arch/arm/boot/dts/samsung/exynos4412-odroidu3.dts
index 42812da1f882..b1b0916b1505 100644
--- a/arch/arm/boot/dts/samsung/exynos4412-odroidu3.dts
+++ b/arch/arm/boot/dts/samsung/exynos4412-odroidu3.dts
@@ -138,13 +138,12 @@ &sound {
 	samsung,audio-widgets =
 		"Headphone", "Headphone Jack",
 		"Speakers", "Speakers";
-	samsung,audio-routing =
-		"Headphone Jack", "HPL",
-		"Headphone Jack", "HPR",
-		"Headphone Jack", "MICBIAS",
-		"IN1", "Headphone Jack",
-		"Speakers", "SPKL",
-		"Speakers", "SPKR";
+	audio-routing = "Headphone Jack", "HPL",
+			"Headphone Jack", "HPR",
+			"Headphone Jack", "MICBIAS",
+			"IN1", "Headphone Jack",
+			"Speakers", "SPKL",
+			"Speakers", "SPKR";
 };
 
 &spi_1 {
diff --git a/arch/arm/boot/dts/samsung/exynos4412-odroidx.dts b/arch/arm/boot/dts/samsung/exynos4412-odroidx.dts
index d5316cf2fbb6..0eb8a2680a20 100644
--- a/arch/arm/boot/dts/samsung/exynos4412-odroidx.dts
+++ b/arch/arm/boot/dts/samsung/exynos4412-odroidx.dts
@@ -135,9 +135,8 @@ &sound {
 		"Headphone", "Headphone Jack",
 		"Microphone", "Mic Jack",
 		"Microphone", "DMIC";
-	samsung,audio-routing =
-		"Headphone Jack", "HPL",
-		"Headphone Jack", "HPR",
-		"IN1", "Mic Jack",
-		"Mic Jack", "MICBIAS";
+	audio-routing = "Headphone Jack", "HPL",
+			"Headphone Jack", "HPR",
+			"IN1", "Mic Jack",
+			"Mic Jack", "MICBIAS";
 };
-- 
2.34.1

