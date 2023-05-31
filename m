Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 556647173C5
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 04:34:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233991AbjEaCeX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 22:34:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230465AbjEaCeW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 22:34:22 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4276D11F
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 19:34:21 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4eed764a10cso5661054e87.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 19:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685500459; x=1688092459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U9zLR0yP0kogO77MGa+xMkoNoJiQn2OaX0oS+mqXb24=;
        b=jB0nFWryhuVDAC6Q+Q4btxdFcpTyXL8VZLNlgjNxjWLNBjKR51Gzlr9tyNq4/QN+mX
         rQXblbOlnW9pyrEzmss0XhPwx1oUEc1Vt+RqgOCeM3YoiytuiXd9r7cbX19Z/2t0o85G
         zMCJEuM3ecDEaovV/ZntTZZVGKWndicTbLnKbrkAg+0cMjcLPzl0a0PgtPWClJ+nijQy
         YNGlGhptCOeEhTsqAICG+mabw+zSCUFpMnV5nA6f8WPmOUYDpMRLWt1Ml8iPL1LW7uaN
         AdbBYFEhFNae9WPRXP159qf16uqjMi3jN8k1+BeRlykbddIuYIY4YzOWs3vkOh26dvR/
         zJ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685500459; x=1688092459;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U9zLR0yP0kogO77MGa+xMkoNoJiQn2OaX0oS+mqXb24=;
        b=EPu4KWjVfccgvllce8QBE5ZsyJ28dCKVbyUD3/aRCejv6OUDKbmbYVbBNnrE9OYdni
         9bqlRRGsuV3LKTWSUb8uObIAV/iHSaWuaaZ1M7JUbRAtmKuTO3OxuPCCosgQQGORnZa8
         SiiniYtpgeJ+cyNjaqrheYq/TASDtVdnWlQyfE2MCr/dc5PQ9t9+M9px19sy7aT5exEA
         CCkUwhpLrL1JL7O9HXLH4iGnEE1VqiEaxMehkRubtpVXsHXoqzlNXSIQ4R7NZDH5645p
         1mdJceehHLg29Dfb2uJYMSnvOZLRYK9McuopS0oDfHmUzzojZou0IKCAfWbDc8ytYROO
         F2vw==
X-Gm-Message-State: AC+VfDycFxpXi4iCylYwe+DhJBQwbm6IpZ1DBGcIculEzGVSlovPiyN/
        8aRTQ6HPOQiHJ7j4rOQoOJw6zw==
X-Google-Smtp-Source: ACHHUZ60rItDq5LvcJMChOqD+GSONQMDeEKpsEJY02Y0vS+KdsHwFA7ECIqUJncobVIOSsryTE2GSw==
X-Received: by 2002:ac2:5973:0:b0:4f4:ca61:82ba with SMTP id h19-20020ac25973000000b004f4ca6182bamr1714795lfp.67.1685500459638;
        Tue, 30 May 2023 19:34:19 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm524096lfd.128.2023.05.30.19.34.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 19:34:19 -0700 (PDT)
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
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH v3 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
Date:   Wed, 31 May 2023 05:34:13 +0300
Message-Id: <20230531023415.1209301-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
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

The first USB PHY on the sm8150 platform is really the USB+DP combo
PHY. Add the DP part of the PHY.

Tested-by: Caleb Connolly <caleb.connolly@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 2273fa571988..95789bdbdb02 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3399,25 +3399,24 @@ usb_2_hsphy: phy@88e3000 {
 		};
 
 		usb_1_qmpphy: phy@88e9000 {
-			compatible = "qcom,sm8150-qmp-usb3-phy";
+			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
 			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x10>;
+			      <0 0x088e8000 0 0x38>,
+			      <0 0x088ea000 0 0x40>;
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
 				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
 			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
-
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: phy@88e9200 {
+			usb_1_ssphy: usb3-phy@88e9200 {
 				reg = <0 0x088e9200 0 0x200>,
 				      <0 0x088e9400 0 0x200>,
 				      <0 0x088e9c00 0 0x218>,
@@ -3430,6 +3429,16 @@ usb_1_ssphy: phy@88e9200 {
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
 			};
+
+			usb_1_dpphy: dp-phy@88ea200 {
+				reg = <0 0x088ea200 0 0x200>,
+				      <0 0x088ea400 0 0x200>,
+				      <0 0x088eaa00 0 0x200>,
+				      <0 0x088ea600 0 0x200>,
+				      <0 0x088ea800 0 0x200>;
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.39.2

