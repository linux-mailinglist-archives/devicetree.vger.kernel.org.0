Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7DB97C1261
	for <lists+devicetree@lfdr.de>; Sun, 29 Sep 2019 01:09:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728833AbfI1XJp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 19:09:45 -0400
Received: from mout.gmx.net ([212.227.15.18]:35101 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728666AbfI1XJp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Sep 2019 19:09:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1569712161;
        bh=8771iJl1nf1lZSh/T9aeSbD8M6At8DM9TBzdCPUEo9g=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=IeB9AbiTjwkjXzQttZZ3hYgZnT4N/g8kbWl/Wagvf/opDT8qbZUCqEYsPFVTIArhr
         sJq9GoRkVOWe5NLbG1Dlpcw8vkY5dMQGsmeIG76xzgd06t+N8tGZN+C1qyo25NYrYr
         PMTPW3v5XfyaZwun2dqh1bux9wBpRCLdRCrZsyFw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.130]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MD9T1-1iMqHY1Oqn-009B3O; Sun, 29
 Sep 2019 01:09:21 +0200
Subject: Re: [PATCH V3 6/8] ARM: bcm: Add support for BCM2711 SoC
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-7-git-send-email-wahrenst@gmx.net>
 <6b251871-59ae-6040-cbbc-74207b2169f3@gmail.com>
From:   Stefan Wahren <wahrenst@gmx.net>
Message-ID: <c420bf03-784e-073f-b0d7-471d0fb48d22@gmx.net>
Date:   Sun, 29 Sep 2019 01:09:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6b251871-59ae-6040-cbbc-74207b2169f3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Provags-ID: V03:K1:eBZgWx7jKID8fzMfH4zW8mxLbUkYw+z83ZZwIhkN+LUm0xDNk9z
 4BzSk5Ra6J9H2DnlvJkSlDAugpcVL7euD2bL+wZAokQvXUgJyZDvu7Wtto7kvlpYvoe/UuZ
 oDSvZ0s+JXugn3h4Ijnm0qYl8DUuYuIEenLJJyC5+Gb1MIcQAmyGvFcgQVLyGkvUx8cZxzW
 fWrRoGVkLC9mFCCSdCytA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9Q6v5PlVBLw=:lxiRvwQmOYAyjPxjjKfc8O
 ZWMjUMZls6HYdv5HpjPhHK6uchS4d29qcUqwGmqXMK92XwFiRt5lJ2vvWX2iCwdTfwp1r49Vg
 kUXwM2I4TxF/vHbk3QtVeJ2weON8E1R2/mhGDr2qd7VPJkAHzTalK1iYW4VxK3dxUV/ZXxgtI
 LfwbB8PKVHUHXEPjE+fB98sM/4uZIOJIkRLTIme7+V6E366rJvderMqxCa2hz8u3SH5GBTB9u
 25ajmZpCmGPzFqF63smlRbruKBMhwx/bsUESbmtv/X6OExxHcf5sdcmMU9mi+1LUZANzYTb94
 RQMPMmGlk7wcDTLsrbU8VAij4zYbUETY3S4LmnH9p0Cf7C0NqH+HcxURm/aoKoPGA28DRAIZG
 i70Rve8+eS7ccglThn3oPD88HR+QYHhlUHeYeG4z8V/seWSIP3vqLWoIpEToE+NJcxtWo1ljO
 NjTmyEyTsVXyN8xEO5AC+LD/OnFtZ9InAVQQb6zJXhfWtCyNzcwHx4wDXkRmso3SuM/kDJY2Y
 M4ONKrTdrMo/89vzJBtMfjcROCFBF6yQgsxDYBs7dSwk8g4a3hRXNJLEPqsVN6+xxTS0fNMqQ
 FRsQ+deGuC7f9jxgkUE0CRhtrQ2gpNESqlNZUn5drm7j6G72DL2mRhP9inEnCeUX8hegaPMTB
 CIfWeTadOyhCdKGHMt8y35eiBhrd0+GshRQT4s5yQ183gBo5nOoOM5XgS1XG3BbFw7SYmmj1k
 5vjVqFoiC0VFsFbruHG1FXnmqjFRxNjuCpwB4rIQzZtyb//UpjjZLvDjKkk1HM+Y0YT8eRNxF
 iL6F3r+5IKU1yA2dsvimRGkg15sefeOhDEgRag/ewkd8o9VhQVx/XHMBqerxBOF1zqPP9PphX
 NpvObsKzo1TGDmwRgUfIVyvbi8HEVQDhuJe2EIv0/YlFCTcWXyPu7vTlmrhJVs0H+q+K/bD0w
 OD0kxWeQz2k/PdMCNti60Gg2Hxne/2KP3/hPwz6wO2Km/f6YckYIFIiqPRSY6lS+w/1lC0RoM
 pNoLvl3k/4u/+oPGSOZ4FUTSLUpdWDc5HwmT4mvRtZbloo2U/09BkUCNNPJlXRg22a6syhLnG
 jYGxtLxPCifQbpW025hfiCIlq8nq/83lQqXMpt9gP9Hv20zgKJNV/nnnuTzmetTsJgoXoL6uT
 In1vB8jIyymrRhDv0F2kRZlLfs9eVXmGgPhlY5eM+to/IytkdHLTxPp849EubfMABwHaydYYy
 aNe7IUkmzAFMZRVQMYi6uplVPthrxrCycklYy3TFK+ZPcX1WMryvyumbJBr0=
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 28.09.19 um 21:16 schrieb Florian Fainelli:
>
> On 9/28/2019 5:07 AM, Stefan Wahren wrote:
>> Add the BCM2711 to ARCH_BCM2835, but use new machine board code
>> because of the differences.
>>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> Reviewed-by: Eric Anholt <eric@anholt.net>
>> ---
>>  arch/arm/mach-bcm/Kconfig    |  3 ++-
>>  arch/arm/mach-bcm/Makefile   |  3 ++-
>>  arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
>>  arch/arm64/Kconfig.platforms |  5 +++--
>>  4 files changed, 31 insertions(+), 4 deletions(-)
>>  create mode 100644 arch/arm/mach-bcm/bcm2711.c
>>
>> diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
>> index 5e5f1fa..39bcbea 100644
>> --- a/arch/arm/mach-bcm/Kconfig
>> +++ b/arch/arm/mach-bcm/Kconfig
>> @@ -161,6 +161,7 @@ config ARCH_BCM2835
>>  	select GPIOLIB
>>  	select ARM_AMBA
>>  	select ARM_ERRATA_411920 if ARCH_MULTI_V6
>> +	select ARM_GIC if ARCH_MULTI_V7
>>  	select ARM_TIMER_SP804
>>  	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
>>  	select TIMER_OF
> Are not we missing a select ZONE_DMA here?
Yes. I think for arm and arm64.
>
>> @@ -169,7 +170,7 @@ config ARCH_BCM2835
>>  	select PINCTRL_BCM2835
>>  	select MFD_CORE
>>  	help
>> -	  This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
>> +	  This enables support for the Broadcom BCM2711 and BCM283x SoCs.
>>  	  This SoC is used in the Raspberry Pi and Roku 2 devices.
>>
>>  config ARCH_BCM_53573
>> diff --git a/arch/arm/mach-bcm/Makefile b/arch/arm/mach-bcm/Makefile
>> index b59c813..7baa8c9 100644
>> --- a/arch/arm/mach-bcm/Makefile
>> +++ b/arch/arm/mach-bcm/Makefile
>> @@ -42,8 +42,9 @@ obj-$(CONFIG_ARCH_BCM_MOBILE_L2_CACHE) += kona_l2_cache.o
>>  obj-$(CONFIG_ARCH_BCM_MOBILE_SMC) += bcm_kona_smc.o
>>
>>  # BCM2835
>> -obj-$(CONFIG_ARCH_BCM2835)	+= board_bcm2835.o
>>  ifeq ($(CONFIG_ARCH_BCM2835),y)
>> +obj-y				+= board_bcm2835.o
>> +obj-y				+= bcm2711.o
>>  ifeq ($(CONFIG_ARM),y)
>>  obj-$(CONFIG_SMP)		+= platsmp.o
>>  endif
>> diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
>> new file mode 100644
>> index 0000000..dbe2967
>> --- /dev/null
>> +++ b/arch/arm/mach-bcm/bcm2711.c
>> @@ -0,0 +1,24 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Stefan Wahren
>> + */
>> +
>> +#include <linux/of_address.h>
>> +
>> +#include <asm/mach/arch.h>
>> +
>> +#include "platsmp.h"
>> +
>> +static const char * const bcm2711_compat[] = {
>> +#ifdef CONFIG_ARCH_MULTI_V7
>> +	"brcm,bcm2711",
>> +#endif
>> +};
>> +
>> +DT_MACHINE_START(BCM2711, "BCM2711")
>> +#ifdef CONFIG_ZONE_DMA
>> +	.dma_zone_size	= SZ_1G,
>> +#endif
>> +	.dt_compat = bcm2711_compat,
>> +	.smp = smp_ops(bcm2836_smp_ops),
>> +MACHINE_END
>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>> index 16d7614..b5d31dc 100644
>> --- a/arch/arm64/Kconfig.platforms
>> +++ b/arch/arm64/Kconfig.platforms
>> @@ -37,11 +37,12 @@ config ARCH_BCM2835
>>  	select PINCTRL
>>  	select PINCTRL_BCM2835
>>  	select ARM_AMBA
>> +	select ARM_GIC
>>  	select ARM_TIMER_SP804
>>  	select HAVE_ARM_ARCH_TIMER
>>  	help
>> -	  This enables support for the Broadcom BCM2837 SoC.
>> -	  This SoC is used in the Raspberry Pi 3 device.
>> +	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
>> +	  This SoC is used in the Raspberry Pi 3 and 4 device.
> Nit:
>
> These SoCs are used in the Raspberry Pi 3 and 4 devices.
>
> With that:
>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
