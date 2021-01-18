Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 812292FA565
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 16:59:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406110AbhARP5S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 10:57:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406010AbhARP5B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 10:57:01 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05FDAC061574
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:56:21 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 190so14046881wmz.0
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3nXd2B+BvEd5ZelthzBLZ87Q+qfAaARMwq3lZCQ/JUE=;
        b=GZTGeLrZCsmFXwiFIpZu3FYnRxWLwHEDDLXdbIycv3DI6NKWE+loqmC9G6WOoLHrJs
         FC9otZkHqWCwz8/xsMCqSAQ3ueadAZTvXvfUZ7qe65nKzq4OZ41LQy+QCOdhOy1q0r0n
         ZCC+dlS9gRsNIG1336M+91ndp2aIns3S219cn/6ViSxE39VvfFGgtd96IuS0JXopRGkf
         By4aWp3tfMLsoLWor3pXJ9WeflPnjG1M+k5JipApiXuhNgZtRWlBPQWzsorFIyov15JM
         4vGxaLZmSiFxQbRi8khXFUhakP4HcytRjltWUXkdxD028ZYmQWYjkHCgqZiMZWGJrm+a
         nVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3nXd2B+BvEd5ZelthzBLZ87Q+qfAaARMwq3lZCQ/JUE=;
        b=smSkQixMWcO1FB3AJveff4yJdGI83zM6gdeVkZp7rdPzFiYgHhirgFwRGUkpiQDWI9
         0kWSPqyGiApEcivUXtWfMDMZaPEr2CeBBwXwtVBNUYKDDIYhYX8sg+xMJFjc+1LRyMut
         fhSB0T9k+g5bgxyVILjJZ+f7pgH3MBczuauc026PcEjvTGVWXy54uf+Mqr1P2n9va37n
         yCPQfN+HN8XEfIu/n0kkAdBl8QHyKjG/q1weWDVoeaDBXev4fClYSqunijR/COP2C8iG
         Tjab4YS1QS8DBCZnH2kVMZQ6bfxoVlmD9NIgfE6dt6qs5WHiLGeJIynerWvvNzauG2Yk
         3SXw==
X-Gm-Message-State: AOAM531BE5jcleML1rKpcaoApPWWuT+s+5v/dlJv3mILbuPoSaz9yu0W
        gG7mfhu3Cz+2f4D+fSBS3Dwntg==
X-Google-Smtp-Source: ABdhPJxXcJVSc+zwtrkphIBYmySOt3aeNncyR8V3Tn688SQNTFLW7+OKqQPyZjChLdxf4oPhETEskQ==
X-Received: by 2002:a1c:4e0a:: with SMTP id g10mr54571wmh.88.1610985379679;
        Mon, 18 Jan 2021 07:56:19 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:2095:8614:d69:136f? ([2a01:e34:ed2f:f020:2095:8614:d69:136f])
        by smtp.googlemail.com with ESMTPSA id z130sm28257450wmb.33.2021.01.18.07.56.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:56:18 -0800 (PST)
Subject: Re: [PATCH v2 2/2] clocksource: Add Intel Keem Bay Timer Support
To:     vijayakannan.ayyathurai@intel.com, tglx@linutronix.de,
        robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        andriy.shevchenko@linux.intel.com, mgross@linux.intel.com,
        wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com, chen.yong.seow@intel.com
References: <cover.1609306622.git.vijayakannan.ayyathurai@intel.com>
 <2a7038bc170e31a668995c367bbae018bf805dbe.1609306622.git.vijayakannan.ayyathurai@intel.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <73330c8b-4633-4a13-b4b5-7405ff1661fe@linaro.org>
Date:   Mon, 18 Jan 2021 16:56:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2a7038bc170e31a668995c367bbae018bf805dbe.1609306622.git.vijayakannan.ayyathurai@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/12/2020 07:25, vijayakannan.ayyathurai@intel.com wrote:
> From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>

[ ... ]

> +static struct timer_of keembay_ce_to = {
> +	.flags	= TIMER_OF_IRQ | TIMER_OF_BASE | TIMER_OF_CLOCK,
> +	.clkevt = {
> +		.name			= "keembay_sys_clkevt",
> +		.features		= CLOCK_EVT_FEAT_PERIODIC |
> +					  CLOCK_EVT_FEAT_ONESHOT  |
> +					  CLOCK_EVT_FEAT_DYNIRQ,
> +		.rating			= TIM_RATING,
> +		.set_next_event		= keembay_timer_set_next_event,
> +		.set_state_periodic	= keembay_timer_periodic,
> +		.set_state_shutdown	= keembay_timer_shutdown,
> +	},
> +	.of_base = {
> +		.index = 0,
> +	},
> +	.of_irq = {
> +		.handler = keembay_timer_isr,
> +		.flags = IRQF_TIMER | IRQF_IRQPOLL,

Is the IRQPOLL flag really needed here ?

> +	},
> +};
> +
> +static int __init keembay_clockevent_init(struct device_node *np,
> +					  struct keembay_init_data *data)
> +{
> +	u32 val;
> +	int ret;
> +
> +	data->mask = TIM_CONFIG_PRESCALER_ENABLE;
> +	data->cfg = &keembay_ce_to;
> +	ret = keembay_timer_setup(np, data);
> +	if (ret)
> +		return ret;
> +
> +	val = readl(data->base + TIM_RELOAD_VAL_OFFSET);
> +
> +	keembay_ce_to.clkevt.cpumask = cpumask_of(0);
> +	keembay_ce_to.of_clk.rate = keembay_ce_to.of_clk.rate / (val + 1);
> +
> +	keembay_timer_disable(timer_of_base(&keembay_ce_to));
> +
> +	clockevents_config_and_register(&keembay_ce_to.clkevt,
> +					timer_of_rate(&keembay_ce_to), 1, U32_MAX);
> +	return 0;
> +}
> +
> +static struct timer_of keembay_cs_to = {
> +	.flags	= TIMER_OF_BASE | TIMER_OF_CLOCK,
> +	.of_base = {
> +		.index = 1,
> +	},
> +};
> +
> +static u64 notrace keembay_clocksource_read(struct clocksource *cs)
> +{
> +	return lo_hi_readq(timer_of_base(&keembay_cs_to));
> +}
> +
> +static struct clocksource keembay_counter = {
> +	.name			= "keembay_sys_counter",
> +	.rating			= TIM_RATING,
> +	.read			= keembay_clocksource_read,
> +	.mask			= CLOCKSOURCE_MASK(TIM_CLKSRC_BITS),
> +	.flags			= CLOCK_SOURCE_IS_CONTINUOUS |
> +				  CLOCK_SOURCE_SUSPEND_NONSTOP,
> +};
> +
> +static int __init keembay_clocksource_init(struct device_node *np,
> +					   struct keembay_init_data *data)
> +{
> +	int ret;
> +
> +	data->mask = TIM_CONFIG_ENABLE;
> +	data->cfg = &keembay_cs_to;
> +	ret = keembay_timer_setup(np, data);
> +	if (ret)
> +		return ret;
> +
> +	return clocksource_register_hz(&keembay_counter, timer_of_rate(&keembay_cs_to));
> +}
> +
> +static int __init keembay_timer_init(struct device_node *np)
> +{
> +	struct keembay_init_data data;
> +	int ret;
> +
> +	data.base = of_iomap(np, 2);
> +	if (!data.base)
> +		return -ENXIO;
> +
> +	ret = keembay_clocksource_init(np, &data);
> +	if (ret)
> +		goto exit;
> +
> +	ret = keembay_clockevent_init(np, &data);

Is this missing ?

	if (ret)
		goto exit;

	return 0;

> +
> +exit:
> +	keembay_timer_cleanup(np, &data);
> +
> +	return ret;
> +}
> +
> +TIMER_OF_DECLARE(keembay_timer, "intel,keembay-timer", keembay_timer_init);
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
