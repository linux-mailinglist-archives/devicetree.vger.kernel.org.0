Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56448624567
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 16:18:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231378AbiKJPSD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 10:18:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231391AbiKJPR5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 10:17:57 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8422932070
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:17:53 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id z24so1386823ljn.4
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 07:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LtplPWhl0am0iTs1s0a4EgsN8KYFRyCRiL1FwQXo6jw=;
        b=d3vN8e+52vpBABKHE0DUydfrjrEKxeKzkpdLDosLTA9JQaoFh1H/vXBp9Kyj7CBtxC
         lvaj29kcdEndblItLdZjm94z6ENqHLK6H99b/KYEREz9ifzWV/Tn/KiMeGBBUjW+uUaV
         CfqGVaahouIVFUs+Z/rpkIrB8xFQ687gX1zkOv3zqBYc5Ac4Qv2cCj4XPE0BQOszcHYo
         /pwY8HexiP9hhdb38rr/CmNDRfLiT1u8bKNxMNXVx0h2I0ga+zMFSEaUS0qc8M/VW+EN
         3ty6HVIpTaOhfiLmaysb1bxn7/DAHi5fuuQPw1sIAX2L35ilv696y1CCLzF+jl7dro/1
         xrZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LtplPWhl0am0iTs1s0a4EgsN8KYFRyCRiL1FwQXo6jw=;
        b=RqjGWG0NleKIksFVLsFC40M85fXWtkln2zCO80ArdfB3B2TzSgy/CuivQhz4HrYOOS
         EoXApYLgYFmLBQ2SfFFmbDL5QuLNRrvQ/PJwk/nt6FGl6DK1x1f4ANtcOCy5SqQf5mHn
         c9RaF2OIbYzYX6v6wsI+XrRRUuI6ekMWCStP/PMgqv4adU7ErP5uslBjdS15GlyDkdsM
         7z02r8PI53vvp6Zh5dpSGpQUUzoo2LFpBbOdJJM5teKiW+dy1KEiAdTepbbUoeQKmRtL
         u1thqTZ6wElmQnewGcVrFLtxtyTu1j6tVEH3M5xCSfEzXXwd+uGR/bMtOBDb1fREYTMX
         OHfw==
X-Gm-Message-State: ACrzQf0OygIcYgQF7ESoB5hFXohe0SFh63XjX4IoBlBQyFextvTOPCdS
        M4V7leKA+5YQdrejVN4qvK4eUQ==
X-Google-Smtp-Source: AMsMyM7pgu5y4nnkz0dgtPIpEynTqwXqjBIx84tCp8pJgQfBPZvnA2gVPYySltm/4XvH04tL/yNvjA==
X-Received: by 2002:a05:651c:160d:b0:26e:90a5:1521 with SMTP id f13-20020a05651c160d00b0026e90a51521mr9259566ljq.39.1668093471866;
        Thu, 10 Nov 2022 07:17:51 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm2719591ljo.25.2022.11.10.07.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:17:51 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v7 4/4] arm64: dts: qcom: use UFS symbol clocks provided by PHY
Date:   Thu, 10 Nov 2022 18:17:48 +0300
Message-Id: <20221110151748.795767-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
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

Remove manually created symbol clocks and replace them with clocks
provided by PHY.

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
index 90a26f406bf3..51ca006dc5c1 100644
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
@@ -2389,6 +2371,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
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

