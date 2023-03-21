Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DA0B6C3982
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 19:48:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229896AbjCUSs5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 14:48:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230450AbjCUSsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 14:48:54 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78CA656506
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 11:48:22 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id iw3so17022831plb.6
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 11:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679424501;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OU2TpmTbkt/6hvSTm+PPEoXU/hSqJlv3qM+jLeXgjsM=;
        b=OVw0ECtyo2lDexPfAB5v+xW9q4bqZYx4ZfJqU2SL5kXXnye4/lrm/ei4i+2v4vBE70
         5lQb1OCAoRw8sN4zTYaaR0isVYdumbxVJQLLwe9hQvmcq8R/g9l0Bs3NyBkvFfslZmUA
         4n2Hh8fqXkOGJeVfvZuoh1KkaZRFXyaONmAhQefe9xb/sNJrdGApo26vdhUnxorrgjNq
         9GWI7d12jnIS+TqpVA200Zdmeu/lAGY9WQ1qZhNVlPfUkSQyDU73ANsjwWZ9R6vnrgjI
         UqR9/hVdy9PEhsC0sYoGn0wZg/NfjqPKFHpEjUktqegt2qR1HUSjDqISD5j4a+q7TOqL
         Va1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679424501;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OU2TpmTbkt/6hvSTm+PPEoXU/hSqJlv3qM+jLeXgjsM=;
        b=iT77ktB5Vi33NxM41jmyKFRIC/04uYVTQXVGd4UauW1QZt4lXdl9AwaAmPDY8Lhv+V
         PnG8spcFrnXonlB8LqgfbzPgJKw2NpD+rNKqTG/LwhsN4Ee6+/ovHsd/v8AX22/LGAk/
         LgAPmtPS6AJiGmzrbm3jGuXdUnPrYHfTbDtVnkbzG3EeUZjbl6fRERGJk6BaVD6XYNGk
         NHkvUB85mO64Rh8K2BUUaU1VaidBk4Z5zD/40PSn/mFJgr6P6v91b79nncsBS/spZcnR
         x/LmydL/VKl4Ei/lFSMjYq/RqMk8MH6bkCAkMj1CHffkgwuoiyv7zJW2HN1yAbAxEtGA
         1mTQ==
X-Gm-Message-State: AO0yUKU9VMbdbRJDwyw+fvW8Ws65BnMH57v7rSQxR+0S+1Sh+ZF+Duob
        dM8ioV5HVFfJQm0VGz5fH/9fLw==
X-Google-Smtp-Source: AK7set8XEqG4QjXF0VsgxuBGSQjsXwO402XZCIkV0X3tEjleTYEVr/x82XLGqxVgbgCGh5vDIOLbsA==
X-Received: by 2002:a05:6a20:baa1:b0:d5:b3d1:bff9 with SMTP id fb33-20020a056a20baa100b000d5b3d1bff9mr2305721pzb.52.1679424500498;
        Tue, 21 Mar 2023 11:48:20 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:d4c3:8671:83c0:33ae:5a96])
        by smtp.gmail.com with ESMTPSA id s24-20020aa78298000000b005d4360ed2bbsm8590817pfm.197.2023.03.21.11.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 11:48:20 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     dmaengine@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        andersson@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, vkoul@kernel.org,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org
Subject: [PATCH v2 1/1] dt-bindings: dma: Add support for SM6115 and QCS2290 SoCs
Date:   Wed, 22 Mar 2023 00:18:11 +0530
Message-Id: <20230321184811.3325725-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new compatible for BAM DMA engine version v1.7.4 which is
found on Qualcomm SM6115 and QCS2290 SoCs. Since its very similar
to v1.7.0 used on SM8150 like SoCs, mark the comptible scheme
accordingly.

While at it, also update qcom,bam-dma bindings to add comments
which describe the BAM DMA versions used in SM8150 and SM8250 SoCs.
This provides an easy reference for identifying the actual BAM DMA
version available on Qualcomm SoCs.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---

Changes since v1:
 ~ v1 can be viewed here: https://lore.kernel.org/linux-arm-msm/20230320071211.3005769-1-bhupesh.sharma@linaro.org/
 ~ Addressed Konrad's comments on v1, where he suggested how compatibles
   should be used for SoCs which support BAM DMA engine v1.7.4
 ~ Dropped v1's [PATCH 2/2] in v2.

 .../devicetree/bindings/dma/qcom,bam-dma.yaml | 22 +++++++++++++------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
index f1ddcf672261..bed966fa7653 100644
--- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
@@ -15,13 +15,21 @@ allOf:
 
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
+      - items:
+          - enum:
+              # APQ8064, IPQ8064 and MSM8960
+              - qcom,bam-v1.3.0
+              # MSM8974, APQ8074 and APQ8084
+              - qcom,bam-v1.4.0
+              # MSM8916
+              - qcom,bam-v1.7.0
+
+      - items:
+          - enum:
+              # SDM845, SM6115, SM8150, SM8250 and QRB2290
+              - qcom,bam-v1.7.4
+          - const: qcom,bam-v1.7.0
 
   clocks:
     maxItems: 1
-- 
2.38.1

