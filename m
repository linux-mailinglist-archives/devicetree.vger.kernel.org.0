Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E37D7419BC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 22:37:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230432AbjF1Ufq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jun 2023 16:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231783AbjF1Ufi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jun 2023 16:35:38 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFD072708
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 13:35:35 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f95bf5c493so80899e87.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 13:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687984534; x=1690576534;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sX61xLzrSqpunz5ev7NdqhGboO2e1ygKVlT8rjAfgIw=;
        b=CKlYnjbhvmTX5qxXcW486aoyEsOIGjb6TgKAKUMd4xm9mgYeCF3Isk8/IbA364cL9z
         2eF54eO3/ge5Ua/6l3tHvGFnwZDP3BsVlihmENcF5HCI6SAbImPBQ2K/NxNNefSGydz0
         eig1dL2XxLXGcWsHZLuLJbViXuiueTsnsbbNswb1Bcfj/yKtMJ9mxkq4TiOGlE6UTaZ0
         5X3WOOm5U4U4RGE0+gYxzrlWDXpjx/tAkTHb3tgbG8jkOMHIrAZYMt6q0qGrTN+3RuMF
         9HuIL9KVnzpD05afFiOTPM+cGPl6iCScOamGlqZtVe8GaGR04E7AUGF8H9GPWe06Gq4W
         QyXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687984534; x=1690576534;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sX61xLzrSqpunz5ev7NdqhGboO2e1ygKVlT8rjAfgIw=;
        b=FD70zKGWS044DDVnDc+mqnMCyMDgEklFKC65SqjgBiVg3U4/rCrmNxq0UIFMxXCK29
         5qEFf7lFtbRc5m/7w9ZI66xOBdNUD3EDKmVFpIA9hVKExCWkeMYUv0uZO/pmj/xf4XA4
         cqZ2HC2RfD+8/BnFcGo3NlZ6n/5U3PYTNBPyq2tBaB37c7rGh5z1JcMlWraOb9Mra5JO
         V32OLE0hBm1MTI0WLFqREYxGUajj3Osx1DKvhFI+T+OeiRot7M8Pnl+4HgTbYBbZyiHU
         5y5OFfdpz51OxN+nvFwSLgPS1L2h6IGgCun+fA1IohrcPDlJTRdhdYAA9hfp0eYJElER
         F8FA==
X-Gm-Message-State: AC+VfDzYb0+Hwy0J1n4Rx371UltR0KM+OGlNBf7qxSwyX2OaKRAqg1fk
        Bqgk6n6ZNHZrcwwCAEIQRcVNSQ==
X-Google-Smtp-Source: ACHHUZ4mbDR4q/0SPRJDfw23h+iHYX5F18pGLnfkI1JO4yYJUyJY/kwbBvEWvex+U59sYliIjS1DdQ==
X-Received: by 2002:a05:6512:3f1d:b0:4fa:ce08:a9d0 with SMTP id y29-20020a0565123f1d00b004face08a9d0mr8697767lfa.57.1687984534316;
        Wed, 28 Jun 2023 13:35:34 -0700 (PDT)
Received: from [192.168.1.101] (abyk82.neoplus.adsl.tpnet.pl. [83.9.30.82])
        by smtp.gmail.com with ESMTPSA id m25-20020a056512015900b004fb86c89fa1sm753363lfo.135.2023.06.28.13.35.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 13:35:34 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 28 Jun 2023 22:35:06 +0200
Subject: [PATCH 06/14] drm/msm/a6xx: Move LLC accessors to the common
 header
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-a7xx_drmmsm-v1-6-a7f4496e0c12@linaro.org>
References: <20230628-topic-a7xx_drmmsm-v1-0-a7f4496e0c12@linaro.org>
In-Reply-To: <20230628-topic-a7xx_drmmsm-v1-0-a7f4496e0c12@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687984524; l=2053;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3i7Z22FP2QVKu6xop0YI/VspQ/V2L4DBdczgpDJONsc=;
 b=r4Q1pP42KzKhFjKsyVrb/P+HQX12W0EiaS/EiByIjNmqcHcX7aVTaUVQS+18tL0ZQKrQvVoWY
 uruPmivoCPwBWUKURF/S4An4Dnrod1wUsjYRXHU00JAzDBsnv3jqobc
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move these wrappers in preparation for use in a6xx_gmu.c

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 15 ---------------
 drivers/gpu/drm/msm/adreno/a6xx_gpu.h | 15 +++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index a70e36178058..c1c76fe288b2 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1735,21 +1735,6 @@ static irqreturn_t a6xx_irq(struct msm_gpu *gpu)
 	return IRQ_HANDLED;
 }
 
-static void a6xx_llc_rmw(struct a6xx_gpu *a6xx_gpu, u32 reg, u32 mask, u32 or)
-{
-	return msm_rmw(a6xx_gpu->llc_mmio + (reg << 2), mask, or);
-}
-
-static u32 a6xx_llc_read(struct a6xx_gpu *a6xx_gpu, u32 reg)
-{
-	return msm_readl(a6xx_gpu->llc_mmio + (reg << 2));
-}
-
-static void a6xx_llc_write(struct a6xx_gpu *a6xx_gpu, u32 reg, u32 value)
-{
-	msm_writel(value, a6xx_gpu->llc_mmio + (reg << 2));
-}
-
 static void a6xx_llc_deactivate(struct a6xx_gpu *a6xx_gpu)
 {
 	llcc_slice_deactivate(a6xx_gpu->llc_slice);
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
index c788b06e72da..39d1f1f5a6d1 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
@@ -62,6 +62,21 @@ static inline bool a6xx_has_gbif(struct adreno_gpu *gpu)
 	return true;
 }
 
+static inline void a6xx_llc_rmw(struct a6xx_gpu *a6xx_gpu, u32 reg, u32 mask, u32 or)
+{
+	return msm_rmw(a6xx_gpu->llc_mmio + (reg << 2), mask, or);
+}
+
+static inline u32 a6xx_llc_read(struct a6xx_gpu *a6xx_gpu, u32 reg)
+{
+	return msm_readl(a6xx_gpu->llc_mmio + (reg << 2));
+}
+
+static inline void a6xx_llc_write(struct a6xx_gpu *a6xx_gpu, u32 reg, u32 value)
+{
+	msm_writel(value, a6xx_gpu->llc_mmio + (reg << 2));
+}
+
 #define shadowptr(_a6xx_gpu, _ring) ((_a6xx_gpu)->shadow_iova + \
 		((_ring)->id * sizeof(uint32_t)))
 

-- 
2.41.0

