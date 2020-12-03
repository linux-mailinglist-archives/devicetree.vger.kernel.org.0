Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CCC92CDD23
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 19:11:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727438AbgLCSKo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 13:10:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726763AbgLCSKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 13:10:41 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF8B3C061A51
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 10:09:55 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id l1so2821779wrb.9
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 10:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MWrndgX4WalLDpImom0tqitbFA54L2Cx9+nDK5kaCXM=;
        b=sC39BKKbCHqtqSEoWafW/j2Qkq1tf4VSinxEXs3UNhqYkOdsUoTy4yS1yqZYu1SCSZ
         xrI1tzKr84pWi6feEtWAtLNLu+ALQAMC+EhfumZAy1g587kwUf1/ZGyWS/pcxFNbZsD1
         dDJikP1/M/YQEXIO5l2i4BTI1irc2Lk4W5w/4YSwOUnw3ro6sqGzoiFBSNSlxY13I9Kq
         XD1Ip/ormsIzg8Wyvflx9SNeLjgZ6Mil01v2D7F2g/5TkfOdCWDSBMaTqICVVg7CykBb
         qOig+3tRJfB2fg9fd6f8z5CarvhheYSiTcDAJ8tqOUW+dyuV46GIfjnPEznHd+SyACQt
         hPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MWrndgX4WalLDpImom0tqitbFA54L2Cx9+nDK5kaCXM=;
        b=AbC8s076TfQDBCP2uu1bHu8PD5ds3zbCBTOVCXfk+RNHIc811PWDZKhUc6peiL2el1
         di7v9/L0ho4YlqUD7sefjH8M9xHe7DqvYil1aCzaBZpYzFIx8YYpTLeVq1KQCrhcp3bU
         lsq6AwBw7xQ7/gwP5ivfcZoqP0YyldH8+gmY+B31UdhjFQtR9x+P53DN9C7EXIvzphKD
         5rqKKV2nJ33IYA5/XgD92nJJTshk5jUEEC8IwAoM9q0CIMV3iLuqMEut1MgAeCUng3O7
         5QCSL9nPIVoTru9bW99RoGHol5QP/RcqTrTPeqvDctJVpNQSHpSQyONtvYpvO/t2q3yH
         ue3w==
X-Gm-Message-State: AOAM533R6VuWszLY65gx9cYBe0S7p+zAaN7SZZC4Q/6aa5OHOrmh69lb
        g1IMWkRlZkc0vD1N+ZUpB6CO11g5WE+ZHg==
X-Google-Smtp-Source: ABdhPJzUoy9EF4Xoos01vaTBz2wfHamsIQ+Of0tITKPdfp2lTvG0UlN0ZGyhrdoSDOYFlUCKOnsW0Q==
X-Received: by 2002:a5d:538a:: with SMTP id d10mr454109wrv.368.1607018994574;
        Thu, 03 Dec 2020 10:09:54 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:9cff:9584:adb2:6288? ([2a01:e34:ed2f:f020:9cff:9584:adb2:6288])
        by smtp.googlemail.com with ESMTPSA id f18sm324931wrm.27.2020.12.03.10.09.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:09:53 -0800 (PST)
Subject: Re: [PATCH v1 2/2] clocksource: Add Intel Keem Bay Timer Support
To:     vijayakannan.ayyathurai@intel.com, tglx@linutronix.de,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, andriy.shevchenko@linux.intel.com,
        mgross@linux.intel.com, wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <cf19c720505c5388ae1b73398a65ee8a5f447c38.1606377035.git.vijayakannan.ayyathurai@intel.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9b271b05-963e-57bb-af9d-1b7910514c16@linaro.org>
Date:   Thu, 3 Dec 2020 19:09:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <cf19c720505c5388ae1b73398a65ee8a5f447c38.1606377035.git.vijayakannan.ayyathurai@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/11/2020 11:34, vijayakannan.ayyathurai@intel.com wrote:
> From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
> 
> Add generic clocksource and clockevent driver for the timer IP
> used in Intel Keem Bay SoC.
> 
> One free running Counter used as a clocksource device and one Timer
> used as a clockevent device. Both are enabled through TIM_GEN_CONFIG
> register. This register is in the DT resource index 1.
> 
> Timer/Counter base register is in the DT resource index 0
> and it's map/unmap handled by TIMER OF api.
> 
> Signed-off-by: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
> Acked-by: Mark Gross <mgross@linux.intel.com>
> Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/clocksource/Kconfig         |  10 ++
>  drivers/clocksource/Makefile        |   1 +
>  drivers/clocksource/timer-keembay.c | 221 ++++++++++++++++++++++++++++
>  3 files changed, 232 insertions(+)
>  create mode 100644 drivers/clocksource/timer-keembay.c
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 68b087bff59c..b1f29e12c571 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -738,4 +738,14 @@ config MICROCHIP_PIT64B
>  	  modes and high resolution. It is used as a clocksource
>  	  and a clockevent.
>  
> +config KEEMBAY_TIMER
> +	bool "Intel Keem Bay timer driver"
> +	depends on ARCH_KEEMBAY || (ARM64 && COMPILE_TEST)

The timer drivers subsystem wants silent options and let the platform to
select the timer.

Please select the timer in arch/arm64/Kconfig.platforms in the
ARCH_KEEMBAY section.

So it would come:

config KEEMBAY_TIMER
	bool "bla bla" if COMPILE_TEST



> +	select TIMER_OF
> +	help
> +	  This option enables the support for the Intel Keem Bay general
> +	  purpose timer and free running counter driver. Each timer can
> +	  generate an individual interrupt and the 64 bit counter can also
> +	  be used as one of the clock source.
> +

[ ... ]

> +static struct timer_of keembay_ce_to = {
> +	.flags	= TIMER_OF_IRQ | TIMER_OF_BASE | TIMER_OF_CLOCK,
> +	.clkevt = {
> +		.name			= "keembay_timer",
> +		.features		= CLOCK_EVT_FEAT_PERIODIC |
> +					  CLOCK_EVT_FEAT_ONESHOT,

May be consider CLOCK_EVT_FEAT_DYNIRQ ?

see commit d2348fb6fdc6d67

Other than that, LGTM

Thanks

  -- Daniel

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
