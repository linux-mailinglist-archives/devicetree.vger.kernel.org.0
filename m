Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6292738F7CC
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 04:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbhEYCCG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 22:02:06 -0400
Received: from szxga04-in.huawei.com ([45.249.212.190]:5692 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbhEYCCF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 22:02:05 -0400
Received: from dggems701-chm.china.huawei.com (unknown [172.30.72.59])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Fpxzp1F9Hz1BRJs;
        Tue, 25 May 2021 09:57:42 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems701-chm.china.huawei.com (10.3.19.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 25 May 2021 10:00:32 +0800
Received: from [127.0.0.1] (10.174.177.72) by dggpemm500006.china.huawei.com
 (7.185.36.236) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Tue, 25 May
 2021 10:00:32 +0800
Subject: Re: [PATCH 1/1] arm64: dts: lx2160a: Normalize the compatible string
 of "arm, sbsa-uart"
To:     Mark Kettenis <mark.kettenis@xs4all.nl>
CC:     <shawnguo@kernel.org>, <leoyang.li@nxp.com>, <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210524035244.8677-1-thunder.leizhen@huawei.com>
 <5612f2cad25a3041@bloch.sibelius.xs4all.nl>
From:   "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <52e44070-3b6f-b8ee-2f23-6059517755a8@huawei.com>
Date:   Tue, 25 May 2021 10:00:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5612f2cad25a3041@bloch.sibelius.xs4all.nl>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2021/5/25 1:36, Mark Kettenis wrote:
>> From: Zhen Lei <thunder.leizhen@huawei.com>
>> Date: Mon, 24 May 2021 11:52:44 +0800
>> Content-Type: text/plain; charset="us-ascii"
>>
>> The compatible string of ARM SBSA defined generic UART needs to contain
>> only "arm,sbsa-uart" and does not need to contain "arm,pl011". Otherwise,
>> the pl011.yaml will check it and falsely report many warnings similar to
>> the following:
>>
>> arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-cx.dt.yaml:
>>  serial@21c0000: compatible:0: 'arm,pl011' was expected
>>  serial@21c0000: compatible:1: 'arm,primecell' was expected
>>
>> Delete the redundant "arm,pl011" to fix it.
> 
> According to its reference manual, the LX2160A has a full PL011
> implementation.  So I think this is the wrong "fix".

No, No, Please refer: https://www.spinics.net/lists/devicetree/msg424054.html

Now the "arm,sbsa-uart" driver is mixed with amba-pl011.c，It's impossible
"arm,pl011" is loaded but "arm,sbsa-uart" is not loaded. So it makes no sense
to append "arm, pl011" to the end of the compatible string as an alternative
driver.

drivers/tty/serial/amba-pl011.c:2784:       { .compatible = "arm,sbsa-uart", },


> 
>> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
>> ---
>>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
>> index 4fcc869c21a4..417546616d85 100644
>> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
>> @@ -920,7 +920,7 @@
>>  		};
>>  
>>  		uart0: serial@21c0000 {
>> -			compatible = "arm,sbsa-uart","arm,pl011";
>> +			compatible = "arm,sbsa-uart";
>>  			reg = <0x0 0x21c0000 0x0 0x1000>;
>>  			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
>>  			current-speed = <115200>;
>> @@ -928,7 +928,7 @@
>>  		};
>>  
>>  		uart1: serial@21d0000 {
>> -			compatible = "arm,sbsa-uart","arm,pl011";
>> +			compatible = "arm,sbsa-uart";
>>  			reg = <0x0 0x21d0000 0x0 0x1000>;
>>  			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>>  			current-speed = <115200>;
>> @@ -936,7 +936,7 @@
>>  		};
>>  
>>  		uart2: serial@21e0000 {
>> -			compatible = "arm,sbsa-uart","arm,pl011";
>> +			compatible = "arm,sbsa-uart";
>>  			reg = <0x0 0x21e0000 0x0 0x1000>;
>>  			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
>>  			current-speed = <115200>;
>> @@ -944,7 +944,7 @@
>>  		};
>>  
>>  		uart3: serial@21f0000 {
>> -			compatible = "arm,sbsa-uart","arm,pl011";
>> +			compatible = "arm,sbsa-uart";
>>  			reg = <0x0 0x21f0000 0x0 0x1000>;
>>  			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
>>  			current-speed = <115200>;
>> -- 
>> 2.21.1
>>
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
> 
> .
> 

