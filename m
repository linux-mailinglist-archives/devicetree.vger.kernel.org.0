Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FB917172F3
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:16:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233995AbjEaBQi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:16:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233993AbjEaBQf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:16:35 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B041311B
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:33 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f3a9ad31dbso6139298e87.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685495792; x=1688087792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WPCsCfWKUVFcvyBm93HoXTetY86LuIap7IJR1fc0iKQ=;
        b=BKobfo/vgB9QCMngNuzituLqtgu5/Q310LJ/vDCtopep+nWoA87khRrJNKkQbxolIi
         l7k3INgXd+h5tXtOTfyjll+i5ToWSXuXTh7iJvkZK1CPClaPM/R4NVr06MFwJsmiJXXO
         lpM+EO8Qi2tJfB6BHQqz8kzsNYTMtkONCt6e+ONDx3LZezkxMXJB4fas4lCoMJqqw0Mc
         NuaPh0Iy11f6QN3jZMFBNpBJ3oHEEAG45KYdquw9K7X8FD+dicbfswMIDgbIGWBl6dZ0
         FTq7oM7kDCtIqycPF8Jrj1YfuA14z9uPIBciDGLzvylTSu42fEfCsPmEo7mad9vCI8PP
         cWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685495792; x=1688087792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPCsCfWKUVFcvyBm93HoXTetY86LuIap7IJR1fc0iKQ=;
        b=KoRPEnKJrlECdXxGRZBaJLFrqk24lE+qLqRzPodYk0fmiRKTNXbwnUopBryjgqV7BG
         hJNGZ1nArC1AByfbJZpNJwH1EGG4mRWJnajr7HsqCnc4MClZ7yUITCR2/KQyyGzPtCU+
         6wqiMWUtnrq/++oDjtCMpcgjD0KLKiPJb0+6f9/JpSvZWFs3JlZX0WH9EUCdkpexwsaL
         RhImyyMYLnS9OlW8Xic3XB5CljDk6su5GFdjasuNDwzD913J7kCGmUbfLhdN8Fg69Ln5
         eLygNSspS84bpD/ldCSV+xEKqI9b9+sLALTU+Z4oBRJ/XK002IHAIjgTyEx0epVMvCHh
         YWrg==
X-Gm-Message-State: AC+VfDzqf7gxziJKrSav0RkmVxHumJOoMRKKls7SWwPyT36jLCdEE39z
        Hbvb/RSgTYn8wsddfxgHdPzlqQ==
X-Google-Smtp-Source: ACHHUZ4zt5GVRYamE6ptxmccMZlvxuP0SL8SlpZpe9SUj4psm+J5bnAk43g+r1OW6wflLZMrK6UWgw==
X-Received: by 2002:a05:6512:64:b0:4f4:cb4c:36e5 with SMTP id i4-20020a056512006400b004f4cb4c36e5mr1635786lfo.29.1685495792124;
        Tue, 30 May 2023 18:16:32 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm505640lfd.128.2023.05.30.18.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:16:31 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 05/14] arm64: dts: qcom: msm8953: rename labels for DSI nodes
Date:   Wed, 31 May 2023 04:16:14 +0300
Message-Id: <20230531011623.3808538-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
References: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
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
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 40 +++++++++++++--------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index 7d193a467819..b711cf9a6dc0 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -766,10 +766,10 @@ gcc: clock-controller@1800000 {
 			#power-domain-cells = <1>;
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&sleep_clk>,
-				 <&dsi0_phy 1>,
-				 <&dsi0_phy 0>,
-				 <&dsi1_phy 1>,
-				 <&dsi1_phy 0>;
+				 <&mdss_dsi0_phy 1>,
+				 <&mdss_dsi0_phy 0>,
+				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi1_phy 0>;
 			clock-names = "xo",
 				      "sleep",
 				      "dsi0pll",
@@ -851,20 +851,20 @@ ports {
 					port@0 {
 						reg = <0>;
 						mdp5_intf1_out: endpoint {
-							remote-endpoint = <&dsi0_in>;
+							remote-endpoint = <&mdss_dsi0_in>;
 						};
 					};
 
 					port@1 {
 						reg = <1>;
 						mdp5_intf2_out: endpoint {
-							remote-endpoint = <&dsi1_in>;
+							remote-endpoint = <&mdss_dsi1_in>;
 						};
 					};
 				};
 			};
 
-			dsi0: dsi@1a94000 {
+			mdss_dsi0: dsi@1a94000 {
 				compatible = "qcom,msm8953-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0x01a94000 0x400>;
 				reg-names = "dsi_ctrl";
@@ -874,8 +874,8 @@ dsi0: dsi@1a94000 {
 
 				assigned-clocks = <&gcc BYTE0_CLK_SRC>,
 						  <&gcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&dsi0_phy 0>,
-							 <&dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy 0>,
+							 <&mdss_dsi0_phy 1>;
 
 				clocks = <&gcc GCC_MDSS_MDP_CLK>,
 					 <&gcc GCC_MDSS_AHB_CLK>,
@@ -890,7 +890,7 @@ dsi0: dsi@1a94000 {
 					      "pixel",
 					      "core";
 
-				phys = <&dsi0_phy>;
+				phys = <&mdss_dsi0_phy>;
 
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -903,20 +903,20 @@ ports {
 
 					port@0 {
 						reg = <0>;
-						dsi0_in: endpoint {
+						mdss_dsi0_in: endpoint {
 							remote-endpoint = <&mdp5_intf1_out>;
 						};
 					};
 
 					port@1 {
 						reg = <1>;
-						dsi0_out: endpoint {
+						mdss_dsi0_out: endpoint {
 						};
 					};
 				};
 			};
 
-			dsi0_phy: phy@1a94400 {
+			mdss_dsi0_phy: phy@1a94400 {
 				compatible = "qcom,dsi-phy-14nm-8953";
 				reg = <0x01a94400 0x100>,
 				      <0x01a94500 0x300>,
@@ -934,7 +934,7 @@ dsi0_phy: phy@1a94400 {
 				status = "disabled";
 			};
 
-			dsi1: dsi@1a96000 {
+			mdss_dsi1: dsi@1a96000 {
 				compatible = "qcom,msm8953-dsi-ctrl", "qcom,mdss-dsi-ctrl";
 				reg = <0x01a96000 0x400>;
 				reg-names = "dsi_ctrl";
@@ -944,8 +944,8 @@ dsi1: dsi@1a96000 {
 
 				assigned-clocks = <&gcc BYTE1_CLK_SRC>,
 						  <&gcc PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&dsi1_phy 0>,
-							 <&dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy 0>,
+							 <&mdss_dsi1_phy 1>;
 
 				clocks = <&gcc GCC_MDSS_MDP_CLK>,
 					 <&gcc GCC_MDSS_AHB_CLK>,
@@ -960,7 +960,7 @@ dsi1: dsi@1a96000 {
 					      "pixel",
 					      "core";
 
-				phys = <&dsi1_phy>;
+				phys = <&mdss_dsi1_phy>;
 
 				status = "disabled";
 
@@ -970,20 +970,20 @@ ports {
 
 					port@0 {
 						reg = <0>;
-						dsi1_in: endpoint {
+						mdss_dsi1_in: endpoint {
 							remote-endpoint = <&mdp5_intf2_out>;
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
 
-			dsi1_phy: phy@1a96400 {
+			mdss_dsi1_phy: phy@1a96400 {
 				compatible = "qcom,dsi-phy-14nm-8953";
 				reg = <0x01a96400 0x100>,
 				      <0x01a96500 0x300>,
-- 
2.39.2

