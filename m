Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2285C251E4
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 16:25:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728331AbfEUOZS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 10:25:18 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:59161 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728234AbfEUOZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 10:25:18 -0400
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 349F9FF81B;
        Tue, 21 May 2019 14:25:14 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH resend 2/2] arm64: dts: marvell: Enable AP806 thermal throttling with CPUfreq
Date:   Tue, 21 May 2019 16:25:04 +0200
Message-Id: <20190521142504.31558-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521142504.31558-1-miquel.raynal@bootlin.com>
References: <20190521142504.31558-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Avoid critical temperatures in the AP806 by adding the relevant trip
points/cooling-maps using CPUfreq as cooling device.

So far, when the temperature reaches 100°C in the thermal IP of the
AP806 (close enough from the 2/4 cores) an overheat interrupt is
raised. The thermal core then shutdowns the system to avoid damaging
the hardware.

Adding CPUfreq as a cooling device could help avoiding such very
critical situation. For that, we enable thermal throttling by
defining, for each CPU, two trip points with the corresponding cooling
'intensity'. CPU0 and CPU1 are in the same cluster and are driven by
the same clock. Same applies for CPU2 and CPU3, if available. So
changing the frequency of one will also change the frequency of the
other one, hence the use of two cooling devices per core.

The heat map is as follow:
- Below 85°C: the cluster runs at the highest frequency
  (e.g: 1200MHz).
- Between 85°C and 95°C: there are two trip points at half
  (e.g: 600MHz) and a third (e.g: 400MHz) of the highest frequency.
- Above 95°C the cluster runs at a quarter of the highest frequency
  (e.g: 300MHz).
- At 100°C the platform is shutdown.

Suggested-by: Omri Itach <omrii@marvell.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../boot/dts/marvell/armada-ap806-dual.dtsi   |   2 +
 .../boot/dts/marvell/armada-ap806-quad.dtsi   |   5 +
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 102 ++++++++++++++++--
 3 files changed, 99 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
index 861fd21922c4..9024a2d9db07 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
@@ -20,12 +20,14 @@
 			compatible = "arm,cortex-a72";
 			reg = <0x000>;
 			enable-method = "psci";
+			#cooling-cells = <2>;
 		};
 		cpu1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			reg = <0x001>;
 			enable-method = "psci";
+			#cooling-cells = <2>;
 		};
 	};
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
index 472211159979..4b81ffcb901a 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806-quad.dtsi
@@ -21,6 +21,7 @@
 			reg = <0x000>;
 			enable-method = "psci";
 			clocks = <&cpu_clk 0>;
+			#cooling-cells = <2>;
 		};
 		cpu1: cpu@1 {
 			device_type = "cpu";
@@ -28,6 +29,7 @@
 			reg = <0x001>;
 			enable-method = "psci";
 			clocks = <&cpu_clk 0>;
+			#cooling-cells = <2>;
 		};
 		cpu2: cpu@100 {
 			device_type = "cpu";
@@ -35,6 +37,7 @@
 			reg = <0x100>;
 			enable-method = "psci";
 			clocks = <&cpu_clk 1>;
+			#cooling-cells = <2>;
 		};
 		cpu3: cpu@101 {
 			device_type = "cpu";
@@ -42,6 +45,8 @@
 			reg = <0x101>;
 			enable-method = "psci";
 			clocks = <&cpu_clk 1>;
+			#cooling-cells = <2>;
 		};
 	};
+
 };
diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index df90e8b1daa8..83265cd2d7a1 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -303,8 +303,6 @@
 	 *
 	 * Only one thermal zone per AP/CP may trigger interrupts at a time, the
 	 * first one that will have a critical trip point will be chosen.
-	 *
-	 * The cooling maps are always empty as there are no cooling devices.
 	 */
 	thermal-zones {
 		ap_thermal_ic: ap-thermal-ic {
@@ -330,8 +328,29 @@
 
 			thermal-sensors = <&ap_thermal 1>;
 
-			trips { };
-			cooling-maps { };
+			trips {
+				cpu0_hot: cpu0-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu0_emerg: cpu0-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map0_hot: map0-hot {
+					trip = <&cpu0_hot>;
+					cooling-device = <&cpu0 1 2>, <&cpu1 1 2>;
+				};
+				map0_emerg: map0-ermerg {
+					trip = <&cpu0_emerg>;
+					cooling-device = <&cpu0 3 3>, <&cpu1 3 3>;
+				};
+			};
 		};
 
 		ap_thermal_cpu1: ap-thermal-cpu1 {
@@ -340,8 +359,29 @@
 
 			thermal-sensors = <&ap_thermal 2>;
 
-			trips { };
-			cooling-maps { };
+			trips {
+				cpu1_hot: cpu1-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu1_emerg: cpu1-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map1_hot: map1-hot {
+					trip = <&cpu1_hot>;
+					cooling-device = <&cpu0 1 2>, <&cpu1 1 2>;
+				};
+				map1_emerg: map1-emerg {
+					trip = <&cpu1_emerg>;
+					cooling-device = <&cpu0 3 3>, <&cpu1 3 3>;
+				};
+			};
 		};
 
 		ap_thermal_cpu2: ap-thermal-cpu2 {
@@ -350,8 +390,29 @@
 
 			thermal-sensors = <&ap_thermal 3>;
 
-			trips { };
-			cooling-maps { };
+			trips {
+				cpu2_hot: cpu2-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu2_emerg: cpu2-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map2_hot: map2-hot {
+					trip = <&cpu2_hot>;
+					cooling-device = <&cpu2 1 2>, <&cpu3 1 2>;
+				};
+				map2_emerg: map2-emerg {
+					trip = <&cpu2_emerg>;
+					cooling-device = <&cpu2 3 3>, <&cpu3 3 3>;
+				};
+			};
 		};
 
 		ap_thermal_cpu3: ap-thermal-cpu3 {
@@ -360,8 +421,29 @@
 
 			thermal-sensors = <&ap_thermal 4>;
 
-			trips { };
-			cooling-maps { };
+			trips {
+				cpu3_hot: cpu3-hot {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				cpu3_emerg: cpu3-emerg {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+			};
+
+			cooling-maps {
+				map3_hot: map3-bhot {
+					trip = <&cpu3_hot>;
+					cooling-device = <&cpu2 1 2>, <&cpu3 1 2>;
+				};
+				map3_emerg: map3-emerg {
+					trip = <&cpu3_emerg>;
+					cooling-device = <&cpu2 3 3>, <&cpu3 3 3>;
+				};
+			};
 		};
 	};
 };
-- 
2.19.1

