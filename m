Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95842718EED
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 01:09:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbjEaXJz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 19:09:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbjEaXJy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 19:09:54 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 862E397
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 16:09:52 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2F324846D8;
        Thu,  1 Jun 2023 01:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685574590;
        bh=aSJyHJYipQ+nd6awAewuFhnEU4wWt12K2ESx9KlYP6k=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=H0qTlE5vhP9xfRufrsofA5hsPtoSWqA2Xi1CEhRtbXCISvkKoL1AhSKIlmAcdR+VS
         ohJD4piWCd+9OVsKk24Y32ypXU7JzOPDk5ONxEY+xSUW4wG+RNQGxrm71mP45eI1xj
         dVK7DypxCJjkNOK6Krg3U9sHgIshnH2Y609IcH0lDqPS3J+IZtOyHFu6b6v0soUb1X
         KK7foDX9X2Sv0m5fYHb0txpVSzBkCESvHItLf5+ImszZxuGtII6mqZr9yjYFof9Lkd
         +R0AdiYDHBeTQ4/4hJgpbL8of8iEokT5QuufbnvQlIJd+BeunLwzJSRKfFpa/j/1LB
         uUY7mE/lJMPyQ==
Message-ID: <25e6053b-dfc7-efce-2043-7e4f96708418@denx.de>
Date:   Thu, 1 Jun 2023 01:09:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/3] ARM: dts: stm32: Add nvmem-syscon node to TAMP to
 expose boot count on DHSOM
Content-Language: en-US
To:     patrick.delaunay@foss.st.com, linux-arm-kernel@lists.infradead.org
Cc:     Alexandre TORGUE - foss <alexandre.torgue@foss.st.com>,
        'Conor Dooley' <conor+dt@kernel.org>,
        'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>,
        'Maxime Coquelin' <mcoquelin.stm32@gmail.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Srinivas Kandagatla' <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <20230517152513.27922-3-marex@denx.de>
 <02ca01d98fe6$ca371d80$5ea55880$@foss.st.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <02ca01d98fe6$ca371d80$5ea55880$@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/26/23 17:28, patrick.delaunay@foss.st.com wrote:
> Hi Marek,

Hi,

>> From: Marek Vasut <marex@denx.de>
>> Sent: Wednesday, May 17, 2023 5:25 PM
>> Subject: [PATCH v2 3/3] ARM: dts: stm32: Add nvmem-syscon node to TAMP to
>> expose boot count on DHSOM
>>
>> Add nvmem-syscon subnode to expose TAMP_BKPxR register 19 to user space.
>> This register contains U-Boot boot counter, by exposing it to user space the user
>> space can reset the boot counter.
>>
>> Read access example:
>> "
>> $ hexdump -vC /sys/bus/nvmem/devices/5c00a000.tamp\:nvmem0/nvmem
>> 00000000  0c 00 c4 b0
>> "
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Marek Vasut <marex@denx.de>
>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: kernel@dh-electronics.com
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> ---
>> V2: No change
>> ---
>>   arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi | 11 +++++++++++
>> arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi | 11 +++++++++++
>>   2 files changed, 22 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>> b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>> index 74735552f4803..b2557bb718f52 100644
>> --- a/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-som.dtsi
>> @@ -537,6 +537,17 @@ &sdmmc3 {
>>   	status = "okay";
>>   };
>>
>> +&tamp {
>> +	#address-cells = <1>;
>> +	#size-cells = <1>;
>> +
>> +	/* Boot counter */
>> +	nvmem {
>> +		compatible = "nvmem-syscon";
>> +		reg = <0x14c 0x4>;
>> +	};
>> +};
>> +
>>   &uart4 {
>>   	pinctrl-names = "default";
>>   	pinctrl-0 = <&uart4_pins_a>;
>> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>> b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>> index bba19f21e5277..864960387e634 100644
>> --- a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>> @@ -269,3 +269,14 @@ &rng1 {
>>   &rtc {
>>   	status = "okay";
>>   };
>> +
>> +&tamp {
>> +	#address-cells = <1>;
>> +	#size-cells = <1>;
>> +
>> +	/* Boot counter */
>> +	nvmem {
> 
> According binding you need to add "@<reg>" => nvmem@14c
> 
> And you export only TAMP_BKP19R directly in a nvmem region ?

4 bytes is more than plenty for boot counter , yes.

>> +		compatible = "nvmem-syscon";
>> +		reg = <0x14c 0x4>;
>> +	};
>> +};
> 
> 
> the boot counter could be a nvem cell so you could expose  other backup registers
> 
> For example :
> 
> &tamp {
> 	#address-cells = <1>;
> 	#size-cells = <1>;
> 
> 	nvmem@14c  {
> 		compatible = "nvmem-syscon";
> 		reg = <0x14c 0x4>;
> 
> 		/* Data cells */
> 		boot_counter: boot-counter@14c {
> 			reg = <0x14c 0x4>;
> 		};
> 	};
> };
> 
> Even if you export more backup register the cell will be correctly described in DT
> and could be accessible directly  with sysfs without managed offset in userland
> 
> with https://lore.kernel.org/lkml/202305240724.z3McDuYM-lkp@intel.com/T/
> Or previous serie https://lore.kernel.org/lkml/20211220064730.28806-1-zajec5@gmail.com/
> 
> 
> for example to export all the free register:
> 
> Reference: https://wiki.st.com/stm32mpu/wiki/STM32MP15_backup_registers
> 
> the cell " boot-counter" will be always available for users.
> 
> &tamp {
> 	#address-cells = <1>;
> 	#size-cells = <1>;
> 
> 	/* backup register: 10 to 21 */
> 	nvmem@0x128  {
> 		compatible = "nvmem-syscon";
> 		reg = <0x128 0x44>;
> 
> 		/* Data cells */
> 		boot_counter: boot-counter@14c {
> 			reg = <0x14c 0x4>;
> 		};
> 		boot_mode: boot-mode@150 {
> 			reg = <0x150 0x4>;
> 		};
> ....
> 	};
> };

Sure, thanks. I'm not sure I understood the message above.
