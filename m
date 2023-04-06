Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24B8C6DA1E6
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 21:47:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238096AbjDFTr0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 15:47:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237736AbjDFTrT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 15:47:19 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48A79170A
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 12:47:18 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id t4so35371234wra.7
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 12:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eibFHvIgf05QKZ/3r3/eY9NPHy7GReZl9L/HNNvsxXE=;
        b=tUNDaGqs6SBx+PnwtkYghqfGdurrJZeNxnSHZWepcZsM0dyChH+KDbEMcZUCma+fpn
         kob1eg9eo3aMMscDXxiHB4rqkmSvWdEo2MQH1AeWgPLyehgcvwSQN9qcpGSh2P/68+PT
         2f+C9HgULwKhjlLYMjDARM54+H+d9lmjxWT626ZCnCEvQj3dVBW0AZtu1cBbjiHN5xhX
         NLsFin8HtDuOQ4QWAgiO6ui76iwR/VmmZCCT00wFGGwABYUbjyNrkCVKjk3/Ss37FMAD
         E8JJa3t/9yjCe7VRYv4DUdBnTlx1vQHBu6jkLgNQuRpDR0w4iIDlQMZwSF+uF8NwEWDC
         +MTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eibFHvIgf05QKZ/3r3/eY9NPHy7GReZl9L/HNNvsxXE=;
        b=JLsw6WemA1kFrfdprTeym2vxpWoDgYDF9fyhGnAkkfL8IEa13r3q2cz0x7eFBELndj
         B8L1nmv3m7e2htoECDFdMhpodwYAD6edhWhZAim+0KQ2irvqKfEYUxHj29VaTOvEULMk
         QfBDiwVIeFnOpiQQz6iqyAdrwKM0KbSx4rytOBsGGbXLEkDKv4HV1GXmPhd+QDz8MzKj
         53l5LPVZEKrJx2/S9s5xc2ILBc0EMk1xNlndoL5wbV9FVzvJkLuwIMXCAJAUJNjmZXUv
         CCdLAOdfpCzhdqRXDaULv7i9jaShXcM2s6Gj2OoyF4jUwJcsq9hVytYNo3MCTLugQEsX
         GlbA==
X-Gm-Message-State: AAQBX9dic4ym0S78GF8C3gZ6RM3X6drNGohftGugRuKO6irGR6Wfe9xH
        qT5AXxiK9B1LhJ5juAj1ptpp/w==
X-Google-Smtp-Source: AKy350ZJuXhVqvPZs0WG6qinNmJqseB1dMFo7JPkdm82mqrtcUFu6CQwG7jgoDgVz68fpQTR5W83Ow==
X-Received: by 2002:adf:ed51:0:b0:2ee:c582:a67d with SMTP id u17-20020adfed51000000b002eec582a67dmr2304031wro.31.1680810436791;
        Thu, 06 Apr 2023 12:47:16 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:16 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 3/5] phy: qualcomm: phy-qcom-qmp-ufs: add definitions for sa8775p
Date:   Thu,  6 Apr 2023 21:47:01 +0200
Message-Id: <20230406194703.495836-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406194703.495836-1-brgl@bgdev.pl>
References: <20230406194703.495836-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add QMP PHY config for sa8775p and add support for the new compatible.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 38 +++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d58822049211..5612282eb378 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -853,6 +853,41 @@ static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.no_pcs_sw_reset	= true,
 };
 
+
+static const struct qmp_phy_cfg sa8775p_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets,
+
+	.tbls = {
+		.serdes		= sm8350_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
+		.tx		= sm8350_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+		.rx		= sm8350_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+		.pcs		= sm8350_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
+	},
+	.tbls_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
+	.tbls_hs_g4 = {
+		.tx		= sm8350_ufsphy_g4_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
+		.rx		= sm8350_ufsphy_g4_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
+		.pcs		= sm8350_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
+	},
+	.clk_list		= sm8450_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= ufsphy_v5_regs_layout,
+};
+
 static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 	.lanes			= 2,
 
@@ -1600,6 +1635,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sa8775p-qmp-ufs-phy",
+		.data = &sa8775p_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc8180x-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
-- 
2.37.2

