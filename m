Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7779B1F867
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 18:21:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726491AbfEOQVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 12:21:20 -0400
Received: from mga05.intel.com ([192.55.52.43]:25782 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726212AbfEOQVU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 May 2019 12:21:20 -0400
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 May 2019 09:21:20 -0700
Received: from dwesterg-mobl.amr.corp.intel.com (HELO dwesterg-mobl1.amr.corp.intel.com) ([10.251.23.239])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 May 2019 09:21:19 -0700
From:   Dalon Westergreen <dalon.westergreen@linux.intel.com>
To:     dinguyen@kernel.org, thor.thayer@linux.intel.com,
        devicetree@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: arria10: Add stmmac ptp_ref clock
Date:   Wed, 15 May 2019 09:20:57 -0700
Message-Id: <20190515162058.32368-2-dalon.westergreen@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190515162058.32368-1-dalon.westergreen@linux.intel.com>
References: <20190515162058.32368-1-dalon.westergreen@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the default stmmac ptp_ref clock for arria10.  The stmmac
driver defaults the ptp_ref clock to the main stmmac clock
if the ptp_ref clock is not set in the devicetree.  This is inappropriate
for the arria10 device.  The default ptp_ref clock is peri_emac_ptp_clk.

Signed-off-by: Dalon Westergreen <dalon.westergreen@linux.intel.com>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 0017bac7f96c..6591def7b225 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -426,8 +426,8 @@
 			snps,perfect-filter-entries = <128>;
 			tx-fifo-depth = <4096>;
 			rx-fifo-depth = <16384>;
-			clocks = <&l4_mp_clk>;
-			clock-names = "stmmaceth";
+			clocks = <&l4_mp_clk>, <&peri_emac_ptp_clk>;
+			clock-names = "stmmaceth", "ptp_ref";
 			resets = <&rst EMAC0_RESET>;
 			reset-names = "stmmaceth";
 			snps,axi-config = <&socfpga_axi_setup>;
@@ -446,8 +446,8 @@
 			snps,perfect-filter-entries = <128>;
 			tx-fifo-depth = <4096>;
 			rx-fifo-depth = <16384>;
-			clocks = <&l4_mp_clk>;
-			clock-names = "stmmaceth";
+			clocks = <&l4_mp_clk>, <&peri_emac_ptp_clk>;
+			clock-names = "stmmaceth", "ptp_ref";
 			resets = <&rst EMAC1_RESET>;
 			reset-names = "stmmaceth";
 			snps,axi-config = <&socfpga_axi_setup>;
@@ -466,8 +466,8 @@
 			snps,perfect-filter-entries = <128>;
 			tx-fifo-depth = <4096>;
 			rx-fifo-depth = <16384>;
-			clocks = <&l4_mp_clk>;
-			clock-names = "stmmaceth";
+			clocks = <&l4_mp_clk>, <&peri_emac_ptp_clk>;
+			clock-names = "stmmaceth", "ptp_ref";
 			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
-- 
2.19.2

