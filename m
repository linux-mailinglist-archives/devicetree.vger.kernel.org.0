Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E35C7732349
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 01:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239387AbjFOXVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 19:21:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238927AbjFOXV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 19:21:29 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B24DD296A
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:21:27 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so3316100e87.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686871286; x=1689463286;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BuB9Tj3lhLuLPP+OSus2KoxyF5MNAI7rxRyrL+OaBKk=;
        b=GDx3/ylhlFGa+u4e1N3K/H12cWZd+STzURGDfpkc6kaomxVp4hEY+L/MuM3/S7+4jR
         a5H/GootRG2UGQ/8SqE8aETxYZWmQ4ylO1fp2MLlkHu0UTF/RNcSHlTzTtAoSCZG3172
         Gj3SOfT9AX9nGPl1/eoufZfvQzsE+LB4dm7hf4bjk6upU+GnVnTUrdWTkiihBubFcoyE
         qFPXjqf7bXkf00jx6hf27nZ5WdIEQHJdRBRxig/iFiLW/IGH1YTYpQVCSXoLtV+5sH0U
         8zI665p+7BHWqa0hdqY1NpURj9oK+bPMZdts8jXuURgLQxkO7xmgC/rk2eSbtmgugpzp
         zJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686871286; x=1689463286;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BuB9Tj3lhLuLPP+OSus2KoxyF5MNAI7rxRyrL+OaBKk=;
        b=NuQZmhlrSRBbItEjX/1BEv5wWG5GeI5BooRVuan7Dri61duK5jSNd5u3tjCbpKmefL
         /pgDzdzpOiZg/gG0pdwESFhkkuftZV19aOWgpexOkc+dANxQ93VPu1BU5hSyNJKpbXLC
         DiYhTRqUs0SUGGLA8n/eFsUv2OOA6MXqsepwovSYQv75/K+u+ipqfMA6YUwQQaGuQ4Ty
         tWCTudRs1LZAaurYbDdm4wnyK5Z6F7GzucuWk7C/ENSbmooadHl8x+KqTCJSWziIneXd
         QWAKARofYQESTLsDxUsZQSK9fU0SDL0DEegHbL7Y0RNIhrF8JfI3isSMkHLYfZOKww7g
         j8Vw==
X-Gm-Message-State: AC+VfDyVpWsTedVaMqG5fDBbUDe+AdKcs/BRjEhpiQjm8ZyVnO0bj6vE
        jTmd1gFZ624mywqOCCwoA8AY1w==
X-Google-Smtp-Source: ACHHUZ6qqy7E6+dgcsRnv7PEHpaoEppzdnx/yQvZi5dMEO8auG//UfDcm1ESF0ZrJklWWvabJvsqXg==
X-Received: by 2002:a19:6446:0:b0:4e9:bafc:88d0 with SMTP id b6-20020a196446000000b004e9bafc88d0mr89551lfj.23.1686871286122;
        Thu, 15 Jun 2023 16:21:26 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id u25-20020a056512041900b004f24ee39661sm2744852lfk.137.2023.06.15.16.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 16:21:25 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 16 Jun 2023 01:20:46 +0200
Subject: [PATCH v9 05/20] drm/msm/a6xx: Move force keepalive vote removal
 to a6xx_gmu_force_off()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230223-topic-gmuwrapper-v9-5-890d8f470c8b@linaro.org>
References: <20230223-topic-gmuwrapper-v9-0-890d8f470c8b@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v9-0-890d8f470c8b@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686871276; l=2130;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9KH8lCaBgwLdxlAk0sWl81+4/n3YOG4pQpo7CFNSD30=;
 b=9I90MQDfdyQD1tgytuAf4T635fSPxOaRHR0iUUkSaqqzxaiqMM/ikfVBEXm8Z/0e5DP5NI2Uv
 ng1kN10ljNYBrzxRTEqkpvE2NsWqcNDJU79yMENtfElLz6VGwn47jr6
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As pointed out by Akhil during the review process of GMU wrapper
introduction [1], it makes sense to move this write into the function
that's responsible for forcibly shutting the GMU off.

It is also very convenient to move this to GMU-specific code, so that
it does not have to be guarded by an if-condition to avoid calling it
on GMU wrapper targets.

Move the write to the aforementioned a6xx_gmu_force_off() to achieve
that. No effective functional change.

[1] https://lore.kernel.org/linux-arm-msm/20230501194022.GA18382@akhilpo-linux.qualcomm.com/

Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 6 ++++++
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index a6fa273d700e..32852c161aab 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -912,6 +912,12 @@ static void a6xx_gmu_force_off(struct a6xx_gmu *gmu)
 	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
 	struct msm_gpu *gpu = &adreno_gpu->base;
 
+	/*
+	 * Turn off keep alive that might have been enabled by the hang
+	 * interrupt
+	 */
+	gmu_write(&a6xx_gpu->gmu, REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE, 0);
+
 	/* Flush all the queues */
 	a6xx_hfi_stop(gmu);
 
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index ab5c446e4409..eebb4bc7c0f9 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1382,12 +1382,6 @@ static void a6xx_recover(struct msm_gpu *gpu)
 	/* Halt SQE first */
 	gpu_write(gpu, REG_A6XX_CP_SQE_CNTL, 3);
 
-	/*
-	 * Turn off keep alive that might have been enabled by the hang
-	 * interrupt
-	 */
-	gmu_write(&a6xx_gpu->gmu, REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE, 0);
-
 	pm_runtime_dont_use_autosuspend(&gpu->pdev->dev);
 
 	/* active_submit won't change until we make a submission */

-- 
2.41.0

