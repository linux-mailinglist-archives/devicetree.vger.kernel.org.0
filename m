Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 070761095D3
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2019 23:51:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726947AbfKYWvb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Nov 2019 17:51:31 -0500
Received: from mail.kernel.org ([198.145.29.99]:45594 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725946AbfKYWvb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Nov 2019 17:51:31 -0500
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr [90.118.215.104])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5B5522082F;
        Mon, 25 Nov 2019 22:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1574722290;
        bh=iVkG51EUncJlEhzBeJiQmg/gv6/VysR3bZScVo/r8eU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=CQJu9G/gfK9XzK5+9haf3+rk1+7Jufxhy72B01HF/u/umFub0TM1qXFZ+rhYkHIXu
         yi+RT50CQJwMPMbNPgZc5OEu0lPYH1gtk51bMsl77c3ZUWPoeJPYGG2rqJdK/cUIhL
         XzmuIVetpR5GKvFM4NVitvUbruVcA1wZkq5Ndtwk=
From:   Ard Biesheuvel <ardb@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, thomas.lendacky@amd.com,
        suravee.suthikulpanit@amd.com, brijeshkumar.singh@amd.com,
        will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
Subject: [PATCH 3/6] dt: amd-seattle: upgrade AMD Seattle XGBE to new SMMU binding
Date:   Mon, 25 Nov 2019 23:51:07 +0100
Message-Id: <20191125225110.10924-4-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191125225110.10924-1-ardb@kernel.org>
References: <20191125225110.10924-1-ardb@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Upgrade the DT descriptions of the AMD Seattle XGBE network
controllers to use the current SMMU bindings.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/boot/dts/amd/amd-seattle-xgbe-b.dtsi | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/amd/amd-seattle-xgbe-b.dtsi b/arch/arm64/boot/dts/amd/amd-seattle-xgbe-b.dtsi
index d97498361ce3..fdebf78efa94 100644
--- a/arch/arm64/boot/dts/amd/amd-seattle-xgbe-b.dtsi
+++ b/arch/arm64/boot/dts/amd/amd-seattle-xgbe-b.dtsi
@@ -55,7 +55,7 @@
 		clocks = <&xgmacclk0_dma_250mhz>, <&xgmacclk0_ptp_250mhz>;
 		clock-names = "dma_clk", "ptp_clk";
 		phy-mode = "xgmii";
-		#stream-id-cells = <16>;
+		iommus = <&xgmac0_smmu 0x00 0x17>; /* 0-7, 16-23 */
 		dma-coherent;
 	};
 
@@ -81,7 +81,7 @@
 		clocks = <&xgmacclk1_dma_250mhz>, <&xgmacclk1_ptp_250mhz>;
 		clock-names = "dma_clk", "ptp_clk";
 		phy-mode = "xgmii";
-		#stream-id-cells = <16>;
+		iommus = <&xgmac1_smmu 0x00 0x17>; /* 0-7, 16-23 */
 		dma-coherent;
 	};
 
@@ -94,11 +94,7 @@
 			       */
 			      <0 336 4>,
 			      <0 336 4>;
-
-		 mmu-masters = <&xgmac0
-			  0  1  2  3  4  5  6  7
-			 16 17 18 19 20 21 22 23
-		 >;
+		#iommu-cells = <2>;
 	 };
 
 	 xgmac1_smmu: smmu@e0800000 {
@@ -110,9 +106,5 @@
 			       */
 			      <0 335 4>,
 			      <0 335 4>;
-
-		 mmu-masters = <&xgmac1
-			  0  1  2  3  4  5  6  7
-			 16 17 18 19 20 21 22 23
-		 >;
+		#iommu-cells = <2>;
 	 };
-- 
2.17.1

