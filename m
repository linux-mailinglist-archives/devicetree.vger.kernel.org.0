Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AF282FBD81
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 18:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387730AbhASRZI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 12:25:08 -0500
Received: from foss.arm.com ([217.140.110.172]:41494 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730082AbhASRZE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 19 Jan 2021 12:25:04 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 978B011FB;
        Tue, 19 Jan 2021 09:24:17 -0800 (PST)
Received: from bogus (unknown [10.57.35.27])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE9B63F66E;
        Tue, 19 Jan 2021 09:24:14 -0800 (PST)
Date:   Tue, 19 Jan 2021 17:24:12 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Dave Gerlach <d-gerlach@ti.com>
Cc:     Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Aswath Govindraju <a-govindraju@ti.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/5] arm64: dts: ti: Add support for AM642 SoC
Message-ID: <20210119172412.smsjdo2sjzqi5vcn@bogus>
References: <20210119163927.774-1-d-gerlach@ti.com>
 <20210119163927.774-4-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210119163927.774-4-d-gerlach@ti.com>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 10:39:25AM -0600, Dave Gerlach wrote:
> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
> providing advanced system integration to enable applications such as
> Motor Drives, PLC, Remote IO and IoT Gateways.
> 
> Some highlights of this SoC are:
> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>   MCUs, and a single Cortex-M4F.
> * Two Gigabit Industrial Communication Subsystems (ICSSG).
> * Integrated Ethernet switch supporting up to a total of two external
>   ports.
> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>   peripherals.
> * Centralized System Controller for Security, Power, and Resource
>   Management (DMSC).
> 
> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
> for further details: https://www.ti.com/lit/pdf/spruim2
> 
> Introduce basic support for the AM642 SoC to enable ramdisk or MMC
> boot. Introduce the sdhci, i2c, spi, and uart MAIN domain periperhals
> under cbass_main and the i2c, spi, and uart MCU domain periperhals
> under cbass_mcu.
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> ---
> v1 -> v2:
> * Add i2c. sdhci. and spi nodes to cbass_main
> * Add cbass_mcu with uart, i2c, and spi nodes
> * Add oc_sram node
> * Add additional ranges for main_cbass to cover all use cases.
> 
>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 332 +++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi  |  76 ++++++
>  arch/arm64/boot/dts/ti/k3-am64.dtsi      | 103 +++++++
>  arch/arm64/boot/dts/ti/k3-am642.dtsi     |  65 +++++
>  4 files changed, 576 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64-mcu.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am64.dtsi b/arch/arm64/boot/dts/ti/k3-am64.dtsi
> new file mode 100644
> index 000000000000..a35a0aff50f8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am64.dtsi
> @@ -0,0 +1,103 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for AM642 SoC Family
> + *
> + * Copyright (C) 2020-2021 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/pinctrl/k3.h>
> +#include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +/ {
> +	model = "Texas Instruments K3 AM642 SoC";
> +	compatible = "ti,am642";
> +	interrupt-parent = <&gic500>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial0 = &mcu_uart0;
> +		serial1 = &mcu_uart1;
> +		serial2 = &main_uart0;
> +		serial3 = &main_uart1;
> +		serial4 = &main_uart2;
> +		serial5 = &main_uart3;
> +		serial6 = &main_uart4;
> +		serial7 = &main_uart5;
> +		serial8 = &main_uart6;
> +	};
> +
> +	chosen { };
> +
> +	firmware {
> +		optee {
> +			compatible = "linaro,optee-tz";
> +			method = "smc";
> +		};
> +
> +		psci: psci {
> +			compatible = "arm,psci-1.0";
> +			method = "smc";
> +		};
> +	};
> +
> +	a53_timer0: timer-cl0-cpu0 {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
> +	};
> +
> +	pmu: pmu {
> +		compatible = "arm,armv8-pmuv3";

Is this just copy paste from some DTS or do we really don't know which CPU
this platform has 😄 ? Reading further down, I thought it was Cortex A53, no ?

-- 
Regards,
Sudeep
