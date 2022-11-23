Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0E2E635AB9
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:58:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236266AbiKWK4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:56:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236364AbiKWKzX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:55:23 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08ADC2AD3
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:44:50 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id r8so10310124ljn.8
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DJbYsescDesnIDrlLOgPi9Av/Ac3g0HEYOKjpTBbqyU=;
        b=sIT2OAglWOl0uyGg1ad5APBZx/YJPRG1zIYq8YM1yF20bJX5wF5FCyVb/F0J7N9MRH
         Qkn6W+6TUSzF8vZUx4YqQH9NCOVlHiRArA1ViHwbdHOO9vS8TH4PhPRFgxMHrG/gEBqo
         zQEsTwdRSt1qk/8XWWNi+keyUZ2Q30JIHTg8CCLaV9zxt7Nv+rpqlCN/BXxqrJBO7NW2
         t6XV0lmo0skKZukNdTYuUs7wlmcFngeoWwjEOpxMCqdfSAVyzKdMdbL76fZIxV6uAt63
         p0imPpN01r8I6bxZgKV9ciXcZwTdEearyeB/ntOlslTMlBQBZNcAwKEnC97kxPWWSzVv
         TRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJbYsescDesnIDrlLOgPi9Av/Ac3g0HEYOKjpTBbqyU=;
        b=R/BdqeqhrXvmjGMlWXIFGqiGO8OBDmzsmVVbIYSsQ25yp3FEVRsLu4GS64+6jr5UiG
         2Kvn2IjfIyi1z7G4ml6tTI0JXYwrTDUDmYiKVLsSc9lgb8ceiK+EbmsPqpLIVt0kF6GN
         WuhE8aq2JLlzgHQigZy7e9HXI9oBuy6qWF/fcarz356kKzD0e6S1MfjQZ6K4FRaIuz5P
         YkBHv3eJDrDJza+wBr+dBzftNt7qsfOJs3jwCHbvOHVz/77u9YtnxhgHO58VYHwh5B1b
         WusPQnWLCtxvFv2zKfw8XFxLxDZbFCCIoNMN3xaGW2cPaA1NCeFcUpuqhktvo8HdMJq8
         gfuw==
X-Gm-Message-State: ANoB5pkFL9ybrGuKZxwZn/0PJWXI8s6KGUeXZpFvGYxLykhVX7lZrEv1
        rQz1P902sJYBAb71G9lBHLibPAw2wAxxMw==
X-Google-Smtp-Source: AA0mqf5Uv9bg05fy4lh0j2BT1KaTrOkd4O06GGwwxWKcKV52qLAuNZsIxTln3NUweGZhGkOl36Vvpw==
X-Received: by 2002:a2e:875a:0:b0:26e:1d9:c2a5 with SMTP id q26-20020a2e875a000000b0026e01d9c2a5mr8930832ljj.353.1669200288396;
        Wed, 23 Nov 2022 02:44:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm2869082lfb.164.2022.11.23.02.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:44:47 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johan Hovold <johan@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v9 4/4] arm64: dts: qcom: use UFS symbol clocks provided by PHY
Date:   Wed, 23 Nov 2022 12:44:43 +0200
Message-Id: <20221123104443.3415267-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove manually created symbol clocks and replace them with clocks
provided by PHY.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi |  5 ++++-
 arch/arm64/boot/dts/qcom/sm8350.dtsi  | 25 ++++---------------------
 arch/arm64/boot/dts/qcom/sm8450.dtsi  | 15 +++++++++++++--
 3 files changed, 21 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index c0a2baffa49d..935ba6e6bc15 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -699,7 +699,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&ssusb_phy_0>,
-				 <0>, <0>, <0>;
+				 <&ufsphy_lane 0>,
+				 <&ufsphy_lane 1>,
+				 <&ufsphy_lane 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -2019,6 +2021,7 @@ ufsphy_lane: phy@627400 {
 				reg = <0x627400 0x12c>,
 				      <0x627600 0x200>,
 				      <0x627c00 0x1b4>;
+				#clock-cells = <1>;
 				#phy-cells = <0>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a86d9ea93b9d..553cf451f283 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -37,24 +37,6 @@ sleep_clk: sleep-clk {
 			clock-frequency = <32000>;
 			#clock-cells = <0>;
 		};
-
-		ufs_phy_rx_symbol_0_clk: ufs-phy-rx-symbol-0 {
-			compatible = "fixed-clock";
-			clock-frequency = <1000>;
-			#clock-cells = <0>;
-		};
-
-		ufs_phy_rx_symbol_1_clk: ufs-phy-rx-symbol-1 {
-			compatible = "fixed-clock";
-			clock-frequency = <1000>;
-			#clock-cells = <0>;
-		};
-
-		ufs_phy_tx_symbol_0_clk: ufs-phy-tx-symbol-0 {
-			compatible = "fixed-clock";
-			clock-frequency = <1000>;
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -661,9 +643,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&ufs_phy_rx_symbol_0_clk>,
-				 <&ufs_phy_rx_symbol_1_clk>,
-				 <&ufs_phy_tx_symbol_0_clk>,
+				 <&ufs_mem_phy_lanes 0>,
+				 <&ufs_mem_phy_lanes 1>,
+				 <&ufs_mem_phy_lanes 2>,
 				 <0>,
 				 <0>;
 		};
@@ -2147,6 +2129,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
 				      <0 0x01d87c00 0 0x1dc>,
 				      <0 0x01d87800 0 0x108>,
 				      <0 0x01d87a00 0 0x1e0>;
+				#clock-cells = <1>;
 				#phy-cells = <0>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index efb01fefe9c7..95c01391972a 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -722,11 +722,21 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
 				 <&pcie0_lane>,
-				 <&pcie1_lane>;
+				 <&pcie1_lane>,
+				 <0>,
+				 <&ufs_mem_phy_lanes 0>,
+				 <&ufs_mem_phy_lanes 1>,
+				 <&ufs_mem_phy_lanes 2>,
+				 <0>;
 			clock-names = "bi_tcxo",
 				      "sleep_clk",
 				      "pcie_0_pipe_clk",
-				      "pcie_1_pipe_clk";
+				      "pcie_1_pipe_clk",
+				      "pcie_1_phy_aux_clk",
+				      "ufs_phy_rx_symbol_0_clk",
+				      "ufs_phy_rx_symbol_1_clk",
+				      "ufs_phy_tx_symbol_0_clk",
+				      "usb3_phy_wrapper_gcc_usb30_pipe_clk";
 		};
 
 		gpi_dma2: dma-controller@800000 {
@@ -3166,6 +3176,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
 				      <0 0x01d87c00 0 0x1dc>,
 				      <0 0x01d87800 0 0x108>,
 				      <0 0x01d87a00 0 0x1e0>;
+				#clock-cells = <1>;
 				#phy-cells = <0>;
 			};
 		};
-- 
2.35.1

