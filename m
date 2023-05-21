Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47AAE70B028
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 22:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230466AbjEUUX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 16:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230487AbjEUUX2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 16:23:28 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DF49E9
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:23:27 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f3b5881734so1907757e87.0
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700605; x=1687292605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQ0L2Drqwzx0DozTpn4Pnj3avfqnV9RfvJ4lEc7SCvI=;
        b=aJ9FMgl4d12w7DeeIbmgNA7McuDxO/mZg1TYiSdQRvjl6MIPvjQ6rTyakszRdjQdgu
         8fP3fBpbVP0zD6ALLZHxiU373eFLPVrR4g89+yjqzmZPnuGduWOlnsQSqzBUE8uZjvwo
         ZUYIWBLNB+w5OJbhkHC3x3TWQQOn14a/MbjjOxSQ2h397+ogOKRxovkuSYPslvg4NbGV
         eB1qBix/+q4dmWsO1ZF8eMKWs+lNd9N4iiM8XLxFYY6t61gMxULiMLWDWmkVss9qs+yw
         WISp1PNLzy8QeylVpZPo7RD4O42c5eGDs15pocdT6K0w6AJbJSUZOeiTU/yCv/8br7UB
         an8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700605; x=1687292605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FQ0L2Drqwzx0DozTpn4Pnj3avfqnV9RfvJ4lEc7SCvI=;
        b=crGjQf3q8glsDIobbdMJxicTNIr9NtNxr3KqrqEsEPTp7qB/Ha+GazIxp1PJPsRJDf
         TZyHmDL9MFb0WNp4nYJqUuFo/zFv9NB3SvruoM7fN7QFtTtp6EApTAt0rHAMKwWMhKSn
         Y3YSo7HTDXtnl32AST/cirJzAdfiyzhU3tZaKoKKFhWDrTKoW9XPQ7VpEhr5G8MwhJbG
         qxv1xEQ/16mhZ0DeuQ/rgZKyyHvYO4f+/rjLht+UlYtk0nReQaC9IFKpjIGDHvmHmlpw
         z5qiuRKje2WOtcDOO7C9cNKJtvdWeWS4VMnhLIGZ5+gYH9GNsk3KvqaEJ7NIvNMO4uEP
         t6Pw==
X-Gm-Message-State: AC+VfDy0/E+a+M/O52p9OUNT58MHNLC/jzI0cgbnDi1a8QtGAcgwkv1w
        JGKtvpnzGldGJ4Erjg3F0kAYdA==
X-Google-Smtp-Source: ACHHUZ6XH5LTWS5Ff18xxtxYiAM1ZDFjwO0mEqTYkjkA7CjOSLziXqhMhrwTf7MnL/kd/FI9THyRAw==
X-Received: by 2002:a2e:9215:0:b0:2b0:22d9:155e with SMTP id k21-20020a2e9215000000b002b022d9155emr301165ljg.41.1684700605448;
        Sun, 21 May 2023 13:23:25 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.24
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
Subject: [PATCH v3 04/10] phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
Date:   Sun, 21 May 2023 23:23:15 +0300
Message-Id: <20230521202321.19778-5-dmitry.baryshkov@linaro.org>
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

Add separate device entry for Combo USB+DP QMP PHY on sc7280 platform.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 8dd635d02982..c81b46403622 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3585,6 +3585,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		.data = &sc7180_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sc7280-qmp-usb3-dp-phy",
+		.data = &sm8250_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
 		.data = &sc8180x_usb3dpphy_cfg,
-- 
2.39.2

