Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEBBD781E24
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 16:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbjHTOZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 10:25:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230495AbjHTOZV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 10:25:21 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36C3735A5
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:43 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b9db1de50cso38404111fa.3
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541241; x=1693146041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iH/0FFtB9wZ6ktqETIlIvZvxc0OREUtOFqocdPLXPpM=;
        b=O2/3YJ0N9NZKIF+Ge3aSaKjdeTlTpBwMEXBCUC3TKkRoWeL0HGNCUIfLT9GNDz+V3b
         xuufl7qt6lggYp1q/jHk89nAKi7/wgBCWyikoEFQEvZkVFrcfd4GREHxK3HZdtMPMNrQ
         5IlaTZrDLtJ0pS7YBAVe8ed4V0ArzXV4Kt/xvfLzbm8BOLjPO0IfFoQI2OP6moDBc08C
         xrBdvHMsso0goqik50G1ULQjheMfXt/znZWAeAnhEvKj9vEOXmVYvfagWEe/c1SwY3Bq
         rSOhwTjSKSv8MWuERy8wBBgi40Yf4fwLhgy8rdY5BPIVWxLNECHxswYvdKwQysTp3Ito
         c+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541241; x=1693146041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iH/0FFtB9wZ6ktqETIlIvZvxc0OREUtOFqocdPLXPpM=;
        b=XKXua6m+l8uTmkDO7WqeY4zQm95T2fCDSh93CMJpMvs2jwwsgYDLHxV7kQbT405acT
         XYu7xZrrR1ydv8tzDYlQyTD4Flo3OVuBcUkfIbwgJMfG4TeUEjqiWXKpKzhRJvgBUXhI
         SG82Ky4M3A1hy9pl3wmrFj4syzIVvyz3cOfO5u/JXREDQqqUdFVSdnTqMpb5tsfKC6hE
         usLR+l9/54e4HNlo5h9k5GKUhu/yx6v22Ju8LWNbpcEMJWVq64jmeLGx3EXE3tmfuTQB
         9a1owKBELkncBdQzGCb1z0g09c8cRr0+n9NARzH6aEC/7xPjVbkkQoluzd4AY9S51taM
         +VhA==
X-Gm-Message-State: AOJu0YxjAZm/+YByyJemmk5uK799f02JdHBxrFp8DD5vp02hgUiZxrmi
        NTmuJaxupGtkrW7ZJKagL3T3qA==
X-Google-Smtp-Source: AGHT+IGCHL5u6SoUy76FczKvT+fkaXwCFWtNLmV3pQIZgLxxJKdOKDzOU5k4BW8mZhSNek55xpE/Cw==
X-Received: by 2002:a2e:3a06:0:b0:2bb:afad:ffdb with SMTP id h6-20020a2e3a06000000b002bbafadffdbmr3230031lja.28.1692541241594;
        Sun, 20 Aug 2023 07:20:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:41 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 05/18] phy: qcom-qmp-pcie: simplify clock handling
Date:   Sun, 20 Aug 2023 17:20:22 +0300
Message-Id: <20230820142035.89903-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For some of existing PHYs for new binding we are going to change refgen
to more correct "rchng". Rather than introducing additional code
to handle legacy vs current bindings (and clock names), use
devm_clk_bulk_get_optional().

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 78 +++---------------------
 1 file changed, 7 insertions(+), 71 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index cdee109c398d..84a14bffc891 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2194,9 +2194,6 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_init_tbl *serdes_4ln_tbl;
 	int serdes_4ln_num;
 
-	/* clock ids to be requested */
-	const char * const *clk_list;
-	int num_clks;
 	/* resets to be requested */
 	const char * const *reset_list;
 	int num_resets;
@@ -2275,24 +2272,8 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
-static const char * const ipq8074_pciephy_clk_l[] = {
-	"aux", "cfg_ahb",
-};
-
-static const char * const msm8996_phy_clk_l[] = {
-	"aux", "cfg_ahb", "ref",
-};
-
-static const char * const sc8280xp_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "rchng",
-};
-
-static const char * const sdm845_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "refgen",
-};
-
-static const char * const sa8775p_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "rchng", "phy_aux",
+static const char * const qmp_pciephy_clk_l[] = {
+	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
 };
 
 /* list of regulators */
@@ -2367,8 +2348,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 		.pcs		= ipq8074_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(ipq8074_pcie_pcs_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2394,8 +2373,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 		.pcs_misc	= ipq8074_pcie_gen3_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(ipq8074_pcie_gen3_pcs_misc_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2423,8 +2400,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 		.pcs_misc	= ipq6018_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(ipq6018_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= ipq8074_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(ipq8074_pciephy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= NULL,
@@ -2450,8 +2425,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 		.pcs_misc	= sdm845_qmp_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sdm845_qmp_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2473,8 +2446,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 		.pcs		= sdm845_qhp_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(sdm845_qhp_pcie_pcs_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2510,8 +2481,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 		.pcs_misc	= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2547,8 +2516,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 		.pcs_misc	= sm8250_qmp_gen3x2_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2572,8 +2539,6 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 		.pcs		= msm8998_pcie_pcs_tbl,
 		.pcs_num	= ARRAY_SIZE(msm8998_pcie_pcs_tbl),
 	},
-	.clk_list		= msm8996_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list		= ipq8074_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(ipq8074_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2601,8 +2566,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 		.pcs_misc	= sc8180x_qmp_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sc8180x_qmp_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2636,8 +2599,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x1_pciephy_cfg = {
 		.serdes_num	= ARRAY_SIZE(sc8280xp_qmp_gen3x1_pcie_rc_serdes_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2671,8 +2632,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x2_pciephy_cfg = {
 		.serdes_num	= ARRAY_SIZE(sc8280xp_qmp_gen3x2_pcie_rc_serdes_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2709,8 +2668,6 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x4_pciephy_cfg = {
 	.serdes_4ln_tbl		= sc8280xp_qmp_gen3x4_pcie_serdes_4ln_tbl,
 	.serdes_4ln_num		= ARRAY_SIZE(sc8280xp_qmp_gen3x4_pcie_serdes_4ln_tbl),
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2751,8 +2708,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_misc_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2788,8 +2743,6 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x1_pciephy_cfg = {
 		.rx_num		= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_rx_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2825,8 +2778,6 @@ static const struct qmp_phy_cfg sm8350_qmp_gen3x2_pciephy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_pcs_tbl),
 	},
 
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2854,8 +2805,6 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 			.pcs_misc       = sdx65_qmp_pcie_pcs_misc_tbl,
 			.pcs_misc_num   = ARRAY_SIZE(sdx65_qmp_pcie_pcs_misc_tbl),
 		},
-	.clk_list               = sdm845_pciephy_clk_l,
-	.num_clks               = ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list             = sdm845_pciephy_reset_l,
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list              = qmp_phy_vreg_l,
@@ -2889,8 +2838,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_rx_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2931,8 +2878,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
 	},
 
-	.clk_list		= sdm845_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2960,8 +2905,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
 		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
 	},
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2991,8 +2934,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= sm8550_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
-	.clk_list		= sc8280xp_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -3028,8 +2969,6 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
-	.clk_list		= sa8775p_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sa8775p_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -3064,8 +3003,6 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
 	},
 
-	.clk_list		= sa8775p_pciephy_clk_l,
-	.num_clks		= ARRAY_SIZE(sa8775p_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -3188,7 +3125,7 @@ static int qmp_pcie_init(struct phy *phy)
 		goto err_assert_reset;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 	if (ret)
 		goto err_assert_reset;
 
@@ -3209,7 +3146,7 @@ static int qmp_pcie_exit(struct phy *phy)
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(ARRAY_SIZE(qmp_pciephy_clk_l), qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -3392,9 +3329,8 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 
 static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	int num = cfg->num_clks;
+	int num = ARRAY_SIZE(qmp_pciephy_clk_l);
 	int i;
 
 	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
@@ -3402,9 +3338,9 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 		return -ENOMEM;
 
 	for (i = 0; i < num; i++)
-		qmp->clks[i].id = cfg->clk_list[i];
+		qmp->clks[i].id = qmp_pciephy_clk_l[i];
 
-	return devm_clk_bulk_get(dev, num, qmp->clks);
+	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
 static void phy_clk_release_provider(void *res)
-- 
2.39.2

