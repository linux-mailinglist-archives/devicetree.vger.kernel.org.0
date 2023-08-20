Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC1B5781E3D
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 16:25:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231179AbjHTOZe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 10:25:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231247AbjHTOZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 10:25:31 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50FEF4208
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:54 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9b5ee9c5aso39893121fa.1
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541252; x=1693146052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTzmy+i5j1WPiK6tLfXa64W5xhtIy/e4EjLahPo6DXU=;
        b=sBaUljN0X/xwDygPsg+nO/6V4c9rxPSX5D/qhqsfD/bYKAksDA3Qmz6+3DEiA8Zpas
         kYf0SovzxwpPG7y03/jKV8a6Z1ETfGf7g1zMNL1u2cJbyh1oubKxd3HNlLhUe/DbcTi3
         Dqrs97r7QxEg/B+8TphnEdc5lZ1mQChaq361wpJWNnoBWfor+Di4szJ6zJ78b7M0U+CH
         rAUYYYFTUTZ+4r5wkgII/kvXn8vavhACnHfa1/9IJuV+SF1VnZV07GzeCJc0Ff6Xu+Wl
         GjVpTQ9e7/mHE4aP2jxJ4VofbE9o19rOh1rwQq6SeMOIccvuIwdPnFxz2zdoImVYFjRk
         QLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541252; x=1693146052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTzmy+i5j1WPiK6tLfXa64W5xhtIy/e4EjLahPo6DXU=;
        b=e0wJxlzF3IyAwbwOAEtATshY4JmvZRG5MSTSAAxOqpO4j/iVmqcdaKvXrXrUKj6fLb
         4z5RnLnOoQqq7DSWVmI1LFNmUc5aGmGdDlx6e1NZ2BA05ezt96XJlFtO4DxLQz8lSGEn
         ya8W7rLROvX7IhlKtfSn+fqrFozyYXC4hY1NJo/jbb9lWlaXMp3kB1gGvwVQOwj9tTWj
         iBP3jP09LrDcdCv1E2ryQ2Fj4bXH5ZYjke1uXqj0eYUnaxiBA64gPJs7omI/O0xJOQw1
         DszwbmnBsoH+1cUH6FZNLx+TafObXNLKVetRYndFjGzaNB8/Rn4FySZ3+7FgW/SeL4UK
         Md1g==
X-Gm-Message-State: AOJu0YxvZs5z72q/JidLYuhUiAUvf5W+OCrsg7kWAVbJ/t1Af30tM2FC
        XxQXYV0d0jKI+ZMYmf/b24VrxQ==
X-Google-Smtp-Source: AGHT+IFERULUQVtB8IKnpBuIWGg2sDN51gu3aFEy2DKA3mxevPHuxbPl0Bp5I84SsZ1djo+7jpFmfQ==
X-Received: by 2002:a2e:9185:0:b0:2bc:bb46:4fc7 with SMTP id f5-20020a2e9185000000b002bcbb464fc7mr652384ljg.24.1692541252729;
        Sun, 20 Aug 2023 07:20:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:52 -0700 (PDT)
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
Subject: [PATCH v3 18/18] ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings
Date:   Sun, 20 Aug 2023 17:20:35 +0300
Message-Id: <20230820142035.89903-19-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 31 ++++++++++----------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index 55ce87b75253..4b0039ccd0da 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
@@ -379,7 +379,7 @@ pcie_rc: pcie@1c00000 {
 
 			power-domains = <&gcc PCIE_GDSC>;
 
-			phys = <&pcie_lane>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -428,7 +428,7 @@ pcie_ep: pcie-ep@1c00000 {
 			resets = <&gcc GCC_PCIE_BCR>;
 			reset-names = "core";
 			power-domains = <&gcc PCIE_GDSC>;
-			phys = <&pcie_lane>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 			max-link-speed = <3>;
 			num-lanes = <2>;
@@ -438,18 +438,25 @@ pcie_ep: pcie-ep@1c00000 {
 
 		pcie_phy: phy@1c07000 {
 			compatible = "qcom,sdx55-qmp-pcie-phy";
-			reg = <0x01c07000 0x1c4>;
+			reg = <0x01c07000 0x2000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
 			clocks = <&gcc GCC_PCIE_AUX_PHY_CLK_SRC>,
 				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
-				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>;
+				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>,
+				 <&gcc GCC_PCIE_PIPE_CLK>;
 			clock-names = "aux",
 				      "cfg_ahb",
 				      "ref",
-				      "refgen";
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_PHY_BCR>;
 			reset-names = "phy";
@@ -458,20 +465,6 @@ pcie_phy: phy@1c07000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie_lane: lanes@1c06000 {
-				reg = <0x01c06000 0x104>, /* tx0 */
-				      <0x01c06200 0x328>, /* rx0 */
-				      <0x01c07200 0x1e8>, /* pcs */
-				      <0x01c06800 0x104>, /* tx1 */
-				      <0x01c06a00 0x328>, /* rx1 */
-				      <0x01c07600 0x800>; /* pcs_misc */
-				clocks = <&gcc GCC_PCIE_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-				clock-output-names = "pcie_pipe_clk";
-			};
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2

