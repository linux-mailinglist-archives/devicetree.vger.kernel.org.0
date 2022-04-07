Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1BCA4F7910
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 10:05:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242864AbiDGIHA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 04:07:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242928AbiDGIGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 04:06:35 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7611A16BF49
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 01:04:15 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n38-20020a05600c502600b0038e4a0fc5easo3118487wmr.3
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 01:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2gzyO9EetMlpUJSbIyUgrB6/YPn3f65mHl1Id25ZaiI=;
        b=JNSnl/MccPRq/JyLKjZcEpZv1BRBIjUmnJDdvDzyqambjlq4a8Iuu4KeogT26kdMbR
         wvZcmxkx/tnJ0s5oGMLwpE4x5Eqf+wWcEUOch8i35ggyu4KvYUpeiLtx7SwpIrrx2tfj
         l/DGCyoWO0FBhsUsODWiwAnkvOJ15UCtv9/zm1bFkZci8gaYOoOS23eyV6Dl+LavN5jB
         dPHuvekkf8/Nqg2P68D0dvuZMo0uvavSbUzCx/8QJlGaCpgc9xsAfXJKvhvtkgz2isOF
         FPI5bQVwYK/JNJewbqw93CPGcvaryFR2Ra5qKssD/DKSx/IyXQLiqmpdUl2yaRisqxPo
         1p5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2gzyO9EetMlpUJSbIyUgrB6/YPn3f65mHl1Id25ZaiI=;
        b=vwSU6rh7qjeLdmU2WTFOq3Lenb74whIUSnMBpBuxvIA+ah4dWnLW+sxTQ0BGhR436y
         qgxI0qER2W+3Tdqr+nyJUPbdFbdGwCN7+A3ykLoIYGFfY9lh6GxexIFtNo0qpa68y0GR
         b6NMRllAfowOjkt93EvHbsRDDSC2pMFECfMGv8ELNUhRx4H3YyDAYvQoiZmhfuSlp0vm
         0RmyLBQ24XmZ7LmzAPlLQ2XH5E4B0nGGcgQcVwLIZs5IyF/mM194x1I9n2QZgh13hyaP
         1wkGRXHj8toqEUGfJ1xYReUgDp90VEh9ozdIJBjSM5eL/mpyheKsWs6Z4uA0ThXmFDp2
         Q8Ow==
X-Gm-Message-State: AOAM5331imGUrnVL+BuXLgQtmW8GbbbaafYzJ+w1SQJUGqYum0Db6SLs
        FZYl27wCMpUct84WNDdAa9Qvhg==
X-Google-Smtp-Source: ABdhPJzHmqLQw2H320n2KX877DssJyMXU/EABEAxDa7z1KC1mxvA8zjbsmXf9/PHHtXVnKzSavRDUg==
X-Received: by 2002:a05:600c:1e23:b0:38e:7138:de0e with SMTP id ay35-20020a05600c1e2300b0038e7138de0emr11238118wmb.188.1649318653322;
        Thu, 07 Apr 2022 01:04:13 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ed2f:f020:f2a2:7d81:4e67:6c1c? ([2a01:e34:ed2f:f020:f2a2:7d81:4e67:6c1c])
        by smtp.googlemail.com with ESMTPSA id a12-20020a5d53cc000000b00205a0ee9c74sm15660932wrw.89.2022.04.07.01.04.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 01:04:12 -0700 (PDT)
Message-ID: <9671f0a5-6860-8a75-d65e-345ce890cd88@linaro.org>
Date:   Thu, 7 Apr 2022 10:04:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/4] clocksource/drivers/timer-ti-dm: Update defines for
 am6 for inline functions
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20220407071006.37031-1-tony@atomide.com>
 <20220407071006.37031-2-tony@atomide.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20220407071006.37031-2-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2022 09:10, Tony Lindgren wrote:
> We have pwm-omap-dmtimer tagged with COMPILE_TEST, so we need to use the
> ifdefs around the inline functions. Let's add ARCH_K3 to the list of SoCs
> to allow using timer-ti-dm on these SoCs.
> 
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   include/clocksource/timer-ti-dm.h | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/include/clocksource/timer-ti-dm.h b/include/clocksource/timer-ti-dm.h
> --- a/include/clocksource/timer-ti-dm.h
> +++ b/include/clocksource/timer-ti-dm.h
> @@ -251,7 +251,8 @@ int omap_dm_timers_active(void);
>    * The below are inlined to optimize code size for system timers. Other code
>    * should not need these at all.
>    */
> -#if defined(CONFIG_ARCH_OMAP1) || defined(CONFIG_ARCH_OMAP2PLUS)
> +#if defined(CONFIG_ARCH_OMAP1) || defined(CONFIG_ARCH_OMAP2PLUS) || \
> +	defined(CONFIG_ARCH_K3)

Why not replace the above by CONFIG_OMAP_DM_TIMER ?

>   static inline u32 __omap_dm_timer_read(struct omap_dm_timer *timer, u32 reg,
>   						int posted)
>   {
> @@ -390,5 +391,5 @@ static inline void __omap_dm_timer_write_status(struct omap_dm_timer *timer,
>   {
>   	writel_relaxed(value, timer->irq_stat);
>   }
> -#endif /* CONFIG_ARCH_OMAP1 || CONFIG_ARCH_OMAP2PLUS */
> +#endif /* CONFIG_ARCH_OMAP1 || CONFIG_ARCH_OMAP2PLUS || CONFIG_ARCH_K3 */
>   #endif /* __CLOCKSOURCE_DMTIMER_H */


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
