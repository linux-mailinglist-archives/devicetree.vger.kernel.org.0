Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D53770B00E
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 21:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230381AbjEUTyg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 15:54:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbjEUTye (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 15:54:34 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46410EC
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:54:26 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96fe2a1db26so48718966b.0
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698865; x=1687290865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWtQzjHUlWVKjR6hyfJMpC5Arsr78CLVvJSVCwCWijI=;
        b=KdVGtmX59J0yRYnVGWWRWrHitfA45BP+6hb40QncKXCPpUFrdg34vOGozv5Nq814Vh
         hV++M1eXES3j1k8FP3C2DqeA0AVAwgmYIgkzGn/gLZVoDPif3TvbC9YRLeTSGSm5PHPc
         o/V7irtE9VOrEfD4dqjMykTL2ZfndbDN739I8zZxxbWVqQv40PzcJn2ubtuplRquOXcO
         T6kceeVwGKOsKSjWEWGy1fRzNfHZ+U4SlQsLZfUwKunO9WOjMUxAKVPMoPKeyLXPyZSI
         xVfqrx4Ipm+j4Bezld5giUUqHOKCISU4IEuVeet2/0sxO79U/R+SJv4PfMfAnpzWnpfQ
         AqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698865; x=1687290865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWtQzjHUlWVKjR6hyfJMpC5Arsr78CLVvJSVCwCWijI=;
        b=jrriwjCHb3J6sTGGRoIY/bYEanOTOko2q8x3HdRez8GPjJK8p46rc9pR19bxhlSbSe
         qykNnhk73+vTPt6LmlLZsarQ0um4tz84fuViWV0jRMeag3j7/sfeOgEi2MRoOBuoa6eW
         adQ5DCn9KLbT7PhYrKDLXFgZ6BXlgSBnZj5N3sN7eh2SqJ+vUvOyN21G6wzlUWOEe2af
         DngutkyPUCg41LMEg+cT6YRBfju000cBLOly6ecTdnWsSWs6Lpg6zff0Y7rOzVWC34ah
         O5lnq3HR9F5Ty9r9s5L9SPFuU0Jl6FjyvXk/EzftSZy33zP697qUYrJBYOWoC90euIlF
         oRbw==
X-Gm-Message-State: AC+VfDw4vCAuVmPT1xCpXX9xiBqC/cCW1CnoTSfdNBBS7JRBzk752gIh
        uY/OwsJfSlIDycnjW6DDtBA7dg==
X-Google-Smtp-Source: ACHHUZ4SZg3zJIzkJr6LbMqS6OBNbDAxk1IK3XhQ2N/CR8l6aM2Z4fSrt47vBrbxfi1NPosLZOIxcA==
X-Received: by 2002:a17:907:8a26:b0:96f:a0ee:113c with SMTP id sc38-20020a1709078a2600b0096fa0ee113cmr5709996ejc.19.1684698864812;
        Sun, 21 May 2023 12:54:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906101000b00965ffb8407asm2187107ejm.87.2023.05.21.12.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:54:24 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
Date:   Sun, 21 May 2023 22:54:18 +0300
Message-Id: <20230521195420.12454-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
References: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first USB PHY on the sm8150 platform is really the USB+DP combo
PHY. Add the DP part of the PHY.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 2273fa571988..1f442e1be63a 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3399,20 +3399,19 @@ usb_2_hsphy: phy@88e3000 {
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
@@ -3430,6 +3429,16 @@ usb_1_ssphy: phy@88e9200 {
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
 			};
+
+			usb_1_dpphy: phy@88ea200 {
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

