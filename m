Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42F6239B49B
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 10:08:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbhFDIKO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 04:10:14 -0400
Received: from mail-wm1-f44.google.com ([209.85.128.44]:55987 "EHLO
        mail-wm1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbhFDIKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 04:10:13 -0400
Received: by mail-wm1-f44.google.com with SMTP id g204so4820792wmf.5
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 01:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PRHSChmNHccXhvQtsBtRhC37xesOPVba6qRjYjpVSGo=;
        b=tToyl49cVQo4Z5AyIlAePdUHnwKwKwhpJlDlNqXwnaucjE8AjtlSncfadmxZdStMfZ
         1GuMkmnENTwdqfl0ihiepuem8+bCkHySEPel1eHaLvr9RklVpmr0m6Q9wlrGxbULVrDX
         ZE7626uLL3Glu8gc4oV1hhANbT99r+ZLXb1KJ19bx5+xuiekD9hLNP2CCAjksPj2TH/V
         2wVLMTolm/hvepcOOwVzfeOPnfKStPIZ+eXZRc4dlDPKvAq4FQgQexjHeFP1o0m/i78X
         /9Tdovyj31BOAJaY4WJDVbDLAHU4bYU6prqcSP2AO8rAh7V6q9ZdpaPU6wkP9kQslgBk
         sxyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PRHSChmNHccXhvQtsBtRhC37xesOPVba6qRjYjpVSGo=;
        b=BmGX8VvTDqbB9a963APr0HYlzDhsx7COo0CdNbChcRq8p3hhm5BPHVqKj8wM5r5x22
         ih8vLBkStkdbUuPEIAaTlF8UEoh65YC8qYzR28rMkSBwiTbNX+Oe27jU7qZUm6oOnDkE
         dMgYFMrrwVl2/9jfBuZo3+ER6hvJwApYshQ+rQ4xZhK2VsRoXrYMF2vghRG83sZpwv3Y
         UkwS4RrqCdVUFUtPOoP46NFY8y80PkTUBHD5LRsZnG38Ymi6atHadDwcLpUy9kq+mE3v
         uCWnUOrCIQGSc0+IV8wOQv5tySQqdeV4kEUqJl+W20eygSpxgcGNbR0ubzwce2hrzHYI
         qirg==
X-Gm-Message-State: AOAM5322kF8pMeGiEn9W2zag5mHNdZ3sLne7gzdXcEQOquZSkl6VGxAK
        QGlc+XspH+NlSstA/h3R1GBHfQ==
X-Google-Smtp-Source: ABdhPJwlhk2JqzA/gQYoHaK6TroOaueLxPuori2UJSeGGotJ4SyLQPVBvAEk9dp9D1YIwoFjhVE+gg==
X-Received: by 2002:a1c:1bd8:: with SMTP id b207mr2267360wmb.80.1622794031014;
        Fri, 04 Jun 2021 01:07:11 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:70d3:6c26:978:999d? ([2a01:e34:ed2f:f020:70d3:6c26:978:999d])
        by smtp.googlemail.com with ESMTPSA id s28sm7343265wra.54.2021.06.04.01.07.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 01:07:10 -0700 (PDT)
Subject: Re: [PATCH v3 2/2] clocksource: Add Intel Keem Bay timer support
To:     shruthi.sanil@intel.com, tglx@linutronix.de, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     andriy.shevchenko@linux.intel.com, kris.pan@linux.intel.com,
        mgross@linux.intel.com, srikanth.thokala@intel.com,
        lakshmi.bai.raja.subramanian@intel.com,
        mallikarjunappa.sangannavar@intel.com
References: <20210527063906.18592-1-shruthi.sanil@intel.com>
 <20210527063906.18592-3-shruthi.sanil@intel.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <a532a5e2-9d27-f529-ec8c-fec28e648666@linaro.org>
Date:   Fri, 4 Jun 2021 10:07:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210527063906.18592-3-shruthi.sanil@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/05/2021 08:39, shruthi.sanil@intel.com wrote:
> From: Shruthi Sanil <shruthi.sanil@intel.com>
> 
> The Intel Keem Bay timer driver supports clocksource and clockevent
> features for the timer IP used in Intel Keem Bay SoC.
> The timer block supports 1 free running counter and 8 timers.
> The free running counter can be used as a clocksource and
> the timers can be used as clockevent. Each timer is capable of
> generating individual interrupt.
> Both the features are enabled through the timer general config register.
> 
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Signed-off-by: Shruthi Sanil <shruthi.sanil@intel.com>
> ---
>  MAINTAINERS                         |   5 +
>  drivers/clocksource/Kconfig         |  11 ++
>  drivers/clocksource/Makefile        |   1 +
>  drivers/clocksource/timer-keembay.c | 255 ++++++++++++++++++++++++++++
>  4 files changed, 272 insertions(+)
>  create mode 100644 drivers/clocksource/timer-keembay.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 04babfa8fc76..73543ed60e84 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9278,6 +9278,11 @@ F:	drivers/crypto/keembay/keembay-ocs-hcu-core.c
>  F:	drivers/crypto/keembay/ocs-hcu.c
>  F:	drivers/crypto/keembay/ocs-hcu.h
>  
> +INTEL KEEM BAY TIMER SUPPORT
> +M:	Shruthi Sanil <shruthi.sanil@intel.com>
> +S:	Maintained
> +F:	drivers/clocksource/timer-keembay.c
> +
>  INTEL MANAGEMENT ENGINE (mei)
>  M:	Tomas Winkler <tomas.winkler@intel.com>
>  L:	linux-kernel@vger.kernel.org
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 39aa21d01e05..08f491cf7f61 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -693,4 +693,15 @@ config MICROCHIP_PIT64B
>  	  modes and high resolution. It is used as a clocksource
>  	  and a clockevent.
>  
> +config KEEMBAY_TIMER
> +	bool "Intel Keem Bay timer"
> +	depends on ARCH_KEEMBAY
> +	select TIMER_OF

Please refer to the other timer option to see how we create silent
option. We want the Kconfig's platform to select the timer, not the user
except for compilation coverage or expert mode.

> +	help
> +	  This option enables the support for the Intel Keem Bay
> +	  general purpose timer and free running counter driver.
> +	  Each timer can generate an individual interrupt and
> +	  supports oneshot and periodic modes.
> +	  The 64-bit counter can be used as a clock source.
> +
>  endmenu

Other than that, LGTM.

Thanks
  -- Daniel


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
