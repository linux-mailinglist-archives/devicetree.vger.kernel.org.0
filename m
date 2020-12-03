Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94B942CDD22
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 19:11:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731554AbgLCSKO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 13:10:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727438AbgLCSKO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 13:10:14 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1FEC061A4F
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 10:09:27 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id t4so2805722wrr.12
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 10:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MWrndgX4WalLDpImom0tqitbFA54L2Cx9+nDK5kaCXM=;
        b=S+OsX+jaKsfBvydJwhLBA3/nI6Ny8GXcCvL9LaTnPbk0pXH6fEmAqC/X/E/Y4IrAWC
         6GVR95wcI3pYH7269dId0VYubBEcb29wXJC29wxvSK+Fr0G1weKpD3f6uki7Y+IwRbzn
         4U7TQt8Lhx6QkEmuKwH+5pqpDKW0+4jHa9hEDLfiomV+VOjXkFgOERK9v9y43OrP3Viq
         BQXLfx9bVqhJlcefwOdeqzj0TVKWh/3zIfMJOjgHc6g8zfrxqp8n1kYRcQ3dsFcq2ca1
         Fygazl3GATr0xMme9TeVaVM3lGeBLf0Dhx7BEFQ6F0JdSLBgqWnwLC7dRPdI1BnJCB5E
         8KYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MWrndgX4WalLDpImom0tqitbFA54L2Cx9+nDK5kaCXM=;
        b=RCcmmxxXN0znveZMmwNjtAPO9rmYUzuZEMtntP0gPWGA81zZf/X6fEBAbA+hEL2wYL
         +lz5gDS4Zhivry8ZAd51V9YI2lHH/YkK+OvHfbrj7SlwZA9u1lQfOe1s+N7L+V3iMi1w
         SuDKlawq31U3cHItDm5x1vs04/Dt78ZURTvrgwlpH2nY8V/IUe6RbgQb8hcLZCTMbA2v
         KAvDPCnHOGAqr/mxW7d3+n+Nu4wKOjjzewqSsKcPoRGg88OPPcJmcI4QX9xu1wkV4tt7
         k6O4WHK0d6ltOVJ4gtC8Am0QuluEIhBVrZJXY/ZjuYsvMV3fbHMSCMFcYYrV8T0HUSvy
         4Fwg==
X-Gm-Message-State: AOAM533dBxiUiQEGOLffuLwGNTiQPFV8eM5J7EHl6ydELrq9mhjw7EML
        WvAJMOFp/ntDX+laEndSFVmveY7HWxLDDw==
X-Google-Smtp-Source: ABdhPJz5GXenZAIkZTeFEsu8DYWowgiyVKk9QY2+0bV9aWazX7jE30pzRYxh+U6j1UYuktRExM4Mwg==
X-Received: by 2002:a5d:50d1:: with SMTP id f17mr466216wrt.264.1607018966309;
        Thu, 03 Dec 2020 10:09:26 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:9cff:9584:adb2:6288? ([2a01:e34:ed2f:f020:9cff:9584:adb2:6288])
        by smtp.googlemail.com with ESMTPSA id j6sm305914wrq.38.2020.12.03.10.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:09:25 -0800 (PST)
Subject: Re: [PATCH v1 2/2] clocksource: Add Intel Keem Bay Timer Support
To:     vijayakannan.ayyathurai@intel.com, tglx@linutronix.de,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, andriy.shevchenko@linux.intel.com,
        mgross@linux.intel.com, wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <cf19c720505c5388ae1b73398a65ee8a5f447c38.1606377035.git.vijayakannan.ayyathurai@intel.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <fc73931b-0c0d-7514-e090-176345578697@linaro.org>
Date:   Thu, 3 Dec 2020 19:09:24 +0100
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
