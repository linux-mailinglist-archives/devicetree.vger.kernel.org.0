Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 349CE781E32
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 16:25:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231250AbjHTOZb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 10:25:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231192AbjHTOZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 10:25:29 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A82623C34
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:49 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bb97f2c99cso40058571fa.0
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541248; x=1693146048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yXw06Qz5n7ECNNe0fyxRXPwDj0KzxJOuORlpmMPokDE=;
        b=UNLqioadWBcZiXNLdbS2iTEoxccFqwtVYYiaIo9LiAfCAPityMYQAodtsc5UnT3qHk
         GDTeUdUDwUi84LfqV74gbhy31+Lu/94EGCDFiaisvn20W6BNDO09MQzG1nfl33MlCD/c
         P8571zqAedqPqGH7JSTlAFrfvIgWUy02rBfDdP544Ga21hB5yvjiJM08C83ndcc8IGuR
         74mKISjMk1u8nGkUxH6XE5ZnkrkTTwNyTIGmJBV4vg5Ur+J4r2/W+32HGEPWoFA/YqXO
         XywHnuoxObxSMBXSuyr3fTsKuDwdV7mnM9ILvHMclxychrfviY/7bK9ievAGVsCvPBhZ
         ZrMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541248; x=1693146048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yXw06Qz5n7ECNNe0fyxRXPwDj0KzxJOuORlpmMPokDE=;
        b=hsQXf1jioZLJmM1DIlWN4gOFnshogLygQL34gzFkGnzD/KyeOhAaoLz/a7SDzBxlXo
         wFn38i4qvb9tjUA5GDJCV1NvTaAQpdKnenL2xSC/f8VsOESwcAOKybwrygpK4IlnK3RP
         6Z763Ci2Iy5ftJ5okmCNVSgoVo8/7SQkznTM7aAChIVaio9DXphLIXu45inNMBiQ0u6/
         wpPBIrFffZP5Mz9GpR9XEzng4yR8GkAUumjZK5pvCKDV7jZOKIPx0087HpF4yXsb2mJW
         xHRLvlIw7DQBs6aNwTO0zRXTpCljRtbkar1jvbELG/UGksFNKrbDWoUrLvsUaRh4Xhat
         N3+w==
X-Gm-Message-State: AOJu0YxsSt78OxptzlVi+QEWbj60uS4zCvx2JId3kgHdM4p9+uXhvFa0
        7DMobYjAamSnyxXxZiLJ4wsKGA==
X-Google-Smtp-Source: AGHT+IFSWVSWb90t6Ku2LDxSwWOA6EWsbNxZC9w48cCDjZtlxeSCusml5p7gSvDy5qJDtV77Hm9UhQ==
X-Received: by 2002:a2e:a41c:0:b0:2bb:9847:d96e with SMTP id p28-20020a2ea41c000000b002bb9847d96emr3311138ljn.9.1692541248077;
        Sun, 20 Aug 2023 07:20:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:47 -0700 (PDT)
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
Subject: [PATCH v3 13/18] arm64: dts: qcom: sdm845: switch PCIe QMP PHY to new style of bindings
Date:   Sun, 20 Aug 2023 17:20:30 +0300
Message-Id: <20230820142035.89903-14-dmitry.baryshkov@linaro.org>
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

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 71 ++++++++++++----------------
 1 file changed, 30 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 3d4050548f3a..ef7b6994fdab 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -1198,8 +1198,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>,
 				 <&sleep_clk>,
-				 <&pcie0_lane>,
-				 <&pcie1_lane>;
+				 <&pcie0_phy>,
+				 <&pcie1_phy>;
 			clock-names = "bi_tcxo",
 				      "bi_tcxo_ao",
 				      "sleep_clk",
@@ -2371,7 +2371,7 @@ pcie0: pci@1c00000 {
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -2379,15 +2379,22 @@ pcie0: pci@1c00000 {
 
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sdm845-qmp-pcie-phy";
-			reg = <0 0x01c06000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c06000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
-				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";
@@ -2396,19 +2403,6 @@ pcie0_phy: phy@1c06000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie0_lane: phy@1c06200 {
-				reg = <0 0x01c06200 0 0x128>,
-				      <0 0x01c06400 0 0x1fc>,
-				      <0 0x01c06800 0 0x218>,
-				      <0 0x01c06600 0 0x70>;
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clock-output-names = "pcie_0_pipe_clk";
-			};
 		};
 
 		pcie1: pci@1c08000 {
@@ -2481,7 +2475,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -2489,15 +2483,22 @@ pcie1: pci@1c08000 {
 
 		pcie1_phy: phy@1c0a000 {
 			compatible = "qcom,sdm845-qhp-pcie-phy";
-			reg = <0 0x01c0a000 0 0x800>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0a000 0 0x2000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_1_CLKREF_CLK>,
-				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
@@ -2506,18 +2507,6 @@ pcie1_phy: phy@1c0a000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c06200 {
-				reg = <0 0x01c0a800 0 0x800>,
-				      <0 0x01c0a800 0 0x800>,
-				      <0 0x01c0b800 0 0x400>;
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		mem_noc: interconnect@1380000 {
-- 
2.39.2

