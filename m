Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34D994F9F2C
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:31:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231146AbiDHVdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbiDHVdV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:33:21 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AB17203
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:31:17 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-e1dcc0a327so11099798fac.1
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NCXerAg3RiR6sAncXhe6SRUNMIY2ewR13FV7NqYeMsM=;
        b=nDkYFZaPXyfKGG9NlDkwdIWXSFF5M4kZqyVqQcFjRJBuHyE50GCgD5riUuVTlGsL5f
         WE1bOBt9V1IlGPnxIcoA+F4N94ywyPkS3IeZnF7lDQeyRmHRLrCAyh0wqYedOpDqmw1X
         iLSTZZzmUFPZJFuVt5E4bkng41agOoSMepTngq+zYQsEPVuqohEcIocXTfFoMhCjmIgC
         ChD9T3xtZ+UHC5Hoh0kDlBztjI0byBfw5uqZPT2gNstSfGluMjeBtVLuB8mGmF1///Ll
         oJPEgrClW8Biu0IkcvzUFnLdzT+TIWzKFAy9q4R/mG86CaS4wTB3X5cI1SlMoH/9G6w7
         myaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NCXerAg3RiR6sAncXhe6SRUNMIY2ewR13FV7NqYeMsM=;
        b=qfrtKf3a1Xdj6yXYcZYOp9R7KrmzAn7Ty3B1+MjMgrbS79m1bWKCBohLR5eIZOu5J+
         1L+eQ3o3dqsmnZPnDO9uSBUyeoMPRYHj9P2AjMKU3O/V/bSsJ36jFu9ncEHv0PeWEXwf
         61Zoz6Y6YMtzuAjCxKfOvBlLRR7HTbFt6ouMCLEF95uOoK5PAOeTp5THD3AyC69MjrVr
         Db+kVIob+y/Yr9jtVi9Je0JhB64bI4Yu46NHHZQC63p6xfA3rz2EXluGzgOpIfEkqV/t
         v2E0Tl9ft7+rWsbnm2JYh8YKEzF1fkzGAW7LcNeIOh6d0rb8NcGGU7STkMtHi0zuG0fk
         oFLg==
X-Gm-Message-State: AOAM531neYvfU223H7SpTPS9HHTmRc5HnrUvvFoJksgSMVuQDL3FbsBA
        64E4iueXNDz1nmVrmdBox+hD5w==
X-Google-Smtp-Source: ABdhPJwdui+5MCqqNXXmEfaprj3EHpdYLgxX9Xr9sukJWNWC5S46/fsFrj6P0jLX9/SsM9AYSuEU6w==
X-Received: by 2002:a05:6870:610d:b0:e1:f70a:9e8a with SMTP id s13-20020a056870610d00b000e1f70a9e8amr9871449oae.120.1649453476476;
        Fri, 08 Apr 2022 14:31:16 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id m126-20020aca3f84000000b002ef895f4bf8sm8983536oia.24.2022.04.08.14.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:31:15 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: arm: msm: Add sc8180x and sc8280xp LLCC compatibles
Date:   Fri,  8 Apr 2022 14:33:34 -0700
Message-Id: <20220408213336.581661-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Add compatibles for the SC8180X and SC8280XP platforms to the existing
LLCC binding.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
index 30fcbe2ad8a3..5ea506412b4e 100644
--- a/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml
@@ -23,6 +23,8 @@ properties:
     enum:
       - qcom,sc7180-llcc
       - qcom,sc7280-llcc
+      - qcom,sc8180x-llcc
+      - qcom,sc8280xp-llcc
       - qcom,sdm845-llcc
       - qcom,sm6350-llcc
       - qcom,sm8150-llcc
-- 
2.35.1

