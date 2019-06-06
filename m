Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E1264380D1
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 00:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727021AbfFFWcC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 18:32:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:32802 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726711AbfFFWcC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 6 Jun 2019 18:32:02 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 651672089E;
        Thu,  6 Jun 2019 22:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1559860321;
        bh=dxSTjr0R4Nmn8oruH+E1JZSLXwDMBirUqbkJBkoD1Gc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=LFPu3UneKqb0mDBK5N6q4xypTAcU5pU2BFwMAm78p7CbLjRqsAQ1ubtJEauLIQ9m0
         BHCpMD2kQZR6ecZ6tLtk2wW7ockFhlri+e6F6MGv32PpzbKaVfDD7FSViZCNbASURX
         yHTNcKZRg66Naghz3XHq5vSpuqvyLQoUA+PiSTss=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 2/2] arm64: dts: stratix10: use the "altr,socfpga-stmmac-a10-s10" binding
Date:   Thu,  6 Jun 2019 17:31:40 -0500
Message-Id: <20190606223140.4315-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190606223140.4315-1-dinguyen@kernel.org>
References: <20190606223140.4315-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Because of register and bits difference for setting PHY modes, PTP reference
clock, and FPGA signalling, the Stratix10 SoC needs to use the
"altr,socfpga-stmmac-a10-s10" binding to set the correct modes.

On Stratix10, each EMAC has its own register for PHY modes, and they all have
the same offset, thus we can use the 2nd parameter to specify the offsets
for the FPGA signal bits.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index fe107ce115ef..a781e699a538 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -149,7 +149,7 @@
 		};
 
 		gmac0: ethernet@ff800000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.74a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.74a", "snps,dwmac";
 			reg = <0xff800000 0x2000>;
 			interrupts = <0 90 4>;
 			interrupt-names = "macirq";
@@ -167,7 +167,7 @@
 		};
 
 		gmac1: ethernet@ff802000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.74a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.74a", "snps,dwmac";
 			reg = <0xff802000 0x2000>;
 			interrupts = <0 91 4>;
 			interrupt-names = "macirq";
@@ -180,12 +180,12 @@
 			rx-fifo-depth = <16384>;
 			snps,multicast-filter-bins = <256>;
 			iommus = <&smmu 2>;
-			altr,sysmgr-syscon = <&sysmgr 0x48 0>;
+			altr,sysmgr-syscon = <&sysmgr 0x48 8>;
 			status = "disabled";
 		};
 
 		gmac2: ethernet@ff804000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.74a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.74a", "snps,dwmac";
 			reg = <0xff804000 0x2000>;
 			interrupts = <0 92 4>;
 			interrupt-names = "macirq";
@@ -198,7 +198,7 @@
 			rx-fifo-depth = <16384>;
 			snps,multicast-filter-bins = <256>;
 			iommus = <&smmu 3>;
-			altr,sysmgr-syscon = <&sysmgr 0x4c 0>;
+			altr,sysmgr-syscon = <&sysmgr 0x4c 16>;
 			status = "disabled";
 		};
 
-- 
2.20.0

