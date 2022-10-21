Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 582FB607D02
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 18:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbiJUQ4d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 12:56:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230428AbiJUQ4P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 12:56:15 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B87D24CC1E
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 09:55:57 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id by36so4547407ljb.4
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 09:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxwJcXo520aplQLccqDc/GixqgYRIkInc92XxQN/vkQ=;
        b=KVx9M8kD4AZU77/op6ENn+npcgnimQUGJQdI0dnC/QPizss3/bUXS+1+eOpsvoabCn
         n9eLO5ip7MaId/Z3L4sMuMaeE8CY7CWQeCm4Pws2xmxQcxGmySWg5MDuSu/zObm+t/Xt
         4+n89H4eNQs0Yak8+hKrzl6RwZ5VhRoVD2LgBqyEHa+ExWuCHxD8xucqrquKLgCyrl4Y
         hWoTAYrJ4LorBwiXyWiWq2CDnsyivtTcN9wFWYg/MqoGCLfxVk8AFK6FOd2DFRgjG795
         eX4V97/xE6JbtLNfUGU0XPBu/D1LNUd+Y4JTIiCA34u5caYndLz37mACIwlQ4PRlKhQe
         vUkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxwJcXo520aplQLccqDc/GixqgYRIkInc92XxQN/vkQ=;
        b=P/0oN+StfV9UlZuG22oM2DtnoyqoTB3Q8xxzGCnXxEYvyiarAiLPn4WRZNvcWdKnMn
         iObHIFHcdvqcoHDWerFhzvAIZw1ID9wmaH9k8ejTFps7P3iShzKvMuSoC2W6WJDqXLhm
         Gi2Nr5F7dThCQYoswL06qPXE34oczz831DOLFTJJ5JT1Ya1ny8NjAksC5qwq4kAJ2GKW
         W1htYwGaLmRhYFd+N+fYktZtjwWBCPv0ZKNfTruiiwaPkG0L94DNFannys28rKgQ3ScZ
         asOrRiEQd/1CUStylwjwVVeYPd/IDYen2qEyr88qyC6nAxgsxmFNcJOMeVlNmnbOcuX6
         8CPA==
X-Gm-Message-State: ACrzQf3J2eWcBcCYfyB13My1Ic7aBNg56W6XyEtWu71XYj5UU1hxuq+3
        9nXzQfKqZPCZrg5HdtNnUqF7hA==
X-Google-Smtp-Source: AMsMyM4k8l3vqoT4/gUiy442sb0fpO1CA0RxN3NT1AX7pF5qcTK7/Q8pqXGinz+UgERwG0gsTdSO/Q==
X-Received: by 2002:a2e:8697:0:b0:26f:b795:8b39 with SMTP id l23-20020a2e8697000000b0026fb7958b39mr7378616lji.218.1666371346997;
        Fri, 21 Oct 2022 09:55:46 -0700 (PDT)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a056512078400b004946e72711bsm3218532lfr.76.2022.10.21.09.55.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 09:55:46 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: [RFC PATCH 6/9] iommu/arm-smmu-qcom: provide separate implementation for SDM845-smmu-500
Date:   Fri, 21 Oct 2022 19:55:31 +0300
Message-Id: <20221021165534.2334329-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221021165534.2334329-1-dmitry.baryshkov@linaro.org>
References: <20221021165534.2334329-1-dmitry.baryshkov@linaro.org>
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

There is only one platform, which needs special care in the reset
function, the SDM845. Add special handler for sdm845 and drop the
qcom_smmu500_reset() function.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 34 ++++++++++++----------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index c3bcd6eb2f42..75bc770ccf8c 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -361,6 +361,8 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 {
 	int ret;
 
+	arm_mmu500_reset(smmu);
+
 	/*
 	 * To address performance degradation in non-real time clients,
 	 * such as USB and UFS, turn off wait-for-safe on sdm845 based boards,
@@ -374,23 +376,20 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 	return ret;
 }
 
-static int qcom_smmu500_reset(struct arm_smmu_device *smmu)
-{
-	const struct device_node *np = smmu->dev->of_node;
-
-	arm_mmu500_reset(smmu);
-
-	if (of_device_is_compatible(np, "qcom,sdm845-smmu-500"))
-		return qcom_sdm845_smmu500_reset(smmu);
-
-	return 0;
-}
-
 static const struct arm_smmu_impl qcom_smmu_impl = {
 	.init_context = qcom_smmu_init_context,
 	.cfg_probe = qcom_smmu_cfg_probe,
 	.def_domain_type = qcom_smmu_def_domain_type,
-	.reset = qcom_smmu500_reset,
+	.reset = arm_mmu500_reset,
+	.write_s2cr = qcom_smmu_write_s2cr,
+	.tlb_sync = qcom_smmu_tlb_sync,
+};
+
+static const struct arm_smmu_impl sdm845_smmu_500_impl = {
+	.init_context = qcom_smmu_init_context,
+	.cfg_probe = qcom_smmu_cfg_probe,
+	.def_domain_type = qcom_smmu_def_domain_type,
+	.reset = qcom_sdm845_smmu500_reset,
 	.write_s2cr = qcom_smmu_write_s2cr,
 	.tlb_sync = qcom_smmu_tlb_sync,
 };
@@ -398,7 +397,7 @@ static const struct arm_smmu_impl qcom_smmu_impl = {
 static const struct arm_smmu_impl qcom_adreno_smmu_impl = {
 	.init_context = qcom_adreno_smmu_init_context,
 	.def_domain_type = qcom_smmu_def_domain_type,
-	.reset = qcom_smmu500_reset,
+	.reset = arm_mmu500_reset,
 	.alloc_context_bank = qcom_adreno_smmu_alloc_context_bank,
 	.write_sctlr = qcom_adreno_smmu_write_sctlr,
 	.tlb_sync = qcom_smmu_tlb_sync,
@@ -450,6 +449,11 @@ static const struct qcom_smmu_match_data qcom_smmu_data = {
 	.adreno_impl = &qcom_adreno_smmu_impl,
 };
 
+static const struct qcom_smmu_match_data sdm845_smmu_500_data = {
+	.impl = &sdm845_smmu_500_impl,
+	/* No adreno impl, on sdm845 it is handled by separete sdm845-smmu-v2. */
+};
+
 static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
 	{ .compatible = "qcom,msm8996-smmu-v2", .data = &msm8996_smmu_data },
 	{ .compatible = "qcom,msm8998-smmu-v2", .data = &qcom_smmu_data },
@@ -460,7 +464,7 @@ static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
 	{ .compatible = "qcom,sc8280xp-smmu-500", .data = &qcom_smmu_data },
 	{ .compatible = "qcom,sdm630-smmu-v2", .data = &qcom_smmu_data },
 	{ .compatible = "qcom,sdm845-smmu-v2", .data = &qcom_smmu_data },
-	{ .compatible = "qcom,sdm845-smmu-500", .data = &qcom_smmu_data },
+	{ .compatible = "qcom,sdm845-smmu-500", .data = &sdm845_smmu_500_data },
 	{ .compatible = "qcom,sm6125-smmu-500", .data = &qcom_smmu_data },
 	{ .compatible = "qcom,sm6350-smmu-500", .data = &qcom_smmu_data },
 	{ .compatible = "qcom,sm6375-smmu-500", .data = &qcom_smmu_data },
-- 
2.35.1

