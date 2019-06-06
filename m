Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F110380D0
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 00:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726958AbfFFWcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 18:32:01 -0400
Received: from mail.kernel.org ([198.145.29.99]:32790 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726711AbfFFWcB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 6 Jun 2019 18:32:01 -0400
Received: from localhost.localdomain (cpe-70-114-128-244.austin.res.rr.com [70.114.128.244])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9EDF120673;
        Thu,  6 Jun 2019 22:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1559860321;
        bh=SS+PBLLdlJ6jTS3cmq+GVgQg3C1zWnR7yp31oAF8mHM=;
        h=From:To:Cc:Subject:Date:From;
        b=ZewUAD+xxS5NkxUJRu8jHJtNiBqKaMa9BAVm5anSdCvHebCOXTzfAuaNtFeRwzodd
         MjU70lIkRdEAVU1gZjSP1K5VRHCw4TBMfBuMCE0EzZUnvQY6AUMzAKAOJNH/8A41e0
         nuQFgrgJ7KtWmDSATHFDRE/oLvc9xY1YuEj1kxXo=
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 1/2] ARM: dts: socfpga: use the "altr,socfpga-stmmac-a10-s10" binding
Date:   Thu,  6 Jun 2019 17:31:39 -0500
Message-Id: <20190606223140.4315-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Because of register and bits difference for setting PHY modes, PTP reference
clock, and FPGA signalling, the Arria10 SoC needs to use the
"altr,socfpga-stmmac-a10-s10" binding to set the correct modes.

On Arria10, each EMAC has its own register for PHY modes, and they all have
the same offset, thus we can use the 2nd parameter to specify the offsets
for the FPGA signal bits.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index ae24599d5829..61a767c905b3 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -418,7 +418,7 @@
 		};
 
 		gmac0: ethernet@ff800000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.72a", "snps,dwmac";
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.72a", "snps,dwmac";
 			altr,sysmgr-syscon = <&sysmgr 0x44 0>;
 			reg = <0xff800000 0x2000>;
 			interrupts = <0 92 IRQ_TYPE_LEVEL_HIGH>;
@@ -438,8 +438,8 @@
 		};
 
 		gmac1: ethernet@ff802000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.72a", "snps,dwmac";
-			altr,sysmgr-syscon = <&sysmgr 0x48 0>;
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.72a", "snps,dwmac";
+			altr,sysmgr-syscon = <&sysmgr 0x48 8>;
 		        reg = <0xff802000 0x2000>;
 			interrupts = <0 93 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
@@ -458,8 +458,8 @@
 		};
 
 		gmac2: ethernet@ff804000 {
-			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.72a", "snps,dwmac";
-			altr,sysmgr-syscon = <&sysmgr 0x4C 0>;
+			compatible = "altr,socfpga-stmmac-a10-s10", "snps,dwmac-3.72a", "snps,dwmac";
+			altr,sysmgr-syscon = <&sysmgr 0x4C 16>;
 			reg = <0xff804000 0x2000>;
 			interrupts = <0 94 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-- 
2.20.0

