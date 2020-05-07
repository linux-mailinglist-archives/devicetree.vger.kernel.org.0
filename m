Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FD3A1C8804
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 13:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726575AbgEGLYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 07:24:55 -0400
Received: from foss.arm.com ([217.140.110.172]:56878 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725879AbgEGLYy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 7 May 2020 07:24:54 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75F54106F;
        Thu,  7 May 2020 04:24:54 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4257E3F68F;
        Thu,  7 May 2020 04:24:53 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 08/17] arm64: dts: arm: Fix ITS node names and #msi-cells
Date:   Thu,  7 May 2020 12:24:21 +0100
Message-Id: <20200507112430.183940-9-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GIC ITS nodes in the fastmodel DTS files were not fully binding
compliant.

Use one of the allowed node names, also add the required #msi-cells
property for the older model.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi | 3 ++-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
index f2c75c756039..c668162ee3bf 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv3.dtsi
@@ -19,9 +19,10 @@
 			<0x0 0x2c02f000 0x0 0x2000>;
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 
-		its: its@2f020000 {
+		its: msi-controller@2f020000 {
 			compatible = "arm,gic-v3-its";
 			msi-controller;
+			#msi-cells = <1>;
 			reg = <0x0 0x2f020000 0x0 0x20000>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 66381d89c1ce..0cf96ceff431 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -126,7 +126,7 @@
 		      <0x0 0x2c02f000 0 0x2000>;	// GICV
 		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 
-		its: its@2f020000 {
+		its: msi-controller@2f020000 {
 			#msi-cells = <1>;
 			compatible = "arm,gic-v3-its";
 			reg = <0x0 0x2f020000 0x0 0x20000>; // GITS
-- 
2.17.1

