Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B48D1714ADB
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 15:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbjE2Nwu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 09:52:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229951AbjE2Nwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 09:52:34 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2A879C
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:52:32 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4effb818c37so3514692e87.3
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 06:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685368351; x=1687960351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ox41uPAx3lnO302Ry1Df1WPA2I0vwUL6Eka5WZ9+II8=;
        b=HjjCbA1IfVPklnX4hxxrr479tjGTHg03aPYbA8LjoLjynxFAIoy1254+uA6zs2GEsa
         Ng/Rk9cGdPncBQIoyVXEAfCfbqznsEQGn+2gojUxV8rBwLa9Oz7ebFYckH5recNqAdjG
         a4lbdd7kGFF2BVDzUayofSUUVgUI6OcC6yvy7xqJaBONnPyvA6nroooBpZkYsM1slWDY
         shj2NXr5SszJlMMPpeLYgNDaYRKyW65E5FujU+XxcpFES/VJ89qJbU1xXgxO1p338Ief
         8yQVGIZiJdNMQYcijN1WISgjtb1UUjWK7k735ppzRgxztzsBCOu1i+UkdgVrEioBQde+
         Hzaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685368351; x=1687960351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ox41uPAx3lnO302Ry1Df1WPA2I0vwUL6Eka5WZ9+II8=;
        b=h9S8ZwupfqJNH594M8N5oXbyFNE2HO2s7JtPAHNUMIau5pm+zZCInsSIr1k+5gZb1H
         NjDqLwABj+/OhYANgfX1/Tn2pWrQMMoX3wzbtwxG7Ds90PWSW1PfwJaEzB6UfNjAEECo
         HarEHkh/ycy6UHU+IT+8uu8S0EXJ0DSKYvVSWSCUN2bRtikDg7WVZQeoJIQ/4oQJ5de2
         frk2xw2rh8LM/Gbtty8s5vMZnQHYdlLIqrPGhTciXII8bP6+wbob7vlqGoch1qLFNWPW
         ao4ZmeWLCeAo9i62458U6Ei4nrEPrjN8fTovCza5PVjx+WPkX5ORaeWScZSG/dWw9oRy
         2rUA==
X-Gm-Message-State: AC+VfDwKAlIZDsKpKy2nhFjGmxDghtKrXd+5dsN7Mvvsroa7IexFbmAz
        JewAwnXzqkDoiEG04+PiXAjQ81H17Kb1e7qa270=
X-Google-Smtp-Source: ACHHUZ4vk8LTno9K6vFTsGH2IPC+ZCybTCoUIpBBvQz3qqRJqqUUTyGGvWflVjF1p/neVA3yrS/NKg==
X-Received: by 2002:a05:6512:241:b0:4ef:f06e:eacf with SMTP id b1-20020a056512024100b004eff06eeacfmr3324513lfo.27.1685368351092;
        Mon, 29 May 2023 06:52:31 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id c16-20020ac25310000000b004f2532cfbc1sm4700lfh.81.2023.05.29.06.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 06:52:30 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 29 May 2023 15:52:23 +0200
Subject: [PATCH v8 04/18] drm/msm/a6xx: Move force keepalive vote removal
 to a6xx_gmu_force_off()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230223-topic-gmuwrapper-v8-4-69c68206609e@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1685368343; l=2072;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=WdDcDOyizy5IWwyMqltY5oqm/fsHIExj5zaeUB68hS4=;
 b=aBSvTQ5N+E1G5FcVBte5HyjyDhSx9dEGT5S8/XgIqhCakLKJD5Ck2zwhKKKgt07wHSnknGu9b
 7Rw2pv5mdrNAaU0rJUKpQsXXRqg8KFTAUdhhuSj3Z/kbRs+0dNbohMD
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
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 6 ++++++
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index 87babbb2a19f..9421716a2fe5 100644
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
index 9fb214f150dd..e34aa15156a4 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1274,12 +1274,6 @@ static void a6xx_recover(struct msm_gpu *gpu)
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
2.40.1

