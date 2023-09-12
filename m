Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31A3079CD1A
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 12:05:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233800AbjILKFe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 06:05:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233872AbjILKF3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 06:05:29 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 760D71720
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 03:05:07 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9a9d6b98845so1281357966b.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 03:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694513106; x=1695117906; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WML/yephaQhDmSkYaQilPoOdlfPN/mMwj3HRzRGa9sQ=;
        b=aeLsSJ54nAQtZ6i7jhcKe+hJ70xkO8JqMGDxdL9hHeNkwDiZQ8N4J6IZ21R5wXuOkw
         WK359rrrMAo4rM+Sy1RNMXa2UQpll1AwMG6D8HKB+BzSOhCU/YFuXFNw4CwFxCO9T5Os
         3titcMNDy6Pi8NHGGhV7n7ulNH1p9UpapHWIfWoNXsLFkibkVBHFWmufxKo5bdNBDoHF
         SaeaIGzLYmB9Iy6f/DxzYXL/2amLtUpLFRsjWI+KvxcdpjM10sKPF49cDP4lqYeMJyDV
         DIoHO0J3hLXKo5HrtHbECFyoXuFSnM2QoorZxn28KXMVegz+dWl54xb/85VD8+NNlRD4
         O6vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694513106; x=1695117906;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WML/yephaQhDmSkYaQilPoOdlfPN/mMwj3HRzRGa9sQ=;
        b=V0BJ4MIYwTTzk1J3eJO2opOlquXcynCe6uFrVAmpEbfgUUL4IeuJMVHRscAchUtEGP
         kDjm65aSayBML9q1ko7W+YDWSHSrmgSO2HVl3HcfQgab4y7tx2Za5JhkGJ254TgUU1XB
         sw1yIompxHqurxvhvlwOtriW7JhcWGfVu3SzNyj8OZNIQX3p8TjLuUNqQYZsiy5PqRVP
         UB99bmIrtzyqFODE7RqG2mxjH6HEh0wPB1xvpEabb3f+4CEK2tg3pRGGBW+HWd1Ugg8P
         W0ghC3M58VkhLP/FNa6DixlzekZFUip5yA8ZQ3ofEhkdbvUkkj97z66TtgYaZJrn3mkx
         gKrA==
X-Gm-Message-State: AOJu0YxLMqknFsUVbIHoHd8v6tPlKvj8OzUn7YfjLcXfryh8jSve4AhH
        fNSU2QY+Q+oGTvwhYCW2ocx+dg==
X-Google-Smtp-Source: AGHT+IHkfJuO6isT9rl4lZ0FctzAxFjvF1AMWHxfRJgf36Cn1Rv+YzPFam2bRtfeAbVUShYgfbc88A==
X-Received: by 2002:a17:906:519b:b0:9a5:9305:83fb with SMTP id y27-20020a170906519b00b009a5930583fbmr3059758ejk.34.1694513106013;
        Tue, 12 Sep 2023 03:05:06 -0700 (PDT)
Received: from [10.167.154.1] (178235177248.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.248])
        by smtp.gmail.com with ESMTPSA id s3-20020a170906060300b0099ce188be7fsm6592053ejb.3.2023.09.12.03.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 03:05:05 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 12 Sep 2023 12:04:52 +0200
Subject: [PATCH v4 10/10] drm/msm/a6xx: Poll for GBIF unhalt status in
 hw_init
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-a7xx_drmmsm-v4-10-8b3e402795c1@linaro.org>
References: <20230628-topic-a7xx_drmmsm-v4-0-8b3e402795c1@linaro.org>
In-Reply-To: <20230628-topic-a7xx_drmmsm-v4-0-8b3e402795c1@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694513085; l=1394;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=S69YtysEIHJMxY5KNnuCyMTYR/1rqHR9OdffW35mR5k=;
 b=iz2SkMr9ivtUPof6eNrA8ldOUANAA2M2VE6AlIFMAwGynQBl14qCQbnTlojPGPQaoB+iWzvS7
 RFzrmVkMeH9DZRIMeKqHdJ2eGx1kdg/fDffXssujc8ZmhMA+cj6YNkM
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some GPUs - particularly A7xx ones - are really really stubborn and
sometimes take a longer-than-expected time to finish unhalting GBIF.

Note that this is not caused by the request a few lines above.

Poll for the unhalt ack to make sure we're not trying to write bits to
an essentially dead GPU that can't receive data on its end of the bus.
Failing to do this will result in inexplicable GMU timeouts or worse.

This is a rather ugly hack which introduces a whole lot of latency.

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # sm8450
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 2313620084b6..11cb410e0ac7 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1629,6 +1629,10 @@ static int hw_init(struct msm_gpu *gpu)
 		mb();
 	}
 
+	/* Some GPUs are stubborn and take their sweet time to unhalt GBIF! */
+	if (adreno_is_a7xx(adreno_gpu) && a6xx_has_gbif(adreno_gpu))
+		spin_until(!gpu_read(gpu, REG_A6XX_GBIF_HALT_ACK));
+
 	gpu_write(gpu, REG_A6XX_RBBM_SECVID_TSB_CNTL, 0);
 
 	if (adreno_is_a619_holi(adreno_gpu))

-- 
2.42.0

