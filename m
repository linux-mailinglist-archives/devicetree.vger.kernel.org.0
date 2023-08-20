Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40B76781E2F
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 16:25:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231240AbjHTOZb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 10:25:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231201AbjHTOZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 10:25:27 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 763433ABB
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:46 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b9b5ee9c5aso39892111fa.1
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541245; x=1693146045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ieSi5zhiFrbXSTn35lxaJhF29o8BrgwBgh6oZMUD1w=;
        b=yUi0y5WGICukiWwrgN8dYrLwpgZeISKzS6jHeDla7/NmgDhgn8TKFbL5SeRY+Z9pYV
         w3Z9AQpKcvmQcSdRWgyhHYkvvgR8JiQ+P548mLwuA+AJsqe3twAilIzC70vVcGkSXH9U
         0d/J6AIzp0+rZh25ElgOtlY6865uR0OmV7y2msZqQhg2Hh/BOlpuU7jdZ3ZYxSphv/oA
         U+yTiQCIrce0Vn35wgjjyIMgD/1mMu2IKsiMG8KxQMeEtnhb3bcajzGHB6XUTGVgVFbO
         97cTQP5whBnCP59061WxUkqQOM5TXqUXwF8hkHfPe3H6hNKrArrPoZrNG1HRxWn/45FV
         Lt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541245; x=1693146045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ieSi5zhiFrbXSTn35lxaJhF29o8BrgwBgh6oZMUD1w=;
        b=BDlrZRX3LMqhjf4RgwdrfVClRFRLBFTwSCTg6hsHcRqr8tvoDMSrvZsoNDj4DyEVyl
         ut0CsOZ7YOEuz4wg1DK0v78PYvIDme01rxfh+Z/BCFPOLQ0htVhcdP0kOvbz9IPglbGk
         94qFyZ5cCfp9HTR08vLKDrwfmiF32R7v+0C+6A3qVpiAYGYMzbbv5MQQVnMbAyLMcGXy
         546kDjquDew9RGDqfM0XBB/+ymLKB3E3asgtCemDl1sG131gl9cbgUsCyMY/0ZmzcxBv
         l4H9nzQ+uTv2V4cgAAk3lXM6L0J4R1uRXV4JYsrZMC6i33JRSII+u89FF05DxViEzHGd
         /FyA==
X-Gm-Message-State: AOJu0YzuFLK/xlSDZkFFNilrbCutp6nK5378tCftybeWIhp49LxQ5cnz
        4ICKftIHOIYywJLNetHzAo4Ixg==
X-Google-Smtp-Source: AGHT+IEKJvjZgMxWyPoXftbXEzY/1/U7TcY6WacPwz1iTq3jKY0XNssWXxgL0NDby8GebZV0yhZiCw==
X-Received: by 2002:a2e:8045:0:b0:2b9:ac48:d7f5 with SMTP id p5-20020a2e8045000000b002b9ac48d7f5mr3221123ljg.39.1692541244897;
        Sun, 20 Aug 2023 07:20:44 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:44 -0700 (PDT)
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
Subject: [PATCH v3 09/18] arm64: dts: qcom: ipq8074: switch PCIe QMP PHY to new style of bindings
Date:   Sun, 20 Aug 2023 17:20:26 +0300
Message-Id: <20230820142035.89903-10-dmitry.baryshkov@linaro.org>
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 67 +++++++++++----------------
 1 file changed, 28 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 00ed71936b47..3350804a2f62 100644
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
+				 <&gcc GCC_PCIE0_AHB_CLK>,
+				 <&gcc GCC_PCIE0_PIPE_CLK>;
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
-				<&gcc GCC_PCIE0PHY_PHY_BCR>;
+				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
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
+				 <&gcc GCC_PCIE1_AHB_CLK>,
+				 <&gcc GCC_PCIE1_PIPE_CLK>;
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
-				<&gcc GCC_PCIE1PHY_PHY_BCR>;
+				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
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

