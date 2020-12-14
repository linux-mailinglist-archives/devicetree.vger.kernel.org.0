Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 575752D9E07
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 18:45:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408637AbgLNRoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 12:44:04 -0500
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]:38331 "EHLO
        5.mo2.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2408688AbgLNRoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Dec 2020 12:44:03 -0500
X-Greylist: delayed 527 seconds by postgrey-1.27 at vger.kernel.org; Mon, 14 Dec 2020 12:44:01 EST
Received: from player770.ha.ovh.net (unknown [10.108.42.176])
        by mo2.mail-out.ovh.net (Postfix) with ESMTP id 031FE1F1BB4
        for <devicetree@vger.kernel.org>; Mon, 14 Dec 2020 18:34:20 +0100 (CET)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player770.ha.ovh.net (Postfix) with ESMTPSA id 56FF51940B729;
        Mon, 14 Dec 2020 17:34:09 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-101G00459e50d39-8802-42d9-a094-f936f683c867,
                    9D4513A06938E8562C9FC8D5040FBB067C1A90C8) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Subject: Re: [PATCH 2/2] soc: bcm: add PM driver for Broadcom's PMB
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Kevin Hilman <khilman@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        linux-kernel@vger.kernel.org
References: <20201211215942.5726-1-zajec5@gmail.com>
 <20201211215942.5726-3-zajec5@gmail.com>
 <3bc097fa-3bef-396f-a4fd-fa8acbc1b71d@gmail.com>
 <18ebb7ab-2a45-f9fb-a094-0e63d44eadad@milecki.pl>
 <55a37742-1f4e-3697-e0e2-e42d67d75e07@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Message-ID: <6cbca0e0-314f-3571-90bb-c701cfef56d9@milecki.pl>
Date:   Mon, 14 Dec 2020 18:34:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <55a37742-1f4e-3697-e0e2-e42d67d75e07@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 11681211537170337329
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedguddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeekudehjeehffdufefhgffhgeejjeelteekveeuleevgeekhffhffeiheellefgveenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejtddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14.12.2020 18:32, Florian Fainelli wrote:
> On 12/14/20 4:24 AM, Rafał Miłecki wrote:
>> On 11.12.2020 23:08, Florian Fainelli wrote:
>>> On 12/11/20 1:59 PM, Rafał Miłecki wrote:
>>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>>
>>>> PMB can be found on BCM4908 and many other chipsets (e.g. BCM63138).
>>>> It's needed to power on and off SoC blocks like PCIe, SATA, USB.
>>>>
>>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> I will do a more thorough review tonight, however do you mind moving the
>>> driver under drives/soc/bcm/bcm63xx? The first SoC that had PMB was
>>> 63138 and that one is DSL.
>>
>> I now realized that bcm63xx's:
>> * Kconfig is wrapper in: if SOC_BCM63XX
>> * Makefile is conditional: obj-$(CONFIG_SOC_BCM63XX)
>>
>> So it means I've to either:
>> 1. Refactor bcm63xx structure
>> 2. Make SOC_BCM63XX selectable on ARCH_BCM4908 and select it
>>
>> I'm not sure if any of above is a really good idea. Any further thought,
>> ideas?
> 
> Well, I was thinking about thing along those lines below, it's really
> about putting drivers that belong to the same SoC family in the same
> basket for easier maintenance while submitting patches/pull requests
> from my side.
> 
> diff --git a/drivers/soc/bcm/Makefile b/drivers/soc/bcm/Makefile
> index 7bc90e0bd773..0f0efa28d92b 100644
> --- a/drivers/soc/bcm/Makefile
> +++ b/drivers/soc/bcm/Makefile
> @@ -1,5 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0-only
>   obj-$(CONFIG_BCM2835_POWER)    += bcm2835-power.o
>   obj-$(CONFIG_RASPBERRYPI_POWER)        += raspberrypi-power.o
> -obj-$(CONFIG_SOC_BCM63XX)      += bcm63xx/
> +obj-y                          += bcm63xx/
>   obj-$(CONFIG_SOC_BRCMSTB)      += brcmstb/
> diff --git a/drivers/soc/bcm/bcm63xx/Kconfig
> b/drivers/soc/bcm/bcm63xx/Kconfig
> index 16f648a6c70a..76fb61e7377e 100644
> --- a/drivers/soc/bcm/bcm63xx/Kconfig
> +++ b/drivers/soc/bcm/bcm63xx/Kconfig
> @@ -10,3 +10,8 @@ config BCM63XX_POWER
>            BCM6318, BCM6328, BCM6362 and BCM63268 SoCs.
> 
>   endif # SOC_BCM63XX
> +
> +config BCM_PMB_POWER
> +       tristate "Broadcom PMB bus power domain driver"
> +       depends on BMIPS_GENERIC || ARCH_BCM4908 || COMPILE_TEST
> +       default ARCH_BCM4908

Sounds OK to me, thanks for clarifying what approach you're OK with!
