Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C72F4641D03
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 13:45:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbiLDMpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 07:45:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiLDMpR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 07:45:17 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C47915FE3
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 04:45:16 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b13so3633785lfo.3
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 04:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z5Lir2jT4Hjo6W/uHBN8nH+BdjcQ6nj7U6BcqfzqLdI=;
        b=M2wRYbQLyYkEn6Rb5Z99hC+uoJ0ZMejvM1VjFHuVmeEERlAhGYgkbpI7XXLPQKVcBo
         7ojC5Km2yVSB0aifAsS5grulQTz3dklpJFnDDR7FGfTau2ANl0cZuvZZJKpRMn2tpYfm
         gBF75ThexVmaDlFb1Lym3finIxRW/OYlf453g2h2qaeZkTETheNS1y4+Wm+KD1kdxxWY
         FRIbs0ABPaRJknFx1+Pzayb2oQijvP/utUCETdArHh4Z8MrZ3EMdleu4qcs3COL3OMDb
         B9aTfw5zqp9+0piNH8jophs3i3c+E1HpwVQ9q1CSiF0WzfLj7kNl2j/V6r2aFzPLi56K
         Jlcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z5Lir2jT4Hjo6W/uHBN8nH+BdjcQ6nj7U6BcqfzqLdI=;
        b=hhoN3wXwNCqPvwthk1v+cUBYMEuZYJzbRFdR1RVhTKUcRQYvWppTtqGgz2/npqS4Ub
         9SiEVgMSesOizkGK2p2xe2PU4nfRYoAtSMYtoZadKEQ21Q2Mk3MGkcpwMar454T6tS9Y
         n2U3tvMxNh/9l0yKAUBdzm5GR7Mmc09QC9ZuR2Fbd3gyx8/aD9oyZFowH+3+0ntTDUaS
         vj9Skk6GUEB0hKbEXyKGMUyqVA+M0oaxXPmJM/tD4KTFPy+p5lrPPtG5awLDVzeF9UMY
         mUdl4h5M+L/APyNsEH//XMssfRZDCIrH+4bzR2x+D38qn8L725qetuV8XtzAfffDnPKf
         RcgQ==
X-Gm-Message-State: ANoB5plZ4L+/yBpTkR0UGFgFIBRsvprL2GuCKAezpZw+xmjGrctaI36I
        L+M7qiCeHjo8NDaS0MmsojnqcA==
X-Google-Smtp-Source: AA0mqf5CPW9LCqHU8zHTyEyDsej4L1w8yhkQBMf6ov3IurxqJDQFb8pWGtJbqIRHRCTYZasRM7ODwA==
X-Received: by 2002:a05:6512:5d3:b0:4a4:1cfd:c4ef with SMTP id o19-20020a05651205d300b004a41cfdc4efmr27561340lfo.678.1670157915655;
        Sun, 04 Dec 2022 04:45:15 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k18-20020a05651239d200b0049771081b10sm1763006lfu.31.2022.12.04.04.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 04:45:15 -0800 (PST)
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
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v4 07/11] clk: qcom: mmcc-msm8974: move clock parent tables down
Date:   Sun,  4 Dec 2022 14:45:04 +0200
Message-Id: <20221204124508.1415713-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221204124508.1415713-1-dmitry.baryshkov@linaro.org>
References: <20221204124508.1415713-1-dmitry.baryshkov@linaro.org>
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

Move clock parent tables down, after the PLL declarataions, so that we
can use pll hw clock fields in the next commit.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
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

