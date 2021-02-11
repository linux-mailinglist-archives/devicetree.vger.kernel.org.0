Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D28D3191FB
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 19:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231833AbhBKSNy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 13:13:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231575AbhBKSLo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 13:11:44 -0500
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC40C061793
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 10:11:04 -0800 (PST)
Received: by mail-qk1-x72a.google.com with SMTP id f17so2828182qkl.5
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 10:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y4RC940/J5vqsaVIPUQNgWPR3nZvZ8dS+NWG2FVApHg=;
        b=zCo1c5051LK4hPwO4DWPdGWEhVsMvHQD93HMbDG5V0p/liAldRQVl2FAKPAwJwQ/L2
         QiuhOeVKK9lt1VxO4bVCm33ZVecybl0tOhgn9PHq0xlYJkAymO1y7lWsHKDNbMV3a0e4
         8k0q4pF01J8Y1+UM13ZrIQ0bQ0eiGl/0Napz+EGBobm+YZwZg135Ak81EtkAN2BeosS7
         pwm1Vk3TxWjGSb7HAfMsbAtWgoJ50Y7rzImMEhHJcooKMUlFhC3s9O1NjWbejB38ipHh
         f8mhRNeZsZ5mJgKrT5AvK2ffsorP2fjNYvFklgDqgxm00VRYkm3X4W8OpPo35hOsR8Dv
         TaFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y4RC940/J5vqsaVIPUQNgWPR3nZvZ8dS+NWG2FVApHg=;
        b=eWsKsQfHbUFU6KXTsVpAkscmPCYnVJbVdiEqEdgL9NoVgcTZafiYB1UCLsUD+Zb5LO
         KZkKXWaUsNGQocW5c2nfLfDmIJykciDIAHEdJYs5yKBJ6sFHQszc7U0pSB7upuTOpVDi
         HVj0EUhjoxjcq2DgMofjxcHn+TEIc0eRHJC7LEe5tiAkF2QYRAC9Ukez0qsT8tVhOU3k
         CDvVd84cahMbFB7k4anL3Ljna5Vi8H0sap8x3fzfx3ZiRnls+JR5NfBj6tsGB0Xvlj0K
         sokbjIhxduXtQNR9++AOl5F1XbioslEQ+hnyt+f6zLSqE9Bs1kLp7oep6fjAzyFKSDmc
         OHhg==
X-Gm-Message-State: AOAM5301uHuCbNSHu9oGCf5eCfzn7OnxaJ9nKEfFQeKTlxjxJfrUVQwX
        lKK0hFYmD3Xh5sgq58sXA4z3RA==
X-Google-Smtp-Source: ABdhPJz9waq/K9FzbyVnTjZ8KBEHlAtEWbEq4NxPq8Fm77HgPGqQvzF1ENDhDdTgTCxuGOk+VAQduQ==
X-Received: by 2002:a37:478a:: with SMTP id u132mr9692463qka.135.1613067063249;
        Thu, 11 Feb 2021 10:11:03 -0800 (PST)
Received: from localhost.localdomain (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id 11sm4615412qkm.25.2021.02.11.10.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 10:11:02 -0800 (PST)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 2/2] arm64: dts: qcom: sm8250: fix display nodes
Date:   Thu, 11 Feb 2021 13:09:59 -0500
Message-Id: <20210211181002.22922-3-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20210211181002.22922-1-jonathan@marek.ca>
References: <20210211181002.22922-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Apply these fixes to the newly added sm8250 display ndoes
 - Use sm8250 compatibles instead of sdm845 compatibles
 - Remove "notused" interconnect (which apparently was blindly copied from
   my old patches)
 - Use dispcc node example from dt-bindings, removing clocks which aren't
   documented or used by the driver and fixing the region size.

Note: also removed the mmcx-supply for dispcc which wasn't documented when
it was added. I would have left it there but it is also breaking my
use-case (setting a lower power level than what the bootloader sets?).

Fixes: 7c1dffd471b1 ("arm64: dts: qcom: sm8250.dtsi: add display system nodes")
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 34 ++++++++--------------------
 1 file changed, 9 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 947e1accae3a..20a3ff30e924 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2323,14 +2323,13 @@ usb_2_dwc3: dwc3@a800000 {
 		};
 
 		mdss: mdss@ae00000 {
-			compatible = "qcom,sdm845-mdss";
+			compatible = "qcom,sm8250-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
 			reg-names = "mdss";
 
-			interconnects = <&gem_noc MASTER_AMPSS_M0 &config_noc SLAVE_DISPLAY_CFG>,
-					<&mmss_noc MASTER_MDP_PORT0 &mc_virt SLAVE_EBI_CH0>,
+			interconnects = <&mmss_noc MASTER_MDP_PORT0 &mc_virt SLAVE_EBI_CH0>,
 					<&mmss_noc MASTER_MDP_PORT1 &mc_virt SLAVE_EBI_CH0>;
-			interconnect-names = "notused", "mdp0-mem", "mdp1-mem";
+			interconnect-names = "mdp0-mem", "mdp1-mem";
 
 			power-domains = <&dispcc MDSS_GDSC>;
 
@@ -2356,7 +2355,7 @@ mdss: mdss@ae00000 {
 			ranges;
 
 			mdss_mdp: mdp@ae01000 {
-				compatible = "qcom,sdm845-dpu";
+				compatible = "qcom,sm8250-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
 				      <0 0x0aeb0000 0 0x2008>;
 				reg-names = "mdp", "vbif";
@@ -2580,36 +2579,21 @@ opp-358000000 {
 
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,sm8250-dispcc";
-			reg = <0 0x0af00000 0 0x20000>;
-			mmcx-supply = <&mmcx_reg>;
+			reg = <0 0x0af00000 0 0x10000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&dsi0_phy 0>,
 				 <&dsi0_phy 1>,
 				 <&dsi1_phy 0>,
 				 <&dsi1_phy 1>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <&sleep_clk>;
+				 <&dp_phy 0>,
+				 <&dp_phy 1>;
 			clock-names = "bi_tcxo",
 				      "dsi0_phy_pll_out_byteclk",
 				      "dsi0_phy_pll_out_dsiclk",
 				      "dsi1_phy_pll_out_byteclk",
 				      "dsi1_phy_pll_out_dsiclk",
-				      "dp_link_clk_divsel_ten",
-				      "dp_vco_divided_clk_src_mux",
-				      "dptx1_phy_pll_link_clk",
-				      "dptx1_phy_pll_vco_div_clk",
-				      "dptx2_phy_pll_link_clk",
-				      "dptx2_phy_pll_vco_div_clk",
-				      "edp_phy_pll_link_clk",
-				      "edp_phy_pll_vco_div_clk",
-				      "sleep_clk";
+				      "dp_phy_pll_link_clk",
+				      "dp_phy_pll_vco_div_clk";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-- 
2.26.1

