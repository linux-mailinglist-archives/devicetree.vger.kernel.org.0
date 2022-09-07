Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7357F5AFE6D
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 10:03:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230235AbiIGIDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 04:03:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230191AbiIGIDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 04:03:14 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DDBE8A9C0B
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 01:02:57 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id F0B7B8168;
        Wed,  7 Sep 2022 07:55:18 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Keerthy <j-keerthy@ti.com>
Subject: [PATCH v3 2/2] arm64: dts: ti: k3-am65: Add general purpose timers for am65
Date:   Wed,  7 Sep 2022 11:02:43 +0300
Message-Id: <20220907080243.26697-3-tony@atomide.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220907080243.26697-1-tony@atomide.com>
References: <20220907080243.26697-1-tony@atomide.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are 12 general purpose timers on am65 that can be used for things
like PWM using pwm-omap-dmtimer driver. There are also additional four
timers in the MCU domain that do not have interrupts routable for Linux.

We configure the timers with the 25 MHz input clock by default as the
32.768 kHz clock may not be wired on the device. We leave the MCU domain
timers clock mux unconfigured, and mark the MCU domain timers reserved.
The MCU domain timers are likely reserved by the software for the ESM
module.

Compared to am64, the timer clocks are different on am65. And the MCU
timers are at a different IO address. Then j72 adds more timers compared
to am65 with a total of 30 timers. And the j72 clocks are different.

To avoid duplication for dtsi files, eventually we may want to consider
adding timer specific shared dtsi files with the timer clocks mapped
using SoC specific files in include/dt-bindings/clock. But let's get
am65 timers usable first.

Cc: Keerthy <j-keerthy@ti.com>
Cc: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 144 +++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  |  45 +++++++
 2 files changed, 189 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -271,6 +271,150 @@ main_spi4: spi@2140000 {
 		#size-cells = <0>;
 	};
 
+	main_timer0: timer@2400000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2400000 0x00 0x400>;
+		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 23 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 23 0>;
+		assigned-clock-parents = <&k3_clks 23 1>;
+		power-domains = <&k3_pds 23 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer1: timer@2410000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2410000 0x00 0x400>;
+		interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 24 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 24 0>;
+		assigned-clock-parents = <&k3_clks 24 1>;
+		power-domains = <&k3_pds 24 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer2: timer@2420000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2420000 0x00 0x400>;
+		interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 27 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 27 0>;
+		assigned-clock-parents = <&k3_clks 27 1>;
+		power-domains = <&k3_pds 27 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer3: timer@2430000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2430000 0x00 0x400>;
+		interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 28 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 28 0>;
+		assigned-clock-parents = <&k3_clks 28 1>;
+		power-domains = <&k3_pds 28 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer4: timer@2440000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2440000 0x00 0x400>;
+		interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 29 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 29 0>;
+		assigned-clock-parents = <&k3_clks 29 1>;
+		power-domains = <&k3_pds 29 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer5: timer@2450000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2450000 0x00 0x400>;
+		interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 30 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 30 0>;
+		assigned-clock-parents = <&k3_clks 30 1>;
+		power-domains = <&k3_pds 30 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer6: timer@2460000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2460000 0x00 0x400>;
+		interrupts = <GIC_SPI 230 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 31 0>;
+		assigned-clocks = <&k3_clks 31 0>;
+		assigned-clock-parents = <&k3_clks 31 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 31 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer7: timer@2470000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2470000 0x00 0x400>;
+		interrupts = <GIC_SPI 231 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 32 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 32 0>;
+		assigned-clock-parents = <&k3_clks 32 1>;
+		power-domains = <&k3_pds 32 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer8: timer@2480000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2480000 0x00 0x400>;
+		interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 33 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 33 0>;
+		assigned-clock-parents = <&k3_clks 33 1>;
+		power-domains = <&k3_pds 33 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer9: timer@2490000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x2490000 0x00 0x400>;
+		interrupts = <GIC_SPI 233 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 34 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 34 0>;
+		assigned-clock-parents = <&k3_clks 34 1>;
+		power-domains = <&k3_pds 34 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer10: timer@24a0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24a0000 0x00 0x400>;
+		interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 25 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 25 0>;
+		assigned-clock-parents = <&k3_clks 25 1>;
+		power-domains = <&k3_pds 25 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
+	main_timer11: timer@24b0000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x24b0000 0x00 0x400>;
+		interrupts = <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&k3_clks 26 0>;
+		clock-names = "fck";
+		assigned-clocks = <&k3_clks 26 0>;
+		assigned-clock-parents = <&k3_clks 26 1>;
+		power-domains = <&k3_pds 26 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+	};
+
 	sdhci0: mmc@4f80000 {
 		compatible = "ti,am654-sdhci-5.1";
 		reg = <0x0 0x4f80000 0x0 0x260>, <0x0 0x4f90000 0x0 0x134>;
diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
--- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
@@ -132,6 +132,51 @@ adc {
 		};
 	};
 
+	/*
+	 * The MCU domain timer interrupts are routed only to the ESM module,
+	 * and not currently available for Linux. The MCU domain timers are
+	 * of limited use without interrupts, and likely reserved by the ESM.
+	 */
+	mcu_timer0: timer@40400000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x40400000 0x00 0x400>;
+		clocks = <&k3_clks 35 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 35 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+		status = "reserved";
+	};
+
+	mcu_timer1: timer@40410000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x40410000 0x00 0x400>;
+		clocks = <&k3_clks 36 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 36 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+		status = "reserved";
+	};
+
+	mcu_timer2: timer@40420000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x40420000 0x00 0x400>;
+		clocks = <&k3_clks 37 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 37 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+		status = "reserved";
+	};
+
+	mcu_timer3: timer@40430000 {
+		compatible = "ti,am654-timer";
+		reg = <0x00 0x40430000 0x00 0x400>;
+		clocks = <&k3_clks 38 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 38 TI_SCI_PD_EXCLUSIVE>;
+		ti,timer-pwm;
+		status = "reserved";
+	};
+
 	mcu_navss: bus@28380000 {
 		compatible = "simple-mfd";
 		#address-cells = <2>;
-- 
2.37.1
