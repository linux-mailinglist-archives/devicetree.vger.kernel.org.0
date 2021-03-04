Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 723BC32D76C
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 17:10:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236243AbhCDQIw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 11:08:52 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56514 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236552AbhCDQI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 11:08:27 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 124G7Sfb097987;
        Thu, 4 Mar 2021 10:07:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614874048;
        bh=Twcf/eq0ZLmWmTYgytyk8YwaMkwHVVx6aovMmmn3MTs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=DgdAG0Jo5VeXZv0nzOvGyBg3TlnWp9KfSfIVUdo/mECK8Xk7lm4WNW/MD7xZnGSSN
         uiq+31N5QWbu21T0qYtQnQevGSNbsp24O9PHVoLpCu2n7jimWJQ5XE3Khj45J2MsD2
         uMnzMhs6Sc5Mi56Ti5AR0aeYpBZpVLVlr3I4yqe0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 124G7SxY089158
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 4 Mar 2021 10:07:28 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 4 Mar
 2021 10:07:28 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 4 Mar 2021 10:07:27 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 124G7RsG102555;
        Thu, 4 Mar 2021 10:07:27 -0600
Received: from localhost ([10.250.35.110])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 124G7RNk124430;
        Thu, 4 Mar 2021 10:07:27 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 2/2] arm64: dts: ti: k3-j721e-main: Add ICSSG nodes
Date:   Thu, 4 Mar 2021 10:07:12 -0600
Message-ID: <20210304160712.8452-3-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210304160712.8452-1-s-anna@ti.com>
References: <20210304160712.8452-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the DT nodes for the ICSSG0 and ICSSG1 processor subsystems that are
present on the K3 J721E SoCs. The two ICSSGs are identical to each other
for the most part, with the ICSSG1 supporting slightly enhanced features
for supporting SGMII PRU Ethernet. Each ICSSG instance is represented by
a PRUSS subsystem node and other child nodes. These nodes are enabled by
default.

The ICSSGs on K3 J721E SoCs are revised versions of the ICSSG on the first
AM65x SR1.0 SoCs. The PRU IRAMs are slightly smaller, and the IP includes
two new auxiliary PRU cores called Tx_PRUs. The Tx_PRUs have 6 KB of IRAMs
and leverage the same host interrupts as the regular PRU cores. All The
ICSSG host interrupts intended towards the main Arm core are also shared
with other processors on the SoC, and can be partitioned as per system
integration needs.

The ICSSG subsystem node contains the entire address space. The various
sub-modules of the ICSSG are represented as individual child nodes (so
platform devices themselves) of the PRUSS subsystem node. These include
the two PRU cores, two RTU cores, two Tx_PRU cores and the interrupt
controller. All the Data RAMs are represented within a child node of
its own named 'memories' without any compatible. The Real Time Media
Independent Interface controller (MII_RT), the Gigabit capable MII_G_RT
and the CFG sub-module are represented as syscon nodes. The ICSSG CFG
sub-module provides two internal clock muxes, and these are represented
as children of the CFG child node 'clocks' by the 'coreclk-mux' and
iepclk-mux' clk nodes. The default parents for these mux clocks are also
defined using the assigned-clock-parents property.

The DT nodes use all standard properties. The regs property in the
PRU/RTU/Tx_PRU nodes define the addresses for the Instruction RAM, the
Debug and Control sub-modules for that PRU core. The firmware for each
PRU/RTU/Tx_PRU core is defined through a 'firmware-name' property.

The default names for the firmware images for each PRU, RTU and Tx_PRU
cores are defined as follows (these can be adjusted either in derivative
board dts files or through sysfs at runtime if required):
 ICSSG0 PRU0 Core    : j7-pru0_0-fw   ; PRU1 Core    : j7-pru0_1-fw
 ICSSG0 RTU0 Core    : j7-rtu0_0-fw   ; RTU1 Core    : j7-rtu0_1-fw
 ICSSG0 Tx_PRU0 Core : j7-txpru0_0-fw ; Tx_PRU1 Core : j7-txpru0_1-fw
 ICSSG1 PRU0 Core    : j7-pru1_0-fw   ; PRU1 Core    : j7-pru1_1-fw
 ICSSG1 RTU0 Core    : j7-rtu1_0-fw   ; RTU1 Core    : j7-rtu1_1-fw
 ICSSG1 Tx_PRU0 Core : j7-txpru1_0-fw ; Tx_PRU1 Core : j7-txpru1_1-fw

Note:
1. The ICSSG INTC on J721E SoCs share all the host interrupts with other
   processors, so use the 'ti,irqs-reserved' property in derivative board
   dts files _if_ any of them should not be handled by the host OS.
2. There are few more sub-modules like the Industrial Ethernet Peripherals
   (IEPs), MDIO, PWM, UART that do not have bindings and so will be added
   in the future.

Signed-off-by: Suman Anna <s-anna@ti.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
v2: No code changes, picked up review tags
v1: https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210114194805.8231-3-s-anna@ti.com/

 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 262 ++++++++++++++++++++++
 1 file changed, 262 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index f1e7da3dfa27..c2aa45a3ac79 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -1662,4 +1662,266 @@ c71_0: dsp@64800000 {
 		resets = <&k3_reset 15 1>;
 		firmware-name = "j7-c71_0-fw";
 	};
+
+	icssg0: icssg@b000000 {
+		compatible = "ti,j721e-icssg";
+		reg = <0x00 0xb000000 0x00 0x80000>;
+		power-domains = <&k3_pds 119 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x00 0x0b000000 0x100000>;
+
+		icssg0_mem: memories@0 {
+			reg = <0x0 0x2000>,
+			      <0x2000 0x2000>,
+			      <0x10000 0x10000>;
+			reg-names = "dram0", "dram1",
+				    "shrdram2";
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
+					clocks = <&k3_clks 119 24>, /* icssg0_core_clk */
+						 <&k3_clks 119 1>;  /* icssg0_iclk */
+					assigned-clocks = <&icssg0_coreclk_mux>;
+					assigned-clock-parents = <&k3_clks 119 1>;
+				};
+
+				icssg0_iepclk_mux: iepclk-mux@30 {
+					reg = <0x30>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 119 3>,	/* icssg0_iep_clk */
+						 <&icssg0_coreclk_mux>;	/* core_clk */
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
+			interrupts = <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "host_intr0", "host_intr1",
+					  "host_intr2", "host_intr3",
+					  "host_intr4", "host_intr5",
+					  "host_intr6", "host_intr7";
+		};
+
+		pru0_0: pru@34000 {
+			compatible = "ti,j721e-pru";
+			reg = <0x34000 0x3000>,
+			      <0x22000 0x100>,
+			      <0x22400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-pru0_0-fw";
+		};
+
+		rtu0_0: rtu@4000 {
+			compatible = "ti,j721e-rtu";
+			reg = <0x4000 0x2000>,
+			      <0x23000 0x100>,
+			      <0x23400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-rtu0_0-fw";
+		};
+
+		tx_pru0_0: txpru@a000 {
+			compatible = "ti,j721e-tx-pru";
+			reg = <0xa000 0x1800>,
+			      <0x25000 0x100>,
+			      <0x25400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-txpru0_0-fw";
+		};
+
+		pru0_1: pru@38000 {
+			compatible = "ti,j721e-pru";
+			reg = <0x38000 0x3000>,
+			      <0x24000 0x100>,
+			      <0x24400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-pru0_1-fw";
+		};
+
+		rtu0_1: rtu@6000 {
+			compatible = "ti,j721e-rtu";
+			reg = <0x6000 0x2000>,
+			      <0x23800 0x100>,
+			      <0x23c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-rtu0_1-fw";
+		};
+
+		tx_pru0_1: txpru@c000 {
+			compatible = "ti,j721e-tx-pru";
+			reg = <0xc000 0x1800>,
+			      <0x25800 0x100>,
+			      <0x25c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-txpru0_1-fw";
+		};
+	};
+
+	icssg1: icssg@b100000 {
+		compatible = "ti,j721e-icssg";
+		reg = <0x00 0xb100000 0x00 0x80000>;
+		power-domains = <&k3_pds 120 TI_SCI_PD_EXCLUSIVE>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x00 0x0b100000 0x100000>;
+
+		icssg1_mem: memories@b100000 {
+			reg = <0x0 0x2000>,
+			      <0x2000 0x2000>,
+			      <0x10000 0x10000>;
+			reg-names = "dram0", "dram1",
+				    "shrdram2";
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
+					clocks = <&k3_clks 120 54>, /* icssg1_core_clk */
+						 <&k3_clks 120 4>;  /* icssg1_iclk */
+					assigned-clocks = <&icssg1_coreclk_mux>;
+					assigned-clock-parents = <&k3_clks 120 4>;
+				};
+
+				icssg1_iepclk_mux: iepclk-mux@30 {
+					reg = <0x30>;
+					#clock-cells = <0>;
+					clocks = <&k3_clks 120 9>,	/* icssg1_iep_clk */
+						 <&icssg1_coreclk_mux>;	/* core_clk */
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
+			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "host_intr0", "host_intr1",
+					  "host_intr2", "host_intr3",
+					  "host_intr4", "host_intr5",
+					  "host_intr6", "host_intr7";
+		};
+
+		pru1_0: pru@34000 {
+			compatible = "ti,j721e-pru";
+			reg = <0x34000 0x4000>,
+			      <0x22000 0x100>,
+			      <0x22400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-pru1_0-fw";
+		};
+
+		rtu1_0: rtu@4000 {
+			compatible = "ti,j721e-rtu";
+			reg = <0x4000 0x2000>,
+			      <0x23000 0x100>,
+			      <0x23400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-rtu1_0-fw";
+		};
+
+		tx_pru1_0: txpru@a000 {
+			compatible = "ti,j721e-tx-pru";
+			reg = <0xa000 0x1800>,
+			      <0x25000 0x100>,
+			      <0x25400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-txpru1_0-fw";
+		};
+
+		pru1_1: pru@38000 {
+			compatible = "ti,j721e-pru";
+			reg = <0x38000 0x4000>,
+			      <0x24000 0x100>,
+			      <0x24400 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-pru1_1-fw";
+		};
+
+		rtu1_1: rtu@6000 {
+			compatible = "ti,j721e-rtu";
+			reg = <0x6000 0x2000>,
+			      <0x23800 0x100>,
+			      <0x23c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-rtu1_1-fw";
+		};
+
+		tx_pru1_1: txpru@c000 {
+			compatible = "ti,j721e-tx-pru";
+			reg = <0xc000 0x1800>,
+			      <0x25800 0x100>,
+			      <0x25c00 0x100>;
+			reg-names = "iram", "control", "debug";
+			firmware-name = "j7-txpru1_1-fw";
+		};
+	};
 };
-- 
2.30.1

