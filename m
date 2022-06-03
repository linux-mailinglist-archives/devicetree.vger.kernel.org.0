Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0610F53C7EE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243218AbiFCJuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243207AbiFCJtz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:49:55 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A97E248E7
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:49:54 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id n10so14913860ejk.5
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WaLJt1WvpAiKJ7sF3CVE05WSOaNxkvjsdRpKOJWQz3Q=;
        b=w74wUAT9vqdRHGsMZNYQK3D7R/1cOktInyuV3fwhPb7HPQK2zLCUKUUKQhTPs62P1n
         FLnH8MilsWpm0RuOcos8h1k4GpOMYjAuJqyZ4a+4kKQxf4F1obBBA2Pfo5RKyGOVlwt2
         G7mtY3lsidPC2qFBmlvkgOgBuimHJML5s4I2R4kFaQAPFw0AN3iOP/wUmNJelAh+/K3M
         YyGY9T8NwhrcpSGt+umTNtoQkf13Rb+7ZH3hj4/4smvuIFwCckVaDECNJ530f64f2Dgc
         G25AP36CmCteILLGiadoBbi6ixGeJOHLt2i8vNERbxN4DhwcPYxGhYaFxAcaRCSRuigH
         77tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WaLJt1WvpAiKJ7sF3CVE05WSOaNxkvjsdRpKOJWQz3Q=;
        b=Oqe9LH4Bp2YLw+PXbMZ/ML/EvfhcdIBi28OIiqnS+rpWVKariOmwvTjiOIeSxqqsKu
         8TH5VvZzIPLb409Vl7Xnx/h1H4DpCINZIQIlZPWJ30fJWDVxGqc4zSE0tJaYPY+H8Sqf
         ui4OdB70SdWxTnQQD66pH7/cPyepNtyw7sc3lrDkaoWEjpjTLMU+lxZXv4+GK6mW3kgN
         HizZHMTaLu3NFXf1puxi2XC0hawZ9ccnSe9zjANtJqHQl7tRWcyuy0zYdO+FDUmx1VRZ
         yLoITd7zJOTl97UV1C7YtL5gu5PaHOKg91J1Kw+73PA3R+IzWnJ6ahMLFg6jy69nkBDT
         YOvg==
X-Gm-Message-State: AOAM5314wvPqkRtfMrvhv2dIMceQZvbr1TGq6J0oLJNJ/FCSgAyJKChb
        DlMNqCc+oC7bgs6WAgC+ZwqKWQ==
X-Google-Smtp-Source: ABdhPJyzQR9OcqECUT1o4sZ9dbMtCmyD8F4HPSgsDufPrHUEHfgWUWoSq+1elGkdLtHzgNdMTz9rmA==
X-Received: by 2002:a17:907:94d2:b0:6ff:2690:eae9 with SMTP id dn18-20020a17090794d200b006ff2690eae9mr7825022ejc.307.1654249792755;
        Fri, 03 Jun 2022 02:49:52 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y22-20020aa7ca16000000b0042dcbc3f302sm3669561eds.36.2022.06.03.02.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:49:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] ARM: dts: exynos: align MMC node name with dtschema
Date:   Fri,  3 Jun 2022 11:49:44 +0200
Message-Id: <20220603094946.509919-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220603094946.509919-1-krzysztof.kozlowski@linaro.org>
References: <20220603094946.509919-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and MMC controller dtschema expects
"mmc".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos3250.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
index 78dad233ff34..326b9e0ed8d3 100644
--- a/arch/arm/boot/dts/exynos3250.dtsi
+++ b/arch/arm/boot/dts/exynos3250.dtsi
@@ -376,7 +376,7 @@ hsotg: hsotg@12480000 {
 			status = "disabled";
 		};
 
-		mshc_0: mshc@12510000 {
+		mshc_0: mmc@12510000 {
 			compatible = "samsung,exynos5420-dw-mshc";
 			reg = <0x12510000 0x1000>;
 			interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
@@ -388,7 +388,7 @@ mshc_0: mshc@12510000 {
 			status = "disabled";
 		};
 
-		mshc_1: mshc@12520000 {
+		mshc_1: mmc@12520000 {
 			compatible = "samsung,exynos5420-dw-mshc";
 			reg = <0x12520000 0x1000>;
 			interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
@@ -400,7 +400,7 @@ mshc_1: mshc@12520000 {
 			status = "disabled";
 		};
 
-		mshc_2: mshc@12530000 {
+		mshc_2: mmc@12530000 {
 			compatible = "samsung,exynos5250-dw-mshc";
 			reg = <0x12530000 0x1000>;
 			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

