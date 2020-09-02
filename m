Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE13025A42A
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 05:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726193AbgIBDvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 23:51:39 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:35422 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726140AbgIBDvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 23:51:39 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0823pZDm026567;
        Tue, 1 Sep 2020 22:51:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599018695;
        bh=sKg4n0cbh1bS1y7C51BGm7yepcE51tKAyMSKa6r61CM=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=HNl+8hIRZs6FmqAOyMN7kXADkxg8yx3lJPED3dKMuGv2ygM/opK99i32tskDSoU0e
         iCZ4ad2T+RlV7B2ed7Yg7c7RfDwIGc9l+NRAGXymHy6Uf35L0QIzyqW4dskCCeKfOh
         i2TQtU0sso3GSp3GwH7Aj907HQeEV2E43HoYtev0=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0823pZiC069662
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 1 Sep 2020 22:51:35 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 1 Sep
 2020 22:51:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 1 Sep 2020 22:51:34 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0823pVkW081580;
        Tue, 1 Sep 2020 22:51:32 -0500
Subject: Re: [PATCH v2 3/4] arm64: dts: ti: Add support for J7200 SoC
To:     Peter Ujfalusi <peter.ujfalusi@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <20200827065144.17683-4-lokeshvutla@ti.com>
 <4452e4b4-8479-6ec9-9206-74482e40538b@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <13fa72a9-3684-04e4-439c-f4473f39eb60@ti.com>
Date:   Wed, 2 Sep 2020 09:21:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <4452e4b4-8479-6ec9-9206-74482e40538b@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peter,

On 31/08/20 2:43 pm, Peter Ujfalusi wrote:
> Hi Lokesh,
> 
> On 27/08/2020 9.51, Lokesh Vutla wrote:
>> The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
>> It is targeted for automotive gateway, vehicle compute systems,
>> Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
>> The SoC aims to meet the complex processing needs of modern embedded
>> products.
>>
>> Some highlights of this SoC are:
>> * Dual Cortex-A72s in a single cluster, two clusters of lockstep
>>   capable dual Cortex-R5F MCUs and a Centralized Device Management and
>>   Security Controller (DMSC).
>> * Configurable L3 Cache and IO-coherent architecture with high data
>>   throughput capable distributed DMA architecture under NAVSS.
>> * Integrated Ethernet switch supporting up to a total of 4 external ports
>>   in addition to legacy Ethernet switch of up to 2 ports.
>> * Upto 1 PCIe-GEN3 controller, 1 USB3.0 Dual-role device subsystems,
>>   20 MCANs, 3 McASP, eMMC and SD, OSPI/HyperBus memory controller, I3C
>>   and I2C, eCAP/eQEP, eHRPWM among other peripherals.
>> * One hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
>>   management.
>>
>> See J7200 Technical Reference Manual (SPRUIU1, June 2020)
>> for further details: https://www.ti.com/lit/pdf/spruiu1
>>
>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 199 ++++++++++++++++++
>>  .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      |  84 ++++++++
>>  arch/arm64/boot/dts/ti/k3-j7200.dtsi          | 165 +++++++++++++++
>>  3 files changed, 448 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
>> new file mode 100644
>> index 000000000000..70c8f7e941fb
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
>> @@ -0,0 +1,199 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Device Tree Source for J7200 SoC Family Main Domain peripherals
>> + *
>> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
>> + */
>> +
>> +&cbass_main {
>> +	msmc_ram: sram@70000000 {
>> +		compatible = "mmio-sram";
>> +		reg = <0x0 0x70000000 0x0 0x100000>;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		ranges = <0x0 0x0 0x70000000 0x100000>;
>> +
>> +		atf-sram@0 {
>> +			reg = <0x0 0x20000>;
>> +		};
>> +	};
>> +
>> +	gic500: interrupt-controller@1800000 {
>> +		compatible = "arm,gic-v3";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +		#interrupt-cells = <3>;
>> +		interrupt-controller;
>> +		reg = <0x00 0x01800000 0x00 0x10000>,	/* GICD */
>> +		      <0x00 0x01900000 0x00 0x100000>;	/* GICR */
>> +
>> +		/* vcpumntirq: virtual CPU interface maintenance interrupt */
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
>> +	main_navss: navss@30000000 {
>> +		compatible = "simple-mfd";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges = <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>;
>> +
>> +		secure_proxy_main: mailbox@32c00000 {
>> +			compatible = "ti,am654-secure-proxy";
>> +			#mbox-cells = <1>;
>> +			reg-names = "target_data", "rt", "scfg";
>> +			reg = <0x00 0x32c00000 0x00 0x100000>,
>> +			      <0x00 0x32400000 0x00 0x100000>,
>> +			      <0x00 0x32800000 0x00 0x100000>;
>> +			interrupt-names = "rx_011";
>> +			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
>> +		};
> 
> Would it make sense to have the nodes needed for DMA also in the initial
> commit?
> mainline is prepared for it.

They are fairly independent patches. IMHO, they can come separately. This series
is lying around for long time. I would prefer to get this base support in asap.

Thanks and regards,
Lokesh

> 
> - Péter
> 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 
