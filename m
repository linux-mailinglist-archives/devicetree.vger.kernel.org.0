Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBDEB2C66CC
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 14:26:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730328AbgK0N0M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 08:26:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730253AbgK0N0L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 08:26:11 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CC05C0613D4
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 05:26:11 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id a3so6502213wmb.5
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 05:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=frwTTHRDA9OT+js/NceLE1tKUtesVqw066F8rVsJanQ=;
        b=iFRDCAendqwm+6YIFfbDE/CJe6izySerydYvEYw1NAG5S0TMknE9bBVVTc5xBBM3Hs
         +kao1jIuWRHA/11AizQ9zVEAmxOmAZP0MfRjyK5e8PN6A+TCzrNLL2rr51SsKjCcYl+3
         xCZ59SP+3cLprGAzUff3QaBlbIUcYIlTPmLmbqa+sWm4+OlZAe3SDeY46B89FUGAxwv/
         S7WEcHkIlYIo/sACBa4yGI/1glvdfDyJ2LP1xVkb5ZJVKOOPxjyRwT+WD6K/YS+HrvQX
         2Vi42qrtHz9vMEBcLBQlRc9T02c2pseJxD9/eCdpeTeNCM7mYvASbFABrKbkSYhk/LwG
         QSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=frwTTHRDA9OT+js/NceLE1tKUtesVqw066F8rVsJanQ=;
        b=LLRJ1rqwcyBZW5KXxZ8ws3mgcFYD49/UGOHYWTS4IxqwQ2+D324hEtYkiJyxlovy6b
         EsgmRgVbPdgYvLSPdInkaK2KancBISqsIYTdbnA3ugkDIAYGCNzYRjhR/lsIwLYZKITW
         IiSl2Cr6ui+9S7Qq8DHOouoxG1M2bLj9bpu/KRm62E4ardp997N1aX/LTaSqFSXkL7in
         2s80//eQX0FvkoByXP5AV46IvIJove495Hh1mHH3eauF1ffSJ5oBo6uEFwY4/Ss8L4+S
         Ng8cMh/iEv+jnSfbNXkriv8LNtSGpm6d4KLAUgOZ8vr9Z8qif7KWlrzL1bgnMDXdY6WB
         99LA==
X-Gm-Message-State: AOAM531AqI3r66qmGRiefqFpBeAsBElITZPK+LqB4ggTo1RROdo/q/25
        pE/+WAuUZrO23YqjKsnctjPhLB7Aebsrfw==
X-Google-Smtp-Source: ABdhPJzum7obc3fP7p8UKk+f8+Dzt0+gPUsHLnYqKSDKcF1Rgy78bbThqHJ1elC/c9RJJ4dwUTlQTA==
X-Received: by 2002:a1c:2644:: with SMTP id m65mr8774217wmm.165.1606483569807;
        Fri, 27 Nov 2020 05:26:09 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:c825:c6f8:7aeb:a440? ([2a01:e34:ed2f:f020:c825:c6f8:7aeb:a440])
        by smtp.googlemail.com with ESMTPSA id x13sm12830663wmi.20.2020.11.27.05.26.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 05:26:09 -0800 (PST)
Subject: Re: [RFC 1/2] dt-bindings: thermal: sprd: Add virtual thermal
 documentation
To:     Lukasz Luba <lukasz.luba@arm.com>, gao.yunxiao6@gmail.com,
        rui.zhang@intel.com, amitk@kernel.org, robh+dt@kernel.org,
        javi.merino@kernel.org
Cc:     linux-pm@vger.kernel.org, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        orsonzhai@gmail.com, zhang.lyra@gmail.com,
        "jeson.gao" <jeson.gao@unisoc.com>
References: <1606466112-31584-1-git-send-email-gao.yunxiao6@gmail.com>
 <724ddf78-483c-2cf3-441c-4885af8425a9@arm.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <1af5220c-f598-58f4-488e-fdd505477ed5@linaro.org>
Date:   Fri, 27 Nov 2020 14:26:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <724ddf78-483c-2cf3-441c-4885af8425a9@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Lukasz,

On 27/11/2020 10:27, Lukasz Luba wrote:
> 
> 
> On 11/27/20 8:35 AM, gao.yunxiao6@gmail.com wrote:
>> From: "jeson.gao" <jeson.gao@unisoc.com>
>>
>> virtual thermal node definition description in dts file
>>
>> Signed-off-by: jeson.gao <jeson.gao@unisoc.com>
>> ---

[ ... ]

> It's coming back. There were attempts to solve this problem.
> Javi tried to solved this using hierarchical thermal zones [1].
> It was even agreed (IIRC during LPC) but couldn't continue. Then Eduardo
> was going to continue this (last message at [3]). Unfortunately,
> development stopped.
> 
> I also have out-of-tree similar implementation for my Odroid-xu4,
> which does no have an 'SoC' sensor, but have CPU sensors and needs
> some aggregation function to get temperature.
> 
> I can pick up Javi's patches and continue 'hierarchical thermal zones'
> approach.
> 
> Javi, Daniel, Rui what do you think?

I already worked on the hierarchical thermal zones and my opinion is
that fits not really well.

We want to define a new feature because the thermal framework is built
on the 1:1 relationship between a governor and a thermal zone.

Practically speaking, we want to mitigate two thermal zones from one
governor, especially here the IPA governor.

The DTPM framework is being implemented to solve that by providing an
automatic power rebalancing between the power manageable capable devices.

In our case, the IPA would stick on the 'sustainable-power' resulting on
the aggregation of the two performance domains and set the power limit
on the parent node. The automatic power rebalancing will ensure maximum
throughput between the two performance domains instead of capping the whole.


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
