Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C5FA1D0FCA
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 12:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732694AbgEMKav (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 06:30:51 -0400
Received: from foss.arm.com ([217.140.110.172]:42682 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732741AbgEMKau (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 06:30:50 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 549651FB;
        Wed, 13 May 2020 03:30:50 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3B3133F305;
        Wed, 13 May 2020 03:30:49 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 15/20] arm64: dts: arm: Fix bus node names
Date:   Wed, 13 May 2020 11:30:11 +0100
Message-Id: <20200513103016.130417-16-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most Arm Ltd. boards are employing a layered bus structure, to map
the hardware design (SoC, motherboard, IOFPGA) and structure the DTs.

The "simple-bus" nodes only allow a limited set of node names. Switch
to use *-bus to be binding compliant.

This relies on a pending dt-schema.git fix for now:
https://github.com/devicetree-org/dt-schema/pull/38

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi              | 4 ++--
 arch/arm64/boot/dts/arm/foundation-v8.dtsi           | 2 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi               | 2 +-
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi        | 4 ++--
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi | 4 ++--
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi     | 4 ++--
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index f4a65d693f15..f5c8f07b4918 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -174,7 +174,7 @@
 	};
 
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			model = "V2M-P1";
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
@@ -220,7 +220,7 @@
 				port1-otg;
 			};
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index e226c5e080c2..05ae893d1b2e 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -178,7 +178,7 @@
 			interrupts = <15>;
 		};
 
-		iofpga@300000000 {
+		iofpga-bus@300000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index ee860d539395..bd4e0b15f9c8 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -828,7 +828,7 @@
 				<0 0 12 &gic 0 GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	site2: tlx@60000000 {
+	site2: tlx-bus@60000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index f3279327a665..eeee51f1251b 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -92,7 +92,7 @@
 	};
 
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			compatible = "arm,vexpress,v2p-p1", "simple-bus";
 			#address-cells = <2>;  /* SMB chipselect number and offset */
 			#size-cells = <1>;
@@ -133,7 +133,7 @@
 				vddvario-supply = <&mb_fixed_3v3>;
 			};
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
index 350cbf17e8b4..b917d9d3f1c4 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
@@ -6,10 +6,10 @@
  */
 / {
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			arm,v2m-memory-map = "rs2";
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				virtio-p9@140000 {
 					compatible = "virtio,mmio";
 					reg = <0x140000 0x200>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index b81651b1890a..001a0a3c7f66 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -77,7 +77,7 @@
 	};
 
 	bus@8000000 {
-		motherboard {
+		motherboard-bus {
 			arm,v2m-memory-map = "rs1";
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
@@ -98,7 +98,7 @@
 				interrupts = <15>;
 			};
 
-			iofpga@300000000 {
+			iofpga-bus@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
 				#size-cells = <1>;
-- 
2.17.1

