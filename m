Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8C507507A9
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 14:11:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232163AbjGLMLv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 08:11:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbjGLMLu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 08:11:50 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0F11E5F
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:49 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b703caf344so107003051fa.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689163908; x=1691755908;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ak/4m2ZtLvYsyQLN5mEcIECptOKDjtOww2+EFLTDsFA=;
        b=UT/DL+yvtZwqu8Bw23s8gXkNmEjkOvr29JajtyZR9zNdl03auXUWImanRKSlZPBJrC
         Wt5acaLsfMKYnw8oxQI1IhiKwWfbjW9ZJfTPtBqmq/NFT6+GPjGVqqpfUMbPK1Nc4yrW
         3qmDC9Ph6gQg78sJeax0MHZKyUa8H0PIlY3rQ+yUnHaUiKrYr23pMlLoR92Tltjay5WZ
         ekj29n2mclpJ8h6Z033ppqbBN8iSjYBIGxgu/W3bdEOw7SVtRWeIgKgPwJ9C6E6hSpRw
         63XKn2KIuBQbZVNKJewLsI4Kt9E7A0fTecABJRV/r/RqClFUM4rCurjde4lEg0i/ZdnT
         ZMmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689163908; x=1691755908;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ak/4m2ZtLvYsyQLN5mEcIECptOKDjtOww2+EFLTDsFA=;
        b=VLUq4AYuefcd9OYy1DUcefwqoPBSR4U5v63H2lkm7DZ0/n2SknsTqxkqkuvnrlRH+a
         XoQogGddhk0wt6wDG2rYKCVNsbV068s+CYJm76Aom+wn430IWJNYm4b8dEnpDhKVWdjO
         GXMekbMT+T+0enLcjTNsc7xPiXrw/nSC5VYn3peYr8V/gi7leVdud64Sl8xD3WmItPf2
         3sWVbD9XKPF/toNVS3X9lAHhK2jTdvqnBLST9QJXu6cECLu/38v2iQSPpXt79fH/awLg
         URmkIm0/q0ATf5Kfqx6YEdJOgZGiLehOxuqz7Rq26vu77oGSCQKYA62CpxKqkE/j5Zzw
         zWGg==
X-Gm-Message-State: ABy/qLZ7FBgdy5EeID4HbZ7TQfioDRB5vZ7E+2aXLcaiOIHgMOXw7kg+
        6oRsbep6Ggr+GyRzhpL5Fn9mrw==
X-Google-Smtp-Source: APBJJlEy9OFzVSND7Rz0PWrlHPMarIxtgAW71RzV0taqj1FGBSFbaTJ11xkPWaHQS1oMiGcJRHm7Jw==
X-Received: by 2002:a2e:7019:0:b0:2b6:da64:734f with SMTP id l25-20020a2e7019000000b002b6da64734fmr15443800ljc.47.1689163908053;
        Wed, 12 Jul 2023 05:11:48 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id p14-20020a2ea40e000000b002b6c8cf48bfsm913135ljn.104.2023.07.12.05.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 05:11:47 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 2/8] drm/msm/mdss: correct UBWC programming for SM8550
Date:   Wed, 12 Jul 2023 15:11:39 +0300
Message-Id: <20230712121145.1994830-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712121145.1994830-1-dmitry.baryshkov@linaro.org>
References: <20230712121145.1994830-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SM8550 platform employs newer UBWC decoder, which requires slightly
different programming.

Fixes: a2f33995c19d ("drm/msm: mdss: add support for SM8550")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 05648c910c68..798bd4f3b662 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -189,6 +189,7 @@ static int _msm_mdss_irq_domain_add(struct msm_mdss *msm_mdss)
 #define UBWC_2_0 0x20000000
 #define UBWC_3_0 0x30000000
 #define UBWC_4_0 0x40000000
+#define UBWC_4_3 0x40030000
 
 static void msm_mdss_setup_ubwc_dec_20(struct msm_mdss *msm_mdss)
 {
@@ -227,7 +228,10 @@ static void msm_mdss_setup_ubwc_dec_40(struct msm_mdss *msm_mdss)
 		writel_relaxed(1, msm_mdss->mmio + UBWC_CTRL_2);
 		writel_relaxed(0, msm_mdss->mmio + UBWC_PREDICTION_MODE);
 	} else {
-		writel_relaxed(2, msm_mdss->mmio + UBWC_CTRL_2);
+		if (data->ubwc_dec_version == UBWC_4_3)
+			writel_relaxed(3, msm_mdss->mmio + UBWC_CTRL_2);
+		else
+			writel_relaxed(2, msm_mdss->mmio + UBWC_CTRL_2);
 		writel_relaxed(1, msm_mdss->mmio + UBWC_PREDICTION_MODE);
 	}
 }
@@ -271,6 +275,7 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 		msm_mdss_setup_ubwc_dec_30(msm_mdss);
 		break;
 	case UBWC_4_0:
+	case UBWC_4_3:
 		msm_mdss_setup_ubwc_dec_40(msm_mdss);
 		break;
 	default:
@@ -569,6 +574,16 @@ static const struct msm_mdss_data sm8250_data = {
 	.macrotile_mode = 1,
 };
 
+static const struct msm_mdss_data sm8550_data = {
+	.ubwc_version = UBWC_4_0,
+	.ubwc_dec_version = UBWC_4_3,
+	.ubwc_swizzle = 6,
+	.ubwc_static = 1,
+	/* TODO: highest_bank_bit = 2 for LP_DDR4 */
+	.highest_bank_bit = 3,
+	.macrotile_mode = 1,
+};
+
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss" },
 	{ .compatible = "qcom,msm8998-mdss" },
@@ -585,7 +600,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sm8250-mdss", .data = &sm8250_data },
 	{ .compatible = "qcom,sm8350-mdss", .data = &sm8250_data },
 	{ .compatible = "qcom,sm8450-mdss", .data = &sm8250_data },
-	{ .compatible = "qcom,sm8550-mdss", .data = &sm8250_data },
+	{ .compatible = "qcom,sm8550-mdss", .data = &sm8550_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, mdss_dt_match);
-- 
2.40.1

