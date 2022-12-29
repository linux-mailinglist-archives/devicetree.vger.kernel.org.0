Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65698658C79
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 12:59:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbiL2L7j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 06:59:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbiL2L7i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 06:59:38 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46B7813EB3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 03:59:37 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id g13so27209421lfv.7
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 03:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Xg7dGXofrzsw5igv77htQx0UkAkniEaw5zG0MsVPy8=;
        b=DyZDFT0YCwwmXR3gSaTKtmDmOpGfDdLZADx9qJN6ufDUW/d9wg/hv1PIQAGLgphG5S
         38rwTd5aZQJJQYlHklylpV6+MrdJ+9kedNYzCFiZijlvqFnaSHAb1ITJJUOpi8C15hRJ
         K4+1n5RkzQzh7l29G7UC9h+g+e8PiqchRXecoOuIINRrJUhhqGgNvWMJQSWF2BDRPiJj
         2zBXitp8js1YCkQ1BpsC5vPqu852hU1rbh7EJxXFGbsZmJqtr9KTt4aHUyrXls9GlO/d
         mdHhVO3pHayvoDRoDZ2hpztjmf7zOpxCRjIZRuLlXa/sgxigNz4QDYgJhH9Coh06ofTn
         +dkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Xg7dGXofrzsw5igv77htQx0UkAkniEaw5zG0MsVPy8=;
        b=Qm36NJFIrhvGfr2hnOLxcG9zo8TL3pfIUOu9woF10five5M/YysNUoGBfl4LJjY0qE
         NNIQH3ZdY3amxN9rQGsLVAigdj2cOZsiDCpxlNZy5/Lv4Cyuz6HbbJ31caAxI6I8Uj5v
         wa/FszQhrJIwjBTOED+qB+XxAlRlOWa7kw4RH2uaM0+Y4dW3r5ptlBxh4nbgggR6otqr
         l64nmaOfQlbJYtdFi67MGZm2vZH7KrKgJieLkHn+1V26/VaAWkn3s2OfkJDQq31sGexz
         dFNQLCawL9ZcLjv6HAgRa5qtPNvSvpBkrXYQo3ChXL2ptB1xnihYlsCeavpSVCi9jYb0
         t69A==
X-Gm-Message-State: AFqh2kqV1Y+bxROkIlj5k57/iLxOcB/kfnyI3Nf79nYtCvFpOruzB0R/
        z4M1oDU7RHHSg34B2YvFqQ4XqvzB8OetUhrlRsI=
X-Google-Smtp-Source: AMrXdXtk00yspwEYYPdNRmyAg/9yb0OXDcRpi7r6iKKgLFHlaK3NFMrBOxzDEeLwITXDad5UDEh+XQ==
X-Received: by 2002:a05:6512:2a89:b0:4b9:f5e5:8fbd with SMTP id dt9-20020a0565122a8900b004b9f5e58fbdmr7653957lfb.52.1672315175537;
        Thu, 29 Dec 2022 03:59:35 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n7-20020a05651203e700b0049464d89e40sm3006313lfq.72.2022.12.29.03.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 03:59:34 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 2/2] phy: qualcomm: pcie2: register as clock provider
Date:   Thu, 29 Dec 2022 13:59:32 +0200
Message-Id: <20221229115932.3312318-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
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

Register pcie2 PHY as a clock provider to enable using it in the
DT-based clock lookup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-pcie2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-pcie2.c b/drivers/phy/qualcomm/phy-qcom-pcie2.c
index 5407e59bb185..11a2bb958681 100644
--- a/drivers/phy/qualcomm/phy-qcom-pcie2.c
+++ b/drivers/phy/qualcomm/phy-qcom-pcie2.c
@@ -243,7 +243,11 @@ static int phy_pipe_clksrc_register(struct qcom_phy *qphy)
 	fixed->fixed_rate = 250000000;
 	fixed->hw.init = &init;
 
-	return devm_clk_hw_register(qphy->dev, &fixed->hw);
+	ret = devm_clk_hw_register(qphy->dev, &fixed->hw);
+	if (ret < 0)
+		return ret;
+
+	return devm_of_clk_add_hw_provider(qphy->dev, of_clk_hw_simple_get, &fixed->hw);
 }
 
 static int qcom_pcie2_phy_probe(struct platform_device *pdev)
-- 
2.39.0

