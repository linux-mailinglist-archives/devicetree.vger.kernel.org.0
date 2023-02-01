Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9033B686AD9
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 16:52:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232943AbjBAPwZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 10:52:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232797AbjBAPvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 10:51:48 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FE2C751B1
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 07:51:27 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id t7so9385657wrp.5
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 07:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uh2Te28HH7EEDeScQ63unqg3ox1SkhWBRdhnhyZfktI=;
        b=Id+fmM4kYk75vyK28EUryzv9LN41L8R7Dbcvv+RnAwMyD8qKqxiSJFZdOaCso0B8yh
         CWNPsc1/lqLp5Yz9+HfqhpDrWxEP2ehZ8obp4EsQArbKLA22wJ9XQJWbDn8zKP10hFm9
         bZrndMV/EIYa4r7WLil48Ee3wplheLCQ28h3LHa3z/OFQLn0Tkk4oE5715IHNxNh+QT9
         bVoni9TpSwwJ/VesiNWMS5UgK7DwplI/zFlk5KkRsjhFtQhhdquAECVI9W1EhdF1MxFE
         RzsgEqRAWhm6ojvbguOAwULuJC856xRQXisYtrxbau1cg1SOnFZlKZ/DI8kOLDRlXL+y
         X/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uh2Te28HH7EEDeScQ63unqg3ox1SkhWBRdhnhyZfktI=;
        b=yQyXEJtj8M+Jv/l0WFnZzCDQOZw0ZgD+bAveb0xQBvx2Yk4pSGrQDUAbuXth97JbZj
         r6xMUmZtxyOZ8unSGA6WfXp+xMdPmKyEbFw1aJ24qpssSbO3wkfA1Qr1c0rIHoV7al/A
         xk8v2bgRCB9bUHpFKFaFtNM5bpkcPrsuFbf7mbDLnE064zGZJ1nEsuUe+ItdHoWflXGu
         Lg9B8T6hEz/Vs9SCpECfK69ZmFDSJ3wlqH5KvtIBvFvSCgjZBf3P2uR333q+0Ba92/eN
         5HRgJepVn8ovAO8tIMceSFF8WxJJN4WyiPjApXXBHmP+u7YEmVGp98NJG87vrBrND1bG
         hfWg==
X-Gm-Message-State: AO0yUKXHPcWIEUiib58UR6nr0Zreke9McHPBPj8muILrIMHcnHrRAUez
        kraBqO8doWI56bHuLoUz9yGsnY8UGmB5kGwp
X-Google-Smtp-Source: AK7set+2T2xk3dG1WK1T2LTYmG7WLE0tpW/Ne1m+CGDKxQCa9pHZbPed4Weckd+bWLeEwm2JC3JpxQ==
X-Received: by 2002:a05:6000:104b:b0:2bf:b047:d4ab with SMTP id c11-20020a056000104b00b002bfb047d4abmr2925355wrx.13.1675266687176;
        Wed, 01 Feb 2023 07:51:27 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t1-20020adfe441000000b002bfd524255esm14816189wrm.43.2023.02.01.07.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 07:51:26 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 14/14] arm64: dts: qcom: sm8550: correct TLMM gpio-ranges
Date:   Wed,  1 Feb 2023 16:51:05 +0100
Message-Id: <20230201155105.282708-15-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201155105.282708-1-krzysztof.kozlowski@linaro.org>
References: <20230201155105.282708-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct the number of GPIOs in TLMM pin controller.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 6ff135191ee0..24c7e3378b9d 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2546,7 +2546,7 @@ tlmm: pinctrl@f000000 {
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			gpio-ranges = <&tlmm 0 0 211>;
+			gpio-ranges = <&tlmm 0 0 210>;
 			wakeup-parent = <&pdc>;
 
 			hub_i2c0_data_clk: hub-i2c0-data-clk-state {
-- 
2.34.1

