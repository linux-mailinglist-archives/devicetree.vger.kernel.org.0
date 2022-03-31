Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E506E4ED7EF
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 12:49:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232484AbiCaKus (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 06:50:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232246AbiCaKur (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 06:50:47 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DEC171B9FE8
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 03:48:59 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CEB623A;
        Thu, 31 Mar 2022 03:48:59 -0700 (PDT)
Received: from bogus (unknown [10.57.43.163])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 546C63F718;
        Thu, 31 Mar 2022 03:48:57 -0700 (PDT)
Date:   Thu, 31 Mar 2022 11:48:54 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: arm: add corstone1000 device tree
Message-ID: <20220331104854.sffey43mlxlg343o@bogus>
References: <20220330131053.1122502-1-rui.silva@linaro.org>
 <20220330131053.1122502-4-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220330131053.1122502-4-rui.silva@linaro.org>
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 30, 2022 at 02:10:53PM +0100, Rui Miguel Silva wrote:
> Corstone1000 is a platform from arm, which includes pre
> verified Corstone SSE710 sub-system that combines Cortex-A and
> Cortex-M processors [0].
>
> These device trees contains the necessary bits to support the
> Corstone 1000 FVP (Fixed Virtual Platform) [1] and the
> FPGA MPS3 board Cortex-A35 implementation at Cortex-A35 host
> side of this platform. [2]
>

I prefer not to have these static URLs in the commit log or in the files
as they tend to get stale soon.

> 0: https://documentation-service.arm.com/static/619e02b1f45f0b1fbf3a8f16

https://developer.arm.com/documentation/102360/0000

> 1: https://developer.arm.com/tools-and-software/open-source-software/arm-platforms-software/arm-ecosystem-fvps
> 2: https://documentation-service.arm.com/static/61f3f4d7fa8173727a1b71bf

https://developer.arm.com/documentation/dai0550/c/

Please use the above alternatives instead.

> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  arch/arm64/boot/dts/arm/Makefile              |   1 +
>  arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  27 +++
>  arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  36 ++++
>  arch/arm64/boot/dts/arm/corstone1000.dtsi     | 161 ++++++++++++++++++
>  4 files changed, 225 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi
> 
> diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
> index 4382b73baef5..d908e96d7ddc 100644
> --- a/arch/arm64/boot/dts/arm/Makefile
> +++ b/arch/arm64/boot/dts/arm/Makefile
> @@ -6,3 +6,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += juno.dtb juno-r1.dtb juno-r2.dtb juno-scmi.dtb ju
>  dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
> +dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
> diff --git a/arch/arm64/boot/dts/arm/corstone1000-fvp.dts b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
> new file mode 100644
> index 000000000000..dea8b5f4d68a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: GPL-2.0 or MIT
> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + * Copyright (c) 2022, Linaro Limited. All rights reserved.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "corstone1000.dtsi"
> +
> +/ {
> +	model = "ARM Corstone1000 FVP (Fixed Virtual Platform)";
> +	compatible = "arm,corstone1000-fvp";
> +
> +	smsc: ethernet@4010000 {
> +		compatible = "smsc,lan91c111";
> +		reg = <0x40100000 0x10000>;
> +		phy-mode = "mii";
> +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +		reg-io-width = <2>;
> +	};
> +};
> +
> +&cpu {
> +	compatible = "arm,armv8";

I see the publicly available model contains Cortex-A35, looks like FVP
does model the core and is not same as AEMs. So you can move this to dtsi IMO.

> +};
> diff --git a/arch/arm64/boot/dts/arm/corstone1000-mps3.dts b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
> new file mode 100644
> index 000000000000..9989586db70e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0 or MIT
> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + * Copyright (c) 2022, Linaro Limited. All rights reserved.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "corstone1000.dtsi"
> +
> +/ {
> +	model = "ARM Corstone1000 FPGA MPS3 board";
> +	compatible = "arm,corstone1000-mps3";
> +
> +	smsc: ethernet@4010000 {
> +		compatible = "smsc,lan9220", "smsc,lan9115";
> +		reg = <0x40100000 0x10000>;
> +		phy-mode = "mii";
> +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +		reg-io-width = <2>;
> +		smsc,irq-push-pull;
> +	};
> +
> +	usb_host: usb@40200000 {
> +		compatible = "nxp,usb-isp1763";
> +		reg = <0x40200000 0x100000>;
> +		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
> +		bus-width = <16>;
> +		dr_mode = "host";
> +	};
> +};
> +
> +&cpu {
> +	compatible = "arm,cortex-a35";
> +};
> diff --git a/arch/arm64/boot/dts/arm/corstone1000.dtsi b/arch/arm64/boot/dts/arm/corstone1000.dtsi
> new file mode 100644
> index 000000000000..194d959de828
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/corstone1000.dtsi
> @@ -0,0 +1,161 @@
> +// SPDX-License-Identifier: GPL-2.0 or MIT
> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + * Copyright (c) 2022, Linaro Limited. All rights reserved.
> + *
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
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
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu: cpu@0 {
> +			device_type = "cpu";
> +			reg = <0>;
> +			next-level-cache = <&L2_0>;
> +		};
> +	};
> +
> +	memory@88200000 {
> +		device_type = "memory";
> +		reg = <0x88200000 0x77e00000>;
> +	};
> +
> +	gic: interrupt-controller@1c000000 {
> +		compatible = "arm,gic-400";
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +		interrupt-controller;
> +		reg =	<0x1c010000 0x1000>,
> +			<0x1c02f000 0x2000>,
> +			<0x1c04f000 0x1000>,
> +			<0x1c06f000 0x2000>;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) |
> +			      IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	L2_0: l2-cache0 {
> +		compatible = "cache";

Any other properties ?

> +	};
> +
> +	refclk100mhz: refclk100mhz {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +		clock-output-names = "apb_pclk";
> +	};
> +
> +	smbclk: refclk24mhzx2 {
> +		/* Reference 24MHz clock x 2 */
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <48000000>;
> +		clock-output-names = "smclk";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts =	<GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) |
> +				 IRQ_TYPE_LEVEL_LOW)>,
> +				<GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) |
> +				 IRQ_TYPE_LEVEL_LOW)>,
> +				<GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(1) |
> +				 IRQ_TYPE_LEVEL_LOW)>,
> +				<GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(1) |
> +				 IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	uartclk: uartclk {
> +		/* UART clock - 50MHz */
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <50000000>;
> +		clock-output-names = "uartclk";
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0", "arm,psci-0.2";
> +		method = "smc";
> +	};
> +
> +	soc {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		interrupt-parent = <&gic>;
> +		ranges;
> +
> +		timer@1a220000 {
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0x1a220000 0x1000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			clock-frequency = <50000000>;
> +			ranges;
> +
> +			frame@1a230000 {
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x1a230000 0x1000>;
> +			};
> +		};
> +
> +		uart0: serial@1a510000 {
> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x1a510000 0x1000>;
> +			interrupt-parent = <&gic>;

Are these really needed even if there is only one interrupt controller
in the system ?

> +			interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&uartclk>, <&refclk100mhz>;
> +			clock-names = "uartclk", "apb_pclk";
> +		};
> +
> +		uart1: serial@1a520000 {
> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x1a520000 0x1000>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&uartclk>, <&refclk100mhz>;
> +			clock-names = "uartclk", "apb_pclk";
> +		};
> +
> +		mhu_hse1: mailbox@1b820000 {
> +			compatible = "arm,mhuv2-tx", "arm,primecell";
> +			reg = <0x1b820000 0x1000>;
> +			clocks = <&refclk100mhz>;
> +			clock-names = "apb_pclk";
> +			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <2>;
> +			arm,mhuv2-protocols = <0 0>;
> +			secure-status = "okay";     /* secure-world-only */

Please drop the above. Though I see it is in the binding, no one uses
it in the kernel and I prefer not to have this.

-- 
Regards,
Sudeep
