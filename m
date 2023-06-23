Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DA8B73B598
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 12:40:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbjFWKky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 06:40:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230474AbjFWKkx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 06:40:53 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 639202113
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 03:40:30 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35N7ENtP032070;
        Fri, 23 Jun 2023 12:39:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=Wsm1r+YZb6njhXuYuKqAF8bSuYHp/iwjxFKK1C+IEZI=;
 b=jZUto3MxDGvYiZkC9wghuPPG4WdXwRDO/KlLoeANpEnuJ7X8IYQYFbJvJvQ2ksP+Xuq2
 FXIUgr0NfgKtuM5fV0QwHrYCuAkt9MiW36ku/7yHfC5t6mv75eZNUPVzEHlPCg+Zp/hc
 3Y+99G0hBq3bXBZIerHVE/IVdnyWMgdNcOaWTHs9n8VMDDEiSBBpD/HSVJAq9skySrbG
 AbdtHFcmPgZzSP8T6AuFN3u5M/VOXcL4Kk6FzYBZn/hfFFuyuQa+nULuPM0q4Yex/iya
 1WkljfLRb+hPPqDpG2HpXvVePiwJ9DsDg8JlagRN9/m1L3ChyVq9wGPBo+YP8WQ0Cqjr Hw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3rd6ma9eup-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 23 Jun 2023 12:39:48 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 803AB10007B;
        Fri, 23 Jun 2023 12:39:47 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7805E21BF4E;
        Fri, 23 Jun 2023 12:39:47 +0200 (CEST)
Received: from [10.201.21.93] (10.201.21.93) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Fri, 23 Jun
 2023 12:39:47 +0200
Message-ID: <6551be49-7957-a208-9cd8-6a7a41000880@foss.st.com>
Date:   Fri, 23 Jun 2023 12:39:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v9 10/10] ARM: dts: stm32: add STM32MP1-based Phytec board
Content-Language: en-US
To:     Christophe Parant <C.Parant@phytec.fr>,
        "linux-stm32@st-md-mailman.stormreply.com" 
        <linux-stm32@st-md-mailman.stormreply.com>,
        "s.trumtrar@pengutronix.de" <s.trumtrar@pengutronix.de>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "upstream@lists.phytec.de" <upstream@lists.phytec.de>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230505060158.16516-1-s.trumtrar@pengutronix.de>
 <20230505060158.16516-11-s.trumtrar@pengutronix.de>
 <e5b4ef445160ac0ddbaa25f12118a253ad21542a.camel@phytec.fr>
 <9163ad315278dbedd6c31993a3dafad62a731b5e.camel@phytec.fr>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <9163ad315278dbedd6c31993a3dafad62a731b5e.camel@phytec.fr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.201.21.93]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-23_04,2023-06-22_02,2023-05-22_02
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Christophe

On 6/23/23 10:59, Christophe Parant wrote:
> Hello maintainers,
> 
> I would like to know if you have seen my request below ?
> 
> Thank you.
> 
> Best regards,
> Christophe
> 
> Le mardi 23 mai 2023 à 16:58 +0200, Christophe Parant a écrit :
>> Hi Steffen,
>>
>> Thank you for upstreaming our phyBOARD-Sargas device tree. We were
>> also
>> planing to work on that too.
>> If this patch is not applied upstream yet, would it be possible to
>> rename the .dts file ?
>>
>> In the beginning, we named the dts files after our Yocto machines,
>> which is probably the version you got. But now we renamed them after
>> our baseboard names, like with our other platforms.
>> So it would make sense to have the stm32 baseboard named the same
>> way,
>> changing "stm32mp157c-phycore-stm32mp1-3.dts" to "stm32mp157c-
>> phyboard-
>> sargas-rdk-emmc.dts".
>>

It has been sent with the old name. If it is really needed you need to 
send a patch (yaml + DT update) with a fixes tag. I'll send it to 
arm-soc during v6.5 rc cycle.

Alex

>> "model" and "compatible" can also be modified this way with this
>> naming
>> convention :
>>
>> / {
>>      model = "PHYTEC phyBOARD-Sargas STM32MP157C with eMMC";
>>      compatible = "phytec,stm32mp157c-phyboard-sargas-rdk-emmc",
>>               "phytec,stm32mp157c-phycore-som", "st,stm32mp157";
>> };
>>
>> Thanks.
>>
>> Best regards,
>> Christophe Parant
>>
>> Le vendredi 05 mai 2023 à 08:01 +0200, Steffen Trumtrar a écrit :
>>> Add the Phytec STM32MP1-3 Dev board. The devboard uses a Phytec
>>> stm32m157c-som.
>>>
>>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>> ---
>>>
>>> Notes:
>>>      Changes since v7:
>>>         - remove secure-status for sdmmc
>>>
>>>   arch/arm/boot/dts/Makefile                    |  3 +-
>>>   .../dts/stm32mp157c-phycore-stm32mp1-3.dts    | 60
>>> +++++++++++++++++++
>>>   2 files changed, 62 insertions(+), 1 deletion(-)
>>>   create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-
>>> 3.dts
>>>
>>> diff --git a/arch/arm/boot/dts/Makefile
>>> b/arch/arm/boot/dts/Makefile
>>> index efe4152e5846..dfa9a7477c82 100644
>>> --- a/arch/arm/boot/dts/Makefile
>>> +++ b/arch/arm/boot/dts/Makefile
>>> @@ -1252,7 +1252,8 @@ dtb-$(CONFIG_ARCH_STM32) += \
>>>          stm32mp157c-ev1.dtb \
>>>          stm32mp157c-ev1-scmi.dtb \
>>>          stm32mp157c-lxa-mc1.dtb \
>>> -       stm32mp157c-odyssey.dtb
>>> +       stm32mp157c-odyssey.dtb \
>>> +       stm32mp157c-phycore-stm32mp1-3.dtb
>>>   dtb-$(CONFIG_MACH_SUN4I) += \
>>>          sun4i-a10-a1000.dtb \
>>>          sun4i-a10-ba10-tvbox.dtb \
>>> diff --git a/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
>>> b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
>>> new file mode 100644
>>> index 000000000000..28d7203264ce
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
>>> @@ -0,0 +1,60 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
>>> +/*
>>> + * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
>>> + * Author: Dom VOVARD <dom.vovard@linrt.com>.
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include <dt-bindings/pinctrl/stm32-pinfunc.h>
>>> +#include "stm32mp157.dtsi"
>>> +#include "stm32mp15xc.dtsi"
>>> +#include "stm32mp15xxac-pinctrl.dtsi"
>>> +#include "stm32mp157c-phycore-stm32mp15-som.dtsi"
>>> +
>>> +/ {
>>> +       model = "PHYTEC phyCORE-STM32MP1-3 Dev Board";
>>> +       compatible = "phytec,phycore-stm32mp1-3",
>>> +                    "phytec,phycore-stm32mp157c-som",
>>> "st,stm32mp157";
>>> +
>>> +       aliases {
>>> +               mmc0 = &sdmmc1;
>>> +               mmc1 = &sdmmc2;
>>> +               mmc2 = &sdmmc3;
>>> +               serial0 = &uart4;
>>> +               serial1 = &usart3;
>>> +               serial2 = &usart1;
>>> +       };
>>> +};
>>> +
>>> +&cryp1 {
>>> +       status = "okay";
>>> +};
>>> +
>>> +&dts {
>>> +       status = "okay";
>>> +};
>>> +
>>> +&fmc {
>>> +       status = "disabled";
>>> +};
>>> +
>>> +&gpu {
>>> +       status = "okay";
>>> +};
>>> +
>>> +&i2c4_eeprom {
>>> +       status = "okay";
>>> +};
>>> +
>>> +&i2c4_rtc {
>>> +       status = "okay";
>>> +};
>>> +
>>> +&qspi {
>>> +       status = "okay";
>>> +};
>>> +
>>> +&sdmmc2 {
>>> +       status = "okay";
>>> +};

