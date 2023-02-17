Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E008369AA1D
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 12:16:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbjBQLQt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 06:16:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229936AbjBQLQj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 06:16:39 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4466D65374
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:16:22 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id bx13so755384ljb.3
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+0wgn2J7sEsdXuKmA4KpznfU8V8XceUpwL6C1j73+Vk=;
        b=RAvARnqIsPMy9f5GaK1MNvreQnSXl+M+pThsIcYiN1Q9g2t6VHJrVFo2U4+M0uOJ5Z
         /KpjrpL+RAWFVVykX5XuvRbaB5OjhOnMJt15UEeAPh1ps25cs9UJzU0dU3dPUU1NHVAA
         PacZGS9yXbcmZEJ+6/pgV6SmHPZWcz5VvuUZclo33OAZshSidIuzmtsRqtZjHRZIbtFX
         bOlQu6paNxXzYEjiJ48huFwvJzkdGVy1iZLTWlHhZ8OGKp7fUm2M2j9M8r3RL45+hK9g
         0UVkMrk68o1tqkIGy/db0388OPitMpo9JP43Hamoszy5PmRWkrqkjdNCm9HoHWVVv52h
         n5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0wgn2J7sEsdXuKmA4KpznfU8V8XceUpwL6C1j73+Vk=;
        b=Q5Xd1TNjzCAaEvt7wV9cCFOEw++FvczKM/GswFhqRSJdveZRr1wZZrp+G8gQu6nUyI
         uQh5cAghhk0FEbdnk/S/9TgkLopk453KAvzHsLYg9Ov4IazRzduokt+50SQKvtpswXnl
         DEPl48qNaDYt0KghRvJUavSAomzBXwXQ3idw0xRuLOW3hUndt2zU5wjS75+4ncVSO6E1
         Lu8TMn8jLkYaWg46OuMNfW8NQg+Xy6T2gLWBxiTm4q5E0bOJ0rQsmmfjQ210O6NDCKOo
         JSYsmY1DLub//JA6kSkn/MF/NftRLVO9wWRd0CAlh000SefQ9sTiC5CTBe9PmNbhPYL5
         M6Qw==
X-Gm-Message-State: AO0yUKXjWO+AmnoG8OtCIHrY+P6Dd3r6yh4qxNhuh6Eh4kIkeeKjsimp
        E3VwXDbXFLT6Z4hu5iDwCGvI3g==
X-Google-Smtp-Source: AK7set9lo1Ogld4ROanEoCe4HM6RFQDGXicVXFMKolFlMlzkWDQ8Q5+BY8esgFULFr2j4/EeaRuM5A==
X-Received: by 2002:a05:651c:512:b0:28b:6d76:e9ce with SMTP id o18-20020a05651c051200b0028b6d76e9cemr198780ljp.23.1676632580456;
        Fri, 17 Feb 2023 03:16:20 -0800 (PST)
Received: from localhost.localdomain (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id u21-20020a2e9b15000000b002935899fe3fsm554818lji.116.2023.02.17.03.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Feb 2023 03:16:19 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: arm-smmu: Use qcom,smmu compatible for MMU500 adreno SMMUs
Date:   Fri, 17 Feb 2023 12:16:08 +0100
Message-Id: <20230217111613.306978-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
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

qcom,smmu-500 was introduced to prevent people from adding new
compatibles for what seems to roughly be the same hardware. Use it for
qcom,adreno-smmu-compatible targets as well.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
- Add this patch, omitted previously (big oops)

 .../devicetree/bindings/iommu/arm,smmu.yaml        | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 807cb511fe18..4d7f61700cae 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -75,9 +75,19 @@ properties:
               - qcom,sm8350-smmu-500
               - qcom,sm8450-smmu-500
           - const: arm,mmu-500
-
-      - description: Qcom Adreno GPUs implementing "arm,smmu-500"
+      - description: Qcom Adreno GPUs implementing "qcom,smmu-500" and "arm,smmu-500"
+        items:
+          - enum:
+              - qcom,sc7280-smmu-500
+              - qcom,sm8150-smmu-500
+              - qcom,sm8250-smmu-500
+          - const: qcom,adreno-smmu
+          - const: qcom,smmu-500
+          - const: arm,mmu-500
+      - description: Qcom Adreno GPUs implementing "arm,smmu-500" (legacy binding)
+        deprecated: true
         items:
+          # Do not add additional SoC to this list. Instead use previous list.
           - enum:
               - qcom,sc7280-smmu-500
               - qcom,sm8150-smmu-500
-- 
2.39.1

