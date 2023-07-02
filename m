Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7342E744DED
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbjGBNno (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230027AbjGBNnn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:43 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 860C7E6D
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:38 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b63e5f94f1so44507421fa.1
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305416; x=1690897416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IPTMLMDP3qi8FUIpipjx2Ww6NVhPh5E2iKLf2ZieppU=;
        b=xiYdkjwdbtUalNEW6fE/6BBLQCgXlhY2zFDp92MC4G+Gb2eb/grJs/HAGVNNGzR0zC
         bNaCgLn08Bf82oGbHSXCEtzAmL/JhW/mFSDt+KHSawdzyLKUGGf/vYFclNjKD/3A2j84
         qyNeXWytfDWD9dkccNng3ieUUgkDcIW0UEMO46UmWJGaHS8608KiJoRs7RnCItAyVgL5
         uOYNO+aQHC87mcpRFg7/gcBkqPfgAm0nWlrKqPUaeS99LtOAfTHD8/CcxPODsG7AixZi
         8jJbc/nb8DOWqlTvo1jnXqMwmw7gpQQW1N25Hvs+0XMbyY0MGYvYl4Qx26/kzXucFKXD
         NdtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305416; x=1690897416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IPTMLMDP3qi8FUIpipjx2Ww6NVhPh5E2iKLf2ZieppU=;
        b=gsTp6pg6Bx+w8oMzEGauLauOpdhqXYA+IdyBnLnEBoiMOuoWN/BpkD8ljThSecGoU3
         eQE9fBEss5wrdQZ79txbm006QOnqrYOMzLHJG+102Y0f5lB6nGth/3aRfpnwiQDsgHE8
         RD7F62RHkgtSCo0taPKoWex0XU/+UCNxgWbzI/dFVewzvI1tuJ02EVnNiR8GyPcMTWy9
         JiDXJrfJo7I31nOt3QajUuhrkbAgk1puTAVscnbS1R8ogS+mg/ExBMpbO+8k4OCeNtvg
         VqDFN3oFdlFVL98XCPPskAI67pSUIn1BIPW2vhw7e2ZDmThfU9s0ZpEqrnRvmV5DaV3d
         us3g==
X-Gm-Message-State: ABy/qLbi4x7VudFypCfH/0GDklqDPPOGk7h8+JX8HDZQjA/W5vZ/CxWm
        OlW045iyPKBw+NnSXOWSLBD4Nw==
X-Google-Smtp-Source: APBJJlEuKSB96ern6+3w5/KIhElI83YEtXwsfqNDzRMYBY8I1BfsD6f1oETAiwfUUfKEIpbtyeEHLA==
X-Received: by 2002:a05:651c:231:b0:2b4:50b8:5d3b with SMTP id z17-20020a05651c023100b002b450b85d3bmr2637540ljn.0.1688305416665;
        Sun, 02 Jul 2023 06:43:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:36 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 20/27] ARM: dts: qcom: pm8921: switch to interrupts-extended
Date:   Sun,  2 Jul 2023 16:43:13 +0300
Message-Id: <20230702134320.98831-21-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Merge interrups and interrupt-parent properties into a single
interrupts-extended property.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8921.dtsi | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
index fa00b57e28b9..360a179670c5 100644
--- a/arch/arm/boot/dts/qcom/pm8921.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
@@ -11,9 +11,8 @@ pm8921: pmic {
 		pwrkey@1c {
 			compatible = "qcom,pm8921-pwrkey";
 			reg = <0x1c>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-				     <51 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 50 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8921 51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -32,17 +31,15 @@ pm8921_mpps: mpps@50 {
 		rtc@11d {
 			compatible = "qcom,pm8921-rtc";
 			reg = <0x11d>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 
 		pm8921_keypad: keypad@148 {
 			compatible = "qcom,pm8921-keypad";
 			reg = <0x148>;
-			interrupt-parent = <&pm8921>;
-			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
-				     <75 IRQ_TYPE_EDGE_RISING>;
+			interrupts-extended = <&pm8921 74 IRQ_TYPE_EDGE_RISING>,
+					      <&pm8921 75 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15>;
 			scan-delay = <32>;
 			row-hold = <91500>;
-- 
2.39.2

