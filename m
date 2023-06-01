Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A623C71A22A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234099AbjFAPPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:15:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234382AbjFAPPx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:15:53 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF35134
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:15:46 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 351D3a9E012865;
        Thu, 1 Jun 2023 17:15:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=0RcEoXxFMEuOoi4z69XcgdJOiHIgPTlS10vQX8Lm9pc=;
 b=fYxCX9AMXvJYDYCxGzJWFGaYDH6WmqzbvH13y3VnWU3JcnMDL2z/qk5rIJnt4GsVSdEF
 b9Svwsa+vHjiHEsBXe5vUdOR3ufSw8l9moG7JcSFh2e0LdLooo89E6fkKzYiz+GBIkNP
 3HwDSwV+L2c7PsDFFOHQ5zI/6YDeL9C524ujrPBxWsxZBVeSvnc51AHvUxOetQvOqajF
 gGnX8OXcejrfT5Y5mGqPRL0jL+niMCjRxUSEmcB8LjSwEgbvQm/jjAszeQsCPCFQ5Fsr
 ZXk/hTJpmSRyMZy53gRyKIGi5CejQ/WC8drv0hfjAeztAuxAFsLUCsrsdGD/M7uFg1oI CA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3qx367aak3-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 01 Jun 2023 17:15:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A8CAD10002A;
        Thu,  1 Jun 2023 17:15:12 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8EC7C252235;
        Thu,  1 Jun 2023 17:15:12 +0200 (CEST)
Received: from [10.48.1.0] (10.48.1.0) by SHFDAG1NODE3.st.com (10.75.129.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Thu, 1 Jun
 2023 17:15:11 +0200
Message-ID: <fcf3157c-3417-2090-1be3-c00388c11d72@foss.st.com>
Date:   Thu, 1 Jun 2023 17:15:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/3] ARM: dts: stm32: Add nvmem-syscon node to TAMP to
 expose boot count on DHSOM
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC:     Alexandre TORGUE - foss <alexandre.torgue@foss.st.com>,
        'Conor Dooley' <conor+dt@kernel.org>,
        'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>,
        'Maxime Coquelin' <mcoquelin.stm32@gmail.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Srinivas Kandagatla' <srinivas.kandagatla@linaro.org>,
        <devicetree@vger.kernel.org>, <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20230517152513.27922-1-marex@denx.de>
 <20230517152513.27922-3-marex@denx.de>
 <02ca01d98fe6$ca371d80$5ea55880$@foss.st.com>
 <25e6053b-dfc7-efce-2043-7e4f96708418@denx.de>
From:   Patrick DELAUNAY <patrick.delaunay@foss.st.com>
In-Reply-To: <25e6053b-dfc7-efce-2043-7e4f96708418@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.48.1.0]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-01_08,2023-05-31_03,2023-05-22_02
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 6/1/23 01:09, Marek Vasut wrote:
> On 5/26/23 17:28, patrick.delaunay@foss.st.com wrote:
>> Hi Marek,
>
> Hi,
>
>>> From: Marek Vasut <marex@denx.de>
>>> Sent: Wednesday, May 17, 2023 5:25 PM
>>> Subject: [PATCH v2 3/3] ARM: dts: stm32: Add nvmem-syscon node to 
>>> TAMP to
>>> expose boot count on DHSOM
>>>
>>> Add nvmem-syscon subnode to expose TAMP_BKPxR register 19 to user 
>>> space.
>>> This register contains U-Boot boot counter, by exposing it to user 
>>> space the user
>>> space can reset the boot counter.
>>>
>>> Read access example:
>>> "
>>> $ hexdump -vC /sys/bus/nvmem/devices/5c00a000.tamp\:nvmem0/nvmem
>>> 00000000  0c 00 c4 b0
>>> "
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Marek Vasut <marex@denx.de>
>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: kernel@dh-electronics.com
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>> ---
>>> V2: No change
>>> ---
>>>   arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi | 11 +++++++++++
>>> arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi | 11 +++++++++++
>>>   2 files changed, 22 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>>> b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>>> index 74735552f4803..b2557bb718f52 100644
>>> --- a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>>> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>>> @@ -537,6 +537,17 @@ &sdmmc3 {
>>>       status = "okay";
>>>   };
>>>
>>> +&tamp {
>>> +    #address-cells = <1>;
>>> +    #size-cells = <1>;
>>> +
>>> +    /* Boot counter */
>>> +    nvmem {
>>> +        compatible = "nvmem-syscon";
>>> +        reg = <0x14c 0x4>;
>>> +    };
>>> +};
>>> +
>>>   &uart4 {
>>>       pinctrl-names = "default";
>>>       pinctrl-0 = <&uart4_pins_a>;
>>> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>>> b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>>> index bba19f21e5277..864960387e634 100644
>>> --- a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>>> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>>> @@ -269,3 +269,14 @@ &rng1 {
>>>   &rtc {
>>>       status = "okay";
>>>   };
>>> +
>>> +&tamp {
>>> +    #address-cells = <1>;
>>> +    #size-cells = <1>;
>>> +
>>> +    /* Boot counter */
>>> +    nvmem {
>>
>> According binding you need to add "@<reg>" => nvmem@14c
>>
>> And you export only TAMP_BKP19R directly in a nvmem region ?
>
> 4 bytes is more than plenty for boot counter , yes.
>
>>> +        compatible = "nvmem-syscon";
>>> +        reg = <0x14c 0x4>;
>>> +    };
>>> +};
>>
>>
>> the boot counter could be a nvem cell so you could expose  other 
>> backup registers
>>
>> For example :
>>
>> &tamp {
>>     #address-cells = <1>;
>>     #size-cells = <1>;
>>
>>     nvmem@14c  {
>>         compatible = "nvmem-syscon";
>>         reg = <0x14c 0x4>;
>>
>>         /* Data cells */
>>         boot_counter: boot-counter@14c {
>>             reg = <0x14c 0x4>;
>>         };
>>     };
>> };
>>
>> Even if you export more backup register the cell will be correctly 
>> described in DT
>> and could be accessible directly  with sysfs without managed offset 
>> in userland
>>
>> with https://lore.kernel.org/lkml/202305240724.z3McDuYM-lkp@intel.com/T/
>> Or previous serie 
>> https://lore.kernel.org/lkml/20211220064730.28806-1-zajec5@gmail.com/
>>
>>
>> for example to export all the free register:
>>
>> Reference: https://wiki.st.com/stm32mpu/wiki/STM32MP15_backup_registers
>>
>> the cell " boot-counter" will be always available for users.
>>
>> &tamp {
>>     #address-cells = <1>;
>>     #size-cells = <1>;
>>
>>     /* backup register: 10 to 21 */
>>     nvmem@0x128  {
>>         compatible = "nvmem-syscon";
>>         reg = <0x128 0x44>;
>>
>>         /* Data cells */
>>         boot_counter: boot-counter@14c {
>>             reg = <0x14c 0x4>;
>>         };
>>         boot_mode: boot-mode@150 {
>>             reg = <0x150 0x4>;
>>         };
>> ....
>>     };
>> };
>
> Sure, thanks. I'm not sure I understood the message above.


sorry if it wasn't clear


TAMP register a nvmem driver = NVRAM provider

=> it should export ALL the free backup registers

       as they can used by application / kernel for many purpose....

       and not only for boot counterfor you use-case


So limit the exported backup register to this 4 bytes is strange for me.


and COUNTER is a nvem cell =  a part of backup register = TAMP_BKP19R

=> I agree 4 byte for this count is fine for this cell


NB: today we have no means to read only one nvmem cell with sysfs API

        but I see this feature is proposed to have something as

/sys/bus/nvmem/devices/nvmem@0x128/ => all the backup registers

/sys/bus/nvmem/devices/nvmem@0x128/cells/boot-mode => only the nvmem 
cell used as counter I think it is more safe for long term support to 
manage your counter as a nvmem cell. regards Patrick

