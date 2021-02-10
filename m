Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B780D316C51
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 18:16:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232178AbhBJRPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 12:15:55 -0500
Received: from mail29.static.mailgun.info ([104.130.122.29]:47556 "EHLO
        mail29.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232359AbhBJRPJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 10 Feb 2021 12:15:09 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1612977291; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=cILPgz4XyqjUlXxwQuFYrgD9NT4tC0MMCHE1fPTd+sc=; b=K+djEDPby9rqAQswxNP+RvqliiZMT4R968DpwrOpDQ3OSJBbMETiOSymEwiuGCxbsEex87PR
 2p87NsI36nC1TZH6bWY0XTzdRZerTCyK4uRxU3YnvaVNq/7WyMp5+uUdfVHaUSlQzhoHg00D
 TiElb1bRRgVTke0enL1LcTc8D+c=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 6024146b81f6c45dcefd5ee0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 10 Feb 2021 17:14:18
 GMT
Sender: tdas=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 43640C43461; Wed, 10 Feb 2021 17:14:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from tdas-linux.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: tdas)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 82FD6C43462;
        Wed, 10 Feb 2021 17:14:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 82FD6C43462
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=tdas@codeaurora.org
From:   Taniya Das <tdas@codeaurora.org>
To:     Stephen Boyd <sboyd@kernel.org>,
        =?UTF-8?q?Michael=20Turquette=20=C2=A0?= <mturquette@baylibre.com>
Cc:     Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-soc@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh@kernel.org, robh+dt@kernel.org,
        Taniya Das <tdas@codeaurora.org>
Subject: [PATCH v1 2/2] clk: qcom: rpmh: Add support for RPMH clocks on SC7280
Date:   Wed, 10 Feb 2021 22:43:50 +0530
Message-Id: <1612977230-11566-3-git-send-email-tdas@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1612977230-11566-1-git-send-email-tdas@codeaurora.org>
References: <1612977230-11566-1-git-send-email-tdas@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for RPMH clocks on SC7280 SoCs.

Signed-off-by: Taniya Das <tdas@codeaurora.org>
---
 drivers/clk/qcom/clk-rpmh.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 6a2a13c..c180959 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) 2018-2020, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2018-2021, The Linux Foundation. All rights reserved.
  */

 #include <linux/clk-provider.h>
@@ -486,6 +486,27 @@ static const struct clk_rpmh_desc clk_rpmh_sm8350 = {
 	.num_clks = ARRAY_SIZE(sm8350_rpmh_clocks),
 };

+static struct clk_hw *sc7280_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]      = &sdm845_bi_tcxo.hw,
+	[RPMH_CXO_CLK_A]    = &sdm845_bi_tcxo_ao.hw,
+	[RPMH_LN_BB_CLK2]   = &sdm845_ln_bb_clk2.hw,
+	[RPMH_LN_BB_CLK2_A] = &sdm845_ln_bb_clk2_ao.hw,
+	[RPMH_RF_CLK1]      = &sdm845_rf_clk1.hw,
+	[RPMH_RF_CLK1_A]    = &sdm845_rf_clk1_ao.hw,
+	[RPMH_RF_CLK3]      = &sdm845_rf_clk3.hw,
+	[RPMH_RF_CLK3_A]    = &sdm845_rf_clk3_ao.hw,
+	[RPMH_RF_CLK4]      = &sm8350_rf_clk4.hw,
+	[RPMH_RF_CLK4_A]    = &sm8350_rf_clk4_ao.hw,
+	[RPMH_IPA_CLK]      = &sdm845_ipa.hw,
+	[RPMH_PKA_CLK]      = &sm8350_pka.hw,
+	[RPMH_HWKM_CLK]     = &sm8350_hwkm.hw,
+};
+
+static const struct clk_rpmh_desc clk_rpmh_sc7280 = {
+	.clks = sc7280_rpmh_clocks,
+	.num_clks = ARRAY_SIZE(sc7280_rpmh_clocks),
+};
+
 static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
 					 void *data)
 {
@@ -575,6 +596,7 @@ static const struct of_device_id clk_rpmh_match_table[] = {
 	{ .compatible = "qcom,sm8150-rpmh-clk", .data = &clk_rpmh_sm8150},
 	{ .compatible = "qcom,sm8250-rpmh-clk", .data = &clk_rpmh_sm8250},
 	{ .compatible = "qcom,sm8350-rpmh-clk", .data = &clk_rpmh_sm8350},
+	{ .compatible = "qcom,sc7280-rpmh-clk", .data = &clk_rpmh_sc7280},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, clk_rpmh_match_table);
--
Qualcomm INDIA, on behalf of Qualcomm Innovation Center, Inc.is a member
of the Code Aurora Forum, hosted by the  Linux Foundation.

