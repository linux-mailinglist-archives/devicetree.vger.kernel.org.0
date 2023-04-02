Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 457F26D36DF
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 12:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230413AbjDBKH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 06:07:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230398AbjDBKH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 06:07:26 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B45EA7A97
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 03:07:24 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id y19so15843769pgk.5
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 03:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680430044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cyyEvHEssezG350mcxRNL9zoyy1P0FugZ/giQ7ZT0E=;
        b=A5u/48vXC2EPO/GAEEDGEcOmU6s2Yz2M0iY8Ge335JaUSCOQfJUfsgjdqta+D+ax5o
         nF6OvwGhcK8gM7p4/UlT7+OM74gJuj6nMwNjcAqQmfxtpWoQVnW1pYfSvnSmpRfo0Ck6
         CC71p4rUn7Awt6VUBwu335Nd0kZoHlq/K6arUWd+YgcE/VnBoYA/krYx3Bpnp9Hwn8mQ
         Mpy2gDchRhSx5JHdDvKvEvi1TK5VPtZIiUfJwN1jxHtMwtonKWcXInqqhmx753FLIiTW
         YiCrggEQVPcfj+e+X58Z7FTginb4OadPxCpJHV1jZVZasZQ2fG/+YB6zLRCDaDUoqM6x
         VDoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680430044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cyyEvHEssezG350mcxRNL9zoyy1P0FugZ/giQ7ZT0E=;
        b=iQuauE6A1HUfAFyKA2dgUIhOa1NW2ySaihn2deWtUm0vNbxqylExwj8AviuT7xQ6B8
         35a+HSd7s3K1YqCoYQqnLZdkQO0i9EqvyJmevTHNQNcbwVKAa2rH8Ry0Z5LpZ6cIq708
         T/HgkvUbuFKPFyBq4yM5TtsIAq5dX0DRjHF8Xp5ibra2JcSy3gSa1Zx4lJ34s3Rkhaxj
         Be1yPFicS9hqS+BCLMvcwg+iy+l45I7up7P8WDmhioVpL+erzOOi+JDKARk7UY3pC/Ts
         C73VyeZ+x+Lhh65Oa8PYnKEW04qITkZzuM5ob9ZCTXLE/QDTU0gL8ywfVCi4FDG9hbKP
         cJBw==
X-Gm-Message-State: AAQBX9d+6BOp0/Yory9rMV4xgVazudYNEVU1U2KScql9DjO8D6a45Ohq
        LnfbmzBpkhc/k4cD3h4eu48OIg==
X-Google-Smtp-Source: AKy350byBhQ9DVsRKc1i6SezXfpFkghsN9frvThMfBLE3TXRBWkDYQRas1Rj1slU9mRnmFh7VT0t+g==
X-Received: by 2002:aa7:9728:0:b0:626:17b8:8586 with SMTP id k8-20020aa79728000000b0062617b88586mr32284202pfg.30.1680430044139;
        Sun, 02 Apr 2023 03:07:24 -0700 (PDT)
Received: from localhost.localdomain ([223.233.66.184])
        by smtp.gmail.com with ESMTPSA id a26-20020a62bd1a000000b0062dba4e4706sm4788739pff.191.2023.04.02.03.07.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Apr 2023 03:07:23 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v5 01/11] dt-bindings: dma: Add support for SM6115 and QCM2290 SoCs
Date:   Sun,  2 Apr 2023 15:34:59 +0530
Message-Id: <20230402100509.1154220-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
References: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
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

Add new compatible for BAM DMA engine version v1.7.4 which is
found on Qualcomm SM6115 and QCM2290 SoCs. Since its very similar
to v1.7.0 used on SM8150 like SoCs, mark the comptible scheme
accordingly.

While at it, also update qcom,bam-dma bindings to add comments
which describe the BAM DMA versions used in SM8150 and SM8250 SoCs.
This provides an easy reference for identifying the actual BAM DMA
version available on Qualcomm SoCs.

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

