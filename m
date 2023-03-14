Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5006D6B9941
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 16:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231439AbjCNP3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 11:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231450AbjCNP3I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 11:29:08 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 722E36BC33
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 08:28:58 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a32so16413260ljr.9
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 08:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678807738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b3xe4S3Sg3+fXQE7o6Jl9Wyr4UR5G14unF7soZYaMbg=;
        b=QZm8aOm8RbNlY40Q4XQU5d2gjJPbZzE/EPGKd9wIFP3yFDp4M3cFgET0nkBnXMXe/L
         bEm79j/TVkoRw9F/2BGgKcTpiB6bky/NEmE9CkdF1Z/Zt8U8C39U244fW229NNObm34/
         ccvJGgfuH4axu1SJlvkP/6/4XO+BwbpLyyiFz6GRw87GBHcW+XBsZDK4hAKZFGo+cuOo
         DarmyslHPlLwRnDH/H/zNfF59z1r1exJ0qGBHH2zx/iuB2WjeuJB1ULy0DtcSbOCDMZO
         sP5NL6fM6M6Txdr9OTPBSZJem424Ayv4dnyf+wAht8gy5tn7P6ezpWFnvf1QofADTlXo
         +2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678807738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b3xe4S3Sg3+fXQE7o6Jl9Wyr4UR5G14unF7soZYaMbg=;
        b=TQxJ+FhhMI3neSgytiO0uVpiJGmQFHsMsCARIEtqKiX6Y+reu9zTVRPNvmuxwsy6Db
         dBgO9/HLvqMEWW6zTz1KR/4NDOKh+P4TkLUH8X96JaaFb+FYdFlnfXOKZlkJYEkuE+Vp
         bfW5qkBU89t8JQsDyutglQ7wYXQEyhJOttWSRDrpDVkAuWNzEOD97rt9TGXxbEis0ywu
         2XE6gJPICVX6Jw2iHNatD45I/80j8w4G/AllqDWrCYEqDdrgp9sCQqYtyuQnXFrd4n6q
         9bhOeVfOrfYSABLICYMkeXk9EsWa3wndmGBa7/XTBCTEfpcuTgJIBb5KGXLx3xy+pkRt
         K7/Q==
X-Gm-Message-State: AO0yUKV6B0D45gJeg3Dfsm09W5sqef4IiU88gKiwJNOLrvg5BXswUJnO
        eEM2gVJuyCh37Cl3A4j8SFzeZQ==
X-Google-Smtp-Source: AK7set/2lSTktOe20S80TTlPoFxsu2prw745PLGWGmCVZbk7wNrpyh/pjHPJ2hOD260NzZex7zfetA==
X-Received: by 2002:a2e:8807:0:b0:295:9a9f:3f55 with SMTP id x7-20020a2e8807000000b002959a9f3f55mr11475513ljh.0.1678807737857;
        Tue, 14 Mar 2023 08:28:57 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id 27-20020a2e165b000000b002986a977bf2sm491529ljw.90.2023.03.14.08.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 08:28:57 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 14 Mar 2023 16:28:43 +0100
Subject: [PATCH v4 12/14] drm/msm/a6xx: Use adreno_is_aXYZ macros in
 speedbin matching
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230223-topic-gmuwrapper-v4-12-e987eb79d03f@linaro.org>
References: <20230223-topic-gmuwrapper-v4-0-e987eb79d03f@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v4-0-e987eb79d03f@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678807716; l=4256;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=k8ecRBr+PHIYBEN3eyTaSM0Q8/LOQMVQTU2+Qd88W0A=;
 b=3gvGXi1wDp8tvJizG2mCmembimJ6NEiodLsZGbAy715EhpeRtk7EXD8RLR26pFDIaz0VuTQeZ6k/
 aWuHcLqxBjAMtTLuKKm/kvw2K8xAB56xwcwGeEjUcfSn3z7+hmO7
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Before transitioning to using per-SoC and not per-Adreno speedbin
fuse values (need another patchset to land elsewhere), a good
improvement/stopgap solution is to use adreno_is_aXYZ macros in
place of explicit revision matching. Do so to allow differentiating
between A619 and A619_holi.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 18 +++++++++---------
 drivers/gpu/drm/msm/adreno/adreno_gpu.h | 14 ++++++++++++--
 2 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index dfd2d735e57f..71950a5fcc96 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2200,23 +2200,23 @@ static u32 adreno_7c3_get_speed_bin(u32 fuse)
 	return UINT_MAX;
 }
 
-static u32 fuse_to_supp_hw(struct device *dev, struct adreno_rev rev, u32 fuse)
+static u32 fuse_to_supp_hw(struct device *dev, struct adreno_gpu *adreno_gpu, u32 fuse)
 {
 	u32 val = UINT_MAX;
 
-	if (adreno_cmp_rev(ADRENO_REV(6, 1, 8, ANY_ID), rev))
+	if (adreno_is_a618(adreno_gpu))
 		val = a618_get_speed_bin(fuse);
 
-	else if (adreno_cmp_rev(ADRENO_REV(6, 1, 9, ANY_ID), rev))
+	else if (adreno_is_a619(adreno_gpu))
 		val = a619_get_speed_bin(fuse);
 
-	else if (adreno_cmp_rev(ADRENO_REV(6, 3, 5, ANY_ID), rev))
+	else if (adreno_is_7c3(adreno_gpu))
 		val = adreno_7c3_get_speed_bin(fuse);
 
-	else if (adreno_cmp_rev(ADRENO_REV(6, 4, 0, ANY_ID), rev))
+	else if (adreno_is_a640(adreno_gpu))
 		val = a640_get_speed_bin(fuse);
 
-	else if (adreno_cmp_rev(ADRENO_REV(6, 5, 0, ANY_ID), rev))
+	else if (adreno_is_a650(adreno_gpu))
 		val = a650_get_speed_bin(fuse);
 
 	if (val == UINT_MAX) {
@@ -2229,7 +2229,7 @@ static u32 fuse_to_supp_hw(struct device *dev, struct adreno_rev rev, u32 fuse)
 	return (1 << val);
 }
 
-static int a6xx_set_supported_hw(struct device *dev, struct adreno_rev rev)
+static int a6xx_set_supported_hw(struct device *dev, struct adreno_gpu *adreno_gpu)
 {
 	u32 supp_hw;
 	u32 speedbin;
@@ -2248,7 +2248,7 @@ static int a6xx_set_supported_hw(struct device *dev, struct adreno_rev rev)
 		return ret;
 	}
 
-	supp_hw = fuse_to_supp_hw(dev, rev, speedbin);
+	supp_hw = fuse_to_supp_hw(dev, adreno_gpu, speedbin);
 
 	ret = devm_pm_opp_set_supported_hw(dev, &supp_hw, 1);
 	if (ret)
@@ -2367,7 +2367,7 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 	if (!adreno_has_gmu_wrapper(adreno_gpu))
 		a6xx_llc_slices_init(pdev, a6xx_gpu);
 
-	ret = a6xx_set_supported_hw(&pdev->dev, config->rev);
+	ret = a6xx_set_supported_hw(&pdev->dev, adreno_gpu);
 	if (ret) {
 		a6xx_destroy(&(a6xx_gpu->base.base));
 		return ERR_PTR(ret);
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 27c30a7694f4..da9f45a13b5d 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -268,9 +268,9 @@ static inline int adreno_is_a630(struct adreno_gpu *gpu)
 	return gpu->revn == 630;
 }
 
-static inline int adreno_is_a640_family(struct adreno_gpu *gpu)
+static inline int adreno_is_a640(struct adreno_gpu *gpu)
 {
-	return (gpu->revn == 640) || (gpu->revn == 680);
+	return gpu->revn == 640;
 }
 
 static inline int adreno_is_a650(struct adreno_gpu *gpu)
@@ -289,6 +289,11 @@ static inline int adreno_is_a660(struct adreno_gpu *gpu)
 	return gpu->revn == 660;
 }
 
+static inline int adreno_is_a680(struct adreno_gpu *gpu)
+{
+	return gpu->revn == 680;
+}
+
 /* check for a615, a616, a618, a619 or any derivatives */
 static inline int adreno_is_a615_family(struct adreno_gpu *gpu)
 {
@@ -306,6 +311,11 @@ static inline int adreno_is_a650_family(struct adreno_gpu *gpu)
 	return gpu->revn == 650 || gpu->revn == 620 || adreno_is_a660_family(gpu);
 }
 
+static inline int adreno_is_a640_family(struct adreno_gpu *gpu)
+{
+	return adreno_is_a640(gpu) || adreno_is_a680(gpu);
+}
+
 u64 adreno_private_address_space_size(struct msm_gpu *gpu);
 int adreno_get_param(struct msm_gpu *gpu, struct msm_file_private *ctx,
 		     uint32_t param, uint64_t *value, uint32_t *len);

-- 
2.39.2

