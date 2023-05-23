Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60B9870D65B
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 09:58:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236052AbjEWH6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 03:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235983AbjEWH5s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 03:57:48 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D957172B
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:56:19 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-30959c0dfd6so4136647f8f.3
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 00:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684828557; x=1687420557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YfCYGehx8jvC84gEQScBvdgxh6j6XnKzcug3iY2u1OA=;
        b=TNBAbCTXPTnabbMphWH8H6C1bjJdKCTU+Xxbl5xzG7oSE5FwrKoRtihGgQ+hg+t4Mt
         w07uZYOTQBZk+FmbMif72iUIRDUKoa1fmKLTDXmhRuaF+UJ7Us0rBSPoyKfAJfVbXdcw
         hh7r7Ez78bK1l1yIefjyRVeuXEVf2leD53jzv5rWLTQzVhkz9dVwZJ9aAesxzDE0bvAI
         sbVdTrh+QnV9sCNA3eO5RI8aNKGBREwLSwJB3sRyetrLmd5in6TK3r3F4FGEM/BuwW/6
         qL0D5xlKaIYqksqeb6tgLt6GA9BP8msVmSKySoYsUIrhMrr/Uul5gVHgmCQMfu7AO1Do
         ilaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684828557; x=1687420557;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YfCYGehx8jvC84gEQScBvdgxh6j6XnKzcug3iY2u1OA=;
        b=etdf2Ie+2fyPY3PExp3/Jc4I1yVq2ORoWn+NHUeXoxR3iAGtd/jk7bZcnJr/KTrreE
         HZMBjimTGY0AFTo9Jl+P0Y6y1BhVTDDbDJrPkdgEl2tW6EBp0V/i4tksMjYwiAXa5PWD
         lk6z1jUe1oqag4kqwMbuUVkrwrjNtrwEJ6oOLU6EMiysTO4yBM+mybGt3goTGv1xl9wn
         FLVbe2idRNjZsMpiYczRZTYlfzJV/Ypl5g7GDgh2cUKbe2oK1TwbSyeDcDXopyJ718NO
         auIpmYpszBW9KNE0HE8Sw+MXsQZz0qgybUbAUP//2+5rB4G/sz3usf2JkK4vSbL2Krab
         tg7w==
X-Gm-Message-State: AC+VfDyhBUWFR3kgKA1Oa4hylWwxSOk+uuijq3e5jYwHnmMVoFBYeLrv
        6wRfwibsvKKY26VwgCuH8uHayPmn91/Rup9evnc=
X-Google-Smtp-Source: ACHHUZ4GM3KI0MX70ojcXWHjh2BX5gdvh+2jKGNgOhivEDVOtDyjTmgQcXQe6u/dE+6ErgM8HF3U1w==
X-Received: by 2002:a05:6512:241:b0:4f3:bbfe:db4d with SMTP id b1-20020a056512024100b004f3bbfedb4dmr2235214lfo.21.1684828017373;
        Tue, 23 May 2023 00:46:57 -0700 (PDT)
Received: from [192.168.1.101] (abyk138.neoplus.adsl.tpnet.pl. [83.9.30.138])
        by smtp.gmail.com with ESMTPSA id t9-20020ac25489000000b004eb0c51780bsm1257070lfk.29.2023.05.23.00.46.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 00:46:56 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 23 May 2023 09:46:18 +0200
Subject: [PATCH v5 07/12] drm/msm: mdss: Add SM6350 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v5-7-998b4d2f7dd1@linaro.org>
References: <20230411-topic-straitlagoon_mdss-v5-0-998b4d2f7dd1@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v5-0-998b4d2f7dd1@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1684828003; l=1447;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=0D7OZJvsI1VqBAldTbVtRFbwuC+jJW8mAUrMe9Ykcbs=;
 b=TAr1B/J8Fw4CbqlqV0fqrm0JKRVpsmTK2l29sM7+FcIchk7aAujxMonXnRCxaIbdOAlYDXrPe
 hiCF/x7Su9pAxMo2i4IgdPK5fVh9jtF1gNJwi/4saYxWY5K1xE5t3X/
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

