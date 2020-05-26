Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5E461D0FBC
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 12:30:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732542AbgEMKae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 06:30:34 -0400
Received: from foss.arm.com ([217.140.110.172]:42590 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729731AbgEMKae (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 06:30:34 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCC611FB;
        Wed, 13 May 2020 03:30:33 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2FE93F305;
        Wed, 13 May 2020 03:30:32 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 03/20] arm64: dts: arm: fvp: Move fixed devices out of bus node
Date:   Wed, 13 May 2020 11:29:59 +0100
Message-Id: <20200513103016.130417-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The devicetree compiler complains when DT nodes without a reg property
live inside a (simple) bus node:
Warning (simple_bus_reg): Node /bus@8000000/motherboard-bus/v2m_refclk32khz
                          missing or empty reg/ranges property

Move the fixed clocks, the fixed regulator, and the config bus subtree
to the root node, since they do not depend on any busses.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../boot/dts/arm/rtsm_ve-motherboard.dtsi     | 136 +++++++++---------
 1 file changed, 68 insertions(+), 68 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index d1bfa62ca073..f61e313ab1a4 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -8,6 +8,74 @@
  * VEMotherBoard.lisa
  */
 / {
+	v2m_clk24mhz: clk24mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "v2m:clk24mhz";
+	};
+
+	v2m_refclk1mhz: refclk1mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <1000000>;
+		clock-output-names = "v2m:refclk1mhz";
+	};
+
+	v2m_refclk32khz: refclk32khz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "v2m:refclk32khz";
+	};
+
+	v2m_fixed_3v3: v2m-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	mcc {
+		compatible = "arm,vexpress,config-bus";
+		arm,vexpress,config-bridge = <&v2m_sysreg>;
+
+		v2m_oscclk1: oscclk1 {
+			/* CLCD clock */
+			compatible = "arm,vexpress-osc";
+			arm,vexpress-sysreg,func = <1 1>;
+			freq-range = <23750000 63500000>;
+			#clock-cells = <0>;
+			clock-output-names = "v2m:oscclk1";
+		};
+
+		reset {
+			compatible = "arm,vexpress-reset";
+			arm,vexpress-sysreg,func = <5 0>;
+		};
+
+		muxfpga {
+			compatible = "arm,vexpress-muxfpga";
+			arm,vexpress-sysreg,func = <7 0>;
+		};
+
+		shutdown {
+			compatible = "arm,vexpress-shutdown";
+			arm,vexpress-sysreg,func = <8 0>;
+		};
+
+		reboot {
+			compatible = "arm,vexpress-reboot";
+			arm,vexpress-sysreg,func = <9 0>;
+		};
+
+		dvimode {
+			compatible = "arm,vexpress-dvimode";
+			arm,vexpress-sysreg,func = <11 0>;
+		};
+	};
+
 	bus@8000000 {
 		motherboard {
 			arm,v2m-memory-map = "rs1";
@@ -30,27 +98,6 @@
 				interrupts = <15>;
 			};
 
-			v2m_clk24mhz: clk24mhz {
-				compatible = "fixed-clock";
-				#clock-cells = <0>;
-				clock-frequency = <24000000>;
-				clock-output-names = "v2m:clk24mhz";
-			};
-
-			v2m_refclk1mhz: refclk1mhz {
-				compatible = "fixed-clock";
-				#clock-cells = <0>;
-				clock-frequency = <1000000>;
-				clock-output-names = "v2m:refclk1mhz";
-			};
-
-			v2m_refclk32khz: refclk32khz {
-				compatible = "fixed-clock";
-				#clock-cells = <0>;
-				clock-frequency = <32768>;
-				clock-output-names = "v2m:refclk32khz";
-			};
-
 			iofpga@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
@@ -198,53 +245,6 @@
 					};
 				};
 			};
-
-			v2m_fixed_3v3: v2m-3v3 {
-				compatible = "regulator-fixed";
-				regulator-name = "3V3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			mcc {
-				compatible = "arm,vexpress,config-bus";
-				arm,vexpress,config-bridge = <&v2m_sysreg>;
-
-				v2m_oscclk1: oscclk1 {
-					/* CLCD clock */
-					compatible = "arm,vexpress-osc";
-					arm,vexpress-sysreg,func = <1 1>;
-					freq-range = <23750000 63500000>;
-					#clock-cells = <0>;
-					clock-output-names = "v2m:oscclk1";
-				};
-
-				reset {
-					compatible = "arm,vexpress-reset";
-					arm,vexpress-sysreg,func = <5 0>;
-				};
-
-				muxfpga {
-					compatible = "arm,vexpress-muxfpga";
-					arm,vexpress-sysreg,func = <7 0>;
-				};
-
-				shutdown {
-					compatible = "arm,vexpress-shutdown";
-					arm,vexpress-sysreg,func = <8 0>;
-				};
-
-				reboot {
-					compatible = "arm,vexpress-reboot";
-					arm,vexpress-sysreg,func = <9 0>;
-				};
-
-				dvimode {
-					compatible = "arm,vexpress-dvimode";
-					arm,vexpress-sysreg,func = <11 0>;
-				};
-			};
 		};
 	};
 };
-- 
2.17.1

