Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E231E68D991
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 14:41:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbjBGNlF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 08:41:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232167AbjBGNku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 08:40:50 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 689612BEC5
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 05:40:42 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id y1so13599883wru.2
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 05:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=urkAIxuw0vH+tmqjpky10ko8VbPTxFMdI1E8QACAnss=;
        b=hQRx+/nCyCWiqMX210IH4LQUymrymE1yjavw4Lt99bs0YUHEqoLJOtRQXNJ9F6siXO
         r7+l7weL97KXIAddry/5olN+KHoBgjycgv1KrZpqx61bYgYV9z+dD/FMhSoksTf/NEnq
         LOsWAUzXOX89eomlIg5UkpXmrd7SJ2tvun4XhFXeQOvibDXmOU3m075KMB2wX0RBsasr
         7np4HCk1WWgbQPyo/trnok0BJ4mFBgeyUbPrf1q43oxiPs6IONiEqEELwD/+FncxVJTN
         B0/l6n1J/uTSXiDrtinlPrkuwRbB/w5eBiiwBr8Mlu+tNkoAjAceFnQZJyc9YNeVMBke
         ehfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=urkAIxuw0vH+tmqjpky10ko8VbPTxFMdI1E8QACAnss=;
        b=pFdvVFWovzxCF3FKVDacWSvU4Bhftr5fn/9+oaGyg2aOWWnE/8nraKdl7oAIpmMqEr
         5ShdTtXFSHz1T7T49wdtGUinDNjJJgkBZ3dMa8t0yIqLOVgXaB+GYSYaUfAMSyxpOSKg
         ARX+yMvPY19jnHeEpMDFsG7JJEmi2npVfgNIHTb4m6Y5vDfliUiD2b37LFOQdaHPWHEh
         2MByY8uKInTz6UmzUAEtfJn8e0FlC5OAkMZ/9GgbfFXL8XTXlYuc/0H6q5MGFYG1Hhwd
         hA9Y4c6rFmPAWk/azK2Bu5nuMGMmC17Z71a/dfXsVKu/SSBn6oc83UKD3S6PnMAgJzzE
         KpLQ==
X-Gm-Message-State: AO0yUKWlQ4bSxc1O1z61bUV9qoNAOmFdwgK8fkxHga+RPqJGkLMuZaE/
        y0PvcMthvwFvojByhADiinFJVw==
X-Google-Smtp-Source: AK7set9e1f+KMJDJ5s1jQQQtxkd8i0niz6R2HKOrVZkG+bItiOLwyLcSPAi3KM9YcZ2sW5cGUxsiWw==
X-Received: by 2002:adf:f6cc:0:b0:2c3:e356:694e with SMTP id y12-20020adff6cc000000b002c3e356694emr2916605wrp.22.1675777240965;
        Tue, 07 Feb 2023 05:40:40 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id o1-20020a5d4a81000000b002c3d67aac74sm10866280wrq.88.2023.02.07.05.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 05:40:40 -0800 (PST)
From:   neil.armstrong@linaro.org
Date:   Tue, 07 Feb 2023 14:40:39 +0100
Subject: [PATCH v2] dt-bindings: arm-smmu: Add compatible for SM8550 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230207-topic-sm8550-upstream-smmu-bindings-v2-1-680cbfae6dac@linaro.org>
X-B4-Tracking: v=1; b=H4sIANZU4mMC/x3NywqDMBCF4VeRrDuQTiq9vEpxkcuoAyZKxpSC+
 O4duvzO4j+HEapMYl7dYSp9WHgtCrx0Js6+TASc1AYtOov2Dvu6cQTJj7630DbZK/mszg0Cl8R
 lEkhhfOINY3RXZ7QUvBCE6kuctVXasui4VRr5+79+D+f5A05+/BGKAAAA
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Abel Vesa <abel.vesa@linaro.org>

Add the SoC specific compatible for SM8550 implementing
arm,mmu-500.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Rebased on new bindings using qcom,smmu-500 & arm,mmu-500
- Dropped driver changes since we rely on qcom,smmu-500 fallback
- Link to v1: https://lore.kernel.org/all/20221116114001.2669003-1-abel.vesa@linaro.org/
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 807cb511fe18..bc27919ab9f9 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -53,6 +53,7 @@ properties:
               - qcom,sm8250-smmu-500
               - qcom,sm8350-smmu-500
               - qcom,sm8450-smmu-500
+              - qcom,sm8550-smmu-500
           - const: qcom,smmu-500
           - const: arm,mmu-500
 

---
base-commit: 49a8133221c71b935f36a7c340c0271c2a9ee2db
change-id: 20230207-topic-sm8550-upstream-smmu-bindings-dbf9242cc313

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

