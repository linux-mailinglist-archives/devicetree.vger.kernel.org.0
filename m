Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82A5A712D2F
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 21:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237707AbjEZTWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 15:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236147AbjEZTWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 15:22:37 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B170E189
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 12:22:36 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1ae3ed1b08eso11077125ad.0
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 12:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685128956; x=1687720956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrjvdZSqXKi+MzhLUYpp9EjIDqVatd4GVNSMEpyYnzM=;
        b=HTFoP4m/KzdkNWwsXmOkyw8oHw3x66dQjBNKv5POjSNBeIlLOuM7UCjCf15eu3hiXY
         W0JzoeIac8HudaGgcWYGRPf7w3rYQC2JR4896NrFutHzV9M5KRzhc+KAYFZ4UGT7bTBj
         VTbb+hyZvo5PiLzVDP1C1h1Z9MXVWNcWQZ9WLMB4LkbV9TBUy498c+cYLVScqo5cdZq9
         YzSZ0uKE9V/RN7wuXkfsyBjqUjk5qpEWOC8L9JKzTR31Xih/qODE96T5YItlJjZzlK9d
         7OdR+aqHoJXlAOenOC3DM57WXruMmSOwSUEwmG9dmt4RbRVdUYmPg6pEJ+hzd7gHqqO5
         KrMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685128956; x=1687720956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YrjvdZSqXKi+MzhLUYpp9EjIDqVatd4GVNSMEpyYnzM=;
        b=cXYFRth0+XGsTPFCaoA44yqjLibSPyWq80vIt++ci7VYSVe9GP9OXGlEHpvsBeOKZt
         5Zl3tvssHdtZ+Wzk3JLvupDNFeFJTZczSgkSOMDbLEW58WKaQHTHRr9lHzGBsctzRid7
         EGTahH33KfEgZbWkBA396+c3C0m5GEA6ROvlPBrwmYKMnNxCS/AiGfrT7NheSwIA0oan
         gMRosw9mJo3fFpVSF3/GMRm5awF1LIsSXyLiGoyFge1lqfpFuoFzdAeoOyoRcffoqsgE
         lHHzYQXI/NwRP5XOW9KRkdUbkP1rYJdDsi4zhBTe9S77dDVjo10KkOjsRZJ9eY8vyEbg
         t10A==
X-Gm-Message-State: AC+VfDwGTLIG/085l2qwMGS4WF0tSIH7he7qpP9PHBG0YSJ3kMJwk24A
        Cq3omQrrFWjmOyqjaJOE6CjeBA==
X-Google-Smtp-Source: ACHHUZ4UArCDjWuEi+cSUtH0hktf8DnI6jWN5twY18OKujfYmlgy7/MVEUVN4Sfe6pUoZjmI3d2ylg==
X-Received: by 2002:a17:902:eacb:b0:1a6:84be:a08f with SMTP id p11-20020a170902eacb00b001a684bea08fmr3481356pld.64.1685128956253;
        Fri, 26 May 2023 12:22:36 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3a:6990:1a5c:b29f:f8cf:923c])
        by smtp.gmail.com with ESMTPSA id q18-20020a17090311d200b001b008b3dee2sm1955079plh.287.2023.05.26.12.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 May 2023 12:22:35 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org,
        stephan@gerhold.net, Rob Herring <robh@kernel.org>,
        Anders Roxell <anders.roxell@linaro.org>,
        Linux Kernel Functional Testing <lkft@linaro.org>
Subject: [PATCH v8 01/11] dt-bindings: dma: Add support for SM6115 and QCM2290 SoCs
Date:   Sat, 27 May 2023 00:52:00 +0530
Message-Id: <20230526192210.3146896-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230526192210.3146896-1-bhupesh.sharma@linaro.org>
References: <20230526192210.3146896-1-bhupesh.sharma@linaro.org>
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

Add new compatible for BAM DMA engine version v1.7.4 which is
found on Qualcomm SM6115 and QCM2290 SoCs. Since its very similar
to v1.7.0 used on SM8150 like SoCs, mark the comptible scheme
accordingly.

While at it, also update qcom,bam-dma bindings to add comments
which describe the BAM DMA versions used in SM8150 and SM8250 SoCs.
This provides an easy reference for identifying the actual BAM DMA
version available on Qualcomm SoCs.

Acked-by: Rob Herring <robh@kernel.org>
Tested-by: Anders Roxell <anders.roxell@linaro.org>
Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/dma/qcom,bam-dma.yaml | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
index f1ddcf672261..c663b6102f50 100644
--- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
@@ -15,13 +15,19 @@ allOf:
 
 properties:
   compatible:
-    enum:
-        # APQ8064, IPQ8064 and MSM8960
-      - qcom,bam-v1.3.0
-        # MSM8974, APQ8074 and APQ8084
-      - qcom,bam-v1.4.0
-        # MSM8916 and SDM845
-      - qcom,bam-v1.7.0
+    oneOf:
+      - enum:
+          # APQ8064, IPQ8064 and MSM8960
+          - qcom,bam-v1.3.0
+          # MSM8974, APQ8074 and APQ8084
+          - qcom,bam-v1.4.0
+          # MSM8916, SDM630
+          - qcom,bam-v1.7.0
+      - items:
+          - enum:
+              # SDM845, SM6115, SM8150, SM8250 and QCM2290
+              - qcom,bam-v1.7.4
+          - const: qcom,bam-v1.7.0
 
   clocks:
     maxItems: 1
-- 
2.38.1

