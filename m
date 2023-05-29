Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BD29714ADF
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 15:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbjE2Nwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 09:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229970AbjE2Nwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 09:52:46 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 862F0F3
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:52:35 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f4e71a09a7so3601107e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685368354; x=1687960354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4I8zZOOwyp4NjNuH+/dpM0ZZysjD7tVsNkFj0zmZXZM=;
        b=l+DkWo2ZhoNK9556YBMdFVNBkVeLpQfjuMUDlHntKSZyaetyXOnvUXuV7dvX86/wLJ
         ko/ffdFEImU13o1EPs2vDfO1747VHMw0bFEun9AyIv2flD76csOB6xZuC6dW+yV0cBv+
         SisWIgBMQgy3/hw13dO5IgWBy6HMtBBBDS9kFFbJChiCrvEJisJlFxMOYzr0CYK5Lc4d
         Th6WgSpj8ufoace/gpxE99jT5m16k+z5TXXjJ/Toi7dk4b4z/k+rVfEM3FpjZoJ1lU58
         EPbTwHrRgS4N1d/9ENYvq6OJ19Ok8HRdfNdZtVFH/3SnF6wc8b3Qcu1MZX1V0zS6OIQM
         Xn9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685368354; x=1687960354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4I8zZOOwyp4NjNuH+/dpM0ZZysjD7tVsNkFj0zmZXZM=;
        b=SyYd7Wp5B/XBZ3KMus0iamjZk6aKOXjZrMU+DpguRoOpHr2ZiFYaZfo7hfJLKSz+ns
         O/FVn4JGEgmVYKQmDBNsizPjcJ5SMBtEjNUgn/hmczhWZ0yxGrUrIC9Dh7lFpxfGyen1
         pLiwW3/64Tmy+VnBAJRIRH/jmKHGwn+q9G8Fg7t/rS6Ftp1Tpvv6lbkzlKZD93FsUuO6
         SdYOcNd2PK4Lm3lcbmOlmBBhaAsZyZxSAYN7OkZqvyHFqrVxczW3V++mXgUzgcVIackA
         sXelwIyIvOjJ8M+C6ysuMBJLWKhThzNHhD5ub5/NYsKaW1zquKgW6LqKxV16MAZ13hNX
         eC5Q==
X-Gm-Message-State: AC+VfDynQsW3J6BHzIUa4W75wtHniRtCLBdEfpluXNx8xZjFZJVID0+0
        4nu4kKC+etxhiHid41QXNO2mFw==
X-Google-Smtp-Source: ACHHUZ5aB1sINxFsZoyUXzNneKTrgmI/kRzYljU0PYMyyNMxHSuRFDEq5CvQf7zzn5rk8owg86Etmg==
X-Received: by 2002:ac2:52ae:0:b0:4f1:4898:d183 with SMTP id r14-20020ac252ae000000b004f14898d183mr3170767lfm.25.1685368353925;
        Mon, 29 May 2023 06:52:33 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id c16-20020ac25310000000b004f2532cfbc1sm4700lfh.81.2023.05.29.06.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 06:52:33 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 29 May 2023 15:52:25 +0200
Subject: [PATCH v8 06/18] drm/msm/a6xx: Improve
 a6xx_bus_clear_pending_transactions()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230223-topic-gmuwrapper-v8-6-69c68206609e@linaro.org>
References: <20230223-topic-gmuwrapper-v8-0-69c68206609e@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v8-0-69c68206609e@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685368343; l=1359;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=WRWN4WVkGFPt0it/wZ2I1vdoI21A135Lfips/fNYpFI=;
 b=mIpciuesV9A/22LuUm403HydwQAsP83RCVrbPN0KA4I+OL/+/dvEsyNBtqML4K0b0MbyVi3Ey
 veuPskNnSqgD7yRStu3erO8aeLxty6Ap3tGNO3y2CJ3Mc/Rb2nnWPVg
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Unify the indentation and explain the cryptic 0xF value.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 6bb4da70f6a6..e3ac3f045665 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1597,17 +1597,18 @@ static void a6xx_llc_slices_init(struct platform_device *pdev,
 		a6xx_gpu->llc_mmio = ERR_PTR(-EINVAL);
 }
 
-#define GBIF_CLIENT_HALT_MASK             BIT(0)
-#define GBIF_ARB_HALT_MASK                BIT(1)
+#define GBIF_CLIENT_HALT_MASK		BIT(0)
+#define GBIF_ARB_HALT_MASK		BIT(1)
+#define VBIF_XIN_HALT_CTRL0_MASK	GENMASK(3, 0)
 
 void a6xx_bus_clear_pending_transactions(struct adreno_gpu *adreno_gpu, bool gx_off)
 {
 	struct msm_gpu *gpu = &adreno_gpu->base;
 
 	if (!a6xx_has_gbif(adreno_gpu)) {
-		gpu_write(gpu, REG_A6XX_VBIF_XIN_HALT_CTRL0, 0xf);
+		gpu_write(gpu, REG_A6XX_VBIF_XIN_HALT_CTRL0, VBIF_XIN_HALT_CTRL0_MASK);
 		spin_until((gpu_read(gpu, REG_A6XX_VBIF_XIN_HALT_CTRL1) &
-								0xf) == 0xf);
+				(VBIF_XIN_HALT_CTRL0_MASK)) == VBIF_XIN_HALT_CTRL0_MASK);
 		gpu_write(gpu, REG_A6XX_VBIF_XIN_HALT_CTRL0, 0);
 
 		return;

-- 
2.40.1

