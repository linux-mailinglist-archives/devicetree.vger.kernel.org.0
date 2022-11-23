Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A6DA636BCE
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 22:04:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236761AbiKWVEJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 16:04:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237068AbiKWVEI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 16:04:08 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D3EC2936F
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:04:06 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id bp15so29897012lfb.13
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 13:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lCL3T9bEBAWFKFNPkwgPngR7HtM0awS/KY1SN8cp/IM=;
        b=CcfVE3CIpdAWl1OIoYlRZr5tYRkW7hRYRidaps7uH5itebTaEbFJrVM/WIhEU4Wo33
         DLIHRYikT2WIfr/M39P7x3n3LjmvPzPHWFd0o+xA+8X+7a64TEA/bOx0uwFT8ZtFyUsC
         4wC13/frNdbuvZHflqW4u859QMvZUUURvuU3p8iv3GCBZEQE0ruvIGVniZu8EF0Wut1X
         k8DefauYVTqPV8vSjbwD/2q9xcZ2qf/aZpOzdaNUpBII3ZlGZRV+BopemUh7OdyvD7sv
         QzHee5hRHRJzw1xhWnSwyehX9k2myuTInMr5iTMaxg1Su5pbWryhW+IBPm7t+sGyo5QO
         53bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lCL3T9bEBAWFKFNPkwgPngR7HtM0awS/KY1SN8cp/IM=;
        b=Q0IPMzazxL+TzXoCrhfXF3uxfP1lh3ItFbrkJ7ds2EnYRWLtkMGoNYcc3FwHPwuWDw
         oRK2J3yI7wQetC8ZKVe8Xu4g3XgKJ2DcuMh1K1D3YBV7N+9sGmXBYTKNKRjY3mX66P8L
         /ERmDAAHlYlQn4FOuJSrVKG/XqS+2pUIdb0snEsFy+HYTd1IWjd80jx1l5YK3w6lE8d4
         +MX+q9Q3lONXs3op8r5/AJ4rqpfgbCuM/ZJ1UXobnuKbzTtvBlDp6MdqVo8GexFB5yGA
         WW26NNf7lbmNe1Xuk43vmiRAfZI9FSu/j9LTUOPwREzCRijDDGODxDRBkGpzZEfp8D6Z
         VaMg==
X-Gm-Message-State: ANoB5pnpwWKPCQZk0SOg+hJu2bwquTllSd2JHlrRW000pImEe214jO/R
        hOuP2OqyWg0uMqsAUADZb4dLew==
X-Google-Smtp-Source: AA0mqf6Mv9u0bqEHtoER2ms/qAfzGkxZGhZjC3FjxRCF6ns0Of+1EoEc4mCYC/42cBfhn5mbMmE9pg==
X-Received: by 2002:a05:6512:750:b0:4b0:a1e7:9160 with SMTP id c16-20020a056512075000b004b0a1e79160mr9404127lfs.566.1669237444954;
        Wed, 23 Nov 2022 13:04:04 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c3-20020ac25f63000000b004b177293a8dsm3009913lfc.210.2022.11.23.13.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 13:04:04 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 01/10] dt-bindings: display/msm: *dpu.yaml: split required properties clauses
Date:   Wed, 23 Nov 2022 23:03:54 +0200
Message-Id: <20221123210403.3593366-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123210403.3593366-1-dmitry.baryshkov@linaro.org>
References: <20221123210403.3593366-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Require only properties declared in given schema, which makes the code a
bit more readable and easy to follow.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dpu-common.yaml        | 4 ----
 .../devicetree/bindings/display/msm/qcom,msm8998-dpu.yaml  | 7 +++++++
 .../devicetree/bindings/display/msm/qcom,qcm2290-dpu.yaml  | 7 +++++++
 .../devicetree/bindings/display/msm/qcom,sc7180-dpu.yaml   | 7 +++++++
 .../devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml   | 7 +++++++
 .../devicetree/bindings/display/msm/qcom,sdm845-dpu.yaml   | 7 +++++++
 .../devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml   | 7 +++++++
 7 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
index 8ffbc30c6b7f..870158bb2aa0 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
@@ -40,10 +40,6 @@ properties:
       - port@0
 
 required:
-  - compatible
-  - reg
-  - reg-names
-  - clocks
   - interrupts
   - power-domains
   - operating-points-v2
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,msm8998-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,msm8998-dpu.yaml
index b02adba36e9e..479ce75bd451 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,msm8998-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,msm8998-dpu.yaml
@@ -46,6 +46,13 @@ properties:
       - const: core
       - const: vsync
 
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
 unevaluatedProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-dpu.yaml
index a7b382f01b56..e794f0dd8ef4 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-dpu.yaml
@@ -42,6 +42,13 @@ properties:
       - const: lut
       - const: vsync
 
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
 unevaluatedProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-dpu.yaml
index bd590a6b5b96..0dfdf8f3c5b4 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-dpu.yaml
@@ -44,6 +44,13 @@ properties:
       - const: core
       - const: vsync
 
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
 unevaluatedProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
index 924059b387b6..512d23f8d629 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-dpu.yaml
@@ -43,6 +43,13 @@ properties:
       - const: core
       - const: vsync
 
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
 unevaluatedProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-dpu.yaml
index 5719b45f2860..d5a55e898b11 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sdm845-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sdm845-dpu.yaml
@@ -42,6 +42,13 @@ properties:
       - const: core
       - const: vsync
 
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
 unevaluatedProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
index 9ff8a265c85f..687c8c170cd4 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
@@ -39,6 +39,13 @@ properties:
       - const: core
       - const: vsync
 
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+
 unevaluatedProperties: false
 
 examples:
-- 
2.35.1

