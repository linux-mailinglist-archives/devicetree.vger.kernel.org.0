Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CDE464B52F
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 13:29:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235687AbiLMM3W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 07:29:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235684AbiLMM3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 07:29:16 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87C011DA65
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:29:14 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id c13so2064758pfp.5
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 04:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBSkmVpJGzeMLffZVsv9bl/KRPaDYsuJPbQTBroS9bo=;
        b=WKqFoYHR6WTnwagCnphgHsdNVP4qgFO3MVP7RCn9z0DUw3l4HAjAkPSdGL3zFNerHQ
         G7w/cNxxFKhvkJvLb8DzwLJqLpHUWee/5TFdxwiJysJyXyqHtgCP8fntzkSIOyoQrv55
         ErDKUhfQmGC6jFim6Ym0Jo936eCvhVZU9rdxZD+QiR+E1qefjI2VWaX54Fz//LvfpW/Q
         w4kQV4HqAjVvXc8SFdPECjXbT3dTimo3aD3vk9BYQ0/0GEEl0e/pcs+i1f8Q4oKGoGpR
         dHrhayrpYQZjV9HRAT9vV6TIMPvbTOes7VqC/yehlSsXFwiGlAWnkr18xzEnyu3uuOT1
         1L/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBSkmVpJGzeMLffZVsv9bl/KRPaDYsuJPbQTBroS9bo=;
        b=sPynI3g4zjnEDzWF+MWkQkoNPGU4E1g1iY4INBO1olJxFo4VBEARMxYgSb4EmDMPiY
         Wg7dTqvDfdMoQ2Swu6wnbo23kOLF4XgS994QLsfDcC3bjO94zw8qg/FrR0qrinAVK16I
         iOoUa6QqjDrcUdZOmdBBSC6hzdS7TRg9JzTCeGu4bI1Bh87nhzFw+Sn9w4HP24HhBiDA
         /rB5Xj9Cz0HjMexHGE42hR99ptzFLkjairpT0aU5SFiZkhVg3Yl8rsKVK9LsRfuld69/
         XYPvccOoLkhgm9VdmKbIEzvOAy25vMBD/0AIqhYvF41sXdjQAoGvGOXxOiI+4xQ0aqkQ
         ykww==
X-Gm-Message-State: ANoB5plomCxNsC3JRBt8/PpYslcjYqNrNu6kzdNKpLn3W+YV3Whfhlsu
        pbzhIxJC83Rc/44rwv/pPgKARg==
X-Google-Smtp-Source: AA0mqf4+5V2iaPOzaPkqzVMcV8HxvLdCmtPDjKcNu3IiHF4Uy4rK8m+zt/wwcZ5jp7ZEXhupQIOxGw==
X-Received: by 2002:a05:6a00:182a:b0:577:daa0:eb68 with SMTP id y42-20020a056a00182a00b00577daa0eb68mr23080564pfa.25.1670934553975;
        Tue, 13 Dec 2022 04:29:13 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id y10-20020aa793ca000000b0057555d35f79sm7602468pff.101.2022.12.13.04.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:29:13 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     vkoul@kernel.org, linux-phy@lists.infradead.org
Cc:     shawn.guo@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        konrad.dybcio@somainline.org
Subject: [PATCH 2/3] phy: qcom-qmp-usb: Fix QSERDES_V3_RX_UCDR_PI_CONTROLS init val
Date:   Tue, 13 Dec 2022 17:58:42 +0530
Message-Id: <20221213122843.454845-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
References: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
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

As per the Qualcomm QMP v3 PHY programming guide document,
QSERDES_V3_RX_UCDR_PI_CONTROLS configuration should be set to an
initial configuration value of 0x80.

Fix the same.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 4aa338fc4643c..7a847ffe46daf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1265,7 +1265,7 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_tx_tbl[] = {
 
 static const struct qmp_phy_init_tbl qcm2290_usb3_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
-	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x80),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FO_GAIN, 0x0a),
-- 
2.38.1

