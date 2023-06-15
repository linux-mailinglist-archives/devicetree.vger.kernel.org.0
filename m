Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76AD273237C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 01:22:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232320AbjFOXWP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 19:22:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238762AbjFOXVx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 19:21:53 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17FA730D0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:21:40 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f611ac39c5so11608937e87.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686871298; x=1689463298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xOQjmLwZ+0JJT1Lalj1Bo3BDqbdOlH2rfx8tFvL3DMg=;
        b=ELfPSc8fFo54gkdoFEgiAikD9Gl3CFZWiDTr5L9EhBmbnxQfhLx1FxD+/PwA5h4/Fd
         Fl7TTiljVLZ5pqkQbT9ssIG9KHyfvEEd2491ko7iyh0sQpo/SkOXkvnW8dq1fjp+w6RK
         IBMzlYzNB6snYM01XuKE8qWr5KawqaWIrWV9rHpx173SXF4NGOic8Z8tYfcRe00Zskr4
         TZwhlu7FMIh46OjauDIwIzxrs6FaJBnDYG7NTEllWi9B3cvmubOmDEYEx4ObO7jNAOi/
         3K98qW8AW74eOyLItLReVK68iHizGDa5UeW0jeK+duGii6/i50v5jwgWcEi7oFO7QdYd
         MK5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686871298; x=1689463298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xOQjmLwZ+0JJT1Lalj1Bo3BDqbdOlH2rfx8tFvL3DMg=;
        b=QlJTHqP/VJexA2TfRqML1SN3uo1Dqmj74F+/V3Dh44yBR36A0ydP3HHlC6j0KL7ncy
         7HOK0BRvBlQ7SDqkS6BFHUK0ZnjXgMEqbXUm61QWidC7MAe6duSzZKjbpzpZ7c5YLLlK
         1iHLJzgDG+dZ2G73PyrxVuYN31X48bLe0AuT3fzFiz6w0Jw0orICoqjrnQdUDTtR97nk
         GQwxxaPWi+h15/v3AESGVyiMSX63bfEg2+5h4l7+1H9Bggwucl0GayIUEjYe1W0MzJJ4
         Q1YWpBxp3gAwi4mkogSICAFoJaquDoDhrbNLSIZ7lino+XgyMsmIlOQ5mTFvzFi0sv0f
         yKGA==
X-Gm-Message-State: AC+VfDzwUWTZ6osNkHM/P5TAXCZledxXChBeYgDokGgUdrOeWMDHnSpl
        FGl91DZ8nXUk3N1XTjd1mgJzIQ==
X-Google-Smtp-Source: ACHHUZ7e5mtZ2brsQYAKHLg0CumiDhLst5px2OXInPfmnpSC8AMvVFT4Ax5R4g0XWr/3rXdnpT6EsA==
X-Received: by 2002:a19:d611:0:b0:4f6:2d98:2985 with SMTP id n17-20020a19d611000000b004f62d982985mr89594lfg.14.1686871298275;
        Thu, 15 Jun 2023 16:21:38 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id u25-20020a056512041900b004f24ee39661sm2744852lfk.137.2023.06.15.16.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 16:21:37 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 16 Jun 2023 01:20:54 +0200
Subject: [PATCH v9 13/20] drm/msm/adreno: Disable has_cached_coherent in
 GMU wrapper configurations
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230223-topic-gmuwrapper-v9-13-890d8f470c8b@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686871277; l=1430;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Xr2C8rg/eKOmAE/x7OQkyp9EfaNGZPqe0Lxab2HmrKc=;
 b=TWC5nlDeosgnXX2hBRiZbEr49M/kZJyXkjcjYXovl75lUeVOVfWfpQHiyUExXRwOxGl584SWi
 syvk1F4dNg8C7yPvZHL//bi07kvZ0H4NybFifTpcpmrERp0LVo2IVyL
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

A610 and A619_holi don't support the feature. Disable it to make the GPU stop
crashing after almost each and every submission - the received data on
the GPU end was simply incomplete in garbled, resulting in almost nothing
being executed properly. Extend the disablement to adreno_has_gmu_wrapper,
as none of the GMU wrapper Adrenos that don't support yet seem to feature it.

Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/adreno_device.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index e5a865024e94..6ea24b8ddcf8 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -565,7 +565,6 @@ static int adreno_bind(struct device *dev, struct device *master, void *data)
 		config.rev.minor, config.rev.patchid);
 
 	priv->is_a2xx = config.rev.core == 2;
-	priv->has_cached_coherent = config.rev.core >= 6;
 
 	gpu = info->init(drm);
 	if (IS_ERR(gpu)) {
@@ -577,6 +576,10 @@ static int adreno_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
+	if (config.rev.core >= 6)
+		if (!adreno_has_gmu_wrapper(to_adreno_gpu(gpu)))
+			priv->has_cached_coherent = true;
+
 	return 0;
 }
 

-- 
2.41.0

