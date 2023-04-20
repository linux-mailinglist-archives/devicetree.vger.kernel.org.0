Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C531E6E8BBC
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 09:51:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233687AbjDTHv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 03:51:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233754AbjDTHvZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 03:51:25 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E0615BB0
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:50:59 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-94a34a14a54so51952566b.1
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 00:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681977057; x=1684569057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zvf+xnGH2yVUbEYT1ZXq0LUu7O6EHY5uIO2OZEVZG8Y=;
        b=f0rQsFU65XBxA2NjI7Z+NtW2TNGRRHPV7a212uJtzR325WSOB4EMmsVu0oAGEKSUEe
         uSEff3ICptXsToLKrmRTEeoCDRixGVRVQWUK0KFYIk2NAT2cQVcCNHkV3wTveF6CLWfw
         bYT+TIoh957zgu05MEpRhbkZ/7ElFABXLxUyTSpxsgZd6zA4Va5o3/4CUt1PYuOQNLMo
         Cx9jnaA6MXNk67Sj79mOdnjDoBaJWMzAK9xd7kVurenR6J9o2ZofucyKbVoQnKJqGY+3
         VsdQ7GyKTH8pyPO5j7GQKJA+uUzLV14AHT5fuUV2uJ5icZp+mpM+RvHUt2+dOg0VqRlE
         PUPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681977057; x=1684569057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zvf+xnGH2yVUbEYT1ZXq0LUu7O6EHY5uIO2OZEVZG8Y=;
        b=FMbd27O6ZeciNc9UBP+JXvDGuEDrOioL1iEqH3gVdyL+QT2vN8j4ILB5Oj9fOBTOjl
         hIvPKm6G5eoY9w12L07u6nEBS4dE08D569nj6r+T+16/kDdc4AT12Q0lESEZzLypG+pB
         BgM69JLanTYA6nx1IRJqm/tkSNStZX870FFQmQwlvVVRsFMg18NqtIWjUdw0ezHWBRc0
         yki8FTobBaSR8z/aTrW/jJ4kATRq6juIp/61WWY0bFYDlcWv1iruXvoBxBtRgAs/6nq2
         ExPR3t7EEVc341OQNkMeBHmWSOeAKMBPWoTt5C3lHRq5f0PTMFvXjZRpBLXN9Yfx9BfJ
         2qgg==
X-Gm-Message-State: AAQBX9eTLrvjAfWPYZmTI4RGu+lfs592hsyrVGVUEwS3OjZ1XjRmtU9U
        Uf7MVNEeg+UqLSwp+zPEChaJCA==
X-Google-Smtp-Source: AKy350YmwYM3+AAw5pd+K/TsEn1m2WWGHkJmmJa8deTWxwnHuh0NkDfBYr5R1jyDDmBA8syQq9kNLA==
X-Received: by 2002:a05:6402:4c6:b0:4ac:b687:f57e with SMTP id n6-20020a05640204c600b004acb687f57emr903824edw.1.1681977057187;
        Thu, 20 Apr 2023 00:50:57 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id h25-20020a50ed99000000b00505060e4280sm447165edr.94.2023.04.20.00.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 00:50:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/10] ARM: dts: qcom: ipq4019: correct syscon unit-address
Date:   Thu, 20 Apr 2023 09:50:44 +0200
Message-Id: <20230420075053.41976-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Match unit-address to reg entry to fix dtbs W=1 warnings:

  Warning (simple_bus_reg): /soc/syscon@1fcb000: simple-bus unit address format error, expected "1fc0000"

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index 342c3d14001e..72d82a9a6cc5 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -515,7 +515,7 @@ tcsr_mutex: hwlock@1f40000 {
 			#hwlock-cells = <1>;
 		};
 
-		tcsr: syscon@1fcb000 {
+		tcsr: syscon@1fc0000 {
 			compatible = "qcom,sdx55-tcsr", "syscon";
 			reg = <0x01fc0000 0x1000>;
 		};
-- 
2.34.1

