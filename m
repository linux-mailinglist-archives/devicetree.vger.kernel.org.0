Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67FAE6C87D0
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 22:56:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232120AbjCXVz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 17:55:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232222AbjCXVz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 17:55:58 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14431CC04
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 14:55:57 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id g17so3956199lfv.4
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 14:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9HNNyuZvJvYKBcqK0/OMiX1YPg0B5MbtC1DLyTXAc5E=;
        b=fFRJAs9EWXwN/qrRmNJmz/+erMATnV/P27agcQ1jrN4LzjyazyEOfHxJXW/tDstlC6
         8LFWg2unfe5z9vXki4qvMFyVEzoTIqljG3hC1IxAfpPynqgjmveSGbWhwwiDpGeKBRAC
         LRijO/XrAEOdUVR2CGaU5lHh0IDFfHC6r5sgMGwyupNHHKZltgBfJhIFs5gxfqU4es6N
         DZBjaiedfm4B/3wx25l1AYFBu9zAUyUJYLQOE672UXKiN6LU3e1belfVIhwD1fweF+Bo
         xz7CA3UAM8/b7KvNdW52LK98mnWRoXlv3qbJ5jdzqvUqHKPw+5DxC6DyRs+irCQGwf6R
         JwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9HNNyuZvJvYKBcqK0/OMiX1YPg0B5MbtC1DLyTXAc5E=;
        b=qPRD47WJllpZnHJ+pyWbnEs0sh3T2qu9eGLj561hwrFliVSTwJl8kPwZupLcBQZomv
         D1Jw5xH3SPWFWXrZ+q7SwHcTwzbfee1IkBTY/RD4WUZqyAhRAZYvCBcxuMgCTOofZgf/
         Uj2FiP2dX9PVbQCMqh9G8rGUaHI+EwChb/a4mbDx/DSz9tznjwmobPIT1h0CG+CLMbom
         afyJcjZ+sJLXiMhtDoOPZ+I8H1mZnUR++2rl4aOv1gcx0FP3mM8QIGCH6N1jHQD391lB
         iYi6BcEXNqEo2gX3TcbYXmLaW/cFtm89n1QH+ISQ09ixTYHWF2HjNk9kbXNm9Ef1Y811
         j5/A==
X-Gm-Message-State: AO0yUKWKS++OlKxV0BdYqmu/cN2KR1CQ22J9tRKhwVypdD12ukfJc/HV
        Wtk3hyW+bIlSDRXASps3vYS6ew==
X-Google-Smtp-Source: AK7set9xb4KyXpvMnmN8dL2Lhy7A90LsO+TVlgBZ0MH5VYUdS3f7PXM+yP/6NZxgkpNqDVzsPUTljQ==
X-Received: by 2002:a19:9157:0:b0:4ea:e695:d116 with SMTP id y23-20020a199157000000b004eae695d116mr2493073lfj.32.1679694955438;
        Fri, 24 Mar 2023 14:55:55 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop legacy bindings
Date:   Sat, 25 Mar 2023 00:55:49 +0300
Message-Id: <20230324215550.1966809-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The qcom,msm8996-qmp-usb3-phy.yaml defines bindings for several PHYs
which predate USB -> USB+DP migration. Now as sm8150 has been migrated,
drop the legacy bindings completely. No device trees use them anymore.
Newer USB+DP bindings should use combo bindings from the beginning.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 80 -------------------
 1 file changed, 80 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index e81a38281f8c..5684eaf170e4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -24,26 +24,17 @@ properties:
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
-      - qcom,sc7180-qmp-usb3-phy
-      - qcom,sc8180x-qmp-usb3-phy
-      - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-usb3-phy
-      - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-usb3-phy
       - qcom,sm8250-qmp-usb3-uni-phy
-      - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
-      - qcom,sm8450-qmp-usb3-phy
 
   reg:
-    minItems: 1
     items:
       - description: serdes
-      - description: DP_COM
 
   "#address-cells":
     enum: [ 1, 2 ]
@@ -128,28 +119,6 @@ required:
 additionalProperties: false
 
 allOf:
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sc7180-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-            - const: com_aux
-        resets:
-          maxItems: 1
-        reset-names:
-          items:
-            - const: phy
-
   - if:
       properties:
         compatible:
@@ -204,7 +173,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,sm8150-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
@@ -225,29 +193,6 @@ allOf:
             - const: phy
             - const: common
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sm8250-qmp-usb3-phy
-              - qcom,sm8350-qmp-usb3-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux
-            - const: ref_clk_src
-            - const: com_aux
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-
   - if:
       properties:
         compatible:
@@ -271,28 +216,6 @@ allOf:
             - const: phy_phy
             - const: phy
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sdm845-qmp-usb3-phy
-              - qcom,sm8150-qmp-usb3-phy
-              - qcom,sm8350-qmp-usb3-phy
-              - qcom,sm8450-qmp-usb3-phy
-    then:
-      patternProperties:
-        "^phy@[0-9a-f]+$":
-          properties:
-            reg:
-              items:
-                - description: TX lane 1
-                - description: RX lane 1
-                - description: PCS
-                - description: TX lane 2
-                - description: RX lane 2
-                - description: PCS_MISC
-
   - if:
       properties:
         compatible:
@@ -319,13 +242,10 @@ allOf:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,qcm2290-qmp-usb3-phy
-              - qcom,sc7180-qmp-usb3-phy
-              - qcom,sc8180x-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy
               - qcom,sm6115-qmp-usb3-phy
               - qcom,sm8150-qmp-usb3-uni-phy
-              - qcom,sm8250-qmp-usb3-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
-- 
2.30.2

