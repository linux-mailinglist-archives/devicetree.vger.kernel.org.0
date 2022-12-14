Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B42164C9BD
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 14:08:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238505AbiLNNId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 08:08:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238501AbiLNNIc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 08:08:32 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 931FDE4
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:08:31 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3D21FEC;
        Wed, 14 Dec 2022 05:09:11 -0800 (PST)
Received: from [10.57.88.237] (unknown [10.57.88.237])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 808073F73B;
        Wed, 14 Dec 2022 05:08:30 -0800 (PST)
Message-ID: <ca0956bb-51fc-6a1e-c9e6-5addb4b92e8b@arm.com>
Date:   Wed, 14 Dec 2022 13:08:03 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] arm64: dts: Add Arm corstone500 platform support
Content-Language: en-GB
To:     Emekcan Aras <emekcan.aras@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221214075232.394559-1-emekcan.aras@arm.com>
 <20221214075232.394559-2-emekcan.aras@arm.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20221214075232.394559-2-emekcan.aras@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-12-14 07:52, Emekcan Aras wrote:
> From: Emekcan Aras <Emekcan.Aras@arm.com>
> 
> Corstone500[0] is a platform from arm, which includes Cortex-A cores and
> ideal starting point for feature rich System on Chip (SoC) designs
> based on the Cortex-A5 core.

arch/arm64 is the wrong place for 32-bit Armv7-based systems ;)

Thanks,
Robin.

> These device trees contains the necessary bits to support the
> Corstone 500 FVP (Fixed Virtual Platform) and the
> FPGA MPS3 board.
> 
> 0: https://developer.arm.com/documentation/102262/0000
> 
> Signed-off-by: Emekcan Aras <emekcan.aras@arm.com>
> ---
>   arch/arm64/boot/dts/arm/corstone500.dts | 181 ++++++++++++++++++++++++
>   1 file changed, 181 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/arm/corstone500.dts
> 
> diff --git a/arch/arm64/boot/dts/arm/corstone500.dts b/arch/arm64/boot/dts/arm/corstone500.dts
> new file mode 100644
> index 000000000000..976aa333ffbc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/corstone500.dts
> @@ -0,0 +1,181 @@
> +// SPDX-License-Identifier: GPL-2.0 or MIT
> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + *
> + */
> +
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	model = "ARM Corstone500";
> +	compatible = "arm,corstone500";
> +	interrupt-parent = <&gic>;
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0", "arm,psci-0.2", "arm,psci";
> +		method = "smc";
> +		cpu_on = <0x84000003>;
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		enable-method = "psci";
> +
> +		cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <0>;
> +			next-level-cache = <&L2>;
> +		};
> +
> +		cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <1>;
> +			next-level-cache = <&L2>;
> +		};
> +
> +		cpu@2 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <2>;
> +			next-level-cache = <&L2>;
> +		};
> +
> +		cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <3>;
> +			next-level-cache = <&L2>;
> +		};
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x7f000000>;
> +	};
> +
> +	L2: cache-controller@1c010000 {
> +		compatible = "arm,pl310-cache";
> +		reg = <0x1c010000 0x1000>;
> +		interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> +		cache-level = <2>;
> +		cache-unified;
> +		arm,data-latency = <1 1 1>;
> +		arm,tag-latency = <1 1 1>;
> +	};
> +
> +	refclk7500khz: refclk7500khz {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <7500000>;
> +		clock-output-names = "apb_pclk";
> +	};
> +
> +	refclk24mhz: refclk24mhz {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "apb_pclk";
> +	};
> +
> +	smbclk: refclk24mhzx2 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <48000000>;
> +		clock-output-names = "smclk";
> +	};
> +
> +	rtc@1a220000 {
> +		compatible = "arm,pl031", "arm,primecell";
> +		reg = <0x1a220000 0x1000>;
> +		clocks = <&refclk24mhz>;
> +		interrupts = <GIC_SPI 6 (GIC_CPU_MASK_SIMPLE(4) |
> +			IRQ_TYPE_LEVEL_HIGH)>;
> +		clock-names = "apb_pclk";
> +	};
> +
> +	gic: interrupt-controller@1c001000 {
> +		compatible = "arm,cortex-a5-gic";
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +		interrupt-controller;
> +		reg =	<0x1c001000 0x1000>,
> +			<0x1c000100 0x100>;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) |
> +			IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
> +	soc{
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		clock_frequency = <50000000>;
> +		interrupt-parent = <&gic>;
> +		ranges;
> +
> +		uart0: serial@1a200000 {
> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x1a200000 0x1000>;
> +			interrupts = <GIC_SPI 8 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +			clocks = <&refclk7500khz>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		uart1: serial@1a210000 {
> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x1a210000 0x1000>;
> +			interrupts = <GIC_SPI 9 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +			clocks = <&refclk7500khz>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		timer0: timer@1a040000 {
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0x1a040000 0x1000>;
> +			clock-frequency = <7500000>;
> +
> +			frame@1a050000 {
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 2 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +				reg = <0x1a050000 0x1000>;
> +			};
> +		};
> +
> +		smsc: ethernet@4020000 {
> +			compatible = "smsc,lan9220", "smsc,lan9115";
> +			reg = <0x40200000 0x10000>;
> +			interrupts = <GIC_SPI 43 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +			reg-io-width = <4>;
> +			phy-mode = "mii";
> +			smsc,irq-active-high;
> +			vdd33a-supply = <&v2m_fixed_3v3>;
> +			vddvario-supply = <&v2m_fixed_3v3>;
> +		};
> +	};
> +
> +	v2m_fixed_3v3: fixed-regulator-0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +};
