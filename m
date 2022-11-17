Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AAB962D74E
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 10:44:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234693AbiKQJoc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 04:44:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbiKQJob (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 04:44:31 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3D58F594
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:44:30 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id d6so1901992lfs.10
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=coDWPgzeGiDhA1Kjk+0s+wdy8DFwxzcI7zrCkDfxvEc=;
        b=JSo+A79iPIDFQfEXpacdlzjwTFdXWhsxiUjfD1fBIBudT6rm1bVA49wFYQ+NGtslO+
         P1iU3ADiIEyb6ZJz1u5aK9zQrq1cKllAQDTbQsAoUJ3mcGT8hidNhoVAxeg7eHvR9hT4
         3WxXjzaGFuiPMTCQ7LYkFhAw8EbZxRvm5iMdZNI1ZLPo1jP+k3kaeG4lj1QQaLP2D9FS
         WwXa2hVPHeUm90EVdrouiz1BZO1uUXe1Ffp/ctEb44Jv7guhjp5dAGxMM7SgU0ayCJug
         rJmP5qWNsQOiFwlzwlR4QGKAtXjz2SnpvJoXV5RHn44LDR2ZPRcjaVrDWXYvCeRDELjI
         v2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=coDWPgzeGiDhA1Kjk+0s+wdy8DFwxzcI7zrCkDfxvEc=;
        b=TSnkFZxYPWAyqQqaRPxCve5qXUuuUhZa/cwZcKdMCISNHyWrbrMUdchnDt28APNkcQ
         Q69wDKiDg3TMvHHm1loegjXaAuWOhcyTEOZUaX5X2SYsLrzrax3UFEhu/ORGS3SttP7O
         AmNYjlv3974rOcRtshR79lDkzcpNBQ27IC5hS4tY6ryLMa3Zrgk+ZuqQJ3VjrPALe3SO
         PsARHMWF9zcWpFR0IDU5kkH3QA+qCToAQ7iAOnfeOy6Br6mPerbcoaWhe+E3ZgBKg3Uu
         phHBvAL4qcivQX6rqtVwd4b5kRg/8/b+ouBUC5weqz2G4p2iDXU27AnnlkUULiiEb9QR
         eSVw==
X-Gm-Message-State: ANoB5pnWy+C5q+EcE+qSAUHm3jmWJPYbmQqXM9kUnkF4Vm4VkBHPM5pY
        //lGKZyDF86s2EThPouIFaqisw==
X-Google-Smtp-Source: AA0mqf6ES+ykKWWJCVq0np3WVdmdlj6KGtzrgMThf89OaZU4Ew16X9g6Fmr1EbbkTJtgiCv/g0ad1w==
X-Received: by 2002:a05:6512:108a:b0:4a9:9827:68ed with SMTP id j10-20020a056512108a00b004a9982768edmr587884lfg.45.1668678269203;
        Thu, 17 Nov 2022 01:44:29 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id a23-20020a2eb557000000b002770f0a742bsm105312ljn.41.2022.11.17.01.44.28
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 17 Nov 2022 01:44:28 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm-smmu: Add SM6350 GPU SMMUv2
Date:   Thu, 17 Nov 2022 10:44:21 +0100
Message-Id: <20221117094422.11000-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221117094422.11000-1-konrad.dybcio@linaro.org>
References: <20221117094422.11000-1-konrad.dybcio@linaro.org>
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

SM6350 has a qcom,smmu-v2-style SMMU just for Adreno and friends.
Document it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 348a73f3e5f0..895ec8418465 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -94,6 +94,7 @@ properties:
               - qcom,sc7180-smmu-v2
               - qcom,sdm630-smmu-v2
               - qcom,sdm845-smmu-v2
+              - qcom,sm6350-smmu-v2
           - const: qcom,adreno-smmu
           - const: qcom,smmu-v2
       - description: Qcom Adreno GPUs on Google Cheza platform
@@ -347,6 +348,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sm6350-smmu-v2
               - qcom,sm8150-smmu-500
               - qcom,sm8250-smmu-500
     then:
-- 
2.38.1

