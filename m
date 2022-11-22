Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0F97634AE9
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 00:14:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234981AbiKVXMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 18:12:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235299AbiKVXMp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 18:12:45 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3881275C9
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:12:42 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id h12so19572826ljg.9
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nZka532jBxF4QexJaQzrfpc9qt719KPv4ovy+o33y+w=;
        b=znxFlKpsCmVsQCyLXEB1L8CtapOZhVbSUaP2NEqiRQI320gzZAlOtqyHYOc3Nvq+hg
         Bwsu1EyaFwpbPnwHBe7WeEZopwcHRmZtpO9t6qDN9edIHv91i9rfxkihKOsd9tcPwSAK
         7/YTwf231Iilr3K8ZPUYzmMOJHUcRvCGhy4pO3Td21nRp2FIhtEPUWSC3By79mH5uuvt
         L4+X7w+1m2TldqeOd7VwlFInuUTi4WH1gpFId2irpZhob1ehVHJoYC9UmWaJ2uua9Vhe
         0XoY8ONHBvJ976ra4dOsm5JBPW3zo5vbMFGLyUFScD3/qgH/n13SUj5d3bDZYcc9TTq/
         hP9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nZka532jBxF4QexJaQzrfpc9qt719KPv4ovy+o33y+w=;
        b=xaW1Sal7zOaP3xLpUyllFSSRxEpb3Sg+NmPTGnWNHUlNU6qikJbZH9tP/iyd2T71Vm
         DDbsxKxpQPC541qX2yGRhCb6IiLZlp43wkTje1lp4sZprK+vbtF2vZtXOOEJI4PPuffX
         KbTlSZgiFkRbxpQIikONwK5tA9gkpEJhPPfLjpelwDyfZ5BUg0maW7uVoitN7BQ464h8
         oH5912m0dS487JOVmxVA5RVuFT4+j5+C/ztKbLAK5jt7Kr198CzPA6vFVnt6trOlcRp2
         ooOKCC+Fypdw/1mOFd7A0B1OjALfUyJOdIvBziXwkMbzwDAMVX8kuSFvcukrJSjLvuax
         9QmQ==
X-Gm-Message-State: ANoB5pk03TaOZvcWVo/TtcfP2HY/MT7fXM1bR/X8c+HBecj1nqx/lEJL
        MlQHXcFFN7A4kzijLLeIO9J/cQ==
X-Google-Smtp-Source: AA0mqf6iB33vMArVVSjOijyJ457UZVC8X9j51cz2/JqXiQWjTKI/vE40JLJR1GYXCz7qBLtyE+sWmQ==
X-Received: by 2002:a2e:a58d:0:b0:277:1d64:f21c with SMTP id m13-20020a2ea58d000000b002771d64f21cmr2594847ljp.373.1669158761091;
        Tue, 22 Nov 2022 15:12:41 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbkzhtyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:8a1a::1])
        by smtp.gmail.com with ESMTPSA id q18-20020ac246f2000000b00497feee98basm2617541lfo.274.2022.11.22.15.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 15:12:40 -0800 (PST)
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
        freedreno@lists.freedesktop.org
Subject: [PATCH v4 06/11] drm/msm/dsi/phy: rework register setting for 7nm PHY
Date:   Wed, 23 Nov 2022 01:12:29 +0200
Message-Id: <20221122231235.3299737-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
References: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In preparation to adding the sm8350 and sm8450 PHYs support, rearrange
register values calculations in dsi_7nm_phy_enable(). This change bears
no functional changes itself, it is merely a preparation for the next
patch.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 26 +++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index 9e7fa7d88ead..0b780f9d3d0a 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -858,23 +858,34 @@ static int dsi_7nm_phy_enable(struct msm_dsi_phy *phy,
 	/* Alter PHY configurations if data rate less than 1.5GHZ*/
 	less_than_1500_mhz = (clk_req->bitclk_rate <= 1500000000);
 
+	if (phy->cphy_mode) {
+		vreg_ctrl_0 = 0x51;
+		vreg_ctrl_1 = 0x55;
+		glbl_pemph_ctrl_0 = 0x11;
+		lane_ctrl0 = 0x17;
+	} else {
+		vreg_ctrl_1 = 0x5c;
+		glbl_pemph_ctrl_0 = 0x00;
+		lane_ctrl0 = 0x1f;
+	}
+
 	if (phy->cfg->quirks & DSI_PHY_7NM_QUIRK_V4_1) {
-		vreg_ctrl_0 = less_than_1500_mhz ? 0x53 : 0x52;
 		if (phy->cphy_mode) {
 			glbl_rescode_top_ctrl = 0x00;
 			glbl_rescode_bot_ctrl = 0x3c;
 		} else {
+			vreg_ctrl_0 = less_than_1500_mhz ? 0x53 : 0x52;
 			glbl_rescode_top_ctrl = less_than_1500_mhz ? 0x3d :  0x00;
 			glbl_rescode_bot_ctrl = less_than_1500_mhz ? 0x39 :  0x3c;
 		}
 		glbl_str_swi_cal_sel_ctrl = 0x00;
 		glbl_hstx_str_ctrl_0 = 0x88;
 	} else {
-		vreg_ctrl_0 = less_than_1500_mhz ? 0x5B : 0x59;
 		if (phy->cphy_mode) {
 			glbl_str_swi_cal_sel_ctrl = 0x03;
 			glbl_hstx_str_ctrl_0 = 0x66;
 		} else {
+			vreg_ctrl_0 = less_than_1500_mhz ? 0x5B : 0x59;
 			glbl_str_swi_cal_sel_ctrl = less_than_1500_mhz ? 0x03 : 0x00;
 			glbl_hstx_str_ctrl_0 = less_than_1500_mhz ? 0x66 : 0x88;
 		}
@@ -882,17 +893,6 @@ static int dsi_7nm_phy_enable(struct msm_dsi_phy *phy,
 		glbl_rescode_bot_ctrl = 0x3c;
 	}
 
-	if (phy->cphy_mode) {
-		vreg_ctrl_0 = 0x51;
-		vreg_ctrl_1 = 0x55;
-		glbl_pemph_ctrl_0 = 0x11;
-		lane_ctrl0 = 0x17;
-	} else {
-		vreg_ctrl_1 = 0x5c;
-		glbl_pemph_ctrl_0 = 0x00;
-		lane_ctrl0 = 0x1f;
-	}
-
 	/* de-assert digital and pll power down */
 	data = BIT(6) | BIT(5);
 	dsi_phy_write(base + REG_DSI_7nm_PHY_CMN_CTRL_0, data);
-- 
2.35.1

