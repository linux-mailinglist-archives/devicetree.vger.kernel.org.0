Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6F2F5EDF87
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 17:00:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234644AbiI1PAp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 11:00:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234627AbiI1PAS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 11:00:18 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 554073640B
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:00:07 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id i26so20766745lfp.11
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=1ck4npv+t8dwCS4jYR1P3eWkVMaet1CFj1hH27mCExM=;
        b=TWIqNZt8DUjo3tDxZJEn6rvYObdzV7TY+tbUqubVO0GuzrfI961jB6iEJ2ckfOKCUg
         EGXrsSVvPnI1Nop7xeewAocZ8jLkBrqfgxceMoO3ItU/XHuNww7IrZqCUmlg4pMJIWuS
         qMBZuPFPx2LnmJNzWA1kqzudXwgFyWNF/nzCw2c67jmpdnc7oOj9bR7qBHT9XDNLVaVM
         QtT+HoLNgVrkg4nk4hwjNP1yFdf7gLeSqoKItrWJ+x9L0jeZeM7DWu4Fxe8xoSH0qJgj
         9Y1+b3N3AGLyE2iOoG8Et68wmU6NV5IAeDpdPp5FPm+LbEXUVXbcp59YthI/H4auFYFl
         OECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=1ck4npv+t8dwCS4jYR1P3eWkVMaet1CFj1hH27mCExM=;
        b=YVeCI4YFitS+uvG2EtSnb8uu19h/MsNYCqbcE52BYEvZW12lAD+9Q5tn15QYN+vxVF
         nSogUUd9KzuGreQS7M2h3ZaSaRwAUGMXYSrqpp2oeg4PWfaN752yiXrPFkkUyQT1n0NW
         3/Jc/fnG1477IxN3jtJHPfSlKl3x2M4uMGE/AFUMIzgHNvZXBbGRV9qsi85SP5VddIvd
         PTVWv4AxnPIa3sXgpVP0PdT9g1JPJcnXuBIihVUVcwhKVLfazRW/o+zZS6cVuCyBxB3f
         Ws4e/FPArCkhc2v34q5rUY8KJvHTbZgPidFW9NyHcsl+aV2GWJ2T+FlU8Hfe1/VJmOG9
         is+Q==
X-Gm-Message-State: ACrzQf2h4xmTnpKlpZqqY2B0434TJsbrMpnt5tadtwHmd2o+4h3JwK4a
        8LN9IOL3A1U4k6AorDN5UBDHdA==
X-Google-Smtp-Source: AMsMyM7OaszzkpmLh+D9VgfCRPwWppUC2bVIQ7keFMlRQG0cS6oHkl1yjlWVzoYKFdd7E1aypldd8w==
X-Received: by 2002:a05:6512:3f29:b0:4a1:c920:ebad with SMTP id y41-20020a0565123f2900b004a1c920ebadmr7341273lfa.574.1664377205113;
        Wed, 28 Sep 2022 08:00:05 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id be36-20020a056512252400b00492c017de43sm494996lfb.127.2022.09.28.08.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 08:00:04 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 07/11] clk: qcom: mmcc-msm8974: move clock parent tables down
Date:   Wed, 28 Sep 2022 17:59:54 +0300
Message-Id: <20220928145958.376288-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928145958.376288-1-dmitry.baryshkov@linaro.org>
References: <20220928145958.376288-1-dmitry.baryshkov@linaro.org>
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

Move clock parent tables down, after the PLL declrataions, so that we
can use pll hw clock fields in the next commit.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/mmcc-msm8974.c | 170 ++++++++++++++++----------------
 1 file changed, 85 insertions(+), 85 deletions(-)

diff --git a/drivers/clk/qcom/mmcc-msm8974.c b/drivers/clk/qcom/mmcc-msm8974.c
index 9008df2305df..57f1a351c8f6 100644
--- a/drivers/clk/qcom/mmcc-msm8974.c
+++ b/drivers/clk/qcom/mmcc-msm8974.c
@@ -42,6 +42,91 @@ enum {
 	P_DSI1PLL_BYTE,
 };
 
+static struct clk_pll mmpll0 = {
+	.l_reg = 0x0004,
+	.m_reg = 0x0008,
+	.n_reg = 0x000c,
+	.config_reg = 0x0014,
+	.mode_reg = 0x0000,
+	.status_reg = 0x001c,
+	.status_bit = 17,
+        .clkr.hw.init = &(struct clk_init_data){
+                .name = "mmpll0",
+                .parent_names = (const char *[]){ "xo" },
+                .num_parents = 1,
+                .ops = &clk_pll_ops,
+        },
+};
+
+static struct clk_regmap mmpll0_vote = {
+	.enable_reg = 0x0100,
+	.enable_mask = BIT(0),
+	.hw.init = &(struct clk_init_data){
+		.name = "mmpll0_vote",
+		.parent_names = (const char *[]){ "mmpll0" },
+		.num_parents = 1,
+		.ops = &clk_pll_vote_ops,
+	},
+};
+
+static struct clk_pll mmpll1 = {
+	.l_reg = 0x0044,
+	.m_reg = 0x0048,
+	.n_reg = 0x004c,
+	.config_reg = 0x0050,
+	.mode_reg = 0x0040,
+	.status_reg = 0x005c,
+	.status_bit = 17,
+        .clkr.hw.init = &(struct clk_init_data){
+                .name = "mmpll1",
+                .parent_names = (const char *[]){ "xo" },
+                .num_parents = 1,
+                .ops = &clk_pll_ops,
+        },
+};
+
+static struct clk_regmap mmpll1_vote = {
+	.enable_reg = 0x0100,
+	.enable_mask = BIT(1),
+	.hw.init = &(struct clk_init_data){
+		.name = "mmpll1_vote",
+		.parent_names = (const char *[]){ "mmpll1" },
+		.num_parents = 1,
+		.ops = &clk_pll_vote_ops,
+	},
+};
+
+static struct clk_pll mmpll2 = {
+	.l_reg = 0x4104,
+	.m_reg = 0x4108,
+	.n_reg = 0x410c,
+	.config_reg = 0x4110,
+	.mode_reg = 0x4100,
+	.status_reg = 0x411c,
+        .clkr.hw.init = &(struct clk_init_data){
+                .name = "mmpll2",
+                .parent_names = (const char *[]){ "xo" },
+                .num_parents = 1,
+                .ops = &clk_pll_ops,
+        },
+};
+
+static struct clk_pll mmpll3 = {
+	.l_reg = 0x0084,
+	.m_reg = 0x0088,
+	.n_reg = 0x008c,
+	.config_reg = 0x0090,
+	.mode_reg = 0x0080,
+	.status_reg = 0x009c,
+	.status_bit = 17,
+        .clkr.hw.init = &(struct clk_init_data){
+                .name = "mmpll3",
+                .parent_names = (const char *[]){ "xo" },
+                .num_parents = 1,
+                .ops = &clk_pll_ops,
+        },
+};
+
 static const struct parent_map mmcc_xo_mmpll0_mmpll1_gpll0_map[] = {
 	{ P_XO, 0 },
 	{ P_MMPLL0, 1 },
@@ -160,91 +245,6 @@ static const char * const mmcc_xo_dsibyte_hdmi_edp_gpll0[] = {
 	"dsi1pllbyte",
 };
 
-static struct clk_pll mmpll0 = {
-	.l_reg = 0x0004,
-	.m_reg = 0x0008,
-	.n_reg = 0x000c,
-	.config_reg = 0x0014,
-	.mode_reg = 0x0000,
-	.status_reg = 0x001c,
-	.status_bit = 17,
-        .clkr.hw.init = &(struct clk_init_data){
-                .name = "mmpll0",
-                .parent_names = (const char *[]){ "xo" },
-                .num_parents = 1,
-                .ops = &clk_pll_ops,
-        },
-};
-
-static struct clk_regmap mmpll0_vote = {
-	.enable_reg = 0x0100,
-	.enable_mask = BIT(0),
-	.hw.init = &(struct clk_init_data){
-		.name = "mmpll0_vote",
-		.parent_names = (const char *[]){ "mmpll0" },
-		.num_parents = 1,
-		.ops = &clk_pll_vote_ops,
-	},
-};
-
-static struct clk_pll mmpll1 = {
-	.l_reg = 0x0044,
-	.m_reg = 0x0048,
-	.n_reg = 0x004c,
-	.config_reg = 0x0050,
-	.mode_reg = 0x0040,
-	.status_reg = 0x005c,
-	.status_bit = 17,
-        .clkr.hw.init = &(struct clk_init_data){
-                .name = "mmpll1",
-                .parent_names = (const char *[]){ "xo" },
-                .num_parents = 1,
-                .ops = &clk_pll_ops,
-        },
-};
-
-static struct clk_regmap mmpll1_vote = {
-	.enable_reg = 0x0100,
-	.enable_mask = BIT(1),
-	.hw.init = &(struct clk_init_data){
-		.name = "mmpll1_vote",
-		.parent_names = (const char *[]){ "mmpll1" },
-		.num_parents = 1,
-		.ops = &clk_pll_vote_ops,
-	},
-};
-
-static struct clk_pll mmpll2 = {
-	.l_reg = 0x4104,
-	.m_reg = 0x4108,
-	.n_reg = 0x410c,
-	.config_reg = 0x4110,
-	.mode_reg = 0x4100,
-	.status_reg = 0x411c,
-        .clkr.hw.init = &(struct clk_init_data){
-                .name = "mmpll2",
-                .parent_names = (const char *[]){ "xo" },
-                .num_parents = 1,
-                .ops = &clk_pll_ops,
-        },
-};
-
-static struct clk_pll mmpll3 = {
-	.l_reg = 0x0084,
-	.m_reg = 0x0088,
-	.n_reg = 0x008c,
-	.config_reg = 0x0090,
-	.mode_reg = 0x0080,
-	.status_reg = 0x009c,
-	.status_bit = 17,
-        .clkr.hw.init = &(struct clk_init_data){
-                .name = "mmpll3",
-                .parent_names = (const char *[]){ "xo" },
-                .num_parents = 1,
-                .ops = &clk_pll_ops,
-        },
-};
-
 static struct clk_rcg2 mmss_ahb_clk_src = {
 	.cmd_rcgr = 0x5000,
 	.hid_width = 5,
-- 
2.35.1

