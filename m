Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 941A1616CCF
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 19:44:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231529AbiKBSod (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 14:44:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231543AbiKBSob (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 14:44:31 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0955A2D77A
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 11:44:30 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id p8so29608031lfu.11
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 11:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FlxaxNlQZ2VHINoazGiXgH3/dA/dPhtDVGGCEEa6TQ=;
        b=H1ZMZvU7NJVJFpVrpzltpvizeTsOSU4crQswWJV4rXDuUJU5IroVIlbNOBIwwk0GbU
         +nKmn2dHtCpTuxuO8FcrOC4xbl3ixIhlbRdwP0UTzfML0kiGm+272nRQXvp9qLyd9e4V
         8jML8tqJiD5v5MYAhcYwfFJV6asgczX9+he7fKr/QGD84+2Wf+c0rvpQY0NJtLqiCBP4
         4WauGtlSZccMxOCIt4N1Xfs2U7u8HMDnlHiCK/ujrQ5hXvbrMxNqKStjSjSFzA44jdXg
         9OR1vuj/RvswWAOs1vuC/Bo7WJHHaPXA5up7cWqhf3sDR377eTyDjXwCfHDt3zQ67aB9
         m0oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3FlxaxNlQZ2VHINoazGiXgH3/dA/dPhtDVGGCEEa6TQ=;
        b=VDEPXkqb0XdkJcw6mIlorlW8nXXi85ALgh6Yy2yWFTBibYxkow4d4+nu2T6Du2FXln
         AZgHeeOe8MjVm6+BJs8x4lT4H6/Zi2TWhXmDFhUAmsEhcrtaD/33Uvc7/Dl5gIn3ovUc
         cCaIWDMjRVuYBl9qNSV20oQf50pM/w03MAxDb10653CGEYZ5eIwD+AfioVmvLM36mzu+
         r9nELU7PQ8CtXDG7fsf2b7g4Jh9mRXtw/Ncl3oIhTBSZdxhomMk3LtIx1mtIw2eFfA+I
         z0IUIEYBkFxGWULOPZerciClWxWI0y3sFLzsMaXHOxPoe/WSh35v/3/LoV+Xhrf3G6yo
         oYcA==
X-Gm-Message-State: ACrzQf19nia0pHLCUsQf9CoQq76LaF5xlIvNoHVVXX3J5bQ8hIXLEDEh
        72DDfrIfJtCIisQUqcLK/h4hXw==
X-Google-Smtp-Source: AMsMyM4EFpg8dxXk+IFcNqG7NxZ8Pb9toBt9kyd40RFLLB+bXPEKBoAqR1pcGZU1PV+XIIlr33crBw==
X-Received: by 2002:a05:6512:3d0b:b0:4a2:5bf6:c59c with SMTP id d11-20020a0565123d0b00b004a25bf6c59cmr9534644lfv.285.1667414669547;
        Wed, 02 Nov 2022 11:44:29 -0700 (PDT)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t8-20020a05651c204800b00277092c03e7sm2277540ljo.33.2022.11.02.11.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 11:44:29 -0700 (PDT)
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
Subject: [RFC PATCH v2 10/11] iommu/arm-smmu-qcom: Stop using mmu500 reset for v2 MMUs
Date:   Wed,  2 Nov 2022 21:44:19 +0300
Message-Id: <20221102184420.534094-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221102184420.534094-1-dmitry.baryshkov@linaro.org>
References: <20221102184420.534094-1-dmitry.baryshkov@linaro.org>
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

The arm_mmu500_reset() writes into registers specific for MMU500. For
the generic ARM SMMU v2 these registers (sACR) are defined as
'implementation defined'. Downstream Qualcomm driver for SMMUv2 doesn't
touch them.

Reviewed-by: Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Tested-by: Sai Prakash Ranjan <quic_saipraka@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 41 ++++++++++++++++------
 1 file changed, 31 insertions(+), 10 deletions(-)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index 20cbb39cb670..9abc40c00f3e 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -376,7 +376,15 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 	return ret;
 }
 
-static const struct arm_smmu_impl qcom_smmu_impl = {
+static const struct arm_smmu_impl qcom_smmu_v2_impl = {
+	.init_context = qcom_smmu_init_context,
+	.cfg_probe = qcom_smmu_cfg_probe,
+	.def_domain_type = qcom_smmu_def_domain_type,
+	.write_s2cr = qcom_smmu_write_s2cr,
+	.tlb_sync = qcom_smmu_tlb_sync,
+};
+
+static const struct arm_smmu_impl qcom_smmu_500_impl = {
 	.init_context = qcom_smmu_init_context,
 	.cfg_probe = qcom_smmu_cfg_probe,
 	.def_domain_type = qcom_smmu_def_domain_type,
@@ -394,7 +402,15 @@ static const struct arm_smmu_impl sdm845_smmu_500_impl = {
 	.tlb_sync = qcom_smmu_tlb_sync,
 };
 
-static const struct arm_smmu_impl qcom_adreno_smmu_impl = {
+static const struct arm_smmu_impl qcom_adreno_smmu_v2_impl = {
+	.init_context = qcom_adreno_smmu_init_context,
+	.def_domain_type = qcom_smmu_def_domain_type,
+	.alloc_context_bank = qcom_adreno_smmu_alloc_context_bank,
+	.write_sctlr = qcom_adreno_smmu_write_sctlr,
+	.tlb_sync = qcom_smmu_tlb_sync,
+};
+
+static const struct arm_smmu_impl qcom_adreno_smmu_500_impl = {
 	.init_context = qcom_adreno_smmu_init_context,
 	.def_domain_type = qcom_smmu_def_domain_type,
 	.reset = arm_mmu500_reset,
@@ -452,12 +468,17 @@ static const struct qcom_smmu_config qcom_smmu_impl0_cfg = {
  */
 static const struct qcom_smmu_match_data msm8996_smmu_data = {
 	.impl = NULL,
-	.adreno_impl = &qcom_adreno_smmu_impl,
+	.adreno_impl = &qcom_adreno_smmu_v2_impl,
+};
+
+static const struct qcom_smmu_match_data qcom_smmu_v2_data = {
+	.impl = &qcom_smmu_v2_impl,
+	.adreno_impl = &qcom_adreno_smmu_v2_impl,
 };
 
 static const struct qcom_smmu_match_data qcom_smmu_data = {
-	.impl = &qcom_smmu_impl,
-	.adreno_impl = &qcom_adreno_smmu_impl,
+	.impl = &qcom_smmu_500_impl,
+	.adreno_impl = &qcom_adreno_smmu_500_impl,
 };
 
 static const struct qcom_smmu_match_data sdm845_smmu_500_data = {
@@ -467,21 +488,21 @@ static const struct qcom_smmu_match_data sdm845_smmu_500_data = {
 };
 
 static const struct qcom_smmu_match_data qcom_smmu_500_impl0_data = {
-	.impl = &qcom_smmu_impl,
-	.adreno_impl = &qcom_adreno_smmu_impl,
+	.impl = &qcom_smmu_500_impl,
+	.adreno_impl = &qcom_adreno_smmu_500_impl,
 	.cfg = &qcom_smmu_impl0_cfg,
 };
 
 static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
 	{ .compatible = "qcom,msm8996-smmu-v2", .data = &msm8996_smmu_data },
-	{ .compatible = "qcom,msm8998-smmu-v2", .data = &qcom_smmu_data },
+	{ .compatible = "qcom,msm8998-smmu-v2", .data = &qcom_smmu_v2_data },
 	{ .compatible = "qcom,qcm2290-smmu-500", .data = &qcom_smmu_500_impl0_data },
 	{ .compatible = "qcom,sc7180-smmu-500", .data = &qcom_smmu_500_impl0_data },
 	{ .compatible = "qcom,sc7280-smmu-500", .data = &qcom_smmu_500_impl0_data },
 	{ .compatible = "qcom,sc8180x-smmu-500", .data = &qcom_smmu_500_impl0_data },
 	{ .compatible = "qcom,sc8280xp-smmu-500", .data = &qcom_smmu_500_impl0_data },
-	{ .compatible = "qcom,sdm630-smmu-v2", .data = &qcom_smmu_data },
-	{ .compatible = "qcom,sdm845-smmu-v2", .data = &qcom_smmu_data },
+	{ .compatible = "qcom,sdm630-smmu-v2", .data = &qcom_smmu_v2_data },
+	{ .compatible = "qcom,sdm845-smmu-v2", .data = &qcom_smmu_v2_data },
 	{ .compatible = "qcom,sdm845-smmu-500", .data = &sdm845_smmu_500_data },
 	{ .compatible = "qcom,sm6125-smmu-500", .data = &qcom_smmu_500_impl0_data },
 	{ .compatible = "qcom,sm6350-smmu-500", .data = &qcom_smmu_500_impl0_data },
-- 
2.35.1

