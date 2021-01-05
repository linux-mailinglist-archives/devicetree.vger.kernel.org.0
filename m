Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 604C52EA423
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 04:54:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728114AbhAEDyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 22:54:37 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:37672 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726518AbhAEDyh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 22:54:37 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1053qnxY081565;
        Mon, 4 Jan 2021 21:52:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1609818769;
        bh=O9TeKSVpB5YBHaxMKXXmxEos9+MV1IffiqHCVGtAj8w=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=MasM7QHdoz0ojZ5gEqzNdci1eDi/DjArrPlcz3SuT0ArqlDVEhOgx3VLOxEBccCbK
         eMVW5Gpew0hYy/6xvvjQPs+iGLSJlK9kaETSk2VwEpWYbMSFlY356RGPGO7k9l/3Hs
         SflYMV2bnnjHx+Debf4OKp2/RPvEG1qdwnSlKJKw=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1053qntY023776
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 4 Jan 2021 21:52:49 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 21:52:49 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 21:52:49 -0600
Received: from [128.247.81.242] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1053qlHi015946;
        Mon, 4 Jan 2021 21:52:47 -0600
Subject: Re: [PATCH 2/3] arm64: dts: ti: Add Support for AM642 SoC
To:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Rob Herring <robh+dt@kernel.org>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>,
        Suman Anna <s-anna@ti.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-3-d-gerlach@ti.com>
 <0dd0729c-ef88-4d8e-48e7-fab11afb16aa@ti.com>
From:   Dave Gerlach <d-gerlach@ti.com>
Message-ID: <e3cd0241-13d3-377f-8601-92c9cdf071f1@ti.com>
Date:   Mon, 4 Jan 2021 21:52:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0dd0729c-ef88-4d8e-48e7-fab11afb16aa@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 12/4/20 7:17 AM, Grygorii Strashko wrote:
> 
> 
> On 25/11/2020 07:20, Dave Gerlach wrote:
>> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
>> providing advanced system integration to enable applications such as
>> Motor Drives, PLC, Remote IO and IoT Gateways.
>>
>> Some highlights of this SoC are:
>> * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
>>    MCUs, and a single Cortex-M4F.
>> * Two Gigabit Industrial Communication Subsystems (ICSSG).
>> * Integrated Ethernet switch supporting up to a total of two external
>>    ports.
>> * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
>>    controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
>>    peripherals.
>> * Centralized System Controller for Security, Power, and Resource
>>    Management (DMSC).
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
>>   arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 178 +++++++++++++++++++++++
>>   arch/arm64/boot/dts/ti/k3-am64.dtsi      |  95 ++++++++++++
>>   arch/arm64/boot/dts/ti/k3-am642.dtsi     |  65 +++++++++
>>   3 files changed, 338 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-am64-main.dtsi
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-am64.dtsi
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-am642.dtsi
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
> 
> Could you add proper syscon node for CTRL_MMR and place chipid under it, pls?

Sure this is no problem for v2, will do.

Regards,
Dave
