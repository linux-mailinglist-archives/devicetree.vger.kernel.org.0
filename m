Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D81C787A3D
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 23:21:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243664AbjHXVU3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 17:20:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243667AbjHXVUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 17:20:09 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE27CF1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:20:07 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5007f3d3235so360488e87.2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhz5s4p9df6iSnMVEljVBPUMS53rGAftjG7CgRxMulA=;
        b=jWjowwySdC2IJGQIWxGm6vENMRjYJTkw1xEpZoUYyhy0Jl1mHF0fKhaPXD10vSb1lr
         QoNUPBLD/EkJUiJzApKilVv5b0lUMGvdesoI5sYJPcmxSUYJNABW89DceO9KbPhg2sBj
         2Q7INTAqhRaETePwC88IQcbyzCvm6PJJ0FzqQRWcsuTZkT2TsM5o5o8L3FJJrDT3ZV9u
         SqOiAuszyl5HSMllqfuD5K/NxLPBaSkko8UefKZ6012CS6NWL3Mnf4QOHm3nuHrkRrHm
         kUcc9oqF3xdVas2pZ1z65IwCOtOpefMZwEx5AZH3HZZWsDsx5HBdSTNn1I6X8fsSdg7n
         UaqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhz5s4p9df6iSnMVEljVBPUMS53rGAftjG7CgRxMulA=;
        b=YT8oaOLuMsKKT1xsaynd6J7zubuJmQXkRLJ+WafDTOGILcfcggQWPXR+BFDp5wYV8x
         Pheq9Ibp75KXQCHEO0hluLPnli39P/wOI6ducNBq8uSzel941BnW9BThz+EabEN6GCNC
         M25le6vYe7LWdVTtN6SD3HBT6zk4Gg94cVwuQlF2tZP4SGbfBSAMC4Izg6DWaxz6SiYu
         bL7qgLySWDyGm/n5F7zF4WMFCiV+EDs36iAbL8fgrtTsTAP1FMkJU1cG4AtrVpBcAxUd
         3y/qtGt/OtrS/GtjzHDd2uhyNEZ+Cgq9y7t5FpAut0kRK87B6q9AReO/hJt+uJ7NIU45
         V4dQ==
X-Gm-Message-State: AOJu0YxRMAe+l8d8rNZ7L0lKroECgZgSp0v1x9ju2gGnQAjxvp1dkAjW
        2j3TwmRJ5ZU483ZjULsW5WcUyg==
X-Google-Smtp-Source: AGHT+IEg4KeUAvq05EQSKwbdBe9ho+XeYMG+Wt0V5yPIqSqmNEAGnxqwiDkZ/p9IOvAK8cqflhzm3w==
X-Received: by 2002:ac2:4ec3:0:b0:500:8fb1:7a47 with SMTP id p3-20020ac24ec3000000b005008fb17a47mr5341580lfr.30.1692912006023;
        Thu, 24 Aug 2023 14:20:06 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:05 -0700 (PDT)
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
Subject: [PATCH v3 14/16] arm64: dts: qcom: sm8350: switch USB QMP PHY to new style of bindings
Date:   Fri, 25 Aug 2023 00:19:50 +0300
Message-Id: <20230824211952.1397699-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
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

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 39 ++++++++++++----------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a26dff42329c..8faf9c2e7d09 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2229,34 +2229,27 @@ usb_1_qmpphy_dp_in: endpoint {
 			};
 		};
 
-		usb_2_qmpphy: phy-wrapper@88eb000 {
+		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8350-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
+			reg = <0 0x088eb000 0 0x2000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
-
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			usb_2_ssphy: phy@88ebe00 {
-				reg = <0 0x088ebe00 0 0x200>,
-				      <0 0x088ec000 0 0x200>,
-				      <0 0x088eb200 0 0x1100>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 		};
 
 		dc_noc: interconnect@90c0000 {
@@ -2409,7 +2402,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2

