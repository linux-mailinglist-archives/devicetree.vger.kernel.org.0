Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BBB4542FF7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:08:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238718AbiFHMHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:07:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238705AbiFHMHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:07:44 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DB181207F6
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:07:37 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id s6so32855905lfo.13
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 05:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nWbp37l6qMVWqU1MI1wAwLjMWJ/9NoPZ7BFFc/dS17o=;
        b=W352pZ9uwwqTyUYzKspeDxpFa9JgGekJNoMxQ7pmUZ7l/p80RV+Ryr94k0lmvB1qwu
         rxUQA/N2fIMnMcYDMMcp1hYwVsar3595xrtL0S3bkxfsIMZMkwFaiGDqkFdEHr65t7A7
         HDjMfBcU3UiYD2ctQ90WqQCEnzXYWceRV/Ccz3yxxgtlO3IRGem3syoItABwbsuLZeoZ
         JHpwOVGSSjz1WuvME7liMYnDHUEdia6JYqj8SvOvIvErvWHaF8u8HltJqPF8u8kQu20f
         o8tEDaTWHDvkqLFLmDEVqxmyOhiYqNunMVAG2kqXezfZkX2SV/7gUJl5p3yHoXFq0WnQ
         7Slw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nWbp37l6qMVWqU1MI1wAwLjMWJ/9NoPZ7BFFc/dS17o=;
        b=xmtdU2gd89Leh+4RZ7w/jBs40zYaeVXLUXVh4A+KK5bov/ilGW3+HmluFgpnpEJ3FW
         LR4Nq37SwtbnVeWWKfeUoZq92t+Z/VnS6QZpIQJD5lk1VcxDucamxZ+1huutx5H4lASx
         zWBVebX5CbiKSWTowyRWN3soSkatVGB0Gqz0qQSbuUz955XxDiXbzaKFpeUFXyUJB4jP
         6ILLK+sZG9RMHSbD3jNvcjZmofvb3U5XBlA+jpppffDrLzi/TcmlqjtAS9IiBykCXkL2
         cyOSkYb7fAwCzyZ7/6rTsr5dbtBDK935I/3ffngL14OPLEcUz+4yD+CAtsz8eRmAEzCE
         d9bA==
X-Gm-Message-State: AOAM531nsVfCyG4A4sZ27lOBeIkyDhmUA/+8p9vlc2BNk0ralvVRyZwo
        rjcJT7nbeOM8mewtkeZ36hrYzQ==
X-Google-Smtp-Source: ABdhPJywThmG5UQP/hMKt/YeXsy3uQeZ4OTnQen1exape5w/rd16un0mDKKLSFaIaUKX36jU6pW4FQ==
X-Received: by 2002:a05:6512:3f11:b0:478:9795:4a45 with SMTP id y17-20020a0565123f1100b0047897954a45mr49913632lfa.491.1654690055910;
        Wed, 08 Jun 2022 05:07:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 4-20020ac25f04000000b0047b0f2d7650sm52049lfq.271.2022.06.08.05.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 05:07:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 10/12] drm/msm/hdmi: merge platform config for 8974/8084/8994/8996
Date:   Wed,  8 Jun 2022 15:07:21 +0300
Message-Id: <20220608120723.2987843-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since there is no more difference between the HDMI platform data
between MSM8974/APQ8084/MSM8994/MSM8996, merge these configs into a
single entry.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 27 +++------------------------
 1 file changed, 3 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index bc6ec6aa2cb9..a718e0ebf6cd 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -375,27 +375,6 @@ static struct hdmi_platform_config hdmi_tx_8974_config = {
 		.hpd_freq      = hpd_clk_freq_8x74,
 };
 
-static struct hdmi_platform_config hdmi_tx_8084_config = {
-		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(pwr_clk, 8x74),
-		HDMI_CFG(hpd_clk, 8x74),
-		.hpd_freq      = hpd_clk_freq_8x74,
-};
-
-static struct hdmi_platform_config hdmi_tx_8994_config = {
-		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(pwr_clk, 8x74),
-		HDMI_CFG(hpd_clk, 8x74),
-		.hpd_freq      = hpd_clk_freq_8x74,
-};
-
-static struct hdmi_platform_config hdmi_tx_8996_config = {
-		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(pwr_clk, 8x74),
-		HDMI_CFG(hpd_clk, 8x74),
-		.hpd_freq      = hpd_clk_freq_8x74,
-};
-
 /*
  * HDMI audio codec callbacks
  */
@@ -577,9 +556,9 @@ static int msm_hdmi_dev_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id msm_hdmi_dt_match[] = {
-	{ .compatible = "qcom,hdmi-tx-8996", .data = &hdmi_tx_8996_config },
-	{ .compatible = "qcom,hdmi-tx-8994", .data = &hdmi_tx_8994_config },
-	{ .compatible = "qcom,hdmi-tx-8084", .data = &hdmi_tx_8084_config },
+	{ .compatible = "qcom,hdmi-tx-8996", .data = &hdmi_tx_8974_config },
+	{ .compatible = "qcom,hdmi-tx-8994", .data = &hdmi_tx_8974_config },
+	{ .compatible = "qcom,hdmi-tx-8084", .data = &hdmi_tx_8974_config },
 	{ .compatible = "qcom,hdmi-tx-8974", .data = &hdmi_tx_8974_config },
 	{ .compatible = "qcom,hdmi-tx-8960", .data = &hdmi_tx_8960_config },
 	{ .compatible = "qcom,hdmi-tx-8660", .data = &hdmi_tx_8660_config },
-- 
2.35.1

