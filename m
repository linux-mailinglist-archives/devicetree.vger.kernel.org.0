Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E03B3A6DEF
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 20:05:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234429AbhFNSH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 14:07:29 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:50316 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233559AbhFNSH3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 14:07:29 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15EI5JCK017060;
        Mon, 14 Jun 2021 13:05:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623693919;
        bh=Apz/RqD822R54T9hfdMZgW2bSycIPXY52YZQ7dUNOHI=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=IoJ1vM5s1B4mPVtfWYbbPbBf1jZij29ji5JhlGMeINQPgQoIZBY33zF6FRcDZN6x1
         /NoYd2PbiIhsLO9ItXCiJ8rL8bmRzjsjNIZFTDnVyAVkK5NYgW8Rx5nx9V1UZfSuI2
         NB/wimtlcr59sgucklLoEjEc2HjzIpVih9BdZOy0=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15EI5Jiu056169
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 14 Jun 2021 13:05:19 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 14
 Jun 2021 13:05:18 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 14 Jun 2021 13:05:18 -0500
Received: from [10.250.35.153] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15EI5IVT056057;
        Mon, 14 Jun 2021 13:05:18 -0500
Subject: Re: [PATCH 4/4] arm64: dts: ti: k3-am642-evm/sk: Reserve some on-chip
 SRAM for R5Fs
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210528144718.25132-1-s-anna@ti.com>
 <20210528144718.25132-5-s-anna@ti.com>
 <20210611191353.qn5lgasho2rujyof@situated>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <209c545d-c012-9ee8-34ca-bc4f48dbfbcb@ti.com>
Date:   Mon, 14 Jun 2021 13:05:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210611191353.qn5lgasho2rujyof@situated>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vignesh, Nishanth,

On 6/11/21 2:13 PM, Nishanth Menon wrote:
> On 09:47-20210528, Suman Anna wrote:
>> Reserve some portions of the MAIN domain on-chip SRAM for use by various
>> R5F cores on AM642 EVM and SK boards. A bank (256 KB) each is reserved
>> from the on-chip SRAM for each R5F core. This is done through specific
>> child SRAM nodes in the board dts file.
>>
>> The memory regions are also assigned to each R5F remoteproc node using
>> the sram property. The reserved SRAM banks are as follows for each core:
>>   Main R5FSS0 Core0 : OCSRAM1
>>   Main R5FSS0 Core1 : OCSRAM2
>>   Main R5FSS1 Core0 : OCSRAM3
>>   Main R5FSS1 Core1 : OCSRAM4
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> Signed-off-by: Ming Wei <mwei@ti.com>
>> Signed-off-by: Nishanth Menon <nm@ti.com>
>> Link: https://lore.kernel.org/r/20210528144718.25132-5-s-anna@ti.com
>> ---
>>  arch/arm64/boot/dts/ti/k3-am642-evm.dts | 22 ++++++++++++++++++++++
>>  arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 22 ++++++++++++++++++++++
>>  2 files changed, 44 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
>> index 4d0b3f86525e..083df636d7ff 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
>> @@ -184,28 +184,50 @@ cpsw3g_phy3: ethernet-phy@3 {
>>  	};
>>  };
>>  
>> +&oc_sram {
>> +	main_r5fss0_core0_sram: r5f-sram@40000 {
>> +		reg = <0x40000 0x40000>;
>> +	};
>> +
>> +	main_r5fss0_core1_sram: r5f-sram@80000 {
>> +		reg = <0x80000 0x40000>;
>> +	};
>> +
>> +	main_r5fss1_core0_sram: r5f-sram@c0000 {
>> +		reg = <0xc0000 0x40000>;
>> +	};
>> +
>> +	main_r5fss1_core1_sram: r5f-sram@100000 {
>> +		reg = <0x100000 0x40000>;
>> +	};
>> +};
> 

These addresses are currently in sync with the corresponding firmware linker map
files. Any changes needed here should also be aligned and updated with all the
firmwares then.

Nishanth,
How about dropping this patch until we conclude the discussion and picking up
the rest?

> We need to relook at these addresses -> please see the series from
> Vignesh[1] and Ashwath[2].
> 
> 0x0 <-> 0x1a0000 is free
> 0x1a0000 <-> 0x1bc000 -> TF-A
> 0x1bc000 <-> 0x1c0000 -> Free
> 0x1c0000 <-> 0x200000 -> Seems to be sysfw?

Looking at the dicussion on v1, I am confused. Is the default reservation size
for SYSFW 0x40000 (256K) or 0x20000 (128K)? The v2 of the SYSFW SRAM
reservations is still using 256K at 0x1c0000 offset.

> 
> 
> [1] https://lore.kernel.org/linux-devicetree/20210609140604.9490-1-vigneshr@ti.com/
> [2] https://lore.kernel.org/linux-devicetree/162343800075.7434.10921347563461214925.b4-ty@ti.com/
> 

