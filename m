Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 348991D0FC9
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 12:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729731AbgEMKau (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 06:30:50 -0400
Received: from foss.arm.com ([217.140.110.172]:42672 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732694AbgEMKat (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 06:30:49 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 082B8D6E;
        Wed, 13 May 2020 03:30:49 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2AB93F305;
        Wed, 13 May 2020 03:30:47 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 14/20] arm64: dts: fvp: Fix SMMU DT node
Date:   Wed, 13 May 2020 11:30:10 +0100
Message-Id: <20200513103016.130417-15-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SMMU name in the RevC FVP DT file was not fully binding compliant.

Adjust the node name to match the binding's list of allowed names, also
shuffle the order of the interrupts to comply with the expected order.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 0cf96ceff431..b8a21092db4d 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -172,14 +172,14 @@
 		dma-coherent;
 	};
 
-	smmu: smmu@2b400000 {
+	smmu: iommu@2b400000 {
 		compatible = "arm,smmu-v3";
 		reg = <0x0 0x2b400000 0x0 0x100000>;
 		interrupts = <GIC_SPI 74 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 79 IRQ_TYPE_EDGE_RISING>,
 			     <GIC_SPI 75 IRQ_TYPE_EDGE_RISING>,
-			     <GIC_SPI 77 IRQ_TYPE_EDGE_RISING>,
-			     <GIC_SPI 79 IRQ_TYPE_EDGE_RISING>;
-		interrupt-names = "eventq", "priq", "cmdq-sync", "gerror";
+			     <GIC_SPI 77 IRQ_TYPE_EDGE_RISING>;
+		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
 		dma-coherent;
 		#iommu-cells = <1>;
 		msi-parent = <&its 0x10000>;
-- 
2.17.1

