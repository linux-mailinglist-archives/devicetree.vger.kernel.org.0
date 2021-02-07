Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4EE931281A
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:16:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbhBGXQn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:16:43 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:1538 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbhBGXQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:16:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612739856; x=1644275856;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=UhfuvaQnlYYGuJoU1DIlmWqBx9DSZHsBnT1jKP6UghI=;
  b=rtuEyya/7ba14rjdQW31DlgKW2iD2/Pt8t/9R9SdIIK222cl3NN/X74v
   IfhI9uY1GNRGRQu2VJKiUEoNX10SDacqJsQpAjsTPj/nJU8Cpi3h7eHZJ
   Le2No5DNpTKVbNdmG4H7bI+7U1MZIFUYlBzgdTHrbGzgAefqM0dAApTKJ
   1BhrK9Aosiyey5U4mbgGun2VLG522d18kk49lgRn0fS/lNEc9hqyqKMt7
   tloLfNB/K/9s9+eHO3iWXKKC0/9u6Qjq4SB5e8JRMKBjCXsA7aqNfx/sL
   lb9ikg0l03efDa6NLjbWpTGcvNd//7EeY3bLVQfq5yA5cSlLALEEpNRL/
   g==;
IronPort-SDR: fBpU2ZmCqtvhp/44AdX1K5R4ZY38nIJWvbd4ofMO1TgomkUbQCEQ5kkwZN2+HHbbJHi+RKfCz1
 mxcHQCe5EYhu/XPuW8hrClCXYmJkoMI8T+n2+5PMV0u+nL8ACKvguXrG6JDMrqrP0Fg+w6aCDd
 lwivA8KJCZgO0Z350eLJg7R3pnG0AdLIQUW7Gr7musFbotG99uTdXrZBLGil5meqIoMRiSGvPQ
 R7Z3ZFkJ9GZ5mepQ77a2bJTHZbmQPnTzExoX1UIGNgp6HTQ91uTRTYRcqN28YIDmsey2SFen/C
 3zw=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503264"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:43 +0800
IronPort-SDR: TiyFaFZthNhUNdUMAr290xyOqht9i0Z0iCm0LZqI1hxWARR5YUFY9V9vWWTP4VJxVl/osIWf8H
 oYwyDoO+maNu6KmNFrRo15hGMm2gOS14T5v1omKefXZRf5EJ2E0BQn7yZaUWXEIP/+PGVKT82k
 4z66bl5kVsh8I7e88Y8oBzdV7zaS/5O4UO55hQp/3im/BSjXGj993bBrAIQevKyNDWngRM/8n9
 ZJZdkOBb0O9HtUQ/9eglrtj4pCA4Rj4CB5s6p9qIwe7eEu0eBtWJyUxsT/Wp01hnnXfXH8pLnm
 5sM1bDi4Pj0g1Gjl6VZGPmng
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:57:09 -0800
IronPort-SDR: /y5yfjZDDIlWJnBl1EnDvb3CLzDfqosHK05PG6FagpSMTqNcFFc5V+K0r7kC160FthVUJAdBYx
 2cJ+SEs/eqGmW+Jd9njswupPfQ/36rWGadYJZhhd/82ue7mvmvXk1YH3SAl95HIIPjUcXdDDew
 VRXGTS3yy1/FtioZjaMQhwOeRwhLqLuKyC+08TcwXBjp1nOzDgLURZkyaSTcw6fjUXTJHI9d7E
 w5aoK4iNuqWSREQE8fCzEfEp2JQNC7f8RsBi3KZ4uKhrwBJlTq8MbTvlRi7VOF8PCWHWRWy8Km
 SNA=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:16 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 09/16] riscv: Update Canaan Kendryte K210 device tree
Date:   Mon,  8 Feb 2021 08:12:49 +0900
Message-Id: <20210207231256.115130-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the Canaan Kendryte K210 base device tree k210.dtsi to define
all peripherals of the SoC, their clocks and reset lines. The device
tree file k210.dts is renamed to k210_generic.dts and becomes the
default value selection of the SOC_CANAAN_K210_DTB_BUILTIN_SOURCE
configuration option. No device beside the serial console is defined by
this device tree. This makes this generic device tree suitable for use
with a builtin initramfs with all known K210 based boards.

These changes result in the K210_CLK_ACLK clock ID to be unused and
removed from the dt-bindings k210-clk.h header file.

Most updates to the k210.dtsi file come from Sean Anderson's work on
U-Boot support for the K210.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 arch/riscv/Kconfig.socs                     |   2 +-
 arch/riscv/boot/dts/canaan/k210.dts         |  23 -
 arch/riscv/boot/dts/canaan/k210.dtsi        | 493 ++++++++++++++++++--
 arch/riscv/boot/dts/canaan/k210_generic.dts |  46 ++
 include/dt-bindings/clock/k210-clk.h        |   1 -
 5 files changed, 512 insertions(+), 53 deletions(-)
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
index 354b263195a3..05a12255ed3e 100644
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
@@ -81,40 +91,467 @@ in0: oscillator {
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
+		kpu0: kpu@40800000 {
+			compatible = "canaan,k210-kpu";
+			reg = <0x40800000 0xc00000>;
+			interrupts = <25>;
+			clocks = <&sysclk K210_CLK_AI>;
+			status = "disabled";
+		};
+
+		fft0: fft@42000000 {
+			compatible = "canaan,k210-fft";
+			reg = <0x42000000 0x400000>;
+			interrupts = <26>;
+			clocks = <&sysclk K210_CLK_FFT>;
+			resets = <&sysrst K210_RST_FFT>;
+			status = "disabled";
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
+			apu0: sound@50250200 {
+				compatible = "canaan,k210-apu";
+				reg = <0x50250200 0x200>;
+				status = "disabled";
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
+			sha256: sha256@502c0000 {
+				compatible = "canaan,k210-sha256";
+				reg = <0x502C0000 0x100>;
+				clocks = <&sysclk K210_CLK_SHA>;
+				resets = <&sysrst K210_RST_SHA>;
+				status = "disabled";
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
+			otp0: nvmem@50420000 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				compatible = "canaan,k210-otp";
+				reg = <0x50420000 0x100>,
+				      <0x88000000 0x20000>;
+				reg-names = "reg", "mem";
+				clocks = <&sysclk K210_CLK_ROM>;
+				resets = <&sysrst K210_RST_ROM>;
+				ranges;
+				read-only;
+				status = "disabled";
+
+				/* Bootloader */
+				firmware@0 {
+					reg = <0x00000 0xC200>;
+				};
+
+				/*
+				 * config string as described in RISC-V
+				 * privileged spec 1.9
+				 */
+				config-1-9@1c000 {
+					reg = <0x1C000 0x1000>;
+				};
+
+				/*
+				 * Device tree containing only registers,
+				 * interrupts, and cpus
+				 */
+				fdt@1d000 {
+					reg = <0x1D000 0x2000>;
+				};
+
+				/* CPU/ROM credits */
+				credits@1f000 {
+					reg = <0x1F000 0x1000>;
+				};
+			};
+
+			dvp0: camera@50430000 {
+				compatible = "canaan,k210-dvp";
+				reg = <0x50430000 0x100>;
+				interrupts = <24>;
+				clocks = <&sysclk K210_CLK_DVP>;
+				resets = <&sysrst K210_RST_DVP>;
+				canaan,k210-misc-offset = <&sysctl 84>;
+				status = "disabled";
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
+
+			aes0: aes@50450000 {
+				compatible = "canaan,k210-aes";
+				reg = <0x50450000 0x100>;
+				clocks = <&sysclk K210_CLK_AES>;
+				resets = <&sysrst K210_RST_AES>;
+				status = "disabled";
+			};
+
+			rtc: rtc@50460000 {
+				compatible = "canaan,k210-rtc";
+				reg = <0x50460000 0x100>;
+				clocks = <&in0>;
+				resets = <&sysrst K210_RST_RTC>;
+				interrupts = <20>;
+				status = "disabled";
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

