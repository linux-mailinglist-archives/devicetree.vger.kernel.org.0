Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B6C3709D65
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 19:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbjESRFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 13:05:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbjESRFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 13:05:18 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F6A81B4
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 10:04:50 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f13ef4ad91so4108642e87.3
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 10:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684515888; x=1687107888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uz91t5CPsz6QMWtRIYuzaeaGaQUSJIZo7OKNOwA96Nw=;
        b=v/gEneBL5X6WIpuqrz608He89jkDDt2ds5pihd2kUKbD/E1pyvrvowh+tzZR7dMKVw
         TujsxG5+f109825jD/ZqnE4wSd9ETpSzljqDoS2EssplMk0MP2lVwXNcGuzvcMyb5wkp
         vyuh4qSi5IPPx9qGOgjeB1wSt/+rEjfaYfRYdplarUYktTrvyVT5avwHUjko572r9KqO
         EN5Tu+dD+EOY+Criwu8cZhOHqKbP2LJU/EmJ9nZgKmqmKcy8y8I5dX/KTnsvZxydOxb0
         7j/LcSS5taecSmChKKRhEQTdIpIcoCMdjv7iit2XZARxqX+EbT8paUmeuGLitoE7YmIh
         yBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684515888; x=1687107888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uz91t5CPsz6QMWtRIYuzaeaGaQUSJIZo7OKNOwA96Nw=;
        b=bA6WxNHLoRjLT/lkbPqKJR21u1lzOjqNxISN9oCqAQUVv/8v7Rb2wjmbfsGRHiIrm/
         xpFu8kV3ZTEEPJfjXALmgVb5qDIOQjOUyJ08RrlEjtt4+df6UAwvmRhZnHMlumyC4VMq
         MmzJqjzcOr2p5BbsLnmyDIssyYMphsf+33XnFCamWH1l0JuYjYFYqL1TZm6d33CeP60S
         n+7MahFBPkSFAqzGfnm/it3HxTrjoq8ZogXKVGX8i1oUPa+aAGT4MDjWyj5IK0/F/coi
         sOIKD6RW0MKBYN303yRNLTiM4OUWDKS+ExwFAB9qraplQB9Z/YVv30pNXl/gbNlPf6+z
         WOkQ==
X-Gm-Message-State: AC+VfDyYpGrHQ1FxZ2TALWJgTBPoJ1Nzfg3+oMoxoeK0GoHNoa+gRet8
        0P9Q7MceC1abfmVI5HDiRqeHnA==
X-Google-Smtp-Source: ACHHUZ5n7llZoWKCtXOcotZOTCvO+j9Hp9EAiCpDV9EJsCoYnvq3XnaIXpE3rSvkwwFkrVRou61cgA==
X-Received: by 2002:ac2:48a2:0:b0:4d7:44c9:9f4b with SMTP id u2-20020ac248a2000000b004d744c99f4bmr1074886lfg.1.1684515888202;
        Fri, 19 May 2023 10:04:48 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id a6-20020a19f806000000b004f38260f196sm654478lff.218.2023.05.19.10.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 10:04:47 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 19 May 2023 19:04:30 +0200
Subject: [PATCH v4 09/12] drm/msm: mdss: Add SM6375 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v4-9-68e7e25d70e1@linaro.org>
References: <20230411-topic-straitlagoon_mdss-v4-0-68e7e25d70e1@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v4-0-68e7e25d70e1@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1684515870; l=1022;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Nh6zuYJI8gb14gxje6MmS/hbQSaIA3Eeoi75EfztoC0=;
 b=/pMrarazssUBtmCWEJL265R5eOk52S2hT5NCFLEOgy3OcU68alhIDf6GZOKfsmwEYREtA9PnC
 3lHdg+kJJDpD8+XJHXM3lAGm5+ON8x3yE8xQscNI3jK0RVLFnOZRWGl
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

Add support for MDSS on SM6375.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 4e3a5f0c303c..05648c910c68 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -580,6 +580,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sc8280xp-mdss", .data = &sc8280xp_data },
 	{ .compatible = "qcom,sm6115-mdss", .data = &sm6115_data },
 	{ .compatible = "qcom,sm6350-mdss", .data = &sm6350_data },
+	{ .compatible = "qcom,sm6375-mdss", .data = &sm6350_data },
 	{ .compatible = "qcom,sm8150-mdss", .data = &sm8150_data },
 	{ .compatible = "qcom,sm8250-mdss", .data = &sm8250_data },
 	{ .compatible = "qcom,sm8350-mdss", .data = &sm8250_data },

-- 
2.40.1

