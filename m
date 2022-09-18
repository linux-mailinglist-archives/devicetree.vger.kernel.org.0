Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 180EC5BBC7D
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 10:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbiIRILs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 04:11:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiIRILq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 04:11:46 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C2431F2FE
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 01:11:35 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id y11so8028442pjv.4
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 01:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=cIRY+VRqALb4vEHaHBDDtY15l5f9Vz43K52fRmFtiwU=;
        b=XbzktqWZbBO3vuz+FO9itbrCAcsxrsZEGIJxnBkuxQwBM5NecKenUNbzxMTDF7CCJa
         6h+q1l1nihH1IbhCZgdmvKM7CAIqMysiDln3BPCt5Ec85bwAWxXssgKiH+TlVo5N9dGo
         FFouc0fcuNeRBmXBVGZEe/I5Zdf2BPLSx4scJ7Xr6PdfVasDVj/6WJ7SvxEfadKf6yQx
         eFDc/c7QX0w4X+H5icD50QFhZQ4RcIDYJ6Bk/vQJk66f5jTekDLG7lCQWReFfeGWjtig
         f9M2MgOv3jZmq2l8bLdSkm4zl74Jw7qTPRVISG3lger/zuvzOPdli6zOAQb0C2dAhi/U
         Ck1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=cIRY+VRqALb4vEHaHBDDtY15l5f9Vz43K52fRmFtiwU=;
        b=aTu6a1WoxT6XwN7hvR9QtJ3twYXHxM9BSGbAMtyf/eSUZ4BQojNLq1A9p9FLuDAwS6
         rhGLg6vNGJAQio19/w97hS99LmUnSXHR/Ah2NcvqtX9TOe77F+Km6ZtsFLUALIcKuBeh
         ht6O/lt720oNuFjf0dUOa8tXbtj81RTSIk1pRtCWYPfL4MGKiCQVafpGX6gUrvwP4Rib
         w3wiXWLvuVn+BTEiMjsAVJyZ8CxLJF1WhlVLOmzmUFqVhvrSJw0uAltqv8JfD0NejAr5
         csATL3hD+2X1JPdUUfmgky9QhegeIPvIkZeWTagqhOa7p+DA42jJkgdaH1O9EUA+KiYk
         4RPA==
X-Gm-Message-State: ACrzQf1K9AEcgWBF0aJM3codip3WlltA8zHKkVafGDIjPN3eBpiOyg/v
        H4BjmCWww5q8XLQuXKNG+DUXjucetf6s8w==
X-Google-Smtp-Source: AMsMyM5XOWO0tuvHPZ8b2m/5XqlmKf32SySgNDZrfYEsflHmGqkiSGI/l9ZZ5xllTHmfulUj7TeZkQ==
X-Received: by 2002:a17:90b:4b03:b0:202:a7e1:2c9a with SMTP id lx3-20020a17090b4b0300b00202a7e12c9amr13544715pjb.195.1663488694587;
        Sun, 18 Sep 2022 01:11:34 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id n17-20020a170902e55100b001752cb111e0sm18244781plf.69.2022.09.18.01.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Sep 2022 01:11:34 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, agross@kernel.org, dmaengine@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        andersson@kernel.org, krzysztof.kozlowski@linaro.org
Subject: [PATCH] dt-bindings: dma: Make minor fixes to qcom,bam-dma binding doc
Date:   Sun, 18 Sep 2022 13:41:19 +0530
Message-Id: <20220918081119.295364-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
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

As a user recently noted, the qcom,bam-dma binding document
describes the BAM DMA node incorrectly. Fix the same by making
it consistent with the node present inside 'qcom-msm8974' dts
file.

While at it also make two minor cleanups:
 - mention Bjorn's new email ID in the document, and
 - add SDM845 in the comment line for the SoCs on which
   qcom,bam-v1.7.0 version is supported.

Fixes: 4f46cc1b88b3 ("dt-bindings: dma: Convert Qualcomm BAM DMA binding to json format")
Cc: konrad.dybcio@somainline.org
Cc: robh+dt@kernel.org
Cc: andersson@kernel.org
Cc: krzysztof.kozlowski@linaro.org
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
index 9bf3a1b164f1..003098caf709 100644
--- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
@@ -8,7 +8,7 @@ title: Qualcomm Technologies Inc BAM DMA controller
 
 maintainers:
   - Andy Gross <agross@kernel.org>
-  - Bjorn Andersson <bjorn.andersson@linaro.org>
+  - Bjorn Andersson <andersson@kernel.org>
 
 allOf:
   - $ref: "dma-controller.yaml#"
@@ -20,7 +20,7 @@ properties:
       - qcom,bam-v1.3.0
         # MSM8974, APQ8074 and APQ8084
       - qcom,bam-v1.4.0
-        # MSM8916
+        # MSM8916 and SDM845
       - qcom,bam-v1.7.0
 
   clocks:
@@ -90,8 +90,8 @@ examples:
 
     dma-controller@f9944000 {
         compatible = "qcom,bam-v1.4.0";
-        reg = <0xf9944000 0x15000>;
-        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+        reg = <0xf9944000 0x19000>;
+        interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&gcc GCC_BLSP2_AHB_CLK>;
         clock-names = "bam_clk";
         #dma-cells = <1>;
-- 
2.37.1

