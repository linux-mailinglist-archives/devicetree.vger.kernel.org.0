Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1387C6C87CF
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 22:56:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232282AbjCXVz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 17:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232268AbjCXVz6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 17:55:58 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4533A1E9C2
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 14:55:56 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id br6so3923184lfb.11
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 14:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gDuXl+rlvE0S+MQ2OTZzIJEdMNUWgkN8TMRASNkhtuY=;
        b=tionj0+vjUoh6Y9xW8aTtCN3pUnVzHGQLtOnnAEaOzOGaWZWyJT8/6lgQuujzj/8Z3
         aPa7gOJlFzA3JCA5pX4caKefnjapXuzAiNp5o7+mCPl4Zssi3iGepCsBNMIuowWNEc+k
         Zr6zUSxEsvJfaz0NmFw+kkORgfcwZG3YGTIlr5M5MgATjCB52UaNzRyIh4p4AuQ1LadV
         B3ywXvhNsVpX+Flaj5oU0sc9SewHkG8gALbUMUmL48hj4JK70307RoQ2KWRnfLGeRZdr
         LWb6FqzFktUr45pYZ8hf2L9il1h8ni/OGEUexRheUCzl/4WKEG0tHvjwYo3BaUodxM+O
         NEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDuXl+rlvE0S+MQ2OTZzIJEdMNUWgkN8TMRASNkhtuY=;
        b=S19DHjQRby+Ah3vw08K6+2VeIIwquqxhywpTGQA3yFOCQKqAVYMen+YGZgzvgK8z2E
         QdW9kqjenQKaGcU9yYGXeMNclbDuKzjlImwvqU2xyhjPgXK37hRKawwbhe5OK3AYKAit
         hpn29Rcs5/B7/KcUeQmdmIDoRJ2g7BIWUvrRzQWDGe/dbXI2T/SHKSWv4vXL3gG24rE4
         K1E44ojbEGOpLEi7jazD9fj4Gyids+xNJPbVXaOh4dP0cyQzMUTkamdYpxmkf42zkjQL
         xELECLlWdh6vWXuv/jJTwVgrvXk1l4c/HGkih8t7q1GWu1nYAOiTW74ADP8yDUmHNerm
         lM8g==
X-Gm-Message-State: AAQBX9cry2EdC6p4q1TqxP0duZDliMGYBhxDX97HomulmF92/mzuLhIz
        88YszmLMuf3xt6j+yBmQuWJPIg==
X-Google-Smtp-Source: AKy350Y3737OLOidlbPQ2HUCI6UZEQUuCTbMWzspr7u0eqoMYD/wQkrEJ4aRp1VytTUsSZOQ8xh3TA==
X-Received: by 2002:a19:7007:0:b0:4df:51a7:a92 with SMTP id h7-20020a197007000000b004df51a70a92mr1154724lfc.11.1679694954619;
        Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:54 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
Date:   Sat, 25 Mar 2023 00:55:48 +0300
Message-Id: <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
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
index 9491be4a6bf0..a618218f7b68 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3392,20 +3392,19 @@ usb_2_hsphy: phy@88e3000 {
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
@@ -3423,6 +3422,16 @@ usb_1_ssphy: phy@88e9200 {
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
2.30.2

