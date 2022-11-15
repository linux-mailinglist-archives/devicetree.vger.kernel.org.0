Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8182A629A60
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 14:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230337AbiKONbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 08:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238211AbiKONb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 08:31:26 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE6918B01
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:31:25 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id kt23so36026661ejc.7
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FA6VZLr8EX+1LwmM9brJgk2AqL1UbJ0XsUIaiz9n7JY=;
        b=nilNDcO+Dvh/GNaQwv21UPwBlAYUKgxhJWDnVkZyC1w8s7CF6k2t4w/0Oe7Zc+QTKM
         OmSEcOwqrjlJBLTueyUKYQLCg9VlfK9fcIWjt49uHPUrsBcMuxsZxWJIrCHVYakcoBRN
         q/Vrfcu+vF+s1p7v2rsRo6IA6PK78R6L/XRw7ufmKqIpj/mP0hO7JtSR7ICUW5T2RD9P
         UQN23qjsr1Z3qmHuIlULhQBDbi9cUTsLGZ830607AXHX5XutJ9q+nRbLk5gt6vqjeeIO
         gM/vkwpe0xLTKDdr2PFiyDdcjH/ENbqRcg5Gn651+Nse0JxNccOfiIQb8WTm8Vfl8jyp
         Nsjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FA6VZLr8EX+1LwmM9brJgk2AqL1UbJ0XsUIaiz9n7JY=;
        b=VBRyhHqcGCY/zfuK0fNXju+eFXAeuONvo3dlK8VamYoqz0YYxfs/z3g0QMXYiQvgFq
         zLjez7/CXG/1WSebhPJM2fMc0WCnqkK/ffjIz3UPOPi/GGGqwX1PUI+Xwt2aIUsCtiZ2
         Eme5e6dBNNffETV+cR9LxgoqEbwJn8MrgpPyXBpQX2KadY+YdTHP/ljleZRIYLUDclua
         eDVU6tLHs5kZnBXaYjoRiqwUlDC1yCdYXDJ8vDkMiwb6h111XfnmwA//XQyu1QqjxOsq
         BKH+t4Mg2vGguP0g96tHAU4hHtplr45w6Hr6QZeh0Bv/zjpr2dfE5AXc9hz2X3DchV8v
         4Jgg==
X-Gm-Message-State: ANoB5pmMldwFPWRNFRQT9HTuMwZxBHqZip578pC4cCIUS9u92azMSMOn
        TdZErnx+AWiGrcGugRZ1ibKBYg==
X-Google-Smtp-Source: AA0mqf58K0nPUdH2ACUFBZHTyMf/y7B8YjJoerLelKr40QVkELpRuDuR1ymQIBx+Ahyxm2R6iSD2Ag==
X-Received: by 2002:a17:907:20a5:b0:78c:9b67:6655 with SMTP id pw5-20020a17090720a500b0078c9b676655mr13338211ejb.90.1668519084603;
        Tue, 15 Nov 2022 05:31:24 -0800 (PST)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id q22-20020aa7d456000000b004618f2127d2sm6162176edr.57.2022.11.15.05.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 05:31:24 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, agross@kernel.org,
        bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
        quic_kalyant@quicinc.com, swboyd@chromium.org,
        robert.foss@linaro.org, angelogioacchino.delregno@somainline.org,
        loic.poulain@linaro.org, quic_khsieh@quicinc.com,
        quic_vpolimer@quicinc.com, vkoul@kernel.org, dianders@chromium.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jonathan Marek <jonathan@marek.ca>,
        vinod.koul@linaro.org, quic_jesszhan@quicinc.com,
        andersson@kernel.org
Subject: [PATCH v2 06/12] drm/msm: Add support for SM8350
Date:   Tue, 15 Nov 2022 14:30:59 +0100
Message-Id: <20221115133105.980877-7-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221115133105.980877-1-robert.foss@linaro.org>
References: <20221115133105.980877-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatibles string, "qcom,sm8350-mdss", for the multimedia display
subsystem unit used on Qualcomm SM8350 platform.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index a2264fb517a1..39746b972cdd 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -293,6 +293,9 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 		/* UBWC_2_0 */
 		msm_mdss_setup_ubwc_dec_20(msm_mdss, 0x1e);
 		break;
+	case DPU_HW_VER_700:
+		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_4_0, 6, 1, 1, 1);
+		break;
 	case DPU_HW_VER_720:
 		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_3_0, 6, 1, 1, 1);
 		break;
@@ -530,6 +533,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sc8180x-mdss" },
 	{ .compatible = "qcom,sm8150-mdss" },
 	{ .compatible = "qcom,sm8250-mdss" },
+	{ .compatible = "qcom,sm8350-mdss" },
 	{ .compatible = "qcom,sm8450-mdss" },
 	{}
 };
-- 
2.34.1

