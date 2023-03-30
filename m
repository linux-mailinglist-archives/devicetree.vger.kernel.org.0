Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43C936D1323
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 01:26:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231578AbjC3X0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 19:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbjC3XZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 19:25:44 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 211F11166B
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 16:25:35 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id br6so26625129lfb.11
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 16:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680218733;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UaQqSlW0Hu7wuwFuXxr7ZB+drxQgUbdgeqKDpKp7IHg=;
        b=VoTrTlyva0/pRKXMl0hn4cMaA39/aoaR4/8ZZAh9o6WOKfKpR+gWirGoGwaSRDGqFz
         wZFmjn8nSY2p8xKPZA6lftR2MBAJQJMH27B6gJAaQA9y0t799nBnuBCVQNt1R0kuc8yh
         8NaYDB4FQxsNk76tF+PLdXIZ7tdboZeL+M34QC/xXxHlaoq4CDmFx2+b1PQKAlr+FQeb
         xgTa6pjpqnN0quEsuz3cueAy8Y+NVJPCfynlVTG2xSkzY/r0Te9iCC7dt7JjL27XnWcL
         VVMyDrqZt1LBIUYz7hci1aBNAUCHySUNSDC6TYbybc8ciCZ8lGVZ0iEwlfj5zf9TXOo8
         0Z3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680218733;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UaQqSlW0Hu7wuwFuXxr7ZB+drxQgUbdgeqKDpKp7IHg=;
        b=KJusvel/Iwz39ZHJdKgxk2i5W7m3whSOJsJm3Phql1Abjw39fvMWY/ID7Y0aPkBWdd
         LgSb7PWcXK/lH5nTL8lC0qCrzoOyZthpAdX5pVTNwnc0+5Fez+JJl+rrHNSzXZR4dUv6
         fOSJWoPgy2u7Itdukx3wHikAsR2xhj73CuRrswIURu+qn6xSbTEV+DYpz2W7xwAzg8cy
         21pBo8z5zaY0MkIBPw7rtzsp+n6f0Rf9YtNRV4L3XkdJEKok+1JuPeL/LuHf720dF7BB
         gXyQXjt2xZe7K5GRVwrf0dwtgHdXUIpjIR0J7+EEFchFyWQHGbhB3PUyysA2SvoEVQ/b
         Bg2w==
X-Gm-Message-State: AAQBX9d5yoUGxPkbKr4e8myTzZHizy/1ziree+ayLfiqt2k70gKW1Nt6
        DH664GW1iWaSHyfSMujUmwZrfw==
X-Google-Smtp-Source: AKy350bOCRvb/Uxz+rYeH/vzVuRgY/7Tn4zCMqfiK1AgpxVq8TbjI3Bhj11x6WhdotNgeGpdkkRa6w==
X-Received: by 2002:ac2:4105:0:b0:4db:381d:4496 with SMTP id b5-20020ac24105000000b004db381d4496mr6099217lfi.51.1680218733408;
        Thu, 30 Mar 2023 16:25:33 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id g26-20020ac2539a000000b004dda80cabf0sm127241lfh.172.2023.03.30.16.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 16:25:33 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 31 Mar 2023 01:25:22 +0200
Subject: [PATCH v5 08/15] drm/msm/adreno: Disable has_cached_coherent in
 GMU wrapper configurations
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230223-topic-gmuwrapper-v5-8-bf774b9a902a@linaro.org>
References: <20230223-topic-gmuwrapper-v5-0-bf774b9a902a@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v5-0-bf774b9a902a@linaro.org>
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
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680218720; l=1374;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=pgsq2wrmx2dN+DhvHdVkqgJZhLfKKJzRqreYHhrCBpQ=;
 b=ZUd/VafLrjD0054XVcT6XP030VEirGQOXi/zbif+vu4oYlkpmNnSi/9Idamps4JWET8miFA8TTAL
 JVJVISW5AWVNY9mdNYozBMeaZK6UK7taSwr4866ybvsItP8zQM7E
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
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

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/adreno_device.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index 745f59682737..2c6de326187b 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -545,7 +545,6 @@ static int adreno_bind(struct device *dev, struct device *master, void *data)
 		config.rev.minor, config.rev.patchid);
 
 	priv->is_a2xx = config.rev.core == 2;
-	priv->has_cached_coherent = config.rev.core >= 6;
 
 	gpu = info->init(drm);
 	if (IS_ERR(gpu)) {
@@ -557,6 +556,10 @@ static int adreno_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
+	if (config.rev.core >= 6)
+		if (!adreno_has_gmu_wrapper(to_adreno_gpu(gpu)))
+			priv->has_cached_coherent = true;
+
 	return 0;
 }
 

-- 
2.40.0

