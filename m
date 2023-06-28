Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 399A07419B2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 22:37:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231994AbjF1Ufm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jun 2023 16:35:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232003AbjF1Ufg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jun 2023 16:35:36 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB791FFA
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 13:35:34 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f95bf5c493so80845e87.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 13:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687984533; x=1690576533;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xtpQvzp4RpyUG/PwqaST+5tYMMgpC5C6Y/5Ihh3AMLQ=;
        b=eRUCKRekrZjHJpsZkazD1CQsku0JiP3yeQQhB5BhMUaety7kgG4AFhrlgwRlP8ji1x
         XgQwJiAJXpDIkcYmuS+KUQSeskxt788EsBO1/wZY3cLqaGdcE9yS3s2Q4QWsQtbbOlkw
         rfZMnSrOe96vQqCsOmmsWuzaTAPQFWa2xCj6wSHhxjglkqhVEOpGAJzRh7+DL1imZvAN
         79/7I/UnYL9PytvoGdwQUjQB+wN7OwOWwahkR6SpKab4ldhjozV0n2NlDyz+zJwb9yB9
         BfjkhHZAISphtlDFA5MjK3kacWO2eq9TJUF3lQ2f/qlLxqjo5E/FX9I1mDM/xbYlh/n2
         o9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687984533; x=1690576533;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xtpQvzp4RpyUG/PwqaST+5tYMMgpC5C6Y/5Ihh3AMLQ=;
        b=guy0QkVuMnPU057w+W5nDM2ntTKs+pKZ7ZNJNcYCsK1X1aEf9029LpWO2HZlRcsHB/
         xTMWOYlO7WXqA32ZCgzG1D7TT9PFXb69tFfJNP9k6eEjT2b4U3ogugrT3EG4BD37CWRn
         5S/0vKqGg/1PrOKy43PowegEzOV6iF8MQ3mPPX+r8Qilgsv226SgIOc/z9EWkbkz78xV
         Eo68WTQCwm7emkszXQj7fHY/X3ffKhG/VsBoY6JCTJTG7nyIdhL36PJPwXZkbAqp4CDT
         MXtW9VSaJKnWIMVfsqbwxT5hMz6TBzxSZzo5QJ4N0UWxJdM+mIPN33GFftvr9jBK4NSf
         qlFg==
X-Gm-Message-State: AC+VfDw7dNiDCar8DsJQ9u6K79Q6oV86UkHqpIEvVQzDJqWG1HA88J9v
        R1kxl3unZpmNCCEIBp3aw1EsNQ==
X-Google-Smtp-Source: ACHHUZ4uGYGv5RouOZ7IOh/HeB4Lh6M5iGT2Ode+APGSuhS8itbLrgq/rOdeNAb5HXfybgd6tpS7Bw==
X-Received: by 2002:a05:6512:3d8b:b0:4fa:5e76:7ad4 with SMTP id k11-20020a0565123d8b00b004fa5e767ad4mr9970258lfv.10.1687984532977;
        Wed, 28 Jun 2023 13:35:32 -0700 (PDT)
Received: from [192.168.1.101] (abyk82.neoplus.adsl.tpnet.pl. [83.9.30.82])
        by smtp.gmail.com with ESMTPSA id m25-20020a056512015900b004fb86c89fa1sm753363lfo.135.2023.06.28.13.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 13:35:32 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 28 Jun 2023 22:35:05 +0200
Subject: [PATCH 05/14] drm/msm/a6xx: Introduce a6xx_llc_read
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-a7xx_drmmsm-v1-5-a7f4496e0c12@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687984524; l=909;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=+c+we8nCMly7yIkJ6dm5RdbFwSno59/Ex2lT1jIgyL0=;
 b=EXC4gaMs7g1fnr8cXfio+6LPLGT4COF/g31FpebXZDdZ8J1XKs2kcr74BVY+zK0BoOUiw9mvT
 P1Ilely/ODtBXuhV0Rf+KSVfXzQKUvdj0LNK/KbYosjeKMVEq2kYOHb
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a helper that does exactly what it says on the can, it'll be
required for A7xx.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 488c69cf08d3..a70e36178058 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1740,6 +1740,11 @@ static void a6xx_llc_rmw(struct a6xx_gpu *a6xx_gpu, u32 reg, u32 mask, u32 or)
 	return msm_rmw(a6xx_gpu->llc_mmio + (reg << 2), mask, or);
 }
 
+static u32 a6xx_llc_read(struct a6xx_gpu *a6xx_gpu, u32 reg)
+{
+	return msm_readl(a6xx_gpu->llc_mmio + (reg << 2));
+}
+
 static void a6xx_llc_write(struct a6xx_gpu *a6xx_gpu, u32 reg, u32 value)
 {
 	msm_writel(value, a6xx_gpu->llc_mmio + (reg << 2));

-- 
2.41.0

