Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F01DC526E6A
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 09:14:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbiENBlm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 21:41:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbiENBll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 21:41:41 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685953AC65E
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 16:46:16 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id bq30so16992186lfb.3
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 16:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mfq8artsCmgPridHwXtCTWz4VD26jC/9nXCO2mqCNlk=;
        b=XSu+uAWOy0CcoMHUyluXhZWWtkc4qUBo0qI4viCQ30cyuYrMUpJ3JFQokxuFZU/vBQ
         CzbhruHa32gAU6FkZu74erzyaQbPTxrPEnv8gauzo2Qfr2k0BclPXxjuFUXr4UlamA2R
         eAg0X8TOs9c8Q5JoA/TtDl4ehSCa3FDwcvVxIlT09RZxpGQNYQ0jSHAhBZE5itmfJhsX
         y+F5hkkwEJ4pEolu4xYhGop01VNtvFotkWrSZAvwKkaDO0oRLWy/QRGkRlLY3t3LoE/O
         Va7jS2pEf9h94H4DYC6B+dhMAQeRT05bYyN6u/+S5RcUc2bNndVP8mdtpZ9VGVqjdj19
         yvVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mfq8artsCmgPridHwXtCTWz4VD26jC/9nXCO2mqCNlk=;
        b=XBPivk7Elgntg0kh1b0i7eb0fJObHcMWjemTzIgp6XrwbMMB1nRLdjxvuu1hqQX+0x
         OVIddZNM7rSjJoNnfA9q2kr3iBx9dWhSRSqIvGfPLQp527tEDY+HKskuXc02BN+q0rXp
         2hC/r2NE5FUaWSUw3aL+5YxdGJcMu7cjcgFvAJ1y+82sjJ+FYselqhKt8aSoVYin261c
         Ks/qcupt44iz9Ut7VyI4P89C1lEmq6zcgWuDXbFFifMBiQGnSilJ2U2FhO6/aO7YDjZb
         13Yb6mhhyI8iqEol/pvCk1leKNKMEmLE02Kxff/jixY0PEtO0UsOMXFuaN7oEnDMI/jF
         +cUw==
X-Gm-Message-State: AOAM530ctlVfBBRvxa+gRrd8qA5U/Rn5beqD+CIshJBQeBWswBthWayl
        JCO6tDCAxlIR+nMR7yLJl5P+nw==
X-Google-Smtp-Source: ABdhPJybJui+e0tOiXg4NBLVDYB4zu5tflcrM6PWhZali78ufv+JJvtCwsvkH2bvnH6e6+mA7pQZCg==
X-Received: by 2002:a05:6512:3045:b0:473:d457:1541 with SMTP id b5-20020a056512304500b00473d4571541mr5019548lfb.308.1652485529399;
        Fri, 13 May 2022 16:45:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o8-20020a05651205c800b0047255d2118csm527342lfo.187.2022.05.13.16.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 16:45:28 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 8/8] dt-bindings: arm: qcom: document sda660 SoC and ifc6560 board
Date:   Sat, 14 May 2022 02:45:18 +0300
Message-Id: <20220513234518.3068480-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220513234518.3068480-1-dmitry.baryshkov@linaro.org>
References: <20220513234518.3068480-1-dmitry.baryshkov@linaro.org>
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

Add binding documentation for the Inforce IFC6560 board which uses
Snapdragon SDA660.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 129cdd246223..ac4ee0f874ea 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -41,6 +41,7 @@ description: |
         sa8155p
         sc7180
         sc7280
+        sda660
         sdm630
         sdm632
         sdm660
@@ -225,6 +226,11 @@ properties:
               - google,senor
           - const: qcom,sc7280
 
+      - items:
+          - enum:
+              - inforce,ifc6560
+          - const: qcom,sda660
+
       - items:
           - enum:
               - fairphone,fp3
-- 
2.35.1

