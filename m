Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D4536E8348
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 23:19:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbjDSVTD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 17:19:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbjDSVTC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 17:19:02 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11CF544B9
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:01 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id dx24so1556739ejb.11
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681939139; x=1684531139;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XNdQHUKODXXt67LxaUJzh+dDCQhTNW3uFMbegpJCJsk=;
        b=nX5oPLbdwltmiYoQBnR4YxIT2zRkKw7dW9RzYvBDXorZs9N4KO/oD/g/e8Svec3y0k
         HEFmVwAIWDcvt3/rhIwcs+3OSGSjDgkS00vSLOmJkgrbjW7r9l2L4Pf4siQHImEl6zZ0
         DacojzsnLflHR5QuQFMR0PrPLf7Me3LpuWd390K62WOrUBSUaEMHa52QmB3mcSUmRV9Z
         Ntg3Y92b+icXZINL7L7QEgPNQaGGF78JIi0piPFwzeITQ7zKVuQLKQFGMjGUO9E71evM
         uUDnu6IdwW8EFmDGsD2xf1rHSx5Zcp+LngzeNXJMZX4qTURtYY3GO49JdISVPz6j/Dne
         Mw9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681939139; x=1684531139;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XNdQHUKODXXt67LxaUJzh+dDCQhTNW3uFMbegpJCJsk=;
        b=bJBSb8gpWe5qLGVuVVjHe3BeR7ZnuHTSpXKEgHMNpRX87o0otgt2InnHf6KZ6Qi/OM
         /XSbY+9NdkOigiBwLzm2cy9rEQ3RLgU+QwOtx7pvICANvYRosHBQ96Ae/4GQz3nGtlVY
         d8Pob89wTRuOK6SJKol+yFlGNlPV+lSNm0xLq4CZW21BATzqpNFxnhTdR66+eKKtuApS
         NaAIkZspp9icwdnJvOkIt2WdTFwG7RNkuh0V0bgF/pA5k3KhO6DFdstK/ki0PIz4pL8z
         9mT81M5diDmPylOQwTvlL4aF+NJD0x3gKk9L2d2NLtF95Y6qISJhAN+JJ0qXkRo10m2m
         sSpA==
X-Gm-Message-State: AAQBX9c/ZeKZfzL4MQQUiqOJTImf/9BnqcUqjk2fm2kgNlyp+O90HEGo
        48tc25eZNlMoWCaPLZAUP/9ZXg==
X-Google-Smtp-Source: AKy350ZgzRCuAoWVAG/NVKKjpMHo44jBMi6sU6qS/XC10WZcV/Jxsi+tjrstlMFaAYREbP5Gz/6J+w==
X-Received: by 2002:a17:907:204c:b0:94d:57d2:7632 with SMTP id pg12-20020a170907204c00b0094d57d27632mr16504563ejb.31.1681939139568;
        Wed, 19 Apr 2023 14:18:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:976c:1d6c:6ed0:8935])
        by smtp.gmail.com with ESMTPSA id a12-20020a17090682cc00b0094f109a5b3asm7092739ejy.135.2023.04.19.14.18.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 14:18:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Todor Tomov <todor.too@gmail.com>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Adam Skladowski <a39.skl@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Robert Foss <rfoss@kernel.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/18] arm64: dts: qcom: ipq6018: correct qrng unit address
Date:   Wed, 19 Apr 2023 23:18:39 +0200
Message-Id: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Match unit-address to reg entry to fix dtbs W=1 warnings:

  Warning (simple_bus_reg): /soc/qrng@e1000: simple-bus unit address format error, expected "e3000"

Fixes: 5bf635621245 ("arm64: dts: ipq6018: Add a few device nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 54af7cb3c7a8..992e8ed64617 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -302,7 +302,7 @@ mdio: mdio@90000 {
 			status = "disabled";
 		};
 
-		prng: qrng@e1000 {
+		prng: qrng@e3000 {
 			compatible = "qcom,prng-ee";
 			reg = <0x0 0x000e3000 0x0 0x1000>;
 			clocks = <&gcc GCC_PRNG_AHB_CLK>;
-- 
2.34.1

