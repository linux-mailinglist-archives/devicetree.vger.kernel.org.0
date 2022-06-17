Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8864B54F98F
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 16:48:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382906AbiFQOr3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 10:47:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382911AbiFQOr1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 10:47:27 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4EA56B01
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 07:47:22 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id h23so4986462ljl.3
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 07:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jBMiZ5n8BJY+cCNJKWjEq/LIN5KyB8obYQ76cG0oR6M=;
        b=QX1SdyhYqSQQyEA235l6WXIjM+AWBocedFoESFJCReVGH1A6L9PfqotqNeIOHibK5e
         wSli/6t7a3YFWskPuZL3B6DLq+Ycsx0iVn1NGAdqMQb8I1Bk1PNWWsNbjDHo2fECMU3/
         YEdRSwMk8CfcLDjHIXxNoLWDLa20NMk9LvpmhgjtwMudIAg5xTZ5l3dC4mU3SsXx2RCo
         JHwhQiYzI8Ydr/+v7AuFmByi9xPrVVeszLRfQAM/3bTrpOoif9np7erxrLqgcrHZDuB9
         EzCT3Gf2rSClW27PZUT2qELsU2J67/JUg5PPVwBxO0HOtxopzPH2TVakzO1ufYxZMiqJ
         lVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jBMiZ5n8BJY+cCNJKWjEq/LIN5KyB8obYQ76cG0oR6M=;
        b=08hl0dSx9UHeCIEWPIqtsK8bLxZh4R1UAffu3GuZmJnhT+tHVkyLJjOoKgiA2zm+gR
         h2LHelNzfIknKKum9g8CjiLc6HRkKH8QhcxbNbIC9RELWWSWwn9oRghSw6MbyzpAv2IX
         pJf6UT9BjfidsbAEJCH+pEs0Hu5OMjsYcXgMPG/oqqoVhOK6NitH+/D6NM6PMBdT1ZRU
         oY/knsSv8BQhbG2U4SUlvDVz976ekknXH1YNU3Ll3/tN2zHeQ4Eurq5umTKuRl0XGe5R
         Gwz+gFUy68aOZ2cLIurlYmL6ReiEXpUcitugVm4UOwGdwQS2PhG9XIfo0d/tmeLOzI8k
         3YxQ==
X-Gm-Message-State: AJIora/3tTzinUin//9W6YfIVPKkvw2Uh02Y5+6MlB5IuTfO5N8gvGpo
        +/zyZ0dI/R4+dZjlhWdQbwHuwA==
X-Google-Smtp-Source: AGRyM1tLbVU+/wGUimerYF1vbQ4FdwIkdnIEnAkmYr2M6+P6n68W8gan+K3Tfg1gxI7kF6bZ6dhWcw==
X-Received: by 2002:a05:651c:981:b0:253:b87e:ba6c with SMTP id b1-20020a05651c098100b00253b87eba6cmr5347620ljq.530.1655477240920;
        Fri, 17 Jun 2022 07:47:20 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a5-20020a2eb165000000b002553ab60e17sm571867ljm.122.2022.06.17.07.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 07:47:20 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 5/7] clk: qcom: gcc-msm8916: move gcc_mss_q6_bimc_axi_clk down
Date:   Fri, 17 Jun 2022 17:47:12 +0300
Message-Id: <20220617144714.817765-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617144714.817765-1-dmitry.baryshkov@linaro.org>
References: <20220617144714.817765-1-dmitry.baryshkov@linaro.org>
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

The gcc_mss_q6_bimc_axi_clk clock depends on the bimc_ddr_clk_src clock.
Move it down in the file to come after the source clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/gcc-msm8916.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/qcom/gcc-msm8916.c b/drivers/clk/qcom/gcc-msm8916.c
index 7962edbdbcf6..4d726ca4b0da 100644
--- a/drivers/clk/qcom/gcc-msm8916.c
+++ b/drivers/clk/qcom/gcc-msm8916.c
@@ -2594,23 +2594,6 @@ static struct clk_branch gcc_mss_cfg_ahb_clk = {
 	},
 };
 
-static struct clk_branch gcc_mss_q6_bimc_axi_clk = {
-	.halt_reg = 0x49004,
-	.clkr = {
-		.enable_reg = 0x49004,
-		.enable_mask = BIT(0),
-		.hw.init = &(struct clk_init_data){
-			.name = "gcc_mss_q6_bimc_axi_clk",
-			.parent_names = (const char *[]){
-				"bimc_ddr_clk_src",
-			},
-			.num_parents = 1,
-			.flags = CLK_SET_RATE_PARENT,
-			.ops = &clk_branch2_ops,
-		},
-	},
-};
-
 static struct clk_branch gcc_oxili_ahb_clk = {
 	.halt_reg = 0x59028,
 	.clkr = {
@@ -2860,6 +2843,23 @@ static struct clk_branch gcc_bimc_gpu_clk = {
 	},
 };
 
+static struct clk_branch gcc_mss_q6_bimc_axi_clk = {
+	.halt_reg = 0x49004,
+	.clkr = {
+		.enable_reg = 0x49004,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_mss_q6_bimc_axi_clk",
+			.parent_names = (const char *[]){
+				"bimc_ddr_clk_src",
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_branch gcc_jpeg_tbu_clk = {
 	.halt_reg = 0x12034,
 	.clkr = {
-- 
2.35.1

