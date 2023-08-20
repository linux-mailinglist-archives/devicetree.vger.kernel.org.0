Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1973A781E38
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 16:25:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231262AbjHTOZd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 10:25:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbjHTOZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 10:25:31 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14DD63AB0
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:44 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2bba74ddf1bso37139341fa.2
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541242; x=1693146042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aaIxaKzv8aBJ2HcahrdVu+UfIFaOkJ+N97Ee+I5zxE8=;
        b=tZh2fqA4mm0cLU6Pxfsc1b0hXpAGGNE0mU6kjg2DEiY7u2gJmrSDhR+WL1cXFDe06g
         Kys911Rf7Nrpn8egd5nxwJ3GUSJ9RDzF+s7KxcRKUzQfhAKIPfGxqu0aR9h9QFkpJhIZ
         K2a0ydiQKf9ugOae24zWCzUG1jwo3OkEx3HcqBDJR0KpNVHZ2YAxT1qy5BgY/8bBLPW6
         g1uLrZ2q+menAO2BhWkqmLc6Z5P2joHVWTzM5PQQuCrEu6ulu4t6fjVNdZ3DV4i00iqi
         hsM4HkqNp2CPb6Ka7OslVvwcHnK18ftIZ6tGip0yedt0/8BIlYtGVjq+FsueA41TMFka
         4RBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541242; x=1693146042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aaIxaKzv8aBJ2HcahrdVu+UfIFaOkJ+N97Ee+I5zxE8=;
        b=HOS9QkYzYFD0mq54uHexGkJFL+WrU/Y8L47ZCM7qwbfHVGiGfmIZqjA3EsoLEMIrIP
         HlTmR1EV5fA8OtYEJLUF0ojkpYqSMxxNAN3+KeigimlzeHQJWw4IKio3nMJyn1KCJIW9
         F94eIJhwqSagoGtNhHIfCCu84KziWA1gXj5fsiml4gSOcdTF3tnlRqsHHLaMRXyaQkjH
         PLEencCZPd0KtiWbZo2lnxpzl0QX6xwdp1mKvIA6yzhlTPvOwyg3C34uEeztPBEjGULy
         AWtaAxsRyT3OylemjEUkoosU8Vv9BLVNiT9giyg582VeczF5f/nUPXz89niGmdwmkAoj
         upKw==
X-Gm-Message-State: AOJu0YwzAXe4UiIW+cip2GAlpi+TzkYbdbEDqFgpaeIgSeBAvd5MQmnH
        0elRAgFRT3Jiebw4NkxvFEQRTA==
X-Google-Smtp-Source: AGHT+IHWLk1N/14Rj26W0PasRaIhx9Bt3eCkDRGpA3TTvoTLk3YbJxf1eXnzIWHsAtd+nDHkaPdaHw==
X-Received: by 2002:a2e:b16a:0:b0:2b9:daa4:f4b6 with SMTP id a10-20020a2eb16a000000b002b9daa4f4b6mr2841013ljm.45.1692541242489;
        Sun, 20 Aug 2023 07:20:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.41
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
Subject: [PATCH v3 06/18] phy: qcom-qmp-pcie: populate offsets configuration
Date:   Sun, 20 Aug 2023 17:20:23 +0300
Message-Id: <20230820142035.89903-7-dmitry.baryshkov@linaro.org>
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

Populate offsets configuration for the rest of UFS PHYs to make it
possible to switch them to the new (single-node) bindings style.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 74 ++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 84a14bffc891..565764c5ffeb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2294,6 +2294,56 @@ static const char * const sdm845_pciephy_reset_l[] = {
 	"phy",
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
+	.serdes		= 0,
+	.pcs		= 0x1800,
+	.tx		= 0x0800,
+	/* no .rx for QHP */
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v2 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v3 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.pcs_misc	= 0x0600,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x1 = {
+	.serdes		= 0,
+	.pcs		= 0x0800,
+	.pcs_misc	= 0x0c00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
+	.serdes		= 0,
+	.pcs		= 0x0a00,
+	.pcs_misc	= 0x0e00,
+	.tx		= 0x0200,
+	.rx		= 0x0400,
+	.tx2		= 0x0600,
+	.rx2		= 0x0800,
+};
+
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v4_20 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1200,
+	.pcs_misc	= 0x1600,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -2338,6 +2388,8 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_20 = {
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v2,
+
 	.tbls = {
 		.serdes		= ipq8074_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_serdes_tbl),
@@ -2361,6 +2413,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= ipq8074_pcie_gen3_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq8074_pcie_gen3_serdes_tbl),
@@ -2388,6 +2442,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= ipq6018_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(ipq6018_pcie_serdes_tbl),
@@ -2413,6 +2469,8 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v3,
+
 	.tbls = {
 		.serdes		= sdm845_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdm845_qmp_pcie_serdes_tbl),
@@ -2438,6 +2496,8 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_qhp,
+
 	.tbls = {
 		.serdes		= sdm845_qhp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdm845_qhp_pcie_serdes_tbl),
@@ -2459,6 +2519,8 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v4x1,
+
 	.tbls = {
 		.serdes		= sm8250_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -2494,6 +2556,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4x2,
+
 	.tbls = {
 		.serdes		= sm8250_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
@@ -2529,6 +2593,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v3,
+
 	.tbls = {
 		.serdes		= msm8998_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(msm8998_pcie_serdes_tbl),
@@ -2554,6 +2620,8 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4x2,
+
 	.tbls = {
 		.serdes		= sc8180x_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
@@ -2681,6 +2749,8 @@ static const struct qmp_phy_cfg sc8280xp_qmp_gen3x4_pciephy_cfg = {
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v4_20,
+
 	.tbls = {
 		.serdes		= sdx55_qmp_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_serdes_tbl),
@@ -2818,6 +2888,8 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
+	.offsets		= &qmp_pcie_offsets_v5,
+
 	.tbls = {
 		.serdes		= sm8450_qmp_gen3_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_serdes_tbl),
@@ -2851,6 +2923,8 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.lanes			= 2,
 
+	.offsets		= &qmp_pcie_offsets_v5_20,
+
 	.tbls = {
 		.serdes		= sm8450_qmp_gen4x2_pcie_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_serdes_tbl),
-- 
2.39.2

