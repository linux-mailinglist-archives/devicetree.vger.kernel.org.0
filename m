Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 772132653D5
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 23:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725828AbgIJVlS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 17:41:18 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:50488 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729911AbgIJNFg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 09:05:36 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08AD5RPX049928;
        Thu, 10 Sep 2020 08:05:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599743127;
        bh=1hv8Rei6aCi7IM+YZ4aGXww3Gc2KJALmFYAYdbbWVl4=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ZHP1Gx8o+AJULP7342P5kT5OgZUB/Q4mRcn7CeqMDFInJAj+427xspbPT2/kflzko
         QGHSKFuT7UnCCMRTKf1iOf8S2/yIoMLgZvdevHcBPB1ZIN7hF3DW8UnlFRqppxMd03
         VGTklOSSi9Nu6M4OEkq+xujOq0zhQvac8glt0tH0=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08AD5RxX044072;
        Thu, 10 Sep 2020 08:05:27 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 08:05:27 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 08:05:27 -0500
Received: from [10.250.235.166] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08AD5NYi107295;
        Thu, 10 Sep 2020 08:05:24 -0500
Subject: Re: [PATCH v3 4/5] arm64: dts: ti: Add support for J7200 SoC
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-5-lokeshvutla@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <887a786d-4d3d-8187-2e55-e1f714b081d1@ti.com>
Date:   Thu, 10 Sep 2020 18:35:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908162252.17672-5-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 9/8/20 9:52 PM, Lokesh Vutla wrote:
> The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
> It is targeted for automotive gateway, vehicle compute systems,
> Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
> The SoC aims to meet the complex processing needs of modern embedded
> products.
> 
> Some highlights of this SoC are:
> * Dual Cortex-A72s in a single cluster, two clusters of lockstep
>   capable dual Cortex-R5F MCUs and a Centralized Device Management and
>   Security Controller (DMSC).
> * Configurable L3 Cache and IO-coherent architecture with high data
>   throughput capable distributed DMA architecture under NAVSS.
> * Integrated Ethernet switch supporting up to a total of 4 external ports
>   in addition to legacy Ethernet switch of up to 2 ports.
> * Upto 1 PCIe-GEN3 controller, 1 USB3.0 Dual-role device subsystems,
>   20 MCANs, 3 McASP, eMMC and SD, OSPI/HyperBus memory controller, I3C
>   and I2C, eCAP/eQEP, eHRPWM among other peripherals.
> * One hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
>   management.
> 
> See J7200 Technical Reference Manual (SPRUIU1, June 2020)
> for further details: https://www.ti.com/lit/pdf/spruiu1
> 
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Reviewed-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
[...]
> +	cbass_main: bus@100000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
> +			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
> +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* timesync router */
> +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0d000000>, /* Most peripherals */
> +			 <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>, /* MAIN NAVSS */
> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00800000>, /* MSMC RAM */
> +			 <0x41 0x00000000 0x41 0x00000000 0x01 0x00000000>, /* PCIe1 DAT */
> +
> +			 /* MCUSS_WKUP Range */
> +			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
> +			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
> +			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
> +			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
> +			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
> +			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
> +			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
> +			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
> +			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
> +			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>;
> +
> +		cbass_mcu_wakeup: bus@28380000 {
> +			compatible = "simple-bus";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
> +				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
> +				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
> +				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
> +				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
> +				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
> +				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
> +				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
> +				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
> +				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
> +				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>; /* FSS OSPI0/1 data region 0 */
> +		};
> +	};
> +};
> +

Could you pick up FSS region updates from [1] as Nishanth suggested?

[1]
https://lore.kernel.org/linux-arm-kernel/20200807124407.12604-2-vigneshr@ti.com/

Regards
Vignesh
