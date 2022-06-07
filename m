Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8C655404DD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 19:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345688AbiFGRTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 13:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345693AbiFGRTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 13:19:04 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3907D1059C3
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 10:19:02 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id s12so29346096ejx.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 10:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=csyCE0Ob47wjhHNAVvg56QOFgF3Z5EUZtR/Uys+YVVE=;
        b=hOf6w9EVAYIQzT9X+s6hlk8MU7l4KDMIyWM3na6s57c7oz0ebPWlRD8bN3ISYULBAm
         RU/cxgFP98aC5QHGPIqMu6aV/g4yTYpfRu2/LV0hpgzCHoB0+w4r3HgMbSoTJVUcOro1
         Whv2Op6Rq68Loyw1L1Wb1hc3AIPefTZe1S1ihkLoCXFiVDreyVdv3fk/68flH0/hGB1P
         dtzq51oCnofKxYOdohJZivZBCq9pTWeKWQrleUKT5TfBb+O7wDMUpDLK90YzdBtJGO4W
         XWkWSCzDpQ13DzFHrfMEruf1dMHFIvGvNbiaetQ3RnAQYfwiuD00H3ZZxnfo80ezaNXH
         gm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=csyCE0Ob47wjhHNAVvg56QOFgF3Z5EUZtR/Uys+YVVE=;
        b=GI5JiQoIy9Pe5iOKdFcBlPohiEo7VhSU7nliAf6r/ZZT0fMML6kClJWyr55XpgxKP/
         exex6lyrI1VYAzeX2f6WjPKLMAmAH1XS2AyGMLL4vKo3Ug9IQOlP0xr9extfyQBCyYAU
         YZfpz9G9NgyFGrshLJiZSIM98RP/AREBhAbBROSa/imcG29bNyDIrzYNaD9jCtKwCdKB
         ddZJpJ9SyDg4wtSJFswBEx/qOz0GtOlPzzLF3AEz5EU8zu71a1HsAYYkk1en1UIgGKsG
         w9+wN+JyMXt2pqa+tuKkJtWcO4Y2/HBMrh8CUnVgEm1uC+oUuyFlvAXst3bRvk25gsvN
         GEtA==
X-Gm-Message-State: AOAM533tgc0lliY5BG/Rsa0qtxtFGX/mRDfDiDzsJcOXOp9worZO6eUQ
        DRc8CXzzanApKW5MAnl4XAbUmA==
X-Google-Smtp-Source: ABdhPJw1cGOn5vbz5JcbHCWGoDHgn+tubzNQr0bZoZGrSPxYlhfwNAVhnOCrVVZtsrHGSg/p3vonrA==
X-Received: by 2002:a17:907:3e0d:b0:711:dbff:b830 with SMTP id hp13-20020a1709073e0d00b00711dbffb830mr6553739ejc.601.1654622341683;
        Tue, 07 Jun 2022 10:19:01 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i7-20020a170906444700b0070e238ff66fsm5876540ejp.96.2022.06.07.10.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 10:19:01 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brian Masney <masneyb@onstation.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 10/14] arm64: dts: qcom: sc7180: add dedicated IMEM and syscon compatibles
Date:   Tue,  7 Jun 2022 19:18:44 +0200
Message-Id: <20220607171848.535128-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
References: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
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

Add proper compatibles to the IMEM device node:
1. syscon to allow accessing memory from other devices,
2. dedicated compatible as required for syscon and simple-mfd nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 496fc2857d92..6dae8a9ac196 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -3248,7 +3248,7 @@ spmi_bus: spmi@c440000 {
 		};
 
 		sram@146aa000 {
-			compatible = "simple-mfd";
+			compatible = "qcom,sc7180-imem", "syscon", "simple-mfd";
 			reg = <0 0x146aa000 0 0x2000>;
 
 			#address-cells = <1>;
-- 
2.34.1

