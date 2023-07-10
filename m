Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2CAE74E016
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 23:14:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231307AbjGJVO3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 17:14:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232603AbjGJVOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 17:14:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB8A1994
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 14:13:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0CC966113E
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 21:13:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0084AC433C8;
        Mon, 10 Jul 2023 21:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689023612;
        bh=SNGuXVhNbivoJOCwUC7uHYjtrHDLc0B9i+ZJR9cwZpU=;
        h=From:To:Cc:Subject:Date:From;
        b=EwUyesZZeyufHpoNx9N/EUT74OlHUjWDIOWBlNSte/ul2Z3Vdl2i5Z7SNCsnJq3C4
         Ic5EyQRcXdwt9qaGZVuLrvvnftBcLPSBdB/fF4e5pjKzhfbGOrV25IK8sKXOL0i9AG
         t3+SkSZJCdrhqDYUHrkamzr1e7vS9XW2IIRISAIRAJxiloSH3D+Q8t4J/MenejQiuT
         3J8mRF+qXL8BfiFUBO0/R/DweffdeLsC963zB52/IqjWr3pTZHsboRLmR/h0PeZ4pZ
         LWdoNcu/YliyDoiwVY3ahtzCgMtmMaNwRt8W+VhGBMTYtxQfylq+5kK4psArZ7NXQQ
         ZIDqjd5ObSdnA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     netdev@vger.kernel.org
Cc:     dinguyen@kernel.org, kuba@kernel.org, davem@davemloft.net,
        edumazet@google.com, joabreu@synopsys.com, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: socfpga: change the reset-name of "stmmaceth-ocp" to "ahb"
Date:   Mon, 10 Jul 2023 16:13:12 -0500
Message-Id: <20230710211313.567761-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "stmmaceth-ocp" reset line on the SoCFPGA stmmac ethernet driver is
the same as the "abh" reset on a standard stmmac ethernet.

commit ("843f603762a5 dt-bindings: net: snps,dwmac: Add 'ahb'
reset/reset-name") documented the second reset signal as 'ahb' instead
of 'stmmaceth-ocp'. Change the reset-names of the SoCFPGA DWMAC driver to
'ahb'.

This also fixes the dtbs_check warning:
ethernet@ff802000: reset-names:1: 'ahb' was expected

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi | 6 +++---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi    | 6 +++---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi        | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index 72c55e5187ca..f36063c57c7f 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -440,7 +440,7 @@ gmac0: ethernet@ff800000 {
 			clocks = <&l4_mp_clk>, <&peri_emac_ptp_clk>;
 			clock-names = "stmmaceth", "ptp_ref";
 			resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
@@ -460,7 +460,7 @@ gmac1: ethernet@ff802000 {
 			clocks = <&l4_mp_clk>, <&peri_emac_ptp_clk>;
 			clock-names = "stmmaceth", "ptp_ref";
 			resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
@@ -480,7 +480,7 @@ gmac2: ethernet@ff804000 {
 			clocks = <&l4_mp_clk>, <&peri_emac_ptp_clk>;
 			clock-names = "stmmaceth", "ptp_ref";
 			resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 1c846f13539c..439497ab967d 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -153,7 +153,7 @@ gmac0: ethernet@ff800000 {
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];
 			resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			clocks = <&clkmgr STRATIX10_EMAC0_CLK>, <&clkmgr STRATIX10_EMAC_PTP_CLK>;
 			clock-names = "stmmaceth", "ptp_ref";
 			tx-fifo-depth = <16384>;
@@ -171,7 +171,7 @@ gmac1: ethernet@ff802000 {
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];
 			resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			clocks = <&clkmgr STRATIX10_EMAC1_CLK>, <&clkmgr STRATIX10_EMAC_PTP_CLK>;
 			clock-names = "stmmaceth", "ptp_ref";
 			tx-fifo-depth = <16384>;
@@ -189,7 +189,7 @@ gmac2: ethernet@ff804000 {
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];
 			resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			clocks = <&clkmgr STRATIX10_EMAC2_CLK>, <&clkmgr STRATIX10_EMAC_PTP_CLK>;
 			clock-names = "stmmaceth", "ptp_ref";
 			tx-fifo-depth = <16384>;
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index fc047aef4911..d3adb6a130ae 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -158,7 +158,7 @@ gmac0: ethernet@ff800000 {
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];
 			resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			tx-fifo-depth = <16384>;
 			rx-fifo-depth = <16384>;
 			snps,multicast-filter-bins = <256>;
@@ -176,7 +176,7 @@ gmac1: ethernet@ff802000 {
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];
 			resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			tx-fifo-depth = <16384>;
 			rx-fifo-depth = <16384>;
 			snps,multicast-filter-bins = <256>;
@@ -194,7 +194,7 @@ gmac2: ethernet@ff804000 {
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];
 			resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
-			reset-names = "stmmaceth", "stmmaceth-ocp";
+			reset-names = "stmmaceth", "ahb";
 			tx-fifo-depth = <16384>;
 			rx-fifo-depth = <16384>;
 			snps,multicast-filter-bins = <256>;
-- 
2.25.1

