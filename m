Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FDD174EDB2
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:09:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230219AbjGKMJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:09:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231531AbjGKMJn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:09:43 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F3C1987
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:09:24 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4fbf09a9139so169270e87.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=poZQimdmAPFxv3AeyZUlPhyWi24albL3cBVt7DfSBdQ=;
        b=ulWIdEfhvfVQoiTkB70obTEARvvLX8sfte1Lfx9gZHMd2CadS2JZjM7NN+Nf22rW+m
         WhQ2KzBguA52hndRFUuaLTXpJUiziZtSvjf7/rpBSj+Ge8gp77RSkh5WCGkoytcCBri1
         yH3lXzOyT/8IqnIItN+iF4/rctKN+vQkvePwVxHiTMab5dX2YmY9qZLoQLhubr6J2X+r
         CKxN49b88xPTbuEaJPXK3yQM9/br+jl6tNV/yKiViqy/h+ZgaQ+uGx2kafAFCrQKtodo
         cJ35t+amb0fsW3KwhO56HhIS3ArJb7CyIpPUr2U+/FWoLz8AldL8FOr+3Vs+SnATrgz9
         7uKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=poZQimdmAPFxv3AeyZUlPhyWi24albL3cBVt7DfSBdQ=;
        b=ClYMaz9wN3tcfVYHlI97u8kybpvjI9OIiGFdpYNaNDaD9niP2XXgfDWQ7gJ0+3iz6L
         TGzK/GRlRrzUcwOxYXFUvAWS92hlyWLkswAIhxRXRscRCO3XovsNzC26LPdSHeD2pO+e
         ZqDNLOAx5Tz/xSyPSsyBCi5j0eJCwfQxgTnW9Djext4vBrcpIED9kq6dFDnkfgZ/Vtbw
         8GrBEmIVSOeNZFL0qh4dF4U8AvGDMJdBKOsqqqGwZkO2Z21CpOq3iAb9CnwejhX1SQRw
         4/vxWPVjZXjxeBxu59yatp9Xeo0DkwpvDBnacKYGfWfXu5OdY49S+uDCxBGBKje4qWpe
         zPbA==
X-Gm-Message-State: ABy/qLaHj6byvlBJKqrbOJTMsYfvY9NN2xpamqFe3vraQpA1F7SS6gzZ
        TB+jRUo8VKDwnHtatKYlD3om4g==
X-Google-Smtp-Source: APBJJlEKjzVACGcyJt1ahS3fvMqhIoLZlfKb91p86iQA7nI19PMsValI2p5h1rZMLrJv+AWgSnk/zg==
X-Received: by 2002:ac2:5e25:0:b0:4fb:8939:d95c with SMTP id o5-20020ac25e25000000b004fb8939d95cmr11771508lfg.30.1689077362590;
        Tue, 11 Jul 2023 05:09:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:22 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v4 07/10] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of bindings
Date:   Tue, 11 Jul 2023 15:09:13 +0300
Message-Id: <20230711120916.4165894-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 59 +++++++++-------------------
 1 file changed, 19 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 2870fe8fd526..4353f7265877 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/interconnect/qcom,sc7280.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/reset/qcom,sdm845-aoss.h>
 #include <dt-bindings/reset/qcom,sdm845-pdc.h>
@@ -870,7 +871,7 @@ gcc: clock-controller@100000 {
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
 				 <0>, <&pcie1_lane>,
 				 <0>, <0>, <0>,
-				 <&usb_1_ssphy>;
+				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
 				      "pcie_0_pipe_clk", "pcie_1_pipe_clk",
 				      "ufs_phy_rx_symbol_0_clk", "ufs_phy_rx_symbol_1_clk",
@@ -3347,49 +3348,26 @@ usb_2_hsphy: phy@88e4000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
-		usb_1_qmpphy: phy-wrapper@88e9000 {
-			compatible = "qcom,sc7280-qmp-usb3-dp-phy",
-				     "qcom,sm8250-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x200>,
-			      <0 0x088e8000 0 0x40>,
-			      <0 0x088ea000 0 0x200>;
+		usb_1_qmpphy: phy@88e8000 {
+			compatible = "qcom,sc7280-qmp-usb3-dp-phy";
+			reg = <0 0x088e8000 0 0x3000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "com_aux";
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
 
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: usb3-phy@88e9200 {
-				reg = <0 0x088e9200 0 0x200>,
-				      <0 0x088e9400 0 0x200>,
-				      <0 0x088e9c00 0 0x400>,
-				      <0 0x088e9600 0 0x200>,
-				      <0 0x088e9800 0 0x200>,
-				      <0 0x088e9a00 0 0x100>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_phy_pipe_clk_src";
-			};
-
-			dp_phy: dp-phy@88ea200 {
-				reg = <0 0x088ea200 0 0x200>,
-				      <0 0x088ea400 0 0x200>,
-				      <0 0x088eaa00 0 0x200>,
-				      <0 0x088ea600 0 0x200>,
-				      <0 0x088ea800 0 0x200>;
-				#phy-cells = <0>;
-				#clock-cells = <1>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 		};
 
 		usb_2: usb@8cf8800 {
@@ -3703,7 +3681,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0xe0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 				maximum-speed = "super-speed";
 			};
@@ -3808,8 +3786,8 @@ dispcc: clock-controller@af00000 {
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&mdss_dsi_phy 0>,
 				 <&mdss_dsi_phy 1>,
-				 <&dp_phy 0>,
-				 <&dp_phy 1>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 				 <&mdss_edp_phy 0>,
 				 <&mdss_edp_phy 1>;
 			clock-names = "bi_tcxo",
@@ -4145,8 +4123,9 @@ mdss_dp: displayport-controller@ae90000 {
 						"stream_pixel";
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
-				phys = <&dp_phy>;
+				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
 				phy-names = "dp";
 
 				operating-points-v2 = <&dp_opp_table>;
-- 
2.39.2

