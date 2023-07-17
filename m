Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEDB4756EF0
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 23:26:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbjGQV0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 17:26:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbjGQV0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 17:26:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8185123
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 14:26:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7CC72612A5
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 21:26:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 165F7C433C8;
        Mon, 17 Jul 2023 21:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689629211;
        bh=ru6PH0BytRYKxOGCG2Y5Nb4sExU22RsB3910DnOcsF8=;
        h=From:To:Cc:Subject:Date:From;
        b=nHlL7xXkssHmGS545q2Bq3u/Wwt/VbvsMNLDoG3YGlicXsCv9P47X0cIXnPBAv0yK
         twDfyvoxawtPtjQE9AyYPjUaqPX1uBU9+pHFyzmYXGsrfKGIv3juVuPjtA8yftY9m5
         yoVWAXudZuRogB+zf81XmHj6vMjK3KIL+vvlU1TlCRof5GwS94DMzDeAnlsqcsq+B5
         q4ZPenSNp2uD52zENK/JRJ6fI5Vej4JMjtpt5kTsXVR1up2O5X2pZWNs5666TNNXgw
         e/RTaHAVZ1UCF6LKWyk/YtWPUUnCM1cHcwz8/Ve6uoXxrw0K1DOdy9cVxoVlqhcMZv
         QPE3v27U+tSDw==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCHv2] arm64: dts: socfpga: change the reset-name of "stmmaceth-ocp" to "ahb"
Date:   Mon, 17 Jul 2023 16:26:44 -0500
Message-Id: <20230717212644.635910-1-dinguyen@kernel.org>
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
the same as the "ahb" reset on a standard stmmac ethernet.

commit ("843f603762a5 dt-bindings: net: snps,dwmac: Add 'ahb'
reset/reset-name") documented the second reset signal as 'ahb' instead
of 'stmmaceth-ocp'. Change the reset-names of the SoCFPGA DWMAC driver to
'ahb'. In order not to break ABI, we will keep support in thedwmac-socfpga
driver to still make use of "stmmaceth-ocp".

This also fixes the dtbs_check warning:
ethernet@ff802000: reset-names:1: 'ahb' was expected

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: update commit message to further describe the reason for the change
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

