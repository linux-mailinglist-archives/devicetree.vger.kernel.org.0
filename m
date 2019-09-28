Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EA196C11FE
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 21:16:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728569AbfI1TQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 15:16:33 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:43269 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726581AbfI1TQc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Sep 2019 15:16:32 -0400
Received: by mail-pl1-f196.google.com with SMTP id f21so2320425plj.10
        for <devicetree@vger.kernel.org>; Sat, 28 Sep 2019 12:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2tFPX7ab9aePgUICX8itdJOBDm+2TtdwJ9e0G0bDfOI=;
        b=lExVhAQfrfbxN4TiiOJIkOifjrRVbTkIz5Z4/QOsu1d+cPIs+wHZzQ5mf41TNJfwe+
         CFBo+i+DHaa3BPSN7aSk3LYdyslqYVF59lJiCcvahacd3UDPrvmqhSTMqq3RX/6cOiA3
         K5Bc/EFlXwm6/2pNmwPzpscz6nZ5E+Z3qobZXnmViLCHgEJkZjlmy6XTQ3bq38RkDyf/
         36NgM+l94bR+nKKaq7dmvZKLz1mAvc2Rsoxr/NvNrqlA16IjZdReCgB+bAkiWdoziApz
         PL4aaIcKSC9FKHYilniJlnetB7vNWybtMuI9KLaEriNS07+Ketc8Rl7Pt8KyA54MlnRP
         2LGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2tFPX7ab9aePgUICX8itdJOBDm+2TtdwJ9e0G0bDfOI=;
        b=amiVI8x+9yF9WPM49Bf6aVs7hURDGruvOg6Mh/4/BwQ15OlTivEq8j2g9rc6EYzWpU
         cm/tRTwroZnPrPUIFu+wRq2i1bIhHCoXFuxOUmtpTh9p6udHEZJKvindbY3OC7uExAQ/
         bEFkaKkq12PhyMabSqnTc+OTmXzViOf8oRSmHX1iexaFDaQxfxGBuc3vnP2qTvFnU6DD
         tamY1tLOVp8wj+kiGH80SaKpvISrCKg8XY6/H/QCtB/Dn21+LX2jRSsvJaDRfnwrDK+M
         i3pYsB5Gzek67UcojKdcgj1JKO0O+kW5uUDaxp1mZDhrqgk8nSuy98j6p6RJtD0rgl33
         gAmg==
X-Gm-Message-State: APjAAAXeOcIW+OiwPpFOcEtP2ORTq2zoknXYHGb9UpoaUxn+Kzw6esFf
        dL8CT1Mbio4SdPuOruW19Ryqy3Nf
X-Google-Smtp-Source: APXvYqxgzL22KQbEoe9qW0EWcVQ9p9su62xeNj5ctYD+Dfj9NIFCLxnRyrTl/+FRFb/WbHixDb/PCA==
X-Received: by 2002:a17:902:6c:: with SMTP id 99mr11948901pla.89.1569698191772;
        Sat, 28 Sep 2019 12:16:31 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id z20sm7737390pfj.156.2019.09.28.12.16.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Sep 2019 12:16:30 -0700 (PDT)
Subject: Re: [PATCH V3 6/8] ARM: bcm: Add support for BCM2711 SoC
To:     Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-7-git-send-email-wahrenst@gmx.net>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6b251871-59ae-6040-cbbc-74207b2169f3@gmail.com>
Date:   Sat, 28 Sep 2019 12:16:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1569672435-19823-7-git-send-email-wahrenst@gmx.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/28/2019 5:07 AM, Stefan Wahren wrote:
> Add the BCM2711 to ARCH_BCM2835, but use new machine board code
> because of the differences.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Reviewed-by: Eric Anholt <eric@anholt.net>
> ---
>  arch/arm/mach-bcm/Kconfig    |  3 ++-
>  arch/arm/mach-bcm/Makefile   |  3 ++-
>  arch/arm/mach-bcm/bcm2711.c  | 24 ++++++++++++++++++++++++
>  arch/arm64/Kconfig.platforms |  5 +++--
>  4 files changed, 31 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/mach-bcm/bcm2711.c
> 
> diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
> index 5e5f1fa..39bcbea 100644
> --- a/arch/arm/mach-bcm/Kconfig
> +++ b/arch/arm/mach-bcm/Kconfig
> @@ -161,6 +161,7 @@ config ARCH_BCM2835
>  	select GPIOLIB
>  	select ARM_AMBA
>  	select ARM_ERRATA_411920 if ARCH_MULTI_V6
> +	select ARM_GIC if ARCH_MULTI_V7
>  	select ARM_TIMER_SP804
>  	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
>  	select TIMER_OF

Are not we missing a select ZONE_DMA here?

> @@ -169,7 +170,7 @@ config ARCH_BCM2835
>  	select PINCTRL_BCM2835
>  	select MFD_CORE
>  	help
> -	  This enables support for the Broadcom BCM2835 and BCM2836 SoCs.
> +	  This enables support for the Broadcom BCM2711 and BCM283x SoCs.
>  	  This SoC is used in the Raspberry Pi and Roku 2 devices.
> 
>  config ARCH_BCM_53573
> diff --git a/arch/arm/mach-bcm/Makefile b/arch/arm/mach-bcm/Makefile
> index b59c813..7baa8c9 100644
> --- a/arch/arm/mach-bcm/Makefile
> +++ b/arch/arm/mach-bcm/Makefile
> @@ -42,8 +42,9 @@ obj-$(CONFIG_ARCH_BCM_MOBILE_L2_CACHE) += kona_l2_cache.o
>  obj-$(CONFIG_ARCH_BCM_MOBILE_SMC) += bcm_kona_smc.o
> 
>  # BCM2835
> -obj-$(CONFIG_ARCH_BCM2835)	+= board_bcm2835.o
>  ifeq ($(CONFIG_ARCH_BCM2835),y)
> +obj-y				+= board_bcm2835.o
> +obj-y				+= bcm2711.o
>  ifeq ($(CONFIG_ARM),y)
>  obj-$(CONFIG_SMP)		+= platsmp.o
>  endif
> diff --git a/arch/arm/mach-bcm/bcm2711.c b/arch/arm/mach-bcm/bcm2711.c
> new file mode 100644
> index 0000000..dbe2967
> --- /dev/null
> +++ b/arch/arm/mach-bcm/bcm2711.c
> @@ -0,0 +1,24 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Stefan Wahren
> + */
> +
> +#include <linux/of_address.h>
> +
> +#include <asm/mach/arch.h>
> +
> +#include "platsmp.h"
> +
> +static const char * const bcm2711_compat[] = {
> +#ifdef CONFIG_ARCH_MULTI_V7
> +	"brcm,bcm2711",
> +#endif
> +};
> +
> +DT_MACHINE_START(BCM2711, "BCM2711")
> +#ifdef CONFIG_ZONE_DMA
> +	.dma_zone_size	= SZ_1G,
> +#endif
> +	.dt_compat = bcm2711_compat,
> +	.smp = smp_ops(bcm2836_smp_ops),
> +MACHINE_END
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 16d7614..b5d31dc 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -37,11 +37,12 @@ config ARCH_BCM2835
>  	select PINCTRL
>  	select PINCTRL_BCM2835
>  	select ARM_AMBA
> +	select ARM_GIC
>  	select ARM_TIMER_SP804
>  	select HAVE_ARM_ARCH_TIMER
>  	help
> -	  This enables support for the Broadcom BCM2837 SoC.
> -	  This SoC is used in the Raspberry Pi 3 device.
> +	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
> +	  This SoC is used in the Raspberry Pi 3 and 4 device.

Nit:

These SoCs are used in the Raspberry Pi 3 and 4 devices.

With that:

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian
