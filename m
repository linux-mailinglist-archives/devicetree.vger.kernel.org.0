Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09E1A2B8C5D
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:31:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726494AbgKSH1t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:27:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726466AbgKSH1s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:27:48 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A98CFC0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:27:48 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id 131so3601708pfb.9
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=u5W6INqg2Zpl99fZRNl1fAgbWBqyZfbuE4X8ZoNAf8o=;
        b=i07saqU5+eNp08WFeDZuxfBIwgK2EE/UqyJVMmRevU8OXoD+b6rUppmRHE4GnszIjP
         HXsPokwsXJ8+8J0PuajCtM+FbRlDdwuy6E4HFtRsBCCu1QzuaUe6m0tysKscJToq7Y5C
         Hw2cwkMC1l4VmEaqvptS0dAOti4+EMYdGybSlsI8h+48AEickIPKzme69Ym7VdQps/uq
         Kw0abvemofIVstOfMxHHgbS9NNFK2LJfvWvz9xZH6Oy15GcGQRcp3tZmHb/Chagn30Uo
         Tmu0nFgu/hEPG6AcRc/ORXn6n5YB15Tf7OQeCSn4KVhT1+fi20o7g2eO18MLg6gn3qob
         YI8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=u5W6INqg2Zpl99fZRNl1fAgbWBqyZfbuE4X8ZoNAf8o=;
        b=qmcqVWqncorWCBJhbYsGmZJXwrNmZHT2VDkU29KQV+tJuPC3r3Lny527v5z+qdTbij
         I789Js7Q1+ymBVPWEne+u+2OGBVevp2Gk2bRg7H1R5WsA7CJiJWVEVy3uXPYCls+DLVS
         jjI3DMNwmOIU2yvQhq+q4FJuu8IN1wG0oYk9KDM0mL0x9QKDl6iqOKlLuy6nTDMtHizB
         Hl1+K0DqHslAhgsMrfnZjbWDUHUY124ZXpplx/3alLCOZWfAnhCMXferfVF5B6HONLR6
         tZr3EA4iYiQDxCBAV3q+x6zlx168Iz8l2E7Unm17lYfITcHeYRKo0+XC0ifWQlP9Owoh
         2ejw==
X-Gm-Message-State: AOAM530H4tXa0d1SVPI1g7hcjkKHMasuUd5A8vjrJQvVUQ6QyDAQlkqq
        VLR6Ifn7chimgHSzbR6QrcFd
X-Google-Smtp-Source: ABdhPJxRM9PQHBXXdV5DkxBGYt5j2yngr3PZYdVthkQadxzerS6KDef4fkH7pUHSRCfTzqoz/pMDkg==
X-Received: by 2002:a17:90a:de0c:: with SMTP id m12mr2362619pjv.224.1605770868240;
        Wed, 18 Nov 2020 23:27:48 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id a8sm26802923pfa.132.2020.11.18.23.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:27:47 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 4/4] clk: qcom: Add support for SDX55 RPMh clocks
Date:   Thu, 19 Nov 2020 12:57:14 +0530
Message-Id: <20201119072714.14460-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201119072714.14460-1-manivannan.sadhasivam@linaro.org>
References: <20201119072714.14460-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for following clocks maintained by RPMh in SDX55 SoCs.

* BI TCXO
* RF_CLK1
* RF_CLK1_AO
* RF_CLK2
* RF_CLK2_AO
* QPIC (Qualcomm Technologies, Inc. Parallel Interface Controller)

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/clk/qcom/clk-rpmh.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index e2c669b08aff..fb72db957721 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -432,6 +432,25 @@ static const struct clk_rpmh_desc clk_rpmh_sm8250 = {
 	.num_clks = ARRAY_SIZE(sm8250_rpmh_clocks),
 };
 
+DEFINE_CLK_RPMH_VRM(sdx55, rf_clk1, rf_clk1_ao, "rfclkd1", 1);
+DEFINE_CLK_RPMH_VRM(sdx55, rf_clk2, rf_clk2_ao, "rfclkd2", 1);
+DEFINE_CLK_RPMH_BCM(sdx55, qpic_clk, "QP0");
+
+static struct clk_hw *sdx55_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]		= &sdm845_bi_tcxo.hw,
+	[RPMH_CXO_CLK_A]	= &sdm845_bi_tcxo_ao.hw,
+	[RPMH_RF_CLK1]		= &sdx55_rf_clk1.hw,
+	[RPMH_RF_CLK1_A]	= &sdx55_rf_clk1_ao.hw,
+	[RPMH_RF_CLK2]		= &sdx55_rf_clk2.hw,
+	[RPMH_RF_CLK2_A]	= &sdx55_rf_clk2_ao.hw,
+	[RPMH_QPIC_CLK]		= &sdx55_qpic_clk.hw,
+};
+
+static const struct clk_rpmh_desc clk_rpmh_sdx55 = {
+	.clks = sdx55_rpmh_clocks,
+	.num_clks = ARRAY_SIZE(sdx55_rpmh_clocks),
+};
+
 static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
 					 void *data)
 {
@@ -517,6 +536,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
 static const struct of_device_id clk_rpmh_match_table[] = {
 	{ .compatible = "qcom,sc7180-rpmh-clk", .data = &clk_rpmh_sc7180},
 	{ .compatible = "qcom,sdm845-rpmh-clk", .data = &clk_rpmh_sdm845},
+	{ .compatible = "qcom,sdx55-rpmh-clk",  .data = &clk_rpmh_sdx55},
 	{ .compatible = "qcom,sm8150-rpmh-clk", .data = &clk_rpmh_sm8150},
 	{ .compatible = "qcom,sm8250-rpmh-clk", .data = &clk_rpmh_sm8250},
 	{ }
-- 
2.17.1

