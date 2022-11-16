Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2EF62BC8C
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:52:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232823AbiKPLw3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:52:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233050AbiKPLvi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:51:38 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3399945091
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:40:11 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id g12so29234129wrs.10
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0twtcFq82JD2b+ezlYjBACGVc7CdSbTyIYzuJzztLoE=;
        b=slREbBr+UAB1pCLXZp36yMTYwltieCZ/UlN3y+IMLQRIgpojo4ptxsBMN5NOr7+rhs
         2FM1d4vUXKam3pkgvGLYoMHCm0uzndXvxsGOY7cX6bH1PQaupWmj0Gnj1CfzUGvPPnp0
         7IXRDk+jgL5sNU3DAkPt+LaHKxcAtTMuDTwzJIkFeFKrogQtZmsfj106Dd9AEIFPJSq2
         qagjWyrhajz5oLr0hgQbDgDQd90Awx3zz+qPQ+r2L7tB2jHTGwQvOU+Vge/ZCXhUm4AZ
         SBZFRwW4KU9wCGwR1j/zsyjdbY1BpRLi/RhkKOLgZiwaiaHquWL5MpJlqPZ1K2G93X02
         T+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0twtcFq82JD2b+ezlYjBACGVc7CdSbTyIYzuJzztLoE=;
        b=xDt8l0+uw3pE124pvaKjhod9Sajscohv16cpcOoJdkRZ5JaG/lvZdnWYVCxxf5khl6
         o0OZcufHVid0QIQuBuyBMl9ATpatVPyjr+os4jaKmzZENH8iIrZ3/ykwRLnkOBdW+acO
         GSXw774DtheSbo2QJ2m2gzI1TevoP2SeJxcx2rGqmWnJbStqSM7jklLFxJsLcitsj5o9
         o48J6OF/AIUWI5QJnj6oDAwguQNWo5stNSof9/EXXM0dbl6Dzq9XW6QcId2cRJuvoV9V
         fUv3OZJY9PEbnV6ItlsWtyW1Gp6ylUEU5UboBtOgKC8wCzXhztlaY4JeLCzh3ccP0lMe
         gAxQ==
X-Gm-Message-State: ANoB5pn0wWSQ3ikcBhJzIkSS9oUYqgWaJqj22mFKp6l1lWa4R87/VUoj
        zaJJyKwfVYqM3KDdpg7CLKGu0w==
X-Google-Smtp-Source: AA0mqf78gNufDESI63xBT0OXkgK5q+oIHRL5k5sezvkAYFPs+9LRyevwa/SwNxXW4zade/BLrVoacg==
X-Received: by 2002:adf:f94a:0:b0:236:6b51:73bc with SMTP id q10-20020adff94a000000b002366b5173bcmr13668630wrr.707.1668598809971;
        Wed, 16 Nov 2022 03:40:09 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id s3-20020adfecc3000000b0022e653f5abbsm14853105wro.69.2022.11.16.03.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:40:09 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: arm-smmu: Add compatible for SM8550 SoC
Date:   Wed, 16 Nov 2022 13:40:00 +0200
Message-Id: <20221116114001.2669003-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Add the SoC specific compatible for SM8550 implementing
arm,mmu-500.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 9066e6df1ba1..9dea3686520b 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -47,6 +47,7 @@ properties:
               - qcom,sm8250-smmu-500
               - qcom,sm8350-smmu-500
               - qcom,sm8450-smmu-500
+              - qcom,sm8550-smmu-500
           - const: arm,mmu-500
       - description: Qcom Adreno GPUs implementing "arm,smmu-v2"
         items:
-- 
2.34.1

