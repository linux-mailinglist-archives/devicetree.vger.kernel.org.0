Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA115410D4E
	for <lists+devicetree@lfdr.de>; Sun, 19 Sep 2021 22:29:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232220AbhISUbL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Sep 2021 16:31:11 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:42738 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232255AbhISUbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Sep 2021 16:31:10 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 18JKTaAE001268;
        Sun, 19 Sep 2021 15:29:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1632083376;
        bh=CXIQuxfdFuQPzGVlJRJ84nub7oiHF8/A+odhlB/tsSk=;
        h=From:To:CC:Subject:Date;
        b=fmKWv1k1cny4BmTgGY3n7yzdoaW9y6kIVanDxaanlzK5WyfU0JxplI5hieFIlTLM7
         Mwd9tHKjFb2REHWzkVvBdmTovDZhskEBzCbUCFWwGRm6xWzBMEuMlzIPbg9B9RjB2e
         1ZSFHM2bgOvGbe2DvZ24wpJjnPgiHYjbjd1dP17c=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 18JKTakX045990
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sun, 19 Sep 2021 15:29:36 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Sun, 19
 Sep 2021 15:29:35 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Sun, 19 Sep 2021 15:29:35 -0500
Received: from lelv0854.itg.ti.com (lelv0854.itg.ti.com [10.181.64.140])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 18JKTZZe004863;
        Sun, 19 Sep 2021 15:29:35 -0500
Received: from localhost ([10.250.37.219])
        by lelv0854.itg.ti.com (8.14.7/8.14.7) with ESMTP id 18JKTZPo003460;
        Sun, 19 Sep 2021 15:29:35 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am64-main: Add ICSSG nodes
Date:   Sun, 19 Sep 2021 15:29:35 -0500
Message-ID: <20210919202935.15604-1-s-anna@ti.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the DT nodes for the ICSSG0 and ICSSG1 processor subsystems that are
present on the K3 AM64x SoCs. The two ICSSGs are identical to each other
for the most part, with some of the peripheral pins from ICSSG1 not pinned
out. Each ICSSG instance is represented by a PRUSS subsystem node and other
child nodes.

The nodes are all added and enabled in the common k3-am64-main.dtsi
file by default. The MDIO nodes need pinctrl lines, and so should be
enabled only on boards where they are actually wired and pinned out
for ICSSG Ethernet. Any new board dts file should disable these if
they are not sure. These are disabled in the existing AM64x board dts
files to begin with.

The ICSSGs on K3 AM64x SoCs are very similar to the versions of the ICSSG
on K3 J721E and AM65x SR2.0 SoCs. The IRAM and BroadSize RAM sizes are all
identical to those on J721E SoCs. All The ICSSG host interrupts intended
towards the main Arm core are also shared with other processors on the SoC,
and can be partitioned as per system integration needs.

The ICSSG subsystem node contains the entire address space. The various
sub-modules of the ICSSG are represented as individual child nodes (so
platform devices themselves) of the PRUSS subsystem node. These include:
 - two Programmable Real-Time Units (PRUs)
 - two auxiliary PRU cores called RTUs
 - two Transmit Programmable Real-Time Units (Tx_PRUs)
 - Interrupt controller (INTC)
 - a 'memories' node containing all the ICSSG level Data RAMs
 - Real Time Media Independent Interface controller (MII_RT)
 - Gigabit capable MII_G_RT
 - ICSSG CFG sub-module providing two internal clock muxes, with the
   default clock parents also assigned using the assigned-clock-parents
   property.

The default names for the firmware images for each PRU, RTU and Tx_PRU
cores are defined as follows using the 'firmware-name' property (these
can be adjusted either in derivative board dts files or through sysfs at
runtime if required):
 ICSSG0 PRU0 Core    : am64x-pru0_0-fw   ; PRU1 Core    : am64x-pru0_1-fw
 ICSSG0 RTU0 Core    : am64x-rtu0_0-fw   ; RTU1 Core    : am64x-rtu0_1-fw
 ICSSG0 Tx_PRU0 Core : am64x-txpru0_0-fw ; Tx_PRU1 Core : am64x-txpru0_1-fw
 ICSSG1 PRU0 Core    : am64x-pru1_0-fw   ; PRU1 Core    : am64x-pru1_1-fw
 ICSSG1 RTU0 Core    : am64x-rtu1_0-fw   ; RTU1 Core    : am64x-rtu1_1-fw
 ICSSG1 Tx_PRU0 Core : am64x-txpru1_0-fw ; Tx_PRU1 Core : am64x-txpru1_1-fw

Note:
1. The ICSSG INTC on AM64x SoCs share all the host interrupts with other
   processors, so use the 'ti,irqs-reserved' property in derivative board
   dts files _if_ any of them should not be handled by the host OS.
2. There are few more sub-modules like the Industrial Ethernet Peripherals
   (IEPs), eCAP, PWM, UART that do not have bindings and so will be added
   in the future.

Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
Hi Nishanth,

The following patch adds the ICSSG nodes on AM64x SoCs. Patch is on top
of 5.15-rc1. All the required compatibles for the base dts nodes are 
already supported on v5.15-rc1. 

The underscore usage in mdio node is as per the pre-existing bindings,
so it does generate couple of warnings. Also, existing is a warning
about the address-cells in interrupt-controller node which is beyond
the ICSSG case.

regards
Suman

 arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 280 +++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am642-evm.dts  |   8 +
 arch/arm64/boot/dts/ti/k3-am642-sk.dts   |   8 +
 3 files changed, 296 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index 42d1d219a3fd..5ad638b95ffc 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -973,4 +973,284 @@ ecap2: pwm@23120000 {
 		clocks = <&k3_clks 53 0>;
 		clock-names = "fck";
 	};
+
+	icssg0: icssg@30000000 {
+		compatible = "ti,am642-icssg";
+		reg = <0x00 0x30000000 0x00 0x80000>;
+		power-domains = <&k3_pds 81 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x00 0x30000000 0x80000>;
+
+		icssg0_mem: memories@0 {
+			reg = <0x0 0x2000>,
+			      <0x2000 0x2000>,
+			      <0x10000 0x10000>;
+			reg-names = "dram0", "dram1", "shrdram2";
+		};
+
+		icssg0_cfg: cfg@26000 {
+			compatible = "ti,pruss-cfg", "syscon";
+			reg = <0x26000 0x200>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x26000 0x2000>;
+
+			clocks {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				icssg0_coreclk_mux: coreclk-mux@3c {
+					reg = <0x3c>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 81 0>,  /* icssg0_core_clk */
+						 <&k3_clks 81 20>; /* icssg0_iclk */
+					assigned-clocks = <&icssg0_coreclk_mux>;
+					assigned-clock-parents = <&k3_clks 81 20>;
+				};
+
+				icssg0_iepclk_mux: iepclk-mux@30 {
+					reg = <0x30>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 81 3>,	/* icssg0_iep_clk */
+						 <&icssg0_coreclk_mux>;	/* icssg0_coreclk_mux */
+					assigned-clocks = <&icssg0_iepclk_mux>;
+					assigned-clock-parents = <&icssg0_coreclk_mux>;
+				};
+			};
+		};
+
+		icssg0_mii_rt: mii-rt@32000 {
+			compatible = "ti,pruss-mii", "syscon";
+			reg = <0x32000 0x100>;
+		};
+
+		icssg0_mii_g_rt: mii-g-rt@33000 {
+			compatible = "ti,pruss-mii-g", "syscon";
+			reg = <0x33000 0x1000>;
+		};
+
+		icssg0_intc: interrupt-controller@20000 {
+			compatible = "ti,icssg-intc";
+			reg = <0x20000 0x2000>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "host_intr0", "host_intr1",
+					  "host_intr2", "host_intr3",
+					  "host_intr4", "host_intr5",
+					  "host_intr6", "host_intr7";
+		};
+
+		pru0_0: pru@34000 {
+			compatible = "ti,am642-pru";
+			reg = <0x34000 0x3000>,
+			      <0x22000 0x100>,
+			      <0x22400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-pru0_0-fw";
+		};
+
+		rtu0_0: rtu@4000 {
+			compatible = "ti,am642-rtu";
+			reg = <0x4000 0x2000>,
+			      <0x23000 0x100>,
+			      <0x23400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-rtu0_0-fw";
+		};
+
+		tx_pru0_0: txpru@a000 {
+			compatible = "ti,am642-tx-pru";
+			reg = <0xa000 0x1800>,
+			      <0x25000 0x100>,
+			      <0x25400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-txpru0_0-fw";
+		};
+
+		pru0_1: pru@38000 {
+			compatible = "ti,am642-pru";
+			reg = <0x38000 0x3000>,
+			      <0x24000 0x100>,
+			      <0x24400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-pru0_1-fw";
+		};
+
+		rtu0_1: rtu@6000 {
+			compatible = "ti,am642-rtu";
+			reg = <0x6000 0x2000>,
+			      <0x23800 0x100>,
+			      <0x23c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-rtu0_1-fw";
+		};
+
+		tx_pru0_1: txpru@c000 {
+			compatible = "ti,am642-tx-pru";
+			reg = <0xc000 0x1800>,
+			      <0x25800 0x100>,
+			      <0x25c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-txpru0_1-fw";
+		};
+
+		icssg0_mdio: mdio@32400 {
+			compatible = "ti,davinci_mdio";
+			reg = <0x32400 0x100>;
+			clocks = <&k3_clks 62 3>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			bus_freq = <1000000>;
+		};
+	};
+
+	icssg1: icssg@30080000 {
+		compatible = "ti,am642-icssg";
+		reg = <0x00 0x30080000 0x00 0x80000>;
+		power-domains = <&k3_pds 82 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x00 0x30080000 0x80000>;
+
+		icssg1_mem: memories@0 {
+			reg = <0x0 0x2000>,
+			      <0x2000 0x2000>,
+			      <0x10000 0x10000>;
+			reg-names = "dram0", "dram1", "shrdram2";
+		};
+
+		icssg1_cfg: cfg@26000 {
+			compatible = "ti,pruss-cfg", "syscon";
+			reg = <0x26000 0x200>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x26000 0x2000>;
+
+			clocks {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				icssg1_coreclk_mux: coreclk-mux@3c {
+					reg = <0x3c>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 82 0>,   /* icssg1_core_clk */
+						 <&k3_clks 82 20>;  /* icssg1_iclk */
+					assigned-clocks = <&icssg1_coreclk_mux>;
+					assigned-clock-parents = <&k3_clks 82 20>;
+				};
+
+				icssg1_iepclk_mux: iepclk-mux@30 {
+					reg = <0x30>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 82 3>,	/* icssg1_iep_clk */
+						 <&icssg1_coreclk_mux>;	/* icssg1_coreclk_mux */
+					assigned-clocks = <&icssg1_iepclk_mux>;
+					assigned-clock-parents = <&icssg1_coreclk_mux>;
+				};
+			};
+		};
+
+		icssg1_mii_rt: mii-rt@32000 {
+			compatible = "ti,pruss-mii", "syscon";
+			reg = <0x32000 0x100>;
+		};
+
+		icssg1_mii_g_rt: mii-g-rt@33000 {
+			compatible = "ti,pruss-mii-g", "syscon";
+			reg = <0x33000 0x1000>;
+		};
+
+		icssg1_intc: interrupt-controller@20000 {
+			compatible = "ti,icssg-intc";
+			reg = <0x20000 0x2000>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 217 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "host_intr0", "host_intr1",
+					  "host_intr2", "host_intr3",
+					  "host_intr4", "host_intr5",
+					  "host_intr6", "host_intr7";
+		};
+
+		pru1_0: pru@34000 {
+			compatible = "ti,am642-pru";
+			reg = <0x34000 0x4000>,
+			      <0x22000 0x100>,
+			      <0x22400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-pru1_0-fw";
+		};
+
+		rtu1_0: rtu@4000 {
+			compatible = "ti,am642-rtu";
+			reg = <0x4000 0x2000>,
+			      <0x23000 0x100>,
+			      <0x23400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-rtu1_0-fw";
+		};
+
+		tx_pru1_0: txpru@a000 {
+			compatible = "ti,am642-tx-pru";
+			reg = <0xa000 0x1800>,
+			      <0x25000 0x100>,
+			      <0x25400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-txpru1_0-fw";
+		};
+
+		pru1_1: pru@38000 {
+			compatible = "ti,am642-pru";
+			reg = <0x38000 0x4000>,
+			      <0x24000 0x100>,
+			      <0x24400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-pru1_1-fw";
+		};
+
+		rtu1_1: rtu@6000 {
+			compatible = "ti,am642-rtu";
+			reg = <0x6000 0x2000>,
+			      <0x23800 0x100>,
+			      <0x23c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-rtu1_1-fw";
+		};
+
+		tx_pru1_1: txpru@c000 {
+			compatible = "ti,am642-tx-pru";
+			reg = <0xc000 0x1800>,
+			      <0x25800 0x100>,
+			      <0x25c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "am64x-txpru1_1-fw";
+		};
+
+		icssg1_mdio: mdio@32400 {
+			compatible = "ti,davinci_mdio";
+			reg = <0x32400 0x100>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			clocks = <&k3_clks 82 0>;
+			clock-names = "fck";
+			bus_freq = <1000000>;
+		};
+	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 24ce4942618d..6726c4c7c28c 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -630,3 +630,11 @@ &epwm7 {
 &epwm8 {
 	status = "disabled";
 };
+
+&icssg0_mdio {
+	status = "disabled";
+};
+
+&icssg1_mdio {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 6b45cdeeeefa..6b04745147be 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -517,3 +517,11 @@ &epwm7 {
 &epwm8 {
 	status = "disabled";
 };
+
+&icssg0_mdio {
+	status = "disabled";
+};
+
+&icssg1_mdio {
+	status = "disabled";
+};
-- 
2.32.0

