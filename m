Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 906FE4CAFD3
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 21:31:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243598AbiCBUcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 15:32:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243755AbiCBUcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 15:32:03 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BF03D95F1
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 12:31:19 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id m11-20020a17090a7f8b00b001beef6143a8so2857497pjl.4
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 12:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yYf0qM8EzXfF4UkYBAdwkh5DAfiu0yUybShsdnlJ+V0=;
        b=cKob28iv30Jnay0Wi3COI1uGEL8IuQNRnQGvT7iTup0i8jSpGZg7kvwOgraquTsKWo
         5kFwo0Fr9L3UAymaWc3SDBqPZ57D7gI3LmnfdvMDw2ptmPwXLMxTKa2Ot8EGNyfXHhRo
         66OfBMxu5FtfXyONgSXGQ40fPDZYm/Rpx+pBzb2y89Q2+5dl6oPV8o9XDspe3ubI5qaA
         aniz2r2pL/w9b5dhWjt8lWRRIn5fd7MCyNu0l7iCiiuBQ3DswgDEKPyIn6m8VnsYA4M8
         yRLoGZaPdpHH5L5LGa/avwvQHeEJsXjFrfVoIZCysMX4UREq+LqCaLq0jqR0ZCSUlQpV
         dWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yYf0qM8EzXfF4UkYBAdwkh5DAfiu0yUybShsdnlJ+V0=;
        b=aa+PVRCWPZtICQulttQ33l4C928nY4D1h4Z7DBP7W15RdJmnFbHRlea9X7UDjRBCVD
         HOxKyK6BAejWz0dtI2rx/dY25aM9Bw71edmtv740ymWDdvouoh41ecVtZkT8CeLvtxxL
         L7Ci2+wsWLfQNxIYtuyIgKo5scAAbrT36SaVL3RkkAJhIG+BHZBzFPVcdwxpxXou5IB4
         83yUiZ1Je3wjyJbngvSRvcKzedrvSbmMhq0/y8JGV4nyMILo9Q6qvHaS5HmLf8kKZKGn
         FZ1WPvN6XSw628XT4GAIfGwEgpNSgV2CCUL8/NNGny8gmRcCpaImfgCc/f/V7bl34te3
         mMQQ==
X-Gm-Message-State: AOAM532NS1/X8/hSBZ+Dy/tBJ2arLD5IaU5CKHxbYJGVjtETB9hF5W16
        yO8CYjrweOp7eZeSMLcAxUKixRVZGYhoAg==
X-Google-Smtp-Source: ABdhPJyYiiO7G6Nhirx8ru2+4w54+VE3khqyZ9mbx81PF4or8mYxfZwXZbPF0sHtqNcmVipOH0Ze7A==
X-Received: by 2002:a17:902:aa41:b0:151:5b63:dfb3 with SMTP id c1-20020a170902aa4100b001515b63dfb3mr20460521plr.132.1646253078971;
        Wed, 02 Mar 2022 12:31:18 -0800 (PST)
Received: from localhost.localdomain ([182.64.85.91])
        by smtp.gmail.com with ESMTPSA id b1-20020a17090aa58100b001bcb7bad374sm5963410pjq.17.2022.03.02.12.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 12:31:18 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        lorenzo.pieralisi@arm.com, agross@kernel.org,
        bjorn.andersson@linaro.org, svarbanov@mm-sol.com,
        bhelgaas@google.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
        linux-clk@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 4/7] phy: qcom-qmp: Add SM8150 PCIe QMP PHYs
Date:   Thu,  3 Mar 2022 02:00:42 +0530
Message-Id: <20220302203045.184500-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220302203045.184500-1-bhupesh.sharma@linaro.org>
References: <20220302203045.184500-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SM8150 has multiple (different) PHY versions:
QMP GEN3x1 PHY - 1 lane
QMP GEN3x2 PHY - 2 lanes

Add support for these with relevant init sequence.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 90 +++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 8ea87c69f463..0805c1bab690 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3294,6 +3294,11 @@ static const char * const sdm845_pciephy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "refgen",
 };
 
+/* the pcie phy on sm8150 doesn't have a ref clock */
+static const char * const sm8150_pciephy_clk_l[] = {
+	"aux", "cfg_ahb", "refgen",
+};
+
 static const char * const qmp_v4_phy_clk_l[] = {
 	"aux", "ref_clk_src", "ref", "com_aux",
 };
@@ -3583,6 +3588,85 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_cfg sm8150_qmp_gen3x1_pciephy_cfg = {
+	.type = PHY_TYPE_PCIE,
+	.nlanes = 1,
+
+	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
+	.serdes_tbl_sec		= sm8250_qmp_gen3x1_pcie_serdes_tbl,
+	.serdes_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_serdes_tbl),
+	.tx_tbl			= sm8250_qmp_pcie_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
+	.rx_tbl			= sm8250_qmp_pcie_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
+	.rx_tbl_sec		= sm8250_qmp_gen3x1_pcie_rx_tbl,
+	.rx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_rx_tbl),
+	.pcs_tbl		= sm8250_qmp_pcie_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
+	.pcs_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_tbl,
+	.pcs_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_tbl),
+	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
+	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
+	.pcs_misc_tbl_sec		= sm8250_qmp_gen3x1_pcie_pcs_misc_tbl,
+	.pcs_misc_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x1_pcie_pcs_misc_tbl),
+	.clk_list		= sm8150_pciephy_clk_l,
+	.num_clks		= ARRAY_SIZE(sm8150_pciephy_clk_l),
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm8250_pcie_regs_layout,
+
+	.start_ctrl		= PCS_START | SERDES_START,
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= 995,		/* us */
+	.pwrdn_delay_max	= 1005,		/* us */
+};
+
+static const struct qmp_phy_cfg sm8150_qmp_gen3x2_pciephy_cfg = {
+	.type = PHY_TYPE_PCIE,
+	.nlanes = 2,
+
+	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
+	.tx_tbl			= sm8250_qmp_pcie_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_tx_tbl),
+	.tx_tbl_sec		= sm8250_qmp_gen3x2_pcie_tx_tbl,
+	.tx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_tx_tbl),
+	.rx_tbl			= sm8250_qmp_pcie_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_rx_tbl),
+	.rx_tbl_sec		= sm8250_qmp_gen3x2_pcie_rx_tbl,
+	.rx_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_rx_tbl),
+	.pcs_tbl		= sm8250_qmp_pcie_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_pcs_tbl),
+	.pcs_tbl_sec		= sm8250_qmp_gen3x2_pcie_pcs_tbl,
+	.pcs_tbl_num_sec		= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_tbl),
+	.pcs_misc_tbl		= sm8250_qmp_pcie_pcs_misc_tbl,
+	.pcs_misc_tbl_num	= ARRAY_SIZE(sm8250_qmp_pcie_pcs_misc_tbl),
+	.pcs_misc_tbl_sec		= sm8250_qmp_gen3x2_pcie_pcs_misc_tbl,
+	.pcs_misc_tbl_num_sec	= ARRAY_SIZE(sm8250_qmp_gen3x2_pcie_pcs_misc_tbl),
+	.clk_list		= sm8150_pciephy_clk_l,
+	.num_clks		= ARRAY_SIZE(sm8150_pciephy_clk_l),
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm8250_pcie_regs_layout,
+
+	.start_ctrl		= PCS_START | SERDES_START,
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+
+	.is_dual_lane_phy	= true,
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= 995,		/* us */
+	.pwrdn_delay_max	= 1005,		/* us */
+};
+
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.type = PHY_TYPE_PCIE,
 	.nlanes = 1,
@@ -6004,6 +6088,12 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm6115-qmp-ufs-phy",
 		.data = &sm6115_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8150-qmp-gen3x1-pcie-phy",
+		.data = &sm8150_qmp_gen3x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8150-qmp-gen3x2-pcie-phy",
+		.data = &sm8150_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
-- 
2.35.1

