Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D6227172FB
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:16:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233986AbjEaBQn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:16:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233990AbjEaBQl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:16:41 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 869B8124
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:38 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f3b314b1d7so5597068e87.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685495796; x=1688087796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q//XAIkKHgx7oIPUKYlaCubFyjV6qA0wwmFjUTyWuMs=;
        b=Uv4alCCm2OZoZ13sZCgAUcICzmUHpZl+sotJ5T7KN4x+upGbPAtk1ZYCrjr04VKgN1
         psCXvx/nnvyKpQO+flxhiS6UCnkfJLoNGUmHnu1dswLRHyO8FdResLK38W+7lHfCVJ87
         6Mhi9eufBrqbxKljSQbWwjMezPT46OGXshEMiKOHSyYYotkdD7rbxtzzP6bcecL55Z88
         2v49OHv0RTwlSPAQc8jJ/zvM0qZKH6xOxIzMLT+kxYGv5BxdY3HXj5CCmR1VL1d2JIg9
         Z7cIzJadnfOF3XVeUN5EmUZxSO2lGjadk8RhE6xNc7BoS6XFFXQESh3eOT+gsdN+x8ga
         GZ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685495796; x=1688087796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q//XAIkKHgx7oIPUKYlaCubFyjV6qA0wwmFjUTyWuMs=;
        b=Ba3+kVkMPnioSRAuP45del1NEmjaXxqgTvX7P5v0J+CU55q/HG7r7x3qMul/awIkAS
         sRUJ5LzyFWNN9FgyGz1tCs1CSML4ffER1i+wmecJRZcYn1ng8r1Kto5dqpkOa+Ocaumv
         6Sm2+v1pEVVk3ki8dFeplGF+gakug89XWdfLjxW49W4QrFeO7XBE6TbMsaWM7mxQ2YjO
         SWH1qlOdow0PIqEG0pM/BVbr29qdXQWQsrPZtAzI7a2BJ1Yg4dlxQIDBcQhAxLaA4n5/
         JZsEaYPix1KcjVoJuUSNQCe2qLr0KmQrWpnfo11UTUJqv0jrzD+OzYhQpPQA7D8l88Hr
         qDww==
X-Gm-Message-State: AC+VfDy5SDsgruL3V2Sn43X/hL5casArr4FA/9ZFLE/Lc0nd++geVvGE
        8/rlc9BB+aWi6/q4jvaCv/mGjg==
X-Google-Smtp-Source: ACHHUZ4E0nP/WyZdkyT1biHnS/h68dnwBgjDI2J0IgLQwP8pmLrlf/SQNwOw+VHYWbV0NXwh3lADnQ==
X-Received: by 2002:ac2:44ac:0:b0:4f2:509b:87ba with SMTP id c12-20020ac244ac000000b004f2509b87bamr1781191lfm.50.1685495796700;
        Tue, 30 May 2023 18:16:36 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm505640lfd.128.2023.05.30.18.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:16:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 09/14] arm64: dts: qcom: sc8180x: rename labels for DSI nodes
Date:   Wed, 31 May 2023 04:16:18 +0300
Message-Id: <20230531011623.3808538-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
References: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
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

Currently in board files MDSS and DSI nodes stay apart, because labels
for DSI nodes do not have the mdss_ prefix. It was found that grouping
all display-related notes is more useful.

To keep all display-related nodes close in the board files, change DSI
node labels from dsi_* to mdss_dsi_*.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index e8613a00fcab..ef970c3479ca 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2732,14 +2732,14 @@ dpu_intf0_out: endpoint {
 					port@1 {
 						reg = <1>;
 						dpu_intf1_out: endpoint {
-							remote-endpoint = <&dsi0_in>;
+							remote-endpoint = <&mdss_dsi0_in>;
 						};
 					};
 
 					port@2 {
 						reg = <2>;
 						dpu_intf2_out: endpoint {
-							remote-endpoint = <&dsi1_in>;
+							remote-endpoint = <&mdss_dsi1_in>;
 						};
 					};
 
@@ -2783,7 +2783,7 @@ opp-460000000 {
 				};
 			};
 
-			dsi0: dsi@ae94000 {
+			mdss_dsi0: dsi@ae94000 {
 				compatible = "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae94000 0 0x400>;
 				reg-names = "dsi_ctrl";
@@ -2807,7 +2807,7 @@ dsi0: dsi@ae94000 {
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC8180X_MMCX>;
 
-				phys = <&dsi0_phy>;
+				phys = <&mdss_dsi0_phy>;
 				phy-names = "dsi";
 
 				status = "disabled";
@@ -2818,14 +2818,14 @@ ports {
 
 					port@0 {
 						reg = <0>;
-						dsi0_in: endpoint {
+						mdss_dsi0_in: endpoint {
 							remote-endpoint = <&dpu_intf1_out>;
 						};
 					};
 
 					port@1 {
 						reg = <1>;
-						dsi0_out: endpoint {
+						mdss_dsi0_out: endpoint {
 						};
 					};
 				};
@@ -2850,7 +2850,7 @@ opp-358000000 {
 				};
 			};
 
-			dsi0_phy: dsi-phy@ae94400 {
+			mdss_dsi0_phy: dsi-phy@ae94400 {
 				compatible = "qcom,dsi-phy-7nm";
 				reg = <0 0x0ae94400 0 0x200>,
 				      <0 0x0ae94600 0 0x280>,
@@ -2869,7 +2869,7 @@ dsi0_phy: dsi-phy@ae94400 {
 				status = "disabled";
 			};
 
-			dsi1: dsi@ae96000 {
+			mdss_dsi1: dsi@ae96000 {
 				compatible = "qcom,mdss-dsi-ctrl";
 				reg = <0 0x0ae96000 0 0x400>;
 				reg-names = "dsi_ctrl";
@@ -2893,7 +2893,7 @@ dsi1: dsi@ae96000 {
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC8180X_MMCX>;
 
-				phys = <&dsi1_phy>;
+				phys = <&mdss_dsi1_phy>;
 				phy-names = "dsi";
 
 				status = "disabled";
@@ -2904,20 +2904,20 @@ ports {
 
 					port@0 {
 						reg = <0>;
-						dsi1_in: endpoint {
+						mdss_dsi1_in: endpoint {
 							remote-endpoint = <&dpu_intf2_out>;
 						};
 					};
 
 					port@1 {
 						reg = <1>;
-						dsi1_out: endpoint {
+						mdss_dsi1_out: endpoint {
 						};
 					};
 				};
 			};
 
-			dsi1_phy: dsi-phy@ae96400 {
+			mdss_dsi1_phy: dsi-phy@ae96400 {
 				compatible = "qcom,dsi-phy-7nm";
 				reg = <0 0x0ae96400 0 0x200>,
 				      <0 0x0ae96600 0 0x280>,
-- 
2.39.2

