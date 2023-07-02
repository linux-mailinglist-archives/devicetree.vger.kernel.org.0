Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEF97744FED
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbjGBSuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229984AbjGBSuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:50:20 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43E3FC5
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:50:19 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51d7f350758so4806722a12.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323817; x=1690915817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/TlbZCUxLEVw4FifHQ/JNS9kwDMuJoBzQkocIllcfhE=;
        b=vx0L9CdyD3K0C0MAtFyGRioJEpB4eWjLV2HfaOid1hr2yYS7WbVPLrot8pOQKzB58Z
         VaNW6pokt/uBV5IJYIXhXDD/Smi74aE+sXX4PIOsEZhjmEwsSufm7eFITe8ZTbPMChLx
         Hp8pLRoG0lwwjgrKaT3PCzLT9goP7xTrPdMqnBB6V84aKl3oKcAmnlIx4S1PmgFs+ISo
         adjtgpsUFNJzXST8b45qk5FnAu+OGBQ5vmL12n4YEpfIs1dBkxwtgcPPTapl5XazbQs6
         gg5+TdktwMAwGNvH5s5g7iNaGP/39fd/36RQNM/E6YZkQ4yQXl8jYwhpQgXB0JJnmC5y
         eCNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323817; x=1690915817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/TlbZCUxLEVw4FifHQ/JNS9kwDMuJoBzQkocIllcfhE=;
        b=SRt/4OzeaHEj3QkmyQoItmzDelfSYayfplcjwKqhCwVUSc6N/prF8eEQ+pYuaauURQ
         IZEjexRvNrEZ4+h+iq36R2Ob4LxtDM8jfbmeaBYoFe3fHIwdIslNCQd6WmO5hxqTr+Hx
         iggor7OHUdjApFkc/k2Xcw0NxXKbU7HzcPNuLH1YzsrVofwBOTg2iL2FcfJYTNh0hHWM
         pmIfH4UsGXP48A/y3DzlhoR+n4UTcBeXEepKzukcBOX8L/hc7Mg/BXMUydsDYrwOXU0T
         Cj88fa5owylNM2iKAO6F+lsPWCxH9m8b53geMHWdR+rQRWrF+gQgv6Ct6xsDLjBSoA+j
         LpgA==
X-Gm-Message-State: ABy/qLYVV/c/2gs+1vhnZB65Ow0E6UGIZJla6sxO0viZQo5WjzDRx6FT
        5nUc4yPkl/PsXZvlapGJnSKrsg==
X-Google-Smtp-Source: ACHHUZ683Q1RqnhaKPhFMhO4V8NGltz55aX1mf/jrC6Vs32hwNaTK2R+mERPVKd+1IA6wyyGn4c5LQ==
X-Received: by 2002:a17:907:9859:b0:991:e3c4:c129 with SMTP id jj25-20020a170907985900b00991e3c4c129mr6114067ejc.69.1688323817741;
        Sun, 02 Jul 2023 11:50:17 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id k25-20020a17090666d900b00982842ea98bsm10861789ejp.195.2023.07.02.11.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:50:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>, linux-fsd@tesla.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] ARM: dts: exynos: minor whitespace cleanup around '='
Date:   Sun,  2 Jul 2023 20:50:11 +0200
Message-Id: <20230702185012.43699-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230702185012.43699-1-krzysztof.kozlowski@linaro.org>
References: <20230702185012.43699-1-krzysztof.kozlowski@linaro.org>
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

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/exynos4210-trats.dts          | 8 ++++----
 arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts | 4 ++--
 arch/arm/boot/dts/samsung/exynos4412-midas.dtsi         | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/exynos4210-trats.dts b/arch/arm/boot/dts/samsung/exynos4210-trats.dts
index bfb04b31e11b..95e0e01b6ff6 100644
--- a/arch/arm/boot/dts/samsung/exynos4210-trats.dts
+++ b/arch/arm/boot/dts/samsung/exynos4210-trats.dts
@@ -20,10 +20,10 @@ / {
 
 	memory@40000000 {
 		device_type = "memory";
-		reg =  <0x40000000 0x10000000
-			0x50000000 0x10000000
-			0x60000000 0x10000000
-			0x70000000 0x10000000>;
+		reg = <0x40000000 0x10000000
+		       0x50000000 0x10000000
+		       0x60000000 0x10000000
+		       0x70000000 0x10000000>;
 	};
 
 	aliases {
diff --git a/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts b/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts
index c84af3d27c1c..bdc30f8cf748 100644
--- a/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts
+++ b/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts
@@ -20,8 +20,8 @@ / {
 
 	memory@40000000 {
 		device_type = "memory";
-		reg =  <0x40000000 0x10000000
-			0x50000000 0x10000000>;
+		reg = <0x40000000 0x10000000
+		       0x50000000 0x10000000>;
 	};
 
 	aliases {
diff --git a/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi b/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi
index e6b949c1a00f..57836d5554d0 100644
--- a/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi
@@ -990,7 +990,7 @@ &mshc_0 {
 
 &pmu_system_controller {
 	assigned-clocks = <&pmu_system_controller 0>;
-	assigned-clock-parents =  <&clock CLK_XUSBXTI>;
+	assigned-clock-parents = <&clock CLK_XUSBXTI>;
 };
 
 &pinctrl_0 {
-- 
2.34.1

