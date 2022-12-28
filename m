Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 562D465770A
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:33:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232944AbiL1NdB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:33:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232964AbiL1Ncx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:32:53 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D3A9FCD2
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:32:52 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id bt23so6982451lfb.5
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ijMDoR4AdR4NsVCY72cZZHnUNmH0Cvvqw6DU7+bt38=;
        b=pCaBh0b1aFdQ/bPydctI6EILckDsFMQksLf/vXZZ6peEHJKLY3TBppMvQXkC3z7tE2
         PVzYczJSqJ3JVOTJh1TUsrqwCecaBU/xhOIw0EPNlTeqO6xXpAUYqfEPrLWcl6R4CBJU
         e5le/x7g0WLp8zHnoQ9ZTyuLJrOFOpYG9kuEOBlVsCoWEX469yi4Kuhn+7sLU54dqhP5
         EIGwiy4SThZmP89BrmE2TqRdGpH/BSk06rgBpZzOXMXleYPfdpaMxBvMivp5M/CmvKU9
         G15Y6Xc2xLAI0MgwErLeRgHtq2K7o99EyIeVL3FJ1v1FMUEK3ciIwZ4OqNpAgzrIjUPM
         N5fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ijMDoR4AdR4NsVCY72cZZHnUNmH0Cvvqw6DU7+bt38=;
        b=JgO+ptBLyhd6jz9YmD6Ra2lZ3wjA9ljf0YpUECzHmQOtaFmqle4qlFOayJqFQCo4/3
         hCO21cYL+k1CJFxdr8CJJrUERNcvydZf8q+1p9bCRehptyPWu9R/yWc5yqQPitewVfBs
         yu5IOx8QSWgjfnp50LIC5XdGURGEmPWXX6FrvP8/aFJC33J1cFwBwdtzIzXnopB1PPcw
         1h3nsuGgEkFY2wsU7RXzYlFE1mbciAkgmKDw2Jogzz5jjdPhaQcZeFIh5yUBXMr3w9Pu
         scmu/FxJ6x5sqSTBaFlAOXq9RGXlGZzjUkamBFMWxpUYq7S71ijQQlLc0WPc0Od2D/3Q
         DnAQ==
X-Gm-Message-State: AFqh2kqb5TMLHWFZcKxEP2mVmTb84Vy4Dkf/48uaz4FSZkSkx55VJdbp
        1Rx1DWHYvycv8b+KxipwwlDP+A==
X-Google-Smtp-Source: AMrXdXvIl6PsuVcVaJ8r4yPl1Pvd9+VXLBwN0Juia0Gq0Xmq4oRKcSH5/+ViWBpYppCuY1S/1SkNHQ==
X-Received: by 2002:a05:6512:acd:b0:4b5:a206:30ee with SMTP id n13-20020a0565120acd00b004b5a20630eemr9900805lfu.65.1672234372014;
        Wed, 28 Dec 2022 05:32:52 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id d7-20020ac241c7000000b004a47e7b91c4sm2613876lfi.195.2022.12.28.05.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 05:32:51 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 08/16] clk: qcom: dispcc-qcm2290: get rid of test clock
Date:   Wed, 28 Dec 2022 15:32:35 +0200
Message-Id: <20221228133243.3052132-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
References: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
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

The test clock apparently it's not used by anyone upstream. Remove it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/dispcc-qcm2290.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/clk/qcom/dispcc-qcm2290.c b/drivers/clk/qcom/dispcc-qcm2290.c
index 96b149365912..2ebd9a02b895 100644
--- a/drivers/clk/qcom/dispcc-qcm2290.c
+++ b/drivers/clk/qcom/dispcc-qcm2290.c
@@ -71,7 +71,6 @@ static const struct parent_map disp_cc_parent_map_0[] = {
 static const struct clk_parent_data disp_cc_parent_data_0[] = {
 	{ .fw_name = "bi_tcxo" },
 	{ .fw_name = "dsi0_phy_pll_out_byteclk" },
-	{ .fw_name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map disp_cc_parent_map_1[] = {
@@ -80,7 +79,6 @@ static const struct parent_map disp_cc_parent_map_1[] = {
 
 static const struct clk_parent_data disp_cc_parent_data_1[] = {
 	{ .fw_name = "bi_tcxo" },
-	{ .fw_name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map disp_cc_parent_map_2[] = {
@@ -91,7 +89,6 @@ static const struct parent_map disp_cc_parent_map_2[] = {
 static const struct clk_parent_data disp_cc_parent_data_2[] = {
 	{ .fw_name = "bi_tcxo_ao" },
 	{ .fw_name = "gcc_disp_gpll0_div_clk_src" },
-	{ .fw_name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map disp_cc_parent_map_3[] = {
@@ -104,7 +101,6 @@ static const struct clk_parent_data disp_cc_parent_data_3[] = {
 	{ .fw_name = "bi_tcxo" },
 	{ .hw = &disp_cc_pll0.clkr.hw },
 	{ .fw_name = "gcc_disp_gpll0_clk_src" },
-	{ .fw_name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map disp_cc_parent_map_4[] = {
@@ -117,7 +113,6 @@ static const struct clk_parent_data disp_cc_parent_data_4[] = {
 	{ .fw_name = "bi_tcxo" },
 	{ .fw_name = "dsi0_phy_pll_out_dsiclk" },
 	{ .fw_name = "dsi1_phy_pll_out_dsiclk" },
-	{ .fw_name = "core_bi_pll_test_se" },
 };
 
 static const struct parent_map disp_cc_parent_map_5[] = {
@@ -126,7 +121,6 @@ static const struct parent_map disp_cc_parent_map_5[] = {
 
 static const struct clk_parent_data disp_cc_parent_data_5[] = {
 	{ .fw_name = "sleep_clk" },
-	{ .fw_name = "core_bi_pll_test_se" },
 };
 
 static struct clk_rcg2 disp_cc_mdss_byte0_clk_src = {
-- 
2.35.1

