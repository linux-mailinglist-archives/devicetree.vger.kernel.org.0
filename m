Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEE9F550E3C
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 03:03:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236756AbiFTBDI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 21:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231699AbiFTBDG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 21:03:06 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E488101D
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 18:03:05 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id s21so4298241lfs.13
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 18:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FB+K+cb4f9fS6PvlJKAr+KfimzTAeQrUyeuMC2GkgBE=;
        b=zRPf96lvRNy85R9m6l0+/rizmlEMhGwIVx3yO5JkGAx0G2bgd7HGfWlOjuGCqc3CP0
         RxZSaLBf/MS7bJT1AFk1CTONMgwctOlMIS6miRW6bIEx7in8HGlJkR+50Lun7MaXVbHz
         YhPCWkWXlo1fDSg4dj8475amenQa7NTx9y82LHsAIvzgY2VHUYTZ6OJnjHzJXgz72zSs
         WaC2qyUmBmR9ZL/jqK2bPZP3i0Ii5zHWwgjYEHmRt4XOyVfsgo1OfBaqZFcm9ku4xgnC
         +ps9E6Ex1NYysJUDmbb+G17ckSMUmSSnzOHOTD7r/9Pbl4Ap4kiHaKWE5IalVmEo0uaj
         pc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FB+K+cb4f9fS6PvlJKAr+KfimzTAeQrUyeuMC2GkgBE=;
        b=KoDkf8ATu8+EpPy8CGWts3kd5PmDiyIHcKg5+xP7dhf+Ne/8TuUu+CXBw/XZ1lzDgs
         rN+fL+P/kNdsAe9g/XFH4mISXzroSabbpweuA7Gl4sWrMDJ5iG8vxlNmgqrHUNIOX7fy
         +wDeTNnEFVU/DM5b4yIeb+8iokrbfbZ4+VjIwp4ylfePdtKkcKf89ZzgxfuqEcvBS3an
         uYlAluUSdfdVU8FvCOwVT/6f3lZ8eAvMT8KA9J9Vm+hoyg2Psy3/RcsyUPzakOF/9/0y
         Ate2x0jO6Rz33l/T7m6DrMxBkISRleSAqC2U1adKARatSdaBnG2X6iujLvY1Sm8mrMKz
         U5Zw==
X-Gm-Message-State: AJIora/xLZ84+8+5AwWuyFg1muQ2i5ONCqz4nULRXBE19QdCAq/FwIJh
        ELq9fGlc5Adm5qNRYLU4jb44dg==
X-Google-Smtp-Source: AGRyM1vzPvxQHU989bV5UWrBpxqy1l9JNUnlNVceFtTb0zZ05oPPkI4KRtT1XHdbMLO3CtbYGOKJeA==
X-Received: by 2002:a05:6512:3053:b0:479:3219:887a with SMTP id b19-20020a056512305300b004793219887amr12139460lfb.578.1655686985189;
        Sun, 19 Jun 2022 18:03:05 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a1-20020a19e301000000b00477a6c86f17sm1550334lfh.8.2022.06.19.18.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 18:03:04 -0700 (PDT)
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
Subject: [PATCH v2 2/3] drm/msm/hdmi: make hdmi_phy_8996 OF clk provider
Date:   Mon, 20 Jun 2022 04:02:59 +0300
Message-Id: <20220620010300.1532713-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620010300.1532713-1-dmitry.baryshkov@linaro.org>
References: <20220620010300.1532713-1-dmitry.baryshkov@linaro.org>
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

On MSM8996 the HDMI PHY provides the PLL clock to the MMCC. As we are
preparing to convert the MSM8996 to use DT clocks properties (rather
than global clock names), register the OF clock provider.

While we are at it, also change the driver to use clk_parent_data rather
parent_names to setup a link to the XO clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c | 25 +++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
index b06d9d25a189..4dd055416620 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c
@@ -691,15 +691,13 @@ static const struct clk_ops hdmi_8996_pll_ops = {
 	.is_enabled = hdmi_8996_pll_is_enabled,
 };
 
-static const char * const hdmi_pll_parents[] = {
-	"xo",
-};
-
 static const struct clk_init_data pll_init = {
 	.name = "hdmipll",
 	.ops = &hdmi_8996_pll_ops,
-	.parent_names = hdmi_pll_parents,
-	.num_parents = ARRAY_SIZE(hdmi_pll_parents),
+	.parent_data = (const struct clk_parent_data[]){
+		{ .fw_name = "xo", .name = "xo_board" },
+	},
+	.num_parents = 1,
 	.flags = CLK_IGNORE_UNUSED,
 };
 
@@ -707,8 +705,7 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct hdmi_pll_8996 *pll;
-	struct clk *clk;
-	int i;
+	int i, ret;
 
 	pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -735,10 +732,16 @@ int msm_hdmi_pll_8996_init(struct platform_device *pdev)
 	}
 	pll->clk_hw.init = &pll_init;
 
-	clk = devm_clk_register(dev, &pll->clk_hw);
-	if (IS_ERR(clk)) {
+	ret = devm_clk_hw_register(dev, &pll->clk_hw);
+	if (ret) {
 		DRM_DEV_ERROR(dev, "failed to register pll clock\n");
-		return -EINVAL;
+		return ret;
+	}
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get, &pll->clk_hw);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "%s: failed to register clk provider: %d\n", __func__, ret);
+		return ret;
 	}
 
 	return 0;
-- 
2.35.1

