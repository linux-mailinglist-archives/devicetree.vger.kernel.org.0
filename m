Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1BE87172FE
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233999AbjEaBQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233981AbjEaBQn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:16:43 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD1DA10B
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:39 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f3bb395e69so6109150e87.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685495798; x=1688087798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XMJEYcHn8wCho//OE4bkVw8opEzX+BpNx5GppcxdOxc=;
        b=nm2Mqrxjy8KIcP2W1lgq2T/BWkrOhzdTDXZBGBZWfYi43/PtWIW//sMSEIygKC03CN
         WDfFSYgXPf9gsheI5viE5W/zWBb3rQr9PTWH7HybUYPS7j4s3+eiMIBVcQ6nZijttbhz
         Ash286AtXuoV54GO9sx7pL4ioOEYOVNGMZ3AXYo9qHXEEpLiQ0vqVqaW6BG5/Bfpkh4n
         VrlvnN4Vff968hLMj+9NeICeYa8nYvTiDY4iDTkQ7Vw8Sm5AcRKL+5SUD7P9KVy09kwR
         nD9nzY5Fh+9epskvgU/xIesjtMAJ7riIO5ivVVgR7kbc4u3kSNzSLyUIV6EXI2sjH6/E
         7fNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685495798; x=1688087798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XMJEYcHn8wCho//OE4bkVw8opEzX+BpNx5GppcxdOxc=;
        b=j+X3iamty9Dj4IC+U83myO3NRxmCAhJ7gEaJDhQbEDMnDFdwnLV+uns2Vi6bcqDUBr
         61z57tPau7B+sJt2v0f28uonzWGD69/nchrGOzanv9U2L5/LHQws8/15Mo86rSLMvuqe
         PsekmDKKOz3NcBkHRNzbg3cbXQer4ECugReQSIroDFYiQ7kk8vf3InYnZLQlaIBfJjYD
         RmSrqjDZnE7uDcaeneyw8HRPEzHcGALCsFd7TbttTiQe62h3m2/yrgolmJ/SPAimKpvt
         OhNcScJqA+tfdiPXU55cgCRdbrGLyqPt4dvA1t3rhSeR/Oiygrmc433qm5b1Q4XhcwBB
         xcFg==
X-Gm-Message-State: AC+VfDwZbVO6LbcPZdM3n+/F+IzIYPDFwxH2PQWDP7mwq/FWfoWr7g0o
        CtUu4w4AJgAjpIM+nqyEBs6dHg==
X-Google-Smtp-Source: ACHHUZ5sr4CmvCbXj+O/UxYVp/c9rk/aaFXZS7FliJdVlSNani7vtsw3L3cgoY8efiixPuR3Zrcy7Q==
X-Received: by 2002:ac2:5fcf:0:b0:4f3:b1dc:b46b with SMTP id q15-20020ac25fcf000000b004f3b1dcb46bmr1608944lfg.1.1685495797977;
        Tue, 30 May 2023 18:16:37 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm505640lfd.128.2023.05.30.18.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:16:37 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 10/14] arm64: dts: qcom: sdm630: rename labels for DSI nodes
Date:   Wed, 31 May 2023 04:16:19 +0300
Message-Id: <20230531011623.3808538-11-dmitry.baryshkov@linaro.org>
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
 .../boot/dts/qcom/sda660-inforce-ifc6560.dts  | 16 ++++++-------
 arch/arm64/boot/dts/qcom/sdm630.dtsi          | 20 ++++++++--------
 arch/arm64/boot/dts/qcom/sdm660.dtsi          | 24 +++++++++----------
 3 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 7459525d9982..0b23d5bb3f26 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -134,7 +134,7 @@ port@0 {
 				reg = <0>;
 
 				adv7533_in: endpoint {
-					remote-endpoint = <&dsi0_out>;
+					remote-endpoint = <&mdss_dsi0_out>;
 				};
 			};
 
@@ -183,25 +183,25 @@ bluetooth {
 	};
 };
 
-&dsi0 {
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
 	status = "okay";
 	vdda-supply = <&vreg_l1a_1p225>;
 };
 
-&dsi0_out {
+&mdss_dsi0_out {
 	remote-endpoint = <&adv7533_in>;
 	data-lanes = <0 1 2 3>;
 };
 
-&dsi0_phy {
+&mdss_dsi0_phy {
 	status = "okay";
 	vcca-supply = <&vreg_l1b_0p925>;
 };
 
-&mdss {
-	status = "okay";
-};
-
 &mmss_smmu {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 897f2440c9c8..bba0f366ef03 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1463,8 +1463,8 @@ mmcc: clock-controller@c8c0000 {
 					<&sleep_clk>,
 					<&gcc GCC_MMSS_GPLL0_CLK>,
 					<&gcc GCC_MMSS_GPLL0_DIV_CLK>,
-					<&dsi0_phy 1>,
-					<&dsi0_phy 0>,
+					<&mdss_dsi0_phy 1>,
+					<&mdss_dsi0_phy 0>,
 					<0>,
 					<0>,
 					<0>,
@@ -1536,7 +1536,7 @@ ports {
 					port@0 {
 						reg = <0>;
 						mdp5_intf1_out: endpoint {
-							remote-endpoint = <&dsi0_in>;
+							remote-endpoint = <&mdss_dsi0_in>;
 						};
 					};
 				};
@@ -1572,7 +1572,7 @@ opp-412500000 {
 				};
 			};
 
-			dsi0: dsi@c994000 {
+			mdss_dsi0: dsi@c994000 {
 				compatible = "qcom,sdm660-dsi-ctrl",
 					     "qcom,mdss-dsi-ctrl";
 				reg = <0x0c994000 0x400>;
@@ -1586,8 +1586,8 @@ dsi0: dsi@c994000 {
 
 				assigned-clocks = <&mmcc BYTE0_CLK_SRC>,
 						  <&mmcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&dsi0_phy 0>,
-							 <&dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy 0>,
+							 <&mdss_dsi0_phy 1>;
 
 				clocks = <&mmcc MDSS_MDP_CLK>,
 					 <&mmcc MDSS_BYTE0_CLK>,
@@ -1608,7 +1608,7 @@ dsi0: dsi@c994000 {
 					      "pixel",
 					      "core";
 
-				phys = <&dsi0_phy>;
+				phys = <&mdss_dsi0_phy>;
 
 				status = "disabled";
 
@@ -1618,20 +1618,20 @@ ports {
 
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
 
-			dsi0_phy: phy@c994400 {
+			mdss_dsi0_phy: phy@c994400 {
 				compatible = "qcom,dsi-phy-14nm-660";
 				reg = <0x0c994400 0x100>,
 				      <0x0c994500 0x300>,
diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index f0f27fc12c18..f89b27c99f40 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -148,14 +148,14 @@ ports {
 		port@1 {
 			reg = <1>;
 			mdp5_intf2_out: endpoint {
-				remote-endpoint = <&dsi1_in>;
+				remote-endpoint = <&mdss_dsi1_in>;
 			};
 		};
 	};
 };
 
 &mdss {
-	dsi1: dsi@c996000 {
+	mdss_dsi1: dsi@c996000 {
 		compatible = "qcom,sdm660-dsi-ctrl",
 			     "qcom,mdss-dsi-ctrl";
 		reg = <0x0c996000 0x400>;
@@ -170,8 +170,8 @@ dsi1: dsi@c996000 {
 
 		assigned-clocks = <&mmcc BYTE1_CLK_SRC>,
 					<&mmcc PCLK1_CLK_SRC>;
-		assigned-clock-parents = <&dsi1_phy 0>,
-						<&dsi1_phy 1>;
+		assigned-clock-parents = <&mdss_dsi1_phy 0>,
+						<&mdss_dsi1_phy 1>;
 
 		clocks = <&mmcc MDSS_MDP_CLK>,
 				<&mmcc MDSS_BYTE1_CLK>,
@@ -192,7 +192,7 @@ dsi1: dsi@c996000 {
 					"pixel",
 					"core";
 
-		phys = <&dsi1_phy>;
+		phys = <&mdss_dsi1_phy>;
 
 		status = "disabled";
 
@@ -202,20 +202,20 @@ ports {
 
 			port@0 {
 				reg = <0>;
-				dsi1_in: endpoint {
+				mdss_dsi1_in: endpoint {
 					remote-endpoint = <&mdp5_intf2_out>;
 				};
 			};
 
 			port@1 {
 				reg = <1>;
-				dsi1_out: endpoint {
+				mdss_dsi1_out: endpoint {
 				};
 			};
 		};
 	};
 
-	dsi1_phy: phy@c996400 {
+	mdss_dsi1_phy: phy@c996400 {
 		compatible = "qcom,dsi-phy-14nm-660";
 		reg = <0x0c996400 0x100>,
 				<0x0c996500 0x300>,
@@ -239,10 +239,10 @@ &mmcc {
 			<&sleep_clk>,
 			<&gcc GCC_MMSS_GPLL0_CLK>,
 			<&gcc GCC_MMSS_GPLL0_DIV_CLK>,
-			<&dsi0_phy 1>,
-			<&dsi0_phy 0>,
-			<&dsi1_phy 1>,
-			<&dsi1_phy 0>,
+			<&mdss_dsi0_phy 1>,
+			<&mdss_dsi0_phy 0>,
+			<&mdss_dsi1_phy 1>,
+			<&mdss_dsi1_phy 0>,
 			<0>,
 			<0>;
 };
-- 
2.39.2

