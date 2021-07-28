Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A3263D9863
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 00:25:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232300AbhG1WZ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 18:25:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbhG1WZ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 18:25:56 -0400
Received: from relay01.th.seeweb.it (relay01.th.seeweb.it [IPv6:2001:4b7a:2000:18::162])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A57C8C061757
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 15:25:54 -0700 (PDT)
Received: from localhost.localdomain (83.6.168.174.neoplus.adsl.tpnet.pl [83.6.168.174])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 91CEB1FC8F;
        Thu, 29 Jul 2021 00:25:52 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 03/39] arm64: dts: qcom: sdm630: Add MMCC node
Date:   Thu, 29 Jul 2021 00:25:06 +0200
Message-Id: <20210728222542.54269-4-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728222542.54269-1-konrad.dybcio@somainline.org>
References: <20210728222542.54269-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MultiMedia Clock Controller node to allow for accessing
and controlling Multimedia Subsystem clocks by their respective
users.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 0dd838ef5d6e..e2cbe210048e 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -874,6 +874,34 @@ sdhc_1: sdhci@c0c4000 {
 			status = "disabled";
 		};
 
+		mmcc: clock-controller@c8c0000 {
+			compatible = "qcom,mmcc-sdm630";
+			reg = <0x0c8c0000 0x40000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+			clock-names = "xo",
+					"sleep_clk",
+					"gpll0",
+					"gpll0_div",
+					"dsi0pll",
+					"dsi0pllbyte",
+					"dsi1pll",
+					"dsi1pllbyte",
+					"dp_link_2x_clk_divsel_five",
+					"dp_vco_divided_clk_src_mux";
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+					<&sleep_clk>,
+					<&gcc GCC_MMSS_GPLL0_CLK>,
+					<&gcc GCC_MMSS_GPLL0_DIV_CLK>,
+					<0>,
+					<0>,
+					<0>,
+					<0>,
+					<0>,
+					<0>;
+		};
+
 		blsp1_dma: dma-controller@c144000 {
 			compatible = "qcom,bam-v1.7.0";
 			reg = <0x0c144000 0x1f000>;
-- 
2.32.0

