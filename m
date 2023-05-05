Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9E2F6F8B6A
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 23:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233661AbjEEVmJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 17:42:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233651AbjEEVlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 17:41:39 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41F795B97
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 14:40:56 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ac7de2b72fso26753851fa.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 14:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683322854; x=1685914854;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YfCYGehx8jvC84gEQScBvdgxh6j6XnKzcug3iY2u1OA=;
        b=DsaeYxBU9g9ForTdiZgFVwa6RUI3toWnWlz96/jahjNzwSbmn/2HQNYROEFyAwIMO8
         NnUj5lJqrseuci7k8O7sOSJ5XG8Xd9e3URRFhsX396dPJQ+R5Txpg6tzKxsw/8hKciNE
         okodG+YCb0JdaL1ahWKzBYp0foaKHNB0welhxglGvuE1K5ah+tFcYLGawM+3Xn4KqgM0
         HuIrnt3DyPHKhEj8arOj1q7ztJxrdHMVhK9RAMeqFxiAfSyDvi6EJTKZHazRq2U6F6qI
         5lV/gD5B2FhzKeDOtd6pk2wbtNOK+H70FwrMVAFPcmuYeZXDu/W24gHMt+VFgrC6c++I
         ZUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683322854; x=1685914854;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YfCYGehx8jvC84gEQScBvdgxh6j6XnKzcug3iY2u1OA=;
        b=exTtDR5ycyRxuF0lOg4oe0OvKseXXPR3vpDTXsgRMzRodRFBaPLAasZiikaYTFEREk
         UWqfHbUN6Ej/tX9TpJFGstnq7PheADWWQTKvZogRpmgUI7AA8F3WyFSZ3Uvysp4mDQ/Q
         1/t8dNgnirlDNtlc8jDMKSnPlrdxOnO2Mf33Hm5iE5xfGUX84Rc65hsGskj1t5p24dhP
         BAtTpvtXhjDlukgnzlPM44HeVw8/crzLX5gP5m5QfWKTkJQQnpZzmKu8rHS56DUnwTIF
         ZDQ1WE8etmuvx2aEED9qygeksY9415JK0A4woeELRfMIVoPMTeCvPbXXJNeiziURr0Z6
         g8Tw==
X-Gm-Message-State: AC+VfDxUPNny2Re9JT0EncOO2vkLeu3tfGFEsJIe8Bh3lYu7PAGW8+it
        TSZLosfmaxGNNG1+6A6HTV681w==
X-Google-Smtp-Source: ACHHUZ65Q2M3eywt4gCCW5xrW/hUx4DubH+77FjkC11leG51pxPBtoPmHzltCvFUlKN7HuVg1GQ3jQ==
X-Received: by 2002:a2e:9f4f:0:b0:2a8:bf74:61cc with SMTP id v15-20020a2e9f4f000000b002a8bf7461ccmr850139ljk.26.1683322854648;
        Fri, 05 May 2023 14:40:54 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id n12-20020a2e720c000000b002a776dbc277sm126453ljc.124.2023.05.05.14.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 14:40:54 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 05 May 2023 23:40:33 +0200
Subject: [PATCH v3 07/12] drm/msm: mdss: Add SM6350 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v3-7-9837d6b3516d@linaro.org>
References: <20230411-topic-straitlagoon_mdss-v3-0-9837d6b3516d@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v3-0-9837d6b3516d@linaro.org>
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
        Joerg Roedel <joro@8bytes.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1683322839; l=1447;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=0D7OZJvsI1VqBAldTbVtRFbwuC+jJW8mAUrMe9Ykcbs=;
 b=tJk+hp42JEbVFdnnUZXF6Ww9u3ITN3Ny597c6lPUsEhtqF5AmZGzbMxXnXmKA+XitE4rGDxrE
 jwtK6aBm5J9CLs9cD8i/4dS0CLFRzKzJ+bKuJZvxO64kE4i46eeWmGk
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

Add support for MDSS on SM6350.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index e8c93731aaa1..4e3a5f0c303c 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -538,6 +538,14 @@ static const struct msm_mdss_data sdm845_data = {
 	.highest_bank_bit = 2,
 };
 
+static const struct msm_mdss_data sm6350_data = {
+	.ubwc_version = UBWC_2_0,
+	.ubwc_dec_version = UBWC_2_0,
+	.ubwc_swizzle = 6,
+	.ubwc_static = 0x1e,
+	.highest_bank_bit = 1,
+};
+
 static const struct msm_mdss_data sm8150_data = {
 	.ubwc_version = UBWC_3_0,
 	.ubwc_dec_version = UBWC_3_0,
@@ -571,6 +579,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sc8180x-mdss", .data = &sc8180x_data },
 	{ .compatible = "qcom,sc8280xp-mdss", .data = &sc8280xp_data },
 	{ .compatible = "qcom,sm6115-mdss", .data = &sm6115_data },
+	{ .compatible = "qcom,sm6350-mdss", .data = &sm6350_data },
 	{ .compatible = "qcom,sm8150-mdss", .data = &sm8150_data },
 	{ .compatible = "qcom,sm8250-mdss", .data = &sm8250_data },
 	{ .compatible = "qcom,sm8350-mdss", .data = &sm8250_data },

-- 
2.40.1

