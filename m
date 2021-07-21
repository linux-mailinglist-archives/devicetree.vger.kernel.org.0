Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A69C33D1A0B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 00:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230365AbhGUWRj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:17:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230364AbhGUWRj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:17:39 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78DB2C061575
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:58:14 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id f93-20020a9d03e60000b02904b1f1d7c5f4so47053otf.9
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7g+i+w4u53CyM8L4HKCjxO+eyCNUNLkuoMzloAm4KQI=;
        b=ZwYiGPaZ6LwP/2mmJmuoYa4dCUWha+220rfFKh5KWHSz1Ybdx1BQUhFS00Ojfwxhgo
         91OS1Umn2EDgDnrhiQtlBzAjK5BN5BX2G1eAoJNM+1T/cvPazG3GtO4UQarZPm4qSwAD
         WFgYCw2Q3FE47Q2C/4CFBV0QyxrPwsFemEbf1erDw/SjclvAxbE+4+1LhNTnYYBslots
         Ez/KTpCcq6kbOO3fIbVHyQNFZi+RTLjTF2sowQATJ2hCWoU6HxuVRJddeWtr2hbHk7iW
         +MVadYSa6EUHZXUixBzUlonRb6iewtaDO1VntbWVjrdS0xtcG895oZMPiUopw+H79Sr8
         KC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7g+i+w4u53CyM8L4HKCjxO+eyCNUNLkuoMzloAm4KQI=;
        b=qw1C7d2dpCg3KdFoaAeMSVS8jgnHS8+5BhWqOlgohkSnEMEYLcyc+BrCgff2gFguET
         6s87ZFcrX7UBNHYF9IUxBzskfZemESmyL8sjdmIT7OTCdOM37hmhKjEsMZ2y7WscWsuK
         Q9J/y8WURy0LuyRbD4amle028eDIGYi36+EsAeY6r0pFM6IzRiBvRyh6UCzagfUTi8r4
         wpSOJ8+z4vvyU4ykd1rXyTWQkhsqtA4LWeXJ9Ny0N0FrRLNB/kLNgQHaKz1ex7MPvFaH
         EeuMKNbeHkDibsZ4+kA0dqp0oWu58mIZzrC9mDJQO8tNux/QeKmoxyBkKHq7q8BJe85y
         CeFw==
X-Gm-Message-State: AOAM533JJMZtai3BuaElZFKuKboPNnQTETd0Z1SrWrGQxSqRXs80NKnd
        Jh80jDNNDm4qhJjAGlJ/BObfeu78kKCHjw==
X-Google-Smtp-Source: ABdhPJwZwrPv5a2WWTgoPZaQ7i9PzKCzyolQ/8+MSNsX66kU4vMdZ3lKibqZ47NLTg5TOydplnIxYg==
X-Received: by 2002:a9d:3a34:: with SMTP id j49mr27870764otc.102.1626908293828;
        Wed, 21 Jul 2021 15:58:13 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id h24sm5035388otl.41.2021.07.21.15.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 15:58:13 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] phy: qcom: qmp: Add SC8180x USB/DP combo
Date:   Wed, 21 Jul 2021 15:56:30 -0700
Message-Id: <20210721225630.3035861-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
References: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The two USB QMPs are USB/DP compbo PHYs, add the compatible for this
combination to allow DP output.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 47 +++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 2195f8ac393b..5e302830d061 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3536,6 +3536,46 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
+	.type			= PHY_TYPE_DP,
+	.nlanes			= 1,
+
+	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
+	.tx_tbl			= qmp_v4_dp_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v4_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v4_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v4_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v4_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v4_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr3),
+
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= sc7180_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+
+	.has_phy_dp_com_ctrl	= true,
+	.is_dual_lane_phy	= true,
+
+	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
+	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
+	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
+	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
+};
+
+static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
+	.usb_cfg		= &sm8150_usb3phy_cfg,
+	.dp_cfg			= &sc8180x_dpphy_cfg,
+};
+
 static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -5377,6 +5417,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc8180x-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
+		/* It's a combo phy */
 	}, {
 		.compatible = "qcom,sdm845-qhp-pcie-phy",
 		.data = &sdm845_qhp_pciephy_cfg,
@@ -5454,6 +5497,10 @@ static const struct of_device_id qcom_qmp_combo_phy_of_match_table[] = {
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		.data = &sm8250_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
+		.data = &sc8180x_usb3dpphy_cfg,
+	},
 	{ }
 };
 
-- 
2.29.2

