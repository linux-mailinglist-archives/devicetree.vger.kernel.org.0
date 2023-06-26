Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DE0573E6D2
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 19:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbjFZRsU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 13:48:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbjFZRsT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 13:48:19 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC2A8C6
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 10:48:17 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b69f1570b2so24201871fa.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 10:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687801696; x=1690393696;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ozZihpk+zCuXAax8t9ijrVeClYXscNoFUb4sh4dJQI=;
        b=e4+lrIGImvU0yfP9MGBfO3v8xyA7xeB6Nh4o2n4jXOayxrBW4Chm2qmXCA863fFIwj
         dPjLDDZeEs0X66rREp6UZ7LjncDq01kjP+cHIa29iZUl7d9+mtOpYpqcs0hEaNdKiuWn
         ZMepW6leuLQxfHi2dqqJfm9cWXJkHcw5ri4w6uqw2F1GhISpD15EkrSvGtWkPewVum7o
         GnUCqOFkJDHQDWr5VyjPxnMWrUHbEncgbRWq8wEHA+Vg5U5earYI6XdynR79euzvng0o
         0+tN9Yh9V2hbPJDugSW+BTtLoWOPI9VdOrMRv+XTFi0WuvpwvV4gncEF8FpklSXBHENn
         /8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687801696; x=1690393696;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ozZihpk+zCuXAax8t9ijrVeClYXscNoFUb4sh4dJQI=;
        b=RwmP35RI4wlQ8G0lOYLVFAcf2lRAIl6Q5H0mcJEswhjE+D51+Cr0Hkcju0khz9+25E
         DEkGNN+qRunxsLJ++vAeP6RbCKQZ3ceILi3y5o/i/++s3OdL9XXBrtcpBYa0CjIFXw7U
         uTSAXUD8pmGnf/k3yPjiYonMJZPmuKU4QTv/EREtGr5G8nBI/nPgfbyPSbyjHojfCpOO
         FQSO5X+aYE/NaeS52HLbge/E2yGITeSfDR3mmQDKJu+paBNHYmtyYXqap/ao3VLBkyQF
         nz+2zaNrQm6gh/vf05V9i1oUyHO2p36BiP4vb7H0RVkBiD8CXFLSQ3m1XUlGVbZzBbgH
         +40w==
X-Gm-Message-State: AC+VfDyJENIEHweuOTcYbDN2IrLPyaxeXJCkivKqViiGbIb+kFe5l5O7
        qI/TUQEG3zyAUxIiUTCNKJQghA==
X-Google-Smtp-Source: ACHHUZ6S8J8fzaMR18pW1rAE3fwO9I9xrfhqG9WtR0NaMH2hAILGxCOco9DJYNPOaGXFehdGurENRg==
X-Received: by 2002:a2e:9b92:0:b0:2b6:a630:1e5 with SMTP id z18-20020a2e9b92000000b002b6a63001e5mr1390092lji.33.1687801696089;
        Mon, 26 Jun 2023 10:48:16 -0700 (PDT)
Received: from [192.168.1.101] (abyk179.neoplus.adsl.tpnet.pl. [83.9.30.179])
        by smtp.gmail.com with ESMTPSA id h19-20020a2eb0f3000000b002b470afec39sm1337076ljl.48.2023.06.26.10.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 10:48:15 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 26 Jun 2023 19:48:08 +0200
Subject: [PATCH v2 3/3] clk: qcom: gcc-sc8280xp: Add missing GDSCs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230620-topic-sc8280_gccgdsc-v2-3-562c1428c10d@linaro.org>
References: <20230620-topic-sc8280_gccgdsc-v2-0-562c1428c10d@linaro.org>
In-Reply-To: <20230620-topic-sc8280_gccgdsc-v2-0-562c1428c10d@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687801690; l=3766;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=KBCoXqGrET/VRuyiadWO8HjNd0FflYcieUwZmA1RfEY=;
 b=NNoELtqGoccdLG9HQX+0lw9gdq1DAZqQK6wVmNLsZM545j+Y6PArTxXVp4pduNN+5RVEoWlwI
 fCBryvUhyh2DN41CjmK72YzX71NU7b0cLb8W7vp8mXy2Ww8wYY8Wn0b
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are 10 more GDSCs that we've not been caring about, and by extension
(and perhaps even more importantly), not putting to sleep. Add them.

Fixes: d65d005f9a6c ("clk: qcom: add sc8280xp GCC driver")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gcc-sc8280xp.c | 100 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 100 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sc8280xp.c b/drivers/clk/qcom/gcc-sc8280xp.c
index 64bea886322d..3e1a62fa3a07 100644
--- a/drivers/clk/qcom/gcc-sc8280xp.c
+++ b/drivers/clk/qcom/gcc-sc8280xp.c
@@ -6897,6 +6897,96 @@ static struct gdsc emac_1_gdsc = {
 	.flags = RETAIN_FF_ENABLE,
 };
 
+static struct gdsc usb4_1_gdsc = {
+	.gdscr = 0xb8004,
+	.pd = {
+		.name = "usb4_1_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = RETAIN_FF_ENABLE,
+};
+
+static struct gdsc usb4_gdsc = {
+	.gdscr = 0x2a004,
+	.pd = {
+		.name = "usb4_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = RETAIN_FF_ENABLE,
+};
+
+static struct gdsc hlos1_vote_mmnoc_mmu_tbu_hf0_gdsc = {
+	.gdscr = 0x7d050,
+	.pd = {
+		.name = "hlos1_vote_mmnoc_mmu_tbu_hf0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc hlos1_vote_mmnoc_mmu_tbu_hf1_gdsc = {
+	.gdscr = 0x7d058,
+	.pd = {
+		.name = "hlos1_vote_mmnoc_mmu_tbu_hf1_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc hlos1_vote_mmnoc_mmu_tbu_sf0_gdsc = {
+	.gdscr = 0x7d054,
+	.pd = {
+		.name = "hlos1_vote_mmnoc_mmu_tbu_sf0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc hlos1_vote_mmnoc_mmu_tbu_sf1_gdsc = {
+	.gdscr = 0x7d06c,
+	.pd = {
+		.name = "hlos1_vote_mmnoc_mmu_tbu_sf1_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc hlos1_vote_turing_mmu_tbu0_gdsc = {
+	.gdscr = 0x7d05c,
+	.pd = {
+		.name = "hlos1_vote_turing_mmu_tbu0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc hlos1_vote_turing_mmu_tbu1_gdsc = {
+	.gdscr = 0x7d060,
+	.pd = {
+		.name = "hlos1_vote_turing_mmu_tbu1_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc hlos1_vote_turing_mmu_tbu2_gdsc = {
+	.gdscr = 0x7d0a0,
+	.pd = {
+		.name = "hlos1_vote_turing_mmu_tbu2_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
+static struct gdsc hlos1_vote_turing_mmu_tbu3_gdsc = {
+	.gdscr = 0x7d0a4,
+	.pd = {
+		.name = "hlos1_vote_turing_mmu_tbu3_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = VOTABLE,
+};
+
 static struct clk_regmap *gcc_sc8280xp_clocks[] = {
 	[GCC_AGGRE_NOC_PCIE0_TUNNEL_AXI_CLK] = &gcc_aggre_noc_pcie0_tunnel_axi_clk.clkr,
 	[GCC_AGGRE_NOC_PCIE1_TUNNEL_AXI_CLK] = &gcc_aggre_noc_pcie1_tunnel_axi_clk.clkr,
@@ -7377,6 +7467,16 @@ static struct gdsc *gcc_sc8280xp_gdscs[] = {
 	[USB30_SEC_GDSC] = &usb30_sec_gdsc,
 	[EMAC_0_GDSC] = &emac_0_gdsc,
 	[EMAC_1_GDSC] = &emac_1_gdsc,
+	[USB4_1_GDSC] = &usb4_1_gdsc,
+	[USB4_GDSC] = &usb4_gdsc,
+	[HLOS1_VOTE_MMNOC_MMU_TBU_HF0_GDSC] = &hlos1_vote_mmnoc_mmu_tbu_hf0_gdsc,
+	[HLOS1_VOTE_MMNOC_MMU_TBU_HF1_GDSC] = &hlos1_vote_mmnoc_mmu_tbu_hf1_gdsc,
+	[HLOS1_VOTE_MMNOC_MMU_TBU_SF0_GDSC] = &hlos1_vote_mmnoc_mmu_tbu_sf0_gdsc,
+	[HLOS1_VOTE_MMNOC_MMU_TBU_SF1_GDSC] = &hlos1_vote_mmnoc_mmu_tbu_sf1_gdsc,
+	[HLOS1_VOTE_TURING_MMU_TBU0_GDSC] = &hlos1_vote_turing_mmu_tbu0_gdsc,
+	[HLOS1_VOTE_TURING_MMU_TBU1_GDSC] = &hlos1_vote_turing_mmu_tbu1_gdsc,
+	[HLOS1_VOTE_TURING_MMU_TBU2_GDSC] = &hlos1_vote_turing_mmu_tbu2_gdsc,
+	[HLOS1_VOTE_TURING_MMU_TBU3_GDSC] = &hlos1_vote_turing_mmu_tbu3_gdsc,
 };
 
 static const struct clk_rcg_dfs_data gcc_dfs_clocks[] = {

-- 
2.41.0

