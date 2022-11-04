Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2DBF6196E0
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:03:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231549AbiKDNDm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:03:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231583AbiKDNDk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:03:40 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AC472E9C1
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:03:38 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id b9so6258011ljr.5
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6fqf25hkfoFdVnSBMn1JvQnvs90VTCg4NOOaAXI5pq8=;
        b=mexuyZaPbFBmNt59b8SQeKFWTow2tLhGA3zvXYpvIdFYqy6t7LAOTZBcDIhLv1Zzjk
         2paqotL5BZUL/bs39pcjkBbFgltoHpfig5rhi9SsuPc8KRSPPTNBGu44CpeaOoS84iGr
         hVOmyiI6L8bmMkCcvjEMALPbikYSSENUQrpoTcFefJMyqr7BBHrSbbsAIi1nNO85h8rO
         vr3pxgs4PaTdRSCBDglO3qlUDlC87ayYEXo54UhfouYI/fuSI5PmMiDb81M/VJMHfRed
         B9gvkMW4NDx8cFclVlwoZVglh0P1CcAogocB9537wW5VgFd98cQvRt1RhwZblgfyhgMk
         GRmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6fqf25hkfoFdVnSBMn1JvQnvs90VTCg4NOOaAXI5pq8=;
        b=LFZctQb0bdEUW91zyVwdj6Lid8h1xErA8tE1sc4+n0azDXPwuK2Kl1+YF10X17gse0
         Q7s9+PLFqj7BkBGH0Y27lxcipZOAsjaqBB2VEkYdr4FrTso07G+H0dZdF7RKgTM8IBu9
         BbAm3kOev+fSoEgAhY1fRodmqZMhTDHcSK3VS43CEM0iRf4LcciUXVohCscOVeL0HsfM
         MUbsJ6D48HYnLxDAdjh4tL9S2qQrLU09fFLUQAPGwss+ZFQCNw7jA70PJeZ4q/My0P46
         RownmTzkv1t6BR+6fz8cKV75PsWnPtYnvwDyUmbiWDeHpd+R+elgzlUivY1R+WRdURl5
         iUow==
X-Gm-Message-State: ACrzQf1IXX1Xjx2Mvb3OoGGW03kk7F8moF2kcuqJOIlc5QaHAgnYrpPb
        elYzDtC0Ud2ynTYpt9/DIyDAvg==
X-Google-Smtp-Source: AMsMyM5ylwYxkE1TNWolGu+SI9wuT53gGEYitbyTRUL0gy0Uq5fT84X8WU4Jieq69fj7/yK3c9+gjQ==
X-Received: by 2002:a2e:8811:0:b0:26d:fd3f:c5c3 with SMTP id x17-20020a2e8811000000b0026dfd3fc5c3mr1990867ljh.494.1667567016917;
        Fri, 04 Nov 2022 06:03:36 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id s6-20020a2eb626000000b0026fe0a052c5sm419975ljn.129.2022.11.04.06.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 06:03:36 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 8/8] drm/msm: mdss: add support for SM8450
Date:   Fri,  4 Nov 2022 16:03:24 +0300
Message-Id: <20221104130324.1024242-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104130324.1024242-1-dmitry.baryshkov@linaro.org>
References: <20221104130324.1024242-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the MDSS block on SM8450 platform.

Tested-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 6a4549ef34d4..5602fbaf6e0e 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -283,6 +283,10 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 	case DPU_HW_VER_720:
 		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_3_0, 6, 1, 1, 1);
 		break;
+	case DPU_HW_VER_810:
+		/* TODO: highest_bank_bit = 2 for LP_DDR4 */
+		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_4_0, 6, 1, 3, 1);
+		break;
 	}
 
 	return ret;
@@ -511,6 +515,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sc8180x-mdss" },
 	{ .compatible = "qcom,sm8150-mdss" },
 	{ .compatible = "qcom,sm8250-mdss" },
+	{ .compatible = "qcom,sm8450-mdss" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, mdss_dt_match);
-- 
2.35.1

