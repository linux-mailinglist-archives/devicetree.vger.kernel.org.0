Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEDE93C2AAE
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 23:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbhGIVK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 17:10:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbhGIVKZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 17:10:25 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08AC0C0613E5
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 14:07:40 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id b40so10091636ljf.12
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 14:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XL+YXT/rgnuTxArH7cCESmmrm7QQBuc6KIaqBz76zOw=;
        b=zo8nKP9LqCEewAlV/Hpu705xkphyemres9xFnaNIhUAeh5mFF+U0np4R+XJnnoxHCQ
         nfLpLUlEwcCDnPG4JheD5q7zX5smYjcU/iCf/209AbhbXsrNlVqfHEqvR/vajcEp6oKD
         WYJXijKB69beBXlThUmduFE8T/qf7LjLlS85ShhqYwJZn0cGjroWaxrrTkUlHrdkCSlN
         F0hzw7/KZgkyr0DOwglSb2K5Kdnm7jTsAVipJZJZjfLHFM6291qnng+V5NCAtZJAKdZl
         j5u/CNTmsoTEkg1kZuODwOAifNj/RP2nEMglu41qEwgxP0qy7Q3u0SWpflP+87EVQVIY
         aGEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XL+YXT/rgnuTxArH7cCESmmrm7QQBuc6KIaqBz76zOw=;
        b=tP5mXnG7P/PcP4yZUSpZpcl8S0uk6bfrat/j+ANUB5U9UUA8xnzCtIplN4nUC7hREU
         Hph7nh4fiP0OKUenQubSBJxWo3twUsSVXbUekfgJjPmJIYyzv20MFcVmao3Bvk9wHwT5
         waHd/+eTEa0sSsXQzm7uAcMTOsx+05Cfk2cxFbAWuXt1GKNpXJ+0zw/aS41AnN8OT5Nk
         ARGWGa6KzrspP/Ir42iJXP1h4CKC8QwlUMYmAYfxD2n9qvpYz9J5eyRysE6vonbEm32s
         jBcM07Whpw+zTG2NVIgQPeec6UAiTkYGHa6ziXQjq6cOucRhQKeIvnAZVxFTRGQkOCjO
         mhcg==
X-Gm-Message-State: AOAM531uQko3jpN9mi+1cO9mLbzqQ4OCZ/SSsIq3/9n1m6WYzqJqFWD5
        rZX+I4p+5SCpZPXvh41auWVp6w==
X-Google-Smtp-Source: ABdhPJy+sbW7gwPQC1YnwBSkUQOG4O/Nqf3Ey1YaJh8/bnri/JcwqssCv9mfIPGZX+HJ8dcjCP1OsQ==
X-Received: by 2002:a2e:9e53:: with SMTP id g19mr32140951ljk.58.1625864858423;
        Fri, 09 Jul 2021 14:07:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id n15sm590625lfh.70.2021.07.09.14.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 14:07:37 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 7/8] drm/msm/dsi: phy: use of_device_get_match_data
Date:   Sat, 10 Jul 2021 00:07:28 +0300
Message-Id: <20210709210729.953114-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709210729.953114-1-dmitry.baryshkov@linaro.org>
References: <20210709210729.953114-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use of_device_get_match-data() instead of of_match_node().

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
index 952fd0b95865..c76a6438ffb9 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
@@ -625,17 +625,12 @@ static int dsi_phy_driver_probe(struct platform_device *pdev)
 {
 	struct msm_dsi_phy *phy;
 	struct device *dev = &pdev->dev;
-	const struct of_device_id *match;
 	int ret;
 
 	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 	if (!phy)
 		return -ENOMEM;
 
-	match = of_match_node(dsi_phy_dt_match, dev->of_node);
-	if (!match)
-		return -ENODEV;
-
 	phy->provided_clocks = devm_kzalloc(dev,
 			struct_size(phy->provided_clocks, hws, NUM_PROVIDED_CLKS),
 			GFP_KERNEL);
@@ -644,7 +639,10 @@ static int dsi_phy_driver_probe(struct platform_device *pdev)
 
 	phy->provided_clocks->num = NUM_PROVIDED_CLKS;
 
-	phy->cfg = match->data;
+	phy->cfg = of_device_get_match_data(&pdev->dev);
+	if (!phy->cfg)
+		return -ENODEV;
+
 	phy->pdev = pdev;
 
 	phy->id = dsi_phy_get_id(phy);
-- 
2.30.2

