Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2C0270B026
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 22:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230445AbjEUUX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 16:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230470AbjEUUX1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 16:23:27 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D7E4DE
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:23:26 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2af2c7f2883so19171141fa.3
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700604; x=1687292604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M00N+3lfhDX9ffeYU+1BBaHluNQGUr4bDH80GUz1c5E=;
        b=KgcclX1wWb/XQkVtjVGFy26iFnes8vn3hhqeSyld7ezuuhA8wEL4KmTfruLoswKWEp
         GdFD0PRIjmYEWjFS8GSs7ZkefVnMvNooHQy5IdMWyj26SZevRyPpinBuqGFGPWNGEnys
         w3P8xDMj8JyK++xWm4AXIjsUPTlzSB5tsp6SeLuUQfboxUUrF1cCJb1HweM8dPfM/TTf
         5FOFPlkfXHo44qBqlNoSUqBVJ+v1Uk5QR+/LMyUDcjtRduWlVTGLCxIEE1CxAHaiQR7w
         KD/xNHJw0Fxuw/XYTrljZ6irPR/nL7QXjHT7RLu/xxuaQVeOMx+x7FeFidZN4fxzaJYt
         u01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700604; x=1687292604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M00N+3lfhDX9ffeYU+1BBaHluNQGUr4bDH80GUz1c5E=;
        b=MgaCXKY2wl052IVx3czxSVvh5C+ihveMEbGuRbjJ2O5XykIjmD4rXnpnobNyGRfXrc
         KIISKg1eXHhS+JlH1MafxBYyyUFjnWsUeLTqCLxDwvDxT3WAR0QhVikXPb1/QSanVD/+
         Q18FYquU6/2FBfvfYmH6di7RJTV4HF6dxl/NedDvTkIZtTqNufywpZlIqVOGPZwK98T2
         /zALN3NTuEbIWzEhOGPT9kbRwkTSYKPb8IcNvRqksIN6W5/0Qf8tSl7WS+56gVdxCtTb
         8MpMRojGHvG22g5Om3YUORdxOSb3bstDvn9RimfsKhvwWMultBc3j0qyBABdSkQYtv8B
         uUdw==
X-Gm-Message-State: AC+VfDy3IoASe/fQGk2visy9ADSxZUFMVbmq3zjauDrZfNdPmsw0YP54
        kJDk1lwmpOGvdjs+mQloL+EapQ==
X-Google-Smtp-Source: ACHHUZ4zu9AK23JEe7D3Qm8xyPk6riWmq/xYskTooNyGA+oh5FenpL0bquxiFMs/zgKkBifQN1ckGQ==
X-Received: by 2002:a2e:9916:0:b0:2a7:77c1:87e2 with SMTP id v22-20020a2e9916000000b002a777c187e2mr2980293lji.34.1684700604669;
        Sun, 21 May 2023 13:23:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:23:24 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 03/10] phy: qcom-qmp-combo: populate offsets for all combo PHYs
Date:   Sun, 21 May 2023 23:23:14 +0300
Message-Id: <20230521202321.19778-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
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

In order to support newer style bindings for combo PHYs, populate
offsets for all Combo QMP PHY configurations.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b04392be2e3f..8dd635d02982 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1422,6 +1422,8 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 };
 
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1465,6 +1467,8 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
 	.tx_tbl			= qmp_v3_usb3_tx_tbl,
@@ -1508,6 +1512,8 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8150_usb3_tx_tbl,
@@ -1640,6 +1646,8 @@ static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v3,
+
 	.serdes_tbl		= sm8150_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
 	.tx_tbl			= sm8250_usb3_tx_tbl,
-- 
2.39.2

