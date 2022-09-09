Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B049F5B38C6
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 15:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231154AbiIINUU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 09:20:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231137AbiIINUS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 09:20:18 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D7F75F7FE
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 06:20:16 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id r12so238973ljg.10
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 06:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=em1iMz9Ryn69lAbyqnPUyMJ8hWxDsU/s62VVW2GYYt0=;
        b=REuDz7DMRiW5wABhl0JqQ/5R+KnNYf1nJ1z5zFvfWQy5UAeds1UVPHB9xRz2mCNpaw
         pe0kEFj43iG7V1ZV6c7uVxXD8U+EvQ5SZS3gtIBx8N7GxnxLFJYeC0U2nWvOUPBwT62p
         2Wi40KByuV/tfM718iO1rxrwQMwwfFaOrzBt2BUdsYkv86YMAdtFesaz+OQYViu2ptJS
         4ddOWffRcrx1wqZfXp8l49E+VmUL44LXQJBhpxQynXjl6HnA7BviVMA6oA+1rEnbOqnn
         EAac3LXPgRyC8tTCn/82/LqrdecqVYZQhePEmSCTNUPzoCvKAm92YuNdNSNzjzOu2CcF
         KKXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=em1iMz9Ryn69lAbyqnPUyMJ8hWxDsU/s62VVW2GYYt0=;
        b=6OTLHwoIfP3EP47btvJq0wpRzjDObJV90pNiyZ6y500riVymBS4FnvCor46W9T4ezE
         KhZ6TJQ+sAmXyW4DQlEkhk12ABzayQuiE5KUeQNhXoMxgJSTvKEi+GKte9on5Y/usJ+V
         Cg8BV//3uyEuSI0UD7Xfva7DLBUC4G4vuMvOhinqcKlPmIkYMgXPkLDrQQm/8jycDpk1
         nebUfC12+hQdoE5iaK5j6V2j01s+Yi0qxvbB0Q7sHMPwlL/e6M/cnJ2A+MHNthlz1KR4
         mi5250iYht4mnchuaaLnnaprLjuOd6hgvTXtQdNAYHC+jX4iY9zpmIbm1X5KPOedbSCh
         A6hg==
X-Gm-Message-State: ACgBeo1ZyYpo7E8FX2qo/3ZDA2xnn6s33wAT5SmbXD/sQyBgJbnUl8h5
        UhbOS9bWulCKR915mfdbt3WQBg==
X-Google-Smtp-Source: AA6agR4kWFPWbWXMl17g4rhRlcM8PGb4uJi9blQLcd4LCHuCk74fJzGlU9hn80Pozqd0mpqFWLIX9g==
X-Received: by 2002:a2e:bc06:0:b0:266:23b7:283d with SMTP id b6-20020a2ebc06000000b0026623b7283dmr4225886ljf.151.1662729614960;
        Fri, 09 Sep 2022 06:20:14 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:14 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 4/6] drm/msm/hdmi: make hdmi_phy_8960 OF clk provider
Date:   Fri,  9 Sep 2022 16:20:08 +0300
Message-Id: <20220909132010.3814817-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On MSM8960 the HDMI PHY provides the PLL clock to the MMCC. As we are
preparing to convert the MSM8960 to use DT clocks properties (rather
than global clock names), register the OF clock provider.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
index c3e7ff45e52a..cb35a297afbd 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
@@ -422,8 +422,7 @@ int msm_hdmi_pll_8960_init(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct hdmi_pll_8960 *pll;
-	struct clk *clk;
-	int i;
+	int i, ret;
 
 	/* sanity check: */
 	for (i = 0; i < (ARRAY_SIZE(freqtbl) - 1); i++)
@@ -443,10 +442,16 @@ int msm_hdmi_pll_8960_init(struct platform_device *pdev)
 	pll->pdev = pdev;
 	pll->clk_hw.init = &pll_init;
 
-	clk = devm_clk_register(dev, &pll->clk_hw);
-	if (IS_ERR(clk)) {
+	ret = devm_clk_hw_register(dev, &pll->clk_hw);
+	if (ret < 0) {
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

