Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC0A7693E4
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbjGaK6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230023AbjGaK6g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:58:36 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C531120
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:58:06 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4fe0eb0ca75so6901110e87.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801085; x=1691405885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rZs+XA887yOdDh13HfRbXJE0uKxE8hQJqIpSr9eIzhE=;
        b=KzuDT3MDsa0wwmIvReQlX6+S1coz+Op4WoRwgCFpDlz+gz1GIQdtTsCrY0xc3s+xJ5
         WiKeO1iV1n9PTigB4ihxYEetmG9IZXqURSSD9THC01/IGPc/2YXKV5iQR2+EYRXt3NJj
         GBoV/ZUa6/W5HLLtF/mFuJ6FO9B4gytpDMEdv1SoIcb8TnqxlEWMjWhARXLSKnImJx6B
         5kmve9mGrLZIyf1CJZUqoziDF6zlnAl3EPoEvyTGV9kvJ+5JOZixnY1HPx9PVABG3Toc
         q16gnBnj0g5mEnylTuLJWWoe7SKMMQsGC1/tLrcBCRg3+LQjgITgkz9opT0J080SrdGm
         c/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801085; x=1691405885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rZs+XA887yOdDh13HfRbXJE0uKxE8hQJqIpSr9eIzhE=;
        b=cnaTvmwvwraHkIq5j+HUNV3/9tvjUgoCVXUdRCjkFNcfOJ0CH4afNWLDUS2sdAmZUk
         6dB//QaarmDfI7OZYI9wZ0Xe9mYHadvRAPH8wJ9KTnhvpr6Z2pZGuL+IeqhCjUQMskeV
         V66imoCuazfa2kK1y826ZNqkxvhuI8d5M5SL6NEYiBq4HRl2I7cvrEyvegvpSmWdklSL
         KMIV5eHW0cMYk0LxnRFp9SW6hGO/3l0L/G7bMq9BAq6Hc96+qM0zZUGGrXAfWfjbWNyo
         7K06JU50fU2OHpkW29y+BdvkkQRh1q8Z/96hithsC1YyAmdNQAGatmOKQfvUoGERINIl
         ywHw==
X-Gm-Message-State: ABy/qLaQvGqCbJWjaXDNuoBmyFXA0KJq2F2ywKeHt6bEP8km3kvWVIUr
        SXcZ37ht9l2JEBAyNsrtLoIimw==
X-Google-Smtp-Source: APBJJlFoUMOKFealad9blBZ/xmRzzXlQ7cm3Z1mwwUG4Rg7eudXs9QEewAKx8V/i+NiPP73mRA92eQ==
X-Received: by 2002:a19:e041:0:b0:4f8:69f8:47a0 with SMTP id g1-20020a19e041000000b004f869f847a0mr4822865lfj.29.1690801084910;
        Mon, 31 Jul 2023 03:58:04 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:04 -0700 (PDT)
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
Subject: [PATCH v2 05/13] arm64: dts: qcom: ipq8074: switch PCIe QMP PHY to new style of bindings
Date:   Mon, 31 Jul 2023 13:57:51 +0300
Message-Id: <20230731105759.3997549-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 63 +++++++++++----------------
 1 file changed, 26 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 00ed71936b47..e4447a9d7929 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -211,59 +211,48 @@ qusb_phy_0: phy@79000 {
 
 		pcie_qmp0: phy@84000 {
 			compatible = "qcom,ipq8074-qmp-gen3-pcie-phy";
-			reg = <0x00084000 0x1bc>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00084000 0x1000>;
 
 			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				<&gcc GCC_PCIE0_AHB_CLK>,
+				<&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie20_phy0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
 			resets = <&gcc GCC_PCIE0_PHY_BCR>,
 				<&gcc GCC_PCIE0PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
-
-			pcie_phy0: phy@84200 {
-				reg = <0x84200 0x16c>,
-				      <0x84400 0x200>,
-				      <0x84800 0x1f0>,
-				      <0x84c00 0xf4>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie20_phy0_pipe_clk";
-			};
 		};
 
 		pcie_qmp1: phy@8e000 {
 			compatible = "qcom,ipq8074-qmp-pcie-phy";
-			reg = <0x0008e000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x0008e000 0x1000>;
 
 			clocks = <&gcc GCC_PCIE1_AUX_CLK>,
-				<&gcc GCC_PCIE1_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				<&gcc GCC_PCIE1_AHB_CLK>,
+				<&gcc GCC_PCIE1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "pcie20_phy1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
 			resets = <&gcc GCC_PCIE1_PHY_BCR>,
 				<&gcc GCC_PCIE1PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
 			status = "disabled";
-
-			pcie_phy1: phy@8e200 {
-				reg = <0x8e200 0x130>,
-				      <0x8e400 0x200>,
-				      <0x8e800 0x1f8>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie20_phy1_pipe_clk";
-			};
 		};
 
 		mdio: mdio@90000 {
@@ -807,7 +796,7 @@ pcie1: pci@10000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy1>;
+			phys = <&pcie_qmp1>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x10200000 0x0 0x10000>,   /* I/O */
@@ -869,7 +858,7 @@ pcie0: pci@20000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy0>;
+			phys = <&pcie_qmp0>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x20200000 0x0 0x10000>,   /* I/O */
-- 
2.39.2

