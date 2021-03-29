Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F49434CF98
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 14:01:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231492AbhC2MBS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 08:01:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231401AbhC2MBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 08:01:01 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 083BAC061764
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 05:01:01 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 12so7634633lfq.13
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 05:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Za3WAfwBQn5CB64f8uczux74fVXb0Y3lBUEXrhz1In0=;
        b=gOVs1Qg5jxqVjvbB1dL4XeliN7Umgx2BmvIcGEGk+aqxaWQ8IYeIONbfcCVXvGyw0G
         Mql/vEuEq+/BAVOeKt+ftMMUlLAk1T8moHbn473oIu/n+AK5MykF7pwHPGwK+RMZxsAB
         G5SyU/EFuOscIDC6zt5WceesYqfsrjpwzfiTRxFtQojIb0DBtvW/dVdpEP4gDrugschL
         oUfI695c0jAb25MvhuK9Uy0F/3MN6XDDxSV0BBkHXSqioeRpckf8bHVkD3exDgFYMenL
         lkNj6/LTmavc01xLvkbHXRRjXtEPSNjiI+XMhg7OjzZsZebu9YdwKQ9uoSLUyjmtfAA0
         uqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Za3WAfwBQn5CB64f8uczux74fVXb0Y3lBUEXrhz1In0=;
        b=QWg+UPfZDxtrP8nght/Xvk7k94Cl8MBPbX2IyuSqUL+/Yu7hAZJZdbtmtsefl0I76W
         fPDwTdq+q8bRjhnAmu+FN3u1XHBvt8D2HRBxHusuO4SOMJWYWDo7Q3WGPXXOltjuPT+K
         gysvot6GeKqnlPKqr3oFI0VoMFuYXRCr6UReWhwE6sR+60g2C/0g2cGYN2bpuuQz434k
         E9Wp/Pbg0W6HPZFl1xpHEHE3nYFjV8cwW28Q4vE5HW4NzhuA7uX8fPgktNxRi8Xap8Tt
         IjckhZWGZ4HVft2o2ROXXoFv5GF4NHuPzrNp3mBYMW5V+EneTak7RYni0c3zvJ8Z2sw2
         pG9g==
X-Gm-Message-State: AOAM530s64GYOk7XLi3dO918wwusPj309BORoXXeKS/cOnge+YURTET1
        wXplEfc3hP5rM/0owrU1o57t6w==
X-Google-Smtp-Source: ABdhPJy0iFeUUIiWAXivUm9466cQaaBmV/h5zJ2kWH4R1YJ2r/1HiavyeTSWFvYvloEFlPgvxHM16w==
X-Received: by 2002:a19:224d:: with SMTP id i74mr16390665lfi.224.1617019259451;
        Mon, 29 Mar 2021 05:00:59 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d8sm2415240ljc.129.2021.03.29.05.00.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 05:00:59 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 1/4] arm64: dts: qcom: sm8250: fix display nodes
Date:   Mon, 29 Mar 2021 15:00:48 +0300
Message-Id: <20210329120051.3401567-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org>
References: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jonathan Marek <jonathan@marek.ca>

Apply these fixes to the newly added sm8250 display ndoes
 - Remove "notused" interconnect (which apparently was blindly copied from
   my old patches)
 - Use dispcc node example from dt-bindings, removing clocks which aren't
   documented or used by the driver and fixing the region size.

Fixes: 7c1dffd471b1 ("arm64: dts: qcom: sm8250.dtsi: add display system nodes")
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
[DB: compatibility changes split into separate patch]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 27 ++++++---------------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 947e1accae3a..32f0d6a82457 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2327,10 +2327,9 @@ mdss: mdss@ae00000 {
 			reg = <0 0x0ae00000 0 0x1000>;
 			reg-names = "mdss";
 
-			interconnects = <&gem_noc MASTER_AMPSS_M0 &config_noc SLAVE_DISPLAY_CFG>,
-					<&mmss_noc MASTER_MDP_PORT0 &mc_virt SLAVE_EBI_CH0>,
+			interconnects = <&mmss_noc MASTER_MDP_PORT0 &mc_virt SLAVE_EBI_CH0>,
 					<&mmss_noc MASTER_MDP_PORT1 &mc_virt SLAVE_EBI_CH0>;
-			interconnect-names = "notused", "mdp0-mem", "mdp1-mem";
+			interconnect-names = "mdp0-mem", "mdp1-mem";
 
 			power-domains = <&dispcc MDSS_GDSC>;
 
@@ -2580,7 +2579,7 @@ opp-358000000 {
 
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,sm8250-dispcc";
-			reg = <0 0x0af00000 0 0x20000>;
+			reg = <0 0x0af00000 0 0x10000>;
 			mmcx-supply = <&mmcx_reg>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&dsi0_phy 0>,
@@ -2588,28 +2587,14 @@ dispcc: clock-controller@af00000 {
 				 <&dsi1_phy 0>,
 				 <&dsi1_phy 1>,
 				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <0>,
-				 <&sleep_clk>;
+				 <0>;
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
2.30.2

