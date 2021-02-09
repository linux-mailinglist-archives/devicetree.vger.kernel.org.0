Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04BEA314EF4
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:34:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbhBIMdg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:33:36 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39021 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbhBIMde (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:33:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612874014; x=1644410014;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=077YnwDwKAoaZLyayKqj3ad/MpHjhavXIRgm8FQqxSU=;
  b=XQEe8ADsHJcsZIcyW8oi8Y+UO5CeW7ad8JAtaifqQNV1RJUspG9PQIF1
   aZcdzkDg3Uj1Tve92HGTiSsRoOfEPuOYl2VX69R2YlCMbrPlceucbCxkX
   E+iFx73UN13Qt4sUh0W71Z6rCJEL3OGs9I2eu3yRzoJrbq8B3JhbZABJC
   4HoTJFlgmRmRiQmACJrHSluNma+4oN8ptwxpINvb6gv4jKlQJNSTaFclK
   /Xe1lWMqGX/pbFjt+D4asZBne1oWck5xzwLuOTUjcQ7JqKRFJu6paX4qI
   5QQcIspXrHHAAYQHFRbVnFGYuk6X6+5T7Gf7X2dkyM0832WGWvg26DVFc
   Q==;
IronPort-SDR: EJT9TD57IB04hKWLEKlzjFOYi0X6t5CjYqh/l3xpXrOanSr8w0aUaFtROQhcT8fIAEiX6EZ5s8
 YgWfNZd49q7XkgSx29N4gqxknNzLEMJVDPeC5w96P34/yPrq4a2vqG2A+cs0ODly0Y1mSx+L9K
 BwFdUjCgMNhQwo7O9KoTSX1jSF2MFHNw6eiw56qno80xiwVuUM5J01MLhtZ0eFildtNqKu0cRy
 hYIbtAIUSwYNAobjAlh8I3rrn5y8vftW1+jtOyN6PIt/xEFvltqXww/dk0DGWEm7PtS2KPalRK
 SFU=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996816"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:32 +0800
IronPort-SDR: 2bPMmqKmwDRCmrSjABtAYq5X82LgydD6cc/sQviTyxc6k2cD9tyyYT48XYB9TlEy4h/H+zwUzz
 sNVewjRkeLWIX9J4Mw42ygvRw8cYbB4er2vXEkgJRrzWH84faTzxiB9e6g766AGFMAE78vU+/i
 YT03InASkojL8sHGHsEFf5+P+9+Sw1ZgLUWsbsWvbRmeeWMjhbhjWwduZ1Tb+1oQhUbe41s2wx
 eE40ZWmMhMJpQ94SrPRVtUxcBLZlqcP9C2K8TIWaY1I+yyrcZSQ/Vtc0GQBJ4e7uxK/Sioyrmv
 87wHz5fKFWJA1mTe4VY5NkgW
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:17 -0800
IronPort-SDR: YGtE/WtwrmHkfhJ838Y3faL0mj7e0UKGii+oMZsbMDJC8taqDfETY17//7RhesQHf0U0Ftsla5
 8OzKu8BUeCKLhePLyLeANN4/dQJa81PdfsPEs9bKeMSlJdvMDFs8BODssVD6Fj/tvr7ioHnvUZ
 /LXUOwHj8uFDQUPXtnWo7556xzIG1mQsD0fOm7H/P+TAzqQgTJZWlmm3/7aRqs/05ZQzQANbc1
 XZnYKNl3i0G75TVxfXItkaxmnuSY2BzBC4NHGJQm7gOYQgTfpCQvjQcTBacb4oqKevnlRe+2dh
 Ez8=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:32 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 09/16] riscv: Update Canaan Kendryte K210 device tree
Date:   Tue,  9 Feb 2021 21:30:07 +0900
Message-Id: <20210209123014.165928-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the Canaan Kendryte K210 base device tree k210.dtsi to define
all supported peripherals of the SoC, their clocks and reset lines.
The device tree file k210.dts is renamed to k210_generic.dts and
becomes the default value selection of the configuration option
SOC_CANAAN_K210_DTB_BUILTIN_SOURCE. No device beside the serial console
is defined by this device tree. This makes this generic device tree
suitable for use with a builtin initramfs with all known K210 based
boards.

These changes result in the K210_CLK_ACLK clock ID to be unused and
removed from the dt-bindings k210-clk.h header file.

Most updates to the k210.dtsi file come from Sean Anderson's work on
U-Boot support for the K210.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kconfig.socs                     |   2 +-
 arch/riscv/boot/dts/canaan/k210.dts         |  23 --
 arch/riscv/boot/dts/canaan/k210.dtsi        | 395 ++++++++++++++++++--
 arch/riscv/boot/dts/canaan/k210_generic.dts |  46 +++
 include/dt-bindings/clock/k210-clk.h        |   1 -
 5 files changed, 414 insertions(+), 53 deletions(-)
 delete mode 100644 arch/riscv/boot/dts/canaan/k210.dts
 create mode 100644 arch/riscv/boot/dts/canaan/k210_generic.dts

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 6402746c68f3..7efcece8896c 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -51,7 +51,7 @@ config SOC_CANAAN_K210_DTB_SOURCE
 	string "Source file for the Canaan Kendryte K210 builtin DTB"
 	depends on SOC_CANAAN
 	depends on SOC_CANAAN_K210_DTB_BUILTIN
-	default "k210"
+	default "k210_generic"
 	help
 	  Base name (without suffix, relative to arch/riscv/boot/dts/canaan)
 	  for the DTS file that will be used to produce the DTB linked into the
diff --git a/arch/riscv/boot/dts/canaan/k210.dts b/arch/riscv/boot/dts/canaan/k210.dts
deleted file mode 100644
index 0d1f28fce6b2..000000000000
--- a/arch/riscv/boot/dts/canaan/k210.dts
+++ /dev/null
@@ -1,23 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Copyright (C) 2020 Western Digital Corporation or its affiliates.
- */
-
-/dts-v1/;
-
-#include "k210.dtsi"
-
-/ {
-	model = "Kendryte K210 generic";
-	compatible = "kendryte,k210";
-
-	chosen {
-		bootargs = "earlycon console=ttySIF0";
-		stdout-path = "serial0";
-	};
-};
-
-&uarths0 {
-	status = "okay";
-};
-
diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
index 354b263195a3..5e8ca8142482 100644
--- a/arch/riscv/boot/dts/canaan/k210.dtsi
+++ b/arch/riscv/boot/dts/canaan/k210.dtsi
@@ -1,9 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
- * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
+ * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
  * Copyright (C) 2020 Western Digital Corporation or its affiliates.
  */
 #include <dt-bindings/clock/k210-clk.h>
+#include <dt-bindings/pinctrl/k210-fpioa.h>
+#include <dt-bindings/reset/k210-rst.h>
 
 / {
 	/*
@@ -12,14 +14,17 @@ / {
 	 */
 	#address-cells = <1>;
 	#size-cells = <1>;
-	compatible = "kendryte,k210";
+	compatible = "canaan,kendryte-k210";
 
 	aliases {
 		serial0 = &uarths0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
 	};
 
 	/*
-	 * The K210 has an sv39 MMU following the priviledge specification v1.9.
+	 * The K210 has an sv39 MMU following the privileged specification v1.9.
 	 * Since this is a non-ratified draft specification, the kernel does not
 	 * support it and the K210 support enabled only for the !MMU case.
 	 * Be consistent with this by setting the CPUs MMU type to "none".
@@ -30,14 +35,14 @@ cpus {
 		timebase-frequency = <7800000>;
 		cpu0: cpu@0 {
 			device_type = "cpu";
+			compatible = "canaan,k210", "riscv";
 			reg = <0>;
-			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
 			riscv,isa = "rv64imafdc";
-			mmu-type = "none";
-			i-cache-size = <0x8000>;
+			mmu-type = "riscv,none";
 			i-cache-block-size = <64>;
-			d-cache-size = <0x8000>;
+			i-cache-size = <0x8000>;
 			d-cache-block-size = <64>;
+			d-cache-size = <0x8000>;
 			cpu0_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				interrupt-controller;
@@ -46,14 +51,14 @@ cpu0_intc: interrupt-controller {
 		};
 		cpu1: cpu@1 {
 			device_type = "cpu";
+			compatible = "canaan,k210", "riscv";
 			reg = <1>;
-			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
 			riscv,isa = "rv64imafdc";
-			mmu-type = "none";
-			i-cache-size = <0x8000>;
+			mmu-type = "riscv,none";
 			i-cache-block-size = <64>;
-			d-cache-size = <0x8000>;
+			i-cache-size = <0x8000>;
 			d-cache-block-size = <64>;
+			d-cache-size = <0x8000>;
 			cpu1_intc: interrupt-controller {
 				#interrupt-cells = <1>;
 				interrupt-controller;
@@ -64,10 +69,15 @@ cpu1_intc: interrupt-controller {
 
 	sram: memory@80000000 {
 		device_type = "memory";
+		compatible = "canaan,k210-sram";
 		reg = <0x80000000 0x400000>,
 		      <0x80400000 0x200000>,
 		      <0x80600000 0x200000>;
 		reg-names = "sram0", "sram1", "aisram";
+		clocks = <&sysclk K210_CLK_SRAM0>,
+			 <&sysclk K210_CLK_SRAM1>,
+			 <&sysclk K210_CLK_AI>;
+		clock-names = "sram0", "sram1", "aisram";
 	};
 
 	clocks {
@@ -81,40 +91,369 @@ in0: oscillator {
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "kendryte,k210-soc", "simple-bus";
+		compatible = "simple-bus";
 		ranges;
 		interrupt-parent = <&plic0>;
 
-		sysctl: sysctl@50440000 {
-			compatible = "kendryte,k210-sysctl", "simple-mfd";
-			reg = <0x50440000 0x1000>;
-			#clock-cells = <1>;
+		rom0: nvmem@1000 {
+			reg = <0x1000 0x1000>;
+			read-only;
 		};
 
-		clint0: clint@2000000 {
-			#interrupt-cells = <1>;
-			compatible = "riscv,clint0";
+		clint0: timer@2000000 {
+			compatible = "canaan,k210-clint", "sifive,clint0";
 			reg = <0x2000000 0xC000>;
-			interrupts-extended =  <&cpu0_intc 3 &cpu0_intc 7
-						&cpu1_intc 3 &cpu1_intc 7>;
+			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
+					      &cpu1_intc 3 &cpu1_intc 7>;
 		};
 
 		plic0: interrupt-controller@c000000 {
 			#interrupt-cells = <1>;
-			interrupt-controller;
-			compatible = "kendryte,k210-plic0", "riscv,plic0";
+			#address-cells = <0>;
+			compatible = "canaan,k210-plic", "sifive,plic-1.0.0";
 			reg = <0xC000000 0x4000000>;
-			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
-					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
+			interrupt-controller;
+			interrupts-extended = <&cpu0_intc 11 &cpu1_intc 11>;
 			riscv,ndev = <65>;
-			riscv,max-priority = <7>;
 		};
 
 		uarths0: serial@38000000 {
-			compatible = "kendryte,k210-uarths", "sifive,uart0";
+			compatible = "canaan,k210-uarths", "sifive,uart0";
 			reg = <0x38000000 0x1000>;
 			interrupts = <33>;
-			clocks = <&sysctl K210_CLK_CPU>;
+			clocks = <&sysclk K210_CLK_CPU>;
+		};
+
+		gpio0: gpio-controller@38001000 {
+			#interrupt-cells = <2>;
+			#gpio-cells = <2>;
+			compatible = "canaan,k210-gpiohs", "sifive,gpio0";
+			reg = <0x38001000 0x1000>;
+			interrupt-controller;
+			interrupts = <34 35 36 37 38 39 40 41
+				      42 43 44 45 46 47 48 49
+				      50 51 52 53 54 55 56 57
+				      58 59 60 61 62 63 64 65>;
+			gpio-controller;
+			ngpios = <32>;
+		};
+
+		dmac0: dma-controller@50000000 {
+			compatible = "snps,axi-dma-1.01a";
+			reg = <0x50000000 0x1000>;
+			interrupts = <27 28 29 30 31 32>;
+			#dma-cells = <1>;
+			clocks = <&sysclk K210_CLK_DMA>, <&sysclk K210_CLK_DMA>;
+			clock-names = "core-clk", "cfgr-clk";
+			resets = <&sysrst K210_RST_DMA>;
+			dma-channels = <6>;
+			snps,dma-masters = <2>;
+			snps,priority = <0 1 2 3 4 5>;
+			snps,data-width = <5>;
+			snps,block-size = <0x200000 0x200000 0x200000
+					   0x200000 0x200000 0x200000>;
+			snps,axi-max-burst-len = <256>;
+		};
+
+		apb0: bus@50200000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "simple-pm-bus";
+			ranges;
+			clocks = <&sysclk K210_CLK_APB0>;
+
+			gpio1: gpio@50200000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "snps,dw-apb-gpio";
+				reg = <0x50200000 0x80>;
+				clocks = <&sysclk K210_CLK_APB0>,
+					 <&sysclk K210_CLK_GPIO>;
+				clock-names = "bus", "db";
+				resets = <&sysrst K210_RST_GPIO>;
+
+				gpio1_0: gpio-port@0 {
+					#gpio-cells = <2>;
+					#interrupt-cells = <2>;
+					compatible = "snps,dw-apb-gpio-port";
+					reg = <0>;
+					interrupt-controller;
+					interrupts = <23>;
+					gpio-controller;
+					ngpios = <8>;
+				};
+			};
+
+			uart1: serial@50210000 {
+				compatible = "snps,dw-apb-uart";
+				reg = <0x50210000 0x100>;
+				interrupts = <11>;
+				clocks = <&sysclk K210_CLK_UART1>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "baudclk", "apb_pclk";
+				resets = <&sysrst K210_RST_UART1>;
+				reg-io-width = <4>;
+				reg-shift = <2>;
+				dcd-override;
+				dsr-override;
+				cts-override;
+				ri-override;
+			};
+
+			uart2: serial@50220000 {
+				compatible = "snps,dw-apb-uart";
+				reg = <0x50220000 0x100>;
+				interrupts = <12>;
+				clocks = <&sysclk K210_CLK_UART2>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "baudclk", "apb_pclk";
+				resets = <&sysrst K210_RST_UART2>;
+				reg-io-width = <4>;
+				reg-shift = <2>;
+				dcd-override;
+				dsr-override;
+				cts-override;
+				ri-override;
+			};
+
+			uart3: serial@50230000 {
+				compatible = "snps,dw-apb-uart";
+				reg = <0x50230000 0x100>;
+				interrupts = <13>;
+				clocks = <&sysclk K210_CLK_UART3>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "baudclk", "apb_pclk";
+				resets = <&sysrst K210_RST_UART3>;
+				reg-io-width = <4>;
+				reg-shift = <2>;
+				dcd-override;
+				dsr-override;
+				cts-override;
+				ri-override;
+			};
+
+			spi2: spi@50240000 {
+				compatible = "canaan,k210-spi";
+				spi-slave;
+				reg = <0x50240000 0x100>;
+				#address-cells = <0>;
+				#size-cells = <0>;
+				interrupts = <3>;
+				clocks = <&sysclk K210_CLK_SPI2>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "ssi_clk", "pclk";
+				resets = <&sysrst K210_RST_SPI2>;
+				spi-max-frequency = <25000000>;
+			};
+
+			i2s0: i2s@50250000 {
+				compatible = "snps,designware-i2s";
+				reg = <0x50250000 0x200>;
+				interrupts = <5>;
+				clocks = <&sysclk K210_CLK_I2S0>;
+				clock-names = "i2sclk";
+				resets = <&sysrst K210_RST_I2S0>;
+			};
+
+			i2s1: i2s@50260000 {
+				compatible = "snps,designware-i2s";
+				reg = <0x50260000 0x200>;
+				interrupts = <6>;
+				clocks = <&sysclk K210_CLK_I2S1>;
+				clock-names = "i2sclk";
+				resets = <&sysrst K210_RST_I2S1>;
+			};
+
+			i2s2: i2s@50270000 {
+				compatible = "snps,designware-i2s";
+				reg = <0x50270000 0x200>;
+				interrupts = <7>;
+				clocks = <&sysclk K210_CLK_I2S2>;
+				clock-names = "i2sclk";
+				resets = <&sysrst K210_RST_I2S2>;
+			};
+
+			i2c0: i2c@50280000 {
+				compatible = "snps,designware-i2c";
+				reg = <0x50280000 0x100>;
+				interrupts = <8>;
+				clocks = <&sysclk K210_CLK_I2C0>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "ref", "pclk";
+				resets = <&sysrst K210_RST_I2C0>;
+			};
+
+			i2c1: i2c@50290000 {
+				compatible = "snps,designware-i2c";
+				reg = <0x50290000 0x100>;
+				interrupts = <9>;
+				clocks = <&sysclk K210_CLK_I2C1>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "ref", "pclk";
+				resets = <&sysrst K210_RST_I2C1>;
+			};
+
+			i2c2: i2c@502a0000 {
+				compatible = "snps,designware-i2c";
+				reg = <0x502A0000 0x100>;
+				interrupts = <10>;
+				clocks = <&sysclk K210_CLK_I2C2>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "ref", "pclk";
+				resets = <&sysrst K210_RST_I2C2>;
+			};
+
+			fpioa: pinmux@502b0000 {
+				compatible = "canaan,k210-fpioa";
+				reg = <0x502B0000 0x100>;
+				clocks = <&sysclk K210_CLK_FPIOA>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "ref", "pclk";
+				resets = <&sysrst K210_RST_FPIOA>;
+				canaan,k210-sysctl-power = <&sysctl 108>;
+			};
+
+			timer0: timer@502d0000 {
+				compatible = "snps,dw-apb-timer";
+				reg = <0x502D0000 0x100>;
+				interrupts = <14 15>;
+				clocks = <&sysclk K210_CLK_TIMER0>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "timer", "pclk";
+				resets = <&sysrst K210_RST_TIMER0>;
+			};
+
+			timer1: timer@502e0000 {
+				compatible = "snps,dw-apb-timer";
+				reg = <0x502E0000 0x100>;
+				interrupts = <16 17>;
+				clocks = <&sysclk K210_CLK_TIMER1>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "timer", "pclk";
+				resets = <&sysrst K210_RST_TIMER1>;
+			};
+
+			timer2: timer@502f0000 {
+				compatible = "snps,dw-apb-timer";
+				reg = <0x502F0000 0x100>;
+				interrupts = <18 19>;
+				clocks = <&sysclk K210_CLK_TIMER2>,
+					 <&sysclk K210_CLK_APB0>;
+				clock-names = "timer", "pclk";
+				resets = <&sysrst K210_RST_TIMER2>;
+			};
+		};
+
+		apb1: bus@50400000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "simple-pm-bus";
+			ranges;
+			clocks = <&sysclk K210_CLK_APB1>;
+
+			wdt0: watchdog@50400000 {
+				compatible = "snps,dw-wdt";
+				reg = <0x50400000 0x100>;
+				interrupts = <21>;
+				clocks = <&sysclk K210_CLK_WDT0>,
+					 <&sysclk K210_CLK_APB1>;
+				clock-names = "tclk", "pclk";
+				resets = <&sysrst K210_RST_WDT0>;
+			};
+
+			wdt1: watchdog@50410000 {
+				compatible = "snps,dw-wdt";
+				reg = <0x50410000 0x100>;
+				interrupts = <22>;
+				clocks = <&sysclk K210_CLK_WDT1>,
+					 <&sysclk K210_CLK_APB1>;
+				clock-names = "tclk", "pclk";
+				resets = <&sysrst K210_RST_WDT1>;
+			};
+
+			sysctl: syscon@50440000 {
+				compatible = "canaan,k210-sysctl",
+					     "syscon", "simple-mfd";
+				reg = <0x50440000 0x100>;
+				clocks = <&sysclk K210_CLK_APB1>;
+				clock-names = "pclk";
+
+				sysclk: clock-controller {
+					#clock-cells = <1>;
+					compatible = "canaan,k210-clk";
+					clocks = <&in0>;
+				};
+
+				sysrst: reset-controller {
+					compatible = "canaan,k210-rst";
+					#reset-cells = <1>;
+				};
+
+				reboot: syscon-reboot {
+					compatible = "syscon-reboot";
+					regmap = <&sysctl>;
+					offset = <48>;
+					mask = <1>;
+					value = <1>;
+				};
+			};
+		};
+
+		apb2: bus@52000000 {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "simple-pm-bus";
+			ranges;
+			clocks = <&sysclk K210_CLK_APB2>;
+
+			spi0: spi@52000000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "canaan,k210-spi";
+				reg = <0x52000000 0x100>;
+				interrupts = <1>;
+				clocks = <&sysclk K210_CLK_SPI0>,
+					 <&sysclk K210_CLK_APB2>;
+				clock-names = "ssi_clk", "pclk";
+				resets = <&sysrst K210_RST_SPI0>;
+				reset-names = "spi";
+				spi-max-frequency = <25000000>;
+				num-cs = <4>;
+				reg-io-width = <4>;
+			};
+
+			spi1: spi@53000000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "canaan,k210-spi";
+				reg = <0x53000000 0x100>;
+				interrupts = <2>;
+				clocks = <&sysclk K210_CLK_SPI1>,
+					 <&sysclk K210_CLK_APB2>;
+				clock-names = "ssi_clk", "pclk";
+				resets = <&sysrst K210_RST_SPI1>;
+				reset-names = "spi";
+				spi-max-frequency = <25000000>;
+				num-cs = <4>;
+				reg-io-width = <4>;
+			};
+
+			spi3: spi@54000000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "snps,dwc-ssi-1.01a";
+				reg = <0x54000000 0x200>;
+				interrupts = <4>;
+				clocks = <&sysclk K210_CLK_SPI3>,
+					 <&sysclk K210_CLK_APB2>;
+				clock-names = "ssi_clk", "pclk";
+				resets = <&sysrst K210_RST_SPI3>;
+				reset-names = "spi";
+				/* Could possibly go up to 200 MHz */
+				spi-max-frequency = <100000000>;
+				num-cs = <4>;
+				reg-io-width = <4>;
+			};
 		};
 	};
 };
diff --git a/arch/riscv/boot/dts/canaan/k210_generic.dts b/arch/riscv/boot/dts/canaan/k210_generic.dts
new file mode 100644
index 000000000000..396c8ca4d24d
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/k210_generic.dts
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+
+/dts-v1/;
+
+#include "k210.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Kendryte K210 generic";
+	compatible = "canaan,kendryte-k210";
+
+	chosen {
+		bootargs = "earlycon console=ttySIF0";
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&fpioa {
+	pinctrl-0 = <&jtag_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	jtag_pins: jtag-pinmux {
+		pinmux = <K210_FPIOA(0, K210_PCF_JTAG_TCLK)>,
+			 <K210_FPIOA(1, K210_PCF_JTAG_TDI)>,
+			 <K210_FPIOA(2, K210_PCF_JTAG_TMS)>,
+			 <K210_FPIOA(3, K210_PCF_JTAG_TDO)>;
+	};
+
+	uarths_pins: uarths-pinmux {
+		pinmux = <K210_FPIOA(4, K210_PCF_UARTHS_RX)>,
+			 <K210_FPIOA(5, K210_PCF_UARTHS_TX)>;
+	};
+};
+
+&uarths0 {
+	pinctrl-0 = <&uarths_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
diff --git a/include/dt-bindings/clock/k210-clk.h b/include/dt-bindings/clock/k210-clk.h
index a48176ad3c23..b2de702cbf75 100644
--- a/include/dt-bindings/clock/k210-clk.h
+++ b/include/dt-bindings/clock/k210-clk.h
@@ -9,7 +9,6 @@
 /*
  * Kendryte K210 SoC clock identifiers (arbitrary values).
  */
-#define K210_CLK_ACLK	0
 #define K210_CLK_CPU	0
 #define K210_CLK_SRAM0	1
 #define K210_CLK_SRAM1	2
-- 
2.29.2

