Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1086D2CE145
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 23:01:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729767AbgLCWBQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 17:01:16 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:40920 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728177AbgLCWBQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 17:01:16 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0B3M0KiQ127660;
        Thu, 3 Dec 2020 16:00:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1607032820;
        bh=d5rnG+y3ynO8vPxocqBIz/XWQAAv6rO0Mf4V0G98r38=;
        h=Subject:From:To:CC:References:Date:In-Reply-To;
        b=tfLxeODeoDcKz5Ft4ENaZI4h3w+MUcxHE3RU0Yq+pAQWJ4dou4TRFqLpszzCaClsD
         oFyaaA27t43ms7vAe+LYLfRlZ76WdNgWhe31hf1fBNGnjOwpEP4vvN8TWuPC3FaNG6
         otjAbu6ZVyEX/b27fqPbM2qSxT8LaFa95Iv3W52g=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0B3M0Kj8114028
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 3 Dec 2020 16:00:20 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 3 Dec
 2020 16:00:19 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 3 Dec 2020 16:00:19 -0600
Received: from [10.250.38.244] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0B3M0IRp096075;
        Thu, 3 Dec 2020 16:00:18 -0600
Subject: Re: [PATCH 2/3] arm64: dts: ti: Add Support for AM642 SoC
From:   Suman Anna <s-anna@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-3-d-gerlach@ti.com>
 <9ef76d15-46e5-884d-2b00-3228c46a73ac@ti.com>
Message-ID: <d62d6ce5-b346-d734-0bda-d2dd0d360d5c@ti.com>
Date:   Thu, 3 Dec 2020 16:00:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9ef76d15-46e5-884d-2b00-3228c46a73ac@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/3/20 3:56 PM, Suman Anna wrote:
> Hi Dave,
> 
> On 11/24/20 11:20 PM, Dave Gerlach wrote:
>> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
>> providing advanced system integration to enable applications such as
>> Motor Drives, PLC, Remote IO and IoT Gateways.
>>
>> Some highlights of this SoC are:
>> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>>   MCUs, and a single Cortex-M4F.
>> * Two Gigabit Industrial Communication Subsystems (ICSSG).
>> * Integrated Ethernet switch supporting up to a total of two external
>>   ports.
>> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>>   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>>   peripherals.
>> * Centralized System Controller for Security, Power, and Resource
>>   Management (DMSC).
>>
>> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
>> for further details: https://www.ti.com/lit/pdf/spruim2
>>
>> Introduce basic support for the AM642 SoC to enable minimal
>> ramdisk boot. Introduce a limited set of MAIN domain periperhals
>> under cbass_main and a placeholder cbass_mcu node for future MCU
>> domain usage.
>>
>> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 178 +++++++++++++++++++++++
>>  arch/arm64/boot/dts/ti/k3-am64.dtsi      |  95 ++++++++++++
>>  arch/arm64/boot/dts/ti/k3-am642.dtsi     |  65 +++++++++
>>  3 files changed, 338 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>> new file mode 100644
>> index 000000000000..4830a8e4d89b
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>> @@ -0,0 +1,178 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Device Tree Source for AM642 SoC Family Main Domain peripherals
>> + *
>> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
>> + */
>> +
>> +&cbass_main {
>> +	gic500: interrupt-controller@1800000 {
>> +		compatible = "arm,gic-v3";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +		#interrupt-cells = <3>;
>> +		interrupt-controller;
>> +		reg = <0x00 0x01800000 0x00 0x10000>,	/* GICD */
>> +		      <0x00 0x01840000 0x00 0xC0000>;	/* GICR */
>> +		/*
>> +		 * vcpumntirq:
>> +		 * virtual CPU interface maintenance interrupt
>> +		 */
>> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +		gic_its: msi-controller@1820000 {
>> +			compatible = "arm,gic-v3-its";
>> +			reg = <0x00 0x01820000 0x00 0x10000>;
>> +			socionext,synquacer-pre-its = <0x1000000 0x400000>;
>> +			msi-controller;
>> +			#msi-cells = <1>;
>> +		};
>> +	};
>> +
>> +	dmss {
>> +		compatible = "simple-mfd";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		dma-ranges;
>> +		ranges;
>> +
>> +		secure_proxy_main: mailbox@4d000000 {
>> +			compatible = "ti,am654-secure-proxy";
>> +			#mbox-cells = <1>;
>> +			reg-names = "target_data", "rt", "scfg";
>> +			reg = <0x00 0x4d000000 0x00 0x80000>,
>> +			      <0x00 0x4a600000 0x00 0x80000>,
>> +			      <0x00 0x4a400000 0x00 0x80000>;
>> +			interrupt-names = "rx_012";
>> +			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
>> +		};
>> +	};
>> +
>> +	dmsc: dmsc {
>> +		compatible = "ti,k2g-sci";
>> +		ti,host-id = <12>;
>> +		mbox-names = "rx", "tx";
>> +		mboxes= <&secure_proxy_main 12>,
>> +			<&secure_proxy_main 13>;
>> +
>> +		k3_pds: power-controller {
>> +			compatible = "ti,sci-pm-domain";
>> +			#power-domain-cells = <2>;
>> +		};
>> +
>> +		k3_clks: clocks {
>> +			compatible = "ti,k2g-sci-clk";
>> +			#clock-cells = <2>;
>> +		};
>> +
>> +		k3_reset: reset-controller {
>> +			compatible = "ti,sci-reset";
>> +			#reset-cells = <2>;
>> +		};
>> +	};
>> +
>> +	main_pmx0: pinctrl@f4000 {
>> +		compatible = "pinctrl-single";
>> +		reg = <0x00 0xf4000 0x00 0x2e4>;
>> +		#pinctrl-cells = <1>;
>> +		pinctrl-single,register-width = <32>;
>> +		pinctrl-single,function-mask = <0xffffffff>;
>> +	};
>> +
>> +	chipid@43000014 {
>> +		compatible = "ti,am654-chipid";
>> +		reg = <0x00 0x43000014 0x00 0x4>;
>> +	};
>> +
>> +	main_uart0: serial@2800000 {
>> +		compatible = "ti,am64-uart", "ti,am654-uart";
>> +		reg = <0x00 0x02800000 0x00 0x100>;
>> +		reg-shift = <2>;
>> +		reg-io-width = <4>;
>> +		interrupts = <GIC_SPI 178 IRQ_TYPE_LEVEL_HIGH>;
>> +		clock-frequency = <48000000>;
>> +		current-speed = <115200>;
>> +		power-domains = <&k3_pds 146 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 146 0>;
>> +		clock-names = "fclk";
>> +	};
>> +
>> +	main_uart1: serial@2810000 {
>> +		compatible = "ti,am64-uart", "ti,am654-uart";
>> +		reg = <0x00 0x02810000 0x00 0x100>;
>> +		reg-shift = <2>;
>> +		reg-io-width = <4>;
>> +		interrupts = <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH>;
>> +		clock-frequency = <48000000>;
>> +		current-speed = <115200>;
>> +		power-domains = <&k3_pds 152 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 152 0>;
>> +		clock-names = "fclk";
>> +	};
>> +
>> +	main_uart2: serial@2820000 {
>> +		compatible = "ti,am64-uart", "ti,am654-uart";
>> +		reg = <0x00 0x02820000 0x00 0x100>;
>> +		reg-shift = <2>;
>> +		reg-io-width = <4>;
>> +		interrupts = <GIC_SPI 180 IRQ_TYPE_LEVEL_HIGH>;
>> +		clock-frequency = <48000000>;
>> +		current-speed = <115200>;
>> +		power-domains = <&k3_pds 153 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 153 0>;
>> +		clock-names = "fclk";
>> +	};
>> +
>> +	main_uart3: serial@2830000 {
>> +		compatible = "ti,am64-uart", "ti,am654-uart";
>> +		reg = <0x00 0x02830000 0x00 0x100>;
>> +		reg-shift = <2>;
>> +		reg-io-width = <4>;
>> +		interrupts = <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>;
>> +		clock-frequency = <48000000>;
>> +		current-speed = <115200>;
>> +		power-domains = <&k3_pds 154 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 154 0>;
>> +		clock-names = "fclk";
>> +	};
>> +
>> +	main_uart4: serial@2840000 {
>> +		compatible = "ti,am64-uart", "ti,am654-uart";
>> +		reg = <0x00 0x02840000 0x00 0x100>;
>> +		reg-shift = <2>;
>> +		reg-io-width = <4>;
>> +		interrupts = <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>;
>> +		clock-frequency = <48000000>;
>> +		current-speed = <115200>;
>> +		power-domains = <&k3_pds 155 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 155 0>;
>> +		clock-names = "fclk";
>> +	};
>> +
>> +	main_uart5: serial@2850000 {
>> +		compatible = "ti,am64-uart", "ti,am654-uart";
>> +		reg = <0x00 0x02850000 0x00 0x100>;
>> +		reg-shift = <2>;
>> +		reg-io-width = <4>;
>> +		interrupts = <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>;
>> +		clock-frequency = <48000000>;
>> +		current-speed = <115200>;
>> +		power-domains = <&k3_pds 156 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 156 0>;
>> +		clock-names = "fclk";
>> +	};
>> +
>> +	main_uart6: serial@2860000 {
>> +		compatible = "ti,am64-uart", "ti,am654-uart";
>> +		reg = <0x00 0x02860000 0x00 0x100>;
>> +		reg-shift = <2>;
>> +		reg-io-width = <4>;
>> +		interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
>> +		clock-frequency = <48000000>;
>> +		current-speed = <115200>;
>> +		power-domains = <&k3_pds 158 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 158 0>;
>> +		clock-names = "fclk";
>> +	};
>> +};
>> diff --git a/arch/arm64/boot/dts/ti/k3-am64.dtsi b/arch/arm64/boot/dts/ti/k3-am64.dtsi
>> new file mode 100644
>> index 000000000000..0637cf9ede5f
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-am64.dtsi
>> @@ -0,0 +1,95 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Device Tree Source for AM642 SoC Family
>> + *
>> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/pinctrl/k3.h>
>> +#include <dt-bindings/soc/ti,sci_pm_domain.h>
>> +
>> +/ {
>> +	model = "Texas Instruments K3 AM642 SoC";
>> +	compatible = "ti,am642";
>> +	interrupt-parent = <&gic500>;
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	aliases {
>> +		serial2 = &main_uart0;
>> +		serial3 = &main_uart1;
>> +		serial4 = &main_uart2;
>> +		serial5 = &main_uart3;
>> +		serial6 = &main_uart4;
>> +		serial7 = &main_uart5;
>> +		serial8 = &main_uart6;

Yeah, this looks weird. I understand that serial0 and serial1 are meant for MCU
UARTs, but any reason why we don't want to add the k3-am64-mcu.dtsi and the MCU
UARTs along with this patch?

regards
Suman

>> +	};
>> +
>> +	chosen { };
>> +
>> +	firmware {
>> +		optee {
>> +			compatible = "linaro,optee-tz";
>> +			method = "smc";
>> +		};
>> +
>> +		psci: psci {
>> +			compatible = "arm,psci-1.0";
>> +			method = "smc";
>> +		};
>> +	};
>> +
>> +	a53_timer0: timer-cl0-cpu0 {
>> +		compatible = "arm,armv8-timer";
>> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
>> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
>> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
>> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
>> +	};
>> +
>> +	pmu: pmu {
>> +		compatible = "arm,armv8-pmuv3";
>> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>> +	};
>> +
>> +	cbass_main: bus@f4000 {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges = <0x00 0x00600000 0x00 0x00600000 0x00 0x00001100>, /* GPIO */
>> +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* Timesync router */
>> +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x02330400>, /* First peripheral window */
>> +			 <0x00 0x08000000 0x00 0x08000000 0x00 0x00200000>, /* Main CPSW */
>> +			 <0x00 0x0d000000 0x00 0x0d000000 0x00 0x00800000>, /* PCIE_CORE */
>> +			 <0x00 0x0f000000 0x00 0x0f000000 0x00 0x00c44200>, /* Second peripheral window */
>> +			 <0x00 0x20000000 0x00 0x20000000 0x00 0x0a008000>, /* Third peripheral window */
>> +			 <0x00 0x30000000 0x00 0x30000000 0x00 0x000bc100>, /* ICSSG0/1 */
>> +			 <0x00 0x37000000 0x00 0x37000000 0x00 0x00040000>, /* TIMERMGR0 TIMERS */
>> +			 <0x00 0x39000000 0x00 0x39000000 0x00 0x00000400>, /* CPTS0 */
>> +			 <0x00 0x3b000000 0x00 0x3b000000 0x00 0x00000400>, /* GPMC0_CFG */
>> +			 <0x00 0x3cd00000 0x00 0x3cd00000 0x00 0x00000200>, /* TIMERMGR0_CONFIG */
>> +			 <0x00 0x3f004000 0x00 0x3f004000 0x00 0x00000400>, /* GICSS0_REGS */
>> +			 <0x00 0x43000000 0x00 0x43000000 0x00 0x00020000>, /* CTRL_MMR0 */
>> +			 <0x00 0x48000000 0x00 0x48000000 0x00 0x06400000>, /* DMASS */
>> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x08000000>, /* GPMC0 DATA */
>> +			 <0x00 0x000f4000 0x00 0x000f4000 0x00 0x000002e4>, /* PINCTRL */
> 
> Can you move this to the top, so that all these are in increasing memory order?
> 
>> +			 <0x00 0x68000000 0x00 0x68000000 0x00 0x08000000>, /* PCIe DAT0 */
>> +			 <0x06 0x00000000 0x06 0x00000000 0x01 0x00000000>, /* PCIe DAT1 */
>> +			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS0 DAT3 */
> 
> This is atleast missing the ranges for On-Chip SRAM and the R5FSS, but those can
> always be added incrementally as well.
> 
> Also, is there a reason for using these ranges a bit more granular compared to
> the earlier SoCs?
> 
> regards
> Suman
> 
>> +
>> +			 /* MCU Domain Range */
>> +			 <0x00 0x04000000 0x00 0x04000000 0x00 0x01ff1400>;
>> +
>> +		cbass_mcu: bus@4000000 {
>> +			compatible = "simple-bus";
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +			ranges = <0x00 0x04000000 0x00 0x04000000 0x00 0x01ff1400>; /* Peripheral window */
>> +		};
>> +	};
>> +};
>> +
>> +/* Now include the peripherals for each bus segments */
>> +#include "k3-am64-main.dtsi"
>> diff --git a/arch/arm64/boot/dts/ti/k3-am642.dtsi b/arch/arm64/boot/dts/ti/k3-am642.dtsi
>> new file mode 100644
>> index 000000000000..b30f239e84f1
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-am642.dtsi
>> @@ -0,0 +1,65 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Device Tree Source for AM642 SoC family in Dual core configuration
>> + *
>> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "k3-am64.dtsi"
>> +
>> +/ {
>> +	cpus {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		cpu-map {
>> +			cluster0: cluster0 {
>> +				core0 {
>> +					cpu = <&cpu0>;
>> +				};
>> +
>> +				core1 {
>> +					cpu = <&cpu1>;
>> +				};
>> +			};
>> +		};
>> +
>> +		cpu0: cpu@0 {
>> +			compatible = "arm,cortex-a53";
>> +			reg = <0x000>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			i-cache-size = <0x8000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <128>;
>> +			next-level-cache = <&L2_0>;
>> +		};
>> +
>> +		cpu1: cpu@1 {
>> +			compatible = "arm,cortex-a53";
>> +			reg = <0x001>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			i-cache-size = <0x8000>;
>> +			i-cache-line-size = <64>;
>> +			i-cache-sets = <256>;
>> +			d-cache-size = <0x8000>;
>> +			d-cache-line-size = <64>;
>> +			d-cache-sets = <128>;
>> +			next-level-cache = <&L2_0>;
>> +		};
>> +	};
>> +
>> +	L2_0: l2-cache0 {
>> +		compatible = "cache";
>> +		cache-level = <2>;
>> +		cache-size = <0x40000>;
>> +		cache-line-size = <64>;
>> +		cache-sets = <512>;
>> +	};
>> +};
>>
> 

