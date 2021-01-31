Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69D743099A8
	for <lists+devicetree@lfdr.de>; Sun, 31 Jan 2021 02:32:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232446AbhAaBc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Jan 2021 20:32:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232428AbhAaBc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Jan 2021 20:32:27 -0500
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [IPv6:2001:4b7a:2000:18::171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6926C061573
        for <devicetree@vger.kernel.org>; Sat, 30 Jan 2021 17:31:31 -0800 (PST)
Received: from localhost.localdomain (abaf219.neoplus.adsl.tpnet.pl [83.6.169.219])
        by m-r2.th.seeweb.it (Postfix) with ESMTPA id 79DA83E66E;
        Sun, 31 Jan 2021 02:31:29 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] phy: qualcomm: usb28nm: Add MDM9607 init sequence
Date:   Sun, 31 Jan 2021 02:31:24 +0100
Message-Id: <20210131013124.54484-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is required to bring up the PHY on MDM9607-based boards.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../devicetree/bindings/phy/qcom,usb-hs-28nm.yaml   |  1 +
 drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c         | 13 +++++++++++++
 2 files changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml
index ca6a0836b53c..abcc4373f39e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-28nm.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - qcom,usb-hs-28nm-femtophy
+      - qcom,usb-hs-28nm-mdm9607
 
   reg:
     maxItems: 1
diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c b/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
index a52a9bf13b75..8807e59a1162 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c
@@ -401,13 +401,26 @@ static const struct hsphy_init_seq init_seq_femtophy[] = {
 	HSPHY_INIT_CFG(0x90, 0x60, 0),
 };
 
+static const struct hsphy_init_seq init_seq_mdm9607[] = {
+	HSPHY_INIT_CFG(0x80, 0x44, 0),
+	HSPHY_INIT_CFG(0x81, 0x38, 0),
+	HSPHY_INIT_CFG(0x82, 0x24, 0),
+	HSPHY_INIT_CFG(0x83, 0x13, 0),
+};
+
 static const struct hsphy_data hsphy_data_femtophy = {
 	.init_seq = init_seq_femtophy,
 	.init_seq_num = ARRAY_SIZE(init_seq_femtophy),
 };
 
+static const struct hsphy_data hsphy_data_mdm9607 = {
+	.init_seq = init_seq_mdm9607,
+	.init_seq_num = ARRAY_SIZE(init_seq_mdm9607),
+};
+
 static const struct of_device_id qcom_snps_hsphy_match[] = {
 	{ .compatible = "qcom,usb-hs-28nm-femtophy", .data = &hsphy_data_femtophy, },
+	{ .compatible = "qcom,usb-hs-28nm-mdm9607", .data = &hsphy_data_mdm9607, },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_match);
-- 
2.30.0

