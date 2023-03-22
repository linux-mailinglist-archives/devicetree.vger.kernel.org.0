Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE7126C4973
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 12:45:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjCVLpu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 07:45:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbjCVLpo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 07:45:44 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84702559CA
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:45:43 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id iw3so19001895plb.6
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679485543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=45NVBVpYiF52cvaoHl0w4JJTLlfK1ZDLXhzA7w3zmPk=;
        b=QCpJz+I0YyR3Y8UkVEK9iQ/AZAdzUodv2rQnOxKrEWSDxgDV8DY3JtFwCbJO3t7JDj
         Hob3jgIEaE9lZrWnPa51rwhT6QLJPKYyxoWIx2O8OMR9uNx30QTb7rYeeeCvC3s13pgs
         FCOkhAlHaCtfQWJjPqj3eleMj1fK1fSQ+lnWysUNn8qgmb8OIbL5ZOeneaqpdiHptTMj
         nz5mMwZgXyKpHqt+brMwl2eWRlXy19BoENSXjZaGvpbN9i2H0hIUStbYS+rUbE5qztd1
         1dWyqLnzkSERcbqocR3FCVVj7pRHI7QTWS9cIOn6ruJMn5BMFfa9EmVoOGuHyWjOypwR
         mPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679485543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=45NVBVpYiF52cvaoHl0w4JJTLlfK1ZDLXhzA7w3zmPk=;
        b=2MGny8NLZ0HwBNoNuKLANRxuljo3B5qEv6THQrGfzZFWzhSIIPLosV74I9yJgm9VPk
         NYaVKr+wqsVjtHPj3SPoiaHmI1N2R6Ve3L539DICge9zYN5vcVlNfh7ONNrB+X/6Hwc7
         r6CSWgl126EudYBISTM1CR2q+Lp7JkO5Z+dDaRYubt0+G8sV51IisoAFMCsWe6fL8Yfq
         0w89khcAsYdAEw2uKJbJOybIphx1TI3Th0cQP60FVNDp1slkXmJpb6rS4UIFtjxAPhd2
         +O0W92ssD8ZP56EfiLmNW6SFhq/6xCd/GIdTv8qQXvscgsJ8OISBdaiQR0JAytT3GSgG
         oYmA==
X-Gm-Message-State: AO0yUKUa7GOgw0zGohv/TNyJl3L3JiHAy2B+TIJx55L+BNvdtEwDdxY3
        j0zTrgDKRiDcbqkrzWTMO1IAtA==
X-Google-Smtp-Source: AK7set+7LE4DiuKvUMqEeTlogwTHF5bRE41vSvH34T1W4F5A9KNupKEL1ddxRbsh/OcpIErQ4Jog8Q==
X-Received: by 2002:a17:90b:4c43:b0:23d:21c9:193 with SMTP id np3-20020a17090b4c4300b0023d21c90193mr3430944pjb.2.1679485542718;
        Wed, 22 Mar 2023 04:45:42 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:d4c3:8671:83c0:33ae:5a96])
        by smtp.gmail.com with ESMTPSA id jd1-20020a170903260100b0019b0afc24e8sm10386649plb.250.2023.03.22.04.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 04:45:42 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v2 02/10] dt-bindings: dma: Increase iommu maxItems for BAM DMA
Date:   Wed, 22 Mar 2023 17:15:11 +0530
Message-Id: <20230322114519.3412469-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230322114519.3412469-1-bhupesh.sharma@linaro.org>
References: <20230322114519.3412469-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since SM8450 BAM DMA engine supports five iommu entries,
increase the maxItems in the iommu property section, without
which 'dtbs_check' reports the following error:

  arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx224.dtb:
    dma-controller@1dc4000: iommus: is too long

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
index 624208d20a34..5469c9c2a1df 100644
--- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
@@ -46,7 +46,7 @@ properties:
 
   iommus:
     minItems: 1
-    maxItems: 4
+    maxItems: 5
 
   num-channels:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.38.1

