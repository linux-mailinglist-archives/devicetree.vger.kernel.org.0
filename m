Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB7E6787A41
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 23:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243670AbjHXVU3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 17:20:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243669AbjHXVUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 17:20:10 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54E741BCA
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:20:08 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4ff09632194so357792e87.2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=SOMpE6NpYB0KiQXynGmpaaNboa1TbzYXsZ67YwO4Jr+BUu3lIGJOQ3GZ35etuTqxMN
         lGEdARCyXyXSmlo7RLZ6IVg0rfaNdrKiX91zA96sW0Dyj9wHgAJLWJ4Y8kdA+PzZJ+wG
         CbwLOZMSoidtv4HSGel2I6rDS+361afeypafYST700ZtdWwnx8p33YXXGK+URX197XJY
         yhfE2KU47Z3+4fyINjaKO3otNVewQnZF+DQ8EkH649pZ8WvPs5N9BjzlTcpV55V4zFhg
         6msz9maP4vBFD4IDByJ1DgdrT4cS3otEwjOLlIzL2b3+bA38qSlF6MW6uFzi9Nm7gBu8
         hDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=gmR1q3SO4oBPaLtFLAYKUDEcxPMge7NUH+mbglyQMNjJCPTOmYBo6Ds/W6Bm/fPQ/e
         gleZns/NrMDJuXAtu/KpDA/KDpe/Mt8ByT7xaomsHdyDBvUS5w1SDunWXp9ElITI7A19
         H3ll2sfyBfOBOevDNbnlkCegzBW2HRLjZqq0B2T6YbGnMHm2I1jxdXOVPPsEIVd/VKkp
         +5zff2cPGLrD5wXvASVHFdY5eaDqoPf42t7nihBQ0PobDmEzKSf+Fa/DEk4mb3sx/qYQ
         IdlmAjKhAKXo5b2Rc4BzFibOyvJE71dSy7IK1uJprwZf8KdYi8gHbkvvK5W2GNkpfEKU
         BYig==
X-Gm-Message-State: AOJu0YzdcMDUS1AyJaIdRcFleal/QN2z7i683qEj4bynDisoPpFXi7k6
        h8Dv8ciRtFj2cXX3ZrlApmBjDA==
X-Google-Smtp-Source: AGHT+IFw8/TyKKff8GA7Oa5lXZRTfWA5WrJqfutL+JLCJGLj4ey5TGqCy0b8VFfWWYyJZFwsdTd4jg==
X-Received: by 2002:a19:6705:0:b0:4ff:8729:555 with SMTP id b5-20020a196705000000b004ff87290555mr10630696lfc.11.1692912006706;
        Thu, 24 Aug 2023 14:20:06 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:06 -0700 (PDT)
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
Subject: [PATCH v3 15/16] ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
Date:   Fri, 25 Aug 2023 00:19:51 +0300
Message-Id: <20230824211952.1397699-16-dmitry.baryshkov@linaro.org>
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
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 41 +++++++++++---------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index 4b0039ccd0da..89d723e4ad61 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
@@ -228,31 +228,26 @@ usb_hsphy: phy@ff4000 {
 
 		usb_qmpphy: phy@ff6000 {
 			compatible = "qcom,sdx55-qmp-usb3-uni-phy";
-			reg = <0x00ff6000 0x1c0>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00ff6000 0x1000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
-
-			resets = <&gcc GCC_USB3PHY_PHY_BCR>,
-				 <&gcc GCC_USB3_PHY_BCR>;
-			reset-names = "phy", "common";
-
-			usb_ssphy: phy@ff6200 {
-				reg = <0x00ff6200 0x170>,
-				      <0x00ff6400 0x200>,
-				      <0x00ff6800 0x800>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_USB3_PHY_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			status = "disabled";
 		};
 
 		mc_virt: interconnect@1100000 {
@@ -603,7 +598,7 @@ usb_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x1a0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2

