Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB23F1C5DEB
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2020 18:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730368AbgEEQwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 May 2020 12:52:42 -0400
Received: from foss.arm.com ([217.140.110.172]:45482 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730251AbgEEQwl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 5 May 2020 12:52:41 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A965101E;
        Tue,  5 May 2020 09:52:41 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4D363F305;
        Tue,  5 May 2020 09:52:39 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 11/16] arm64: dts: arm: Fix serial node names
Date:   Tue,  5 May 2020 17:52:07 +0100
Message-Id: <20200505165212.76466-12-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505165212.76466-1-andre.przywara@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The UARTs for all Arm Ltd. boards were using "uart" as their node name
stub.

Replace that with the required "serial" string, to comply with the PL011
DT binding.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi          | 8 ++++----
 arch/arm64/boot/dts/arm/foundation-v8.dtsi       | 8 ++++----
 arch/arm64/boot/dts/arm/juno-base.dtsi           | 2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 8 ++++----
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 8010cdcdb37a..675a51e12eb1 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -162,7 +162,7 @@
 					clock-names = "KMIREFCLK", "apb_pclk";
 				};
 
-				v2m_serial0: uart@90000 {
+				v2m_serial0: serial@90000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x090000 0x1000>;
 					interrupts = <5>;
@@ -170,7 +170,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial1: uart@a0000 {
+				v2m_serial1: serial@a0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0a0000 0x1000>;
 					interrupts = <6>;
@@ -178,7 +178,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial2: uart@b0000 {
+				v2m_serial2: serial@b0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0b0000 0x1000>;
 					interrupts = <7>;
@@ -186,7 +186,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial3: uart@c0000 {
+				v2m_serial3: serial@c0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0c0000 0x1000>;
 					interrupts = <8>;
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index e26b492795c5..d1918253ab39 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -189,7 +189,7 @@
 				reg = <0x010000 0x1000>;
 			};
 
-			v2m_serial0: uart@90000 {
+			v2m_serial0: serial@90000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x090000 0x1000>;
 				interrupts = <5>;
@@ -197,7 +197,7 @@
 				clock-names = "uartclk", "apb_pclk";
 			};
 
-			v2m_serial1: uart@a0000 {
+			v2m_serial1: serial@a0000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x0a0000 0x1000>;
 				interrupts = <6>;
@@ -205,7 +205,7 @@
 				clock-names = "uartclk", "apb_pclk";
 			};
 
-			v2m_serial2: uart@b0000 {
+			v2m_serial2: serial@b0000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x0b0000 0x1000>;
 				interrupts = <7>;
@@ -213,7 +213,7 @@
 				clock-names = "uartclk", "apb_pclk";
 			};
 
-			v2m_serial3: uart@c0000 {
+			v2m_serial3: serial@c0000 {
 				compatible = "arm,pl011", "arm,primecell";
 				reg = <0x0c0000 0x1000>;
 				interrupts = <8>;
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 1374e72951c0..4381e73bc5c8 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -729,7 +729,7 @@
 		};
 	};
 
-	soc_uart0: uart@7ff80000 {
+	soc_uart0: serial@7ff80000 {
 		compatible = "arm,pl011", "arm,primecell";
 		reg = <0x0 0x7ff80000 0x0 0x1000>;
 		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index f61e313ab1a4..b81651b1890a 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -158,7 +158,7 @@
 					clock-names = "KMIREFCLK", "apb_pclk";
 				};
 
-				v2m_serial0: uart@90000 {
+				v2m_serial0: serial@90000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x090000 0x1000>;
 					interrupts = <5>;
@@ -166,7 +166,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial1: uart@a0000 {
+				v2m_serial1: serial@a0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0a0000 0x1000>;
 					interrupts = <6>;
@@ -174,7 +174,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial2: uart@b0000 {
+				v2m_serial2: serial@b0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0b0000 0x1000>;
 					interrupts = <7>;
@@ -182,7 +182,7 @@
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				v2m_serial3: uart@c0000 {
+				v2m_serial3: serial@c0000 {
 					compatible = "arm,pl011", "arm,primecell";
 					reg = <0x0c0000 0x1000>;
 					interrupts = <8>;
-- 
2.17.1

