Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF66F655F56
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 04:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbiLZDLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Dec 2022 22:11:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbiLZDLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Dec 2022 22:11:07 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859DB388A
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 19:11:03 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id j17so5049794lfr.3
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 19:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=d/Yki0h9RLUN0YgcObkHaRmLIYER3QWByufpawk5BJQx/MdCP0EZsQItpFKimAp2GS
         39tpkX+yOkUy8MYz76J53ZctqZSgdzW9Zpr3c39Ew/3cJthhMP05xmGDJH5F0NxSaFwO
         PT+uY82RsUoC7Ld/KxCdcFw4Vp1+d0yGn8wLHcbGwGEp6CF9vK5bKayAeGivi8NDjWsV
         twKQcZh4CVSG8sViR+ijpSBjE3UqlUIJwNkXoz9ZXAAXMNQnA5Y2u8tuYUB9FZzD1ncx
         yYJNCbkGUBMMQpvu6H6a/6Gzo2iVviYn2x4KOIMaZCmJ+DftLF/UQNgmsHfQddky02zQ
         INdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=0NLNyFPyJlNkm1mCB6JyFNTJ9X3RhPvp8Uan82IzQ/XqMGbNY+Ge/xCUMGD1NpKYDI
         z5OiSRxSsVyKdvV2rTN6ybkdZwk8lpHeqTqCGT9BMqHxKSa8Bs+HzMJc3o9e2HMj8ti7
         r/BkyTV2SHy0+7132QFCwTTYUawS6Lni0iKefFT6qKnCVwVytMP8fv/UFKgTqy+tgcY4
         T38B7PyMCnooKvaVNKtbzPS9VCpTZBt3WtpleoYqRpkWm2UmNXfxNyHVRwEurMQ17Box
         ifkLzMIpg1BAIzlGMHFKq66QS8yG6/JYBTbFkG4WwAW7IiTVjzt97rqWp9Cc4PgJJi1y
         d5tw==
X-Gm-Message-State: AFqh2kqtSNq6HNcwL9FlruKcNCqFWXe7TrLwAYRWeN4KasfMXydwMNqX
        tXN+pL19pUYXJI5x2uGWzroKig==
X-Google-Smtp-Source: AMrXdXtUJXYjP2vE9/p73yxJ8VQ86vsLLtQtSPCQEbyULCnvNly/4uYW2VX78eJciCYFcv8qUUL/+w==
X-Received: by 2002:a05:6512:2004:b0:4b5:64b7:24f0 with SMTP id a4-20020a056512200400b004b564b724f0mr5539082lfb.29.1672024261872;
        Sun, 25 Dec 2022 19:11:01 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a12-20020a2e860c000000b0027f770526ebsm1165388lji.75.2022.12.25.19.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 19:11:01 -0800 (PST)
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
Subject: [PATCH v2 2/3] phy: qualcomm: pcie2: register as clock provider
Date:   Mon, 26 Dec 2022 05:10:58 +0200
Message-Id: <20221226031059.2563165-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
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
2.35.1

