Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 719052CEEB9
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 14:18:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726432AbgLDNSf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 08:18:35 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:51558 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726312AbgLDNSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 08:18:35 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0B4DHZAI062307;
        Fri, 4 Dec 2020 07:17:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1607087855;
        bh=numwh2otM2zT9uLukUSld923UcxUlMzYMYkWR0mZAFQ=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=wo+eMjwouOufg/IYUQTjTDcUvwC3xa5O/MTG3k0hp8i8+popPHfrcaeWsR4BOu8GW
         1aIIAKTXhJts7A9SiwMjAL1+1obf9b02O7T77pM9OQAcOuJyC+vNli7H6UEyP+yRl+
         cyNeVXGPpXkBsy1qoFQdJ+cs5Dbd2Ev35z+Ko98E=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0B4DHZNn092304
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 4 Dec 2020 07:17:35 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Dec
 2020 07:17:34 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Dec 2020 07:17:34 -0600
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0B4DHUoV053625;
        Fri, 4 Dec 2020 07:17:31 -0600
Subject: Re: [PATCH 2/3] arm64: dts: ti: Add Support for AM642 SoC
To:     Dave Gerlach <d-gerlach@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>,
        Suman Anna <s-anna@ti.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-3-d-gerlach@ti.com>
From:   Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <0dd0729c-ef88-4d8e-48e7-fab11afb16aa@ti.com>
Date:   Fri, 4 Dec 2020 15:17:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201125052004.17823-3-d-gerlach@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25/11/2020 07:20, Dave Gerlach wrote:
> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
> providing advanced system integration to enable applications such as
> Motor Drives, PLC, Remote IO and IoT Gateways.
> 
> Some highlights of this SoC are:
> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>    MCUs, and a single Cortex-M4F.
> * Two Gigabit Industrial Communication Subsystems (ICSSG).
> * Integrated Ethernet switch supporting up to a total of two external
>    ports.
> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>    controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>    peripherals.
> * Centralized System Controller for Security, Power, and Resource
>    Management (DMSC).
> 
> See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
> for further details: https://www.ti.com/lit/pdf/spruim2
> 
> Introduce basic support for the AM642 SoC to enable minimal
> ramdisk boot. Introduce a limited set of MAIN domain periperhals
> under cbass_main and a placeholder cbass_mcu node for future MCU
> domain usage.
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 178 +++++++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am64.dtsi      |  95 ++++++++++++
>   arch/arm64/boot/dts/ti/k3-am642.dtsi     |  65 +++++++++
>   3 files changed, 338 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
>   create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> new file mode 100644
> index 000000000000..4830a8e4d89b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> @@ -0,0 +1,178 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for AM642 SoC Family Main Domain peripherals
> + *
> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +&cbass_main {
> +	gic500: interrupt-controller@1800000 {
> +		compatible = "arm,gic-v3";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		#interrupt-cells = <3>;
> +		interrupt-controller;
> +		reg = <0x00 0x01800000 0x00 0x10000>,	/* GICD */
> +		      <0x00 0x01840000 0x00 0xC0000>;	/* GICR */
> +		/*
> +		 * vcpumntirq:
> +		 * virtual CPU interface maintenance interrupt
> +		 */
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		gic_its: msi-controller@1820000 {
> +			compatible = "arm,gic-v3-its";
> +			reg = <0x00 0x01820000 0x00 0x10000>;
> +			socionext,synquacer-pre-its = <0x1000000 0x400000>;
> +			msi-controller;
> +			#msi-cells = <1>;
> +		};
> +	};
> +
> +	dmss {
> +		compatible = "simple-mfd";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		dma-ranges;
> +		ranges;
> +
> +		secure_proxy_main: mailbox@4d000000 {
> +			compatible = "ti,am654-secure-proxy";
> +			#mbox-cells = <1>;
> +			reg-names = "target_data", "rt", "scfg";
> +			reg = <0x00 0x4d000000 0x00 0x80000>,
> +			      <0x00 0x4a600000 0x00 0x80000>,
> +			      <0x00 0x4a400000 0x00 0x80000>;
> +			interrupt-names = "rx_012";
> +			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +	};
> +
> +	dmsc: dmsc {
> +		compatible = "ti,k2g-sci";
> +		ti,host-id = <12>;
> +		mbox-names = "rx", "tx";
> +		mboxes= <&secure_proxy_main 12>,
> +			<&secure_proxy_main 13>;
> +
> +		k3_pds: power-controller {
> +			compatible = "ti,sci-pm-domain";
> +			#power-domain-cells = <2>;
> +		};
> +
> +		k3_clks: clocks {
> +			compatible = "ti,k2g-sci-clk";
> +			#clock-cells = <2>;
> +		};
> +
> +		k3_reset: reset-controller {
> +			compatible = "ti,sci-reset";
> +			#reset-cells = <2>;
> +		};
> +	};
> +
> +	main_pmx0: pinctrl@f4000 {
> +		compatible = "pinctrl-single";
> +		reg = <0x00 0xf4000 0x00 0x2e4>;
> +		#pinctrl-cells = <1>;
> +		pinctrl-single,register-width = <32>;
> +		pinctrl-single,function-mask = <0xffffffff>;
> +	};
> +
> +	chipid@43000014 {
> +		compatible = "ti,am654-chipid";
> +		reg = <0x00 0x43000014 0x00 0x4>;
> +	};

Could you add proper syscon node for CTRL_MMR and place chipid under it, pls?


-- 
Best regards,
grygorii
