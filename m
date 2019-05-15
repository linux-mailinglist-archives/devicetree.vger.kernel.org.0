Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0131C1F866
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 18:21:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726283AbfEOQVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 12:21:20 -0400
Received: from mga05.intel.com ([192.55.52.43]:25782 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725953AbfEOQVU (ORCPT <rfc822;devicetree@vger.kernel.org>);
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
Subject: [PATCH 1/3] ARM: dts: cyclone5: Add stmmac ptp_ref clock
Date:   Wed, 15 May 2019 09:20:56 -0700
Message-Id: <20190515162058.32368-1-dalon.westergreen@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the ptp_ref clock to gmac0 / gmac1 specifying the default clk
of osc1.  The stmmac driver defaults the ptp_ref clock to the main
stmmac clock if ptp_ref is not provided.  This is inappropriate for
the Cyclone5 or Arria5 devices.

Signed-off-by: Dalon Westergreen <dalon.westergreen@linux.intel.com>
---
 arch/arm/boot/dts/socfpga.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index 28ecb4bdf5aa..c1c9d6a2bb91 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -557,8 +557,8 @@
 			interrupts = <0 115 4>;
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
-			clocks = <&emac_0_clk>;
-			clock-names = "stmmaceth";
+			clocks = <&emac_0_clk>, <&osc1>;
+			clock-names = "stmmaceth", "ptp_ref";
 			resets = <&rst EMAC0_RESET>;
 			reset-names = "stmmaceth";
 			snps,multicast-filter-bins = <256>;
@@ -575,8 +575,8 @@
 			interrupts = <0 120 4>;
 			interrupt-names = "macirq";
 			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
-			clocks = <&emac_1_clk>;
-			clock-names = "stmmaceth";
+			clocks = <&emac_1_clk>, <&osc1>;
+			clock-names = "stmmaceth", "ptp_ref";
 			resets = <&rst EMAC1_RESET>;
 			reset-names = "stmmaceth";
 			snps,multicast-filter-bins = <256>;
-- 
2.19.2

