Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5EA26AB1F
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 19:51:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727922AbgIORu5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 13:50:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727702AbgIORuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 13:50:21 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26145C061788
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 10:50:14 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id e16so4289465wrm.2
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 10:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ra0UwZMSA18qjDYK2AtGt6BQncZY1tBEKXF6zPEuSQo=;
        b=YwKVl4GeDkAYzX8+Xr7omJYjhQPzOKZaZZTBPR6WHuYJVvKOklBaZx/c/DTylR2jWN
         ALjHoraylidjTnkGHY50QKUKtkQwIZ3Z3ydhZufdcUHbgVCV0WqWTB7zSdD5f5IfwaJN
         vKMUn/qdSQuOYN6hY9pOCrX2ohILXF/SgkhzbG5fQHFakcnE/9tEqpLwbFkfydLPFPrT
         MRhxfA6Mb+3Mk60km0jJuT6n0vbyXn1X8yj3niZG2C7FFL5ZAqSwfQM76MBb8k8e7MHf
         2QdB8OanVyDr6UbHsSxJg0muPhGUS4Ytyot/jAKcbCsIU3nzZk5Pq7Da5zS6QlGn8w+H
         Is+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ra0UwZMSA18qjDYK2AtGt6BQncZY1tBEKXF6zPEuSQo=;
        b=jj3BsWlLJfb/+Hf8+3XQkK+NuZEfeu5djs4Pa5cpPUEe64kFW81OcarL1mFLZJl5wV
         gsxdllNUa51vRag6DAgCTJprUGg3MdbsZ+7YXEphLmYHQXsn0R08NAGWrBbb1YgxyuUZ
         BXixh1pDM7U5HO137pUC5x0ITkjOT7kYqMgF7kgORDpyAnvYqKTkdztNP/ryix0yYSN4
         dGyyER0JjaDfbnyRt1Pcv2AefKnBdotBi/MAJJiILpsE8mUMrIGHLqQ2NgguaLVHA/j1
         NMHN7+Q6sYZ0XfkvYWSAvjP/q33cNO/8mnTQfjvz9Ad9gPgmS7Z6VMkyYMt98tT7TkeH
         3tHQ==
X-Gm-Message-State: AOAM530HiPRiuzdwemJHIM9DUnRTpMO2rk5QQYMS+Aes7q+sJRLsdEWl
        lL8wDk15YsnMCAenSzqzk35leA==
X-Google-Smtp-Source: ABdhPJx1YNcWQv0a8DqwHPEsoCstBIsXnKGLWt8dcuNbAYSyGZEFGGK5zfs9EbVq2XcAtMSEzWUxrg==
X-Received: by 2002:a05:6000:1152:: with SMTP id d18mr22412835wrx.173.1600192212643;
        Tue, 15 Sep 2020 10:50:12 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a402:e7fb:d494:d130? ([2a01:e34:ed2f:f020:a402:e7fb:d494:d130])
        by smtp.googlemail.com with ESMTPSA id y2sm501910wmg.23.2020.09.15.10.50.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 10:50:12 -0700 (PDT)
Subject: Re: is 'dynamic-power-coefficient' expected to be based on 'real'
 power measurements?
To:     Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Lukasz Luba <lukasz.luba@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-pm@vger.kernel.org,
        Amit Daniel Kachhap <amit.kachhap@gmail.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Javi Merino <javi.merino@kernel.org>
References: <248bb01e-1746-c84c-78c4-3cf7d2541a70@codeaurora.org>
 <20200915172444.GA2771744@google.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <406d5d4e-d7d7-8a37-5501-119b734facb3@linaro.org>
Date:   Tue, 15 Sep 2020 19:50:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200915172444.GA2771744@google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2020 19:24, Matthias Kaehlcke wrote:
> +Thermal folks
> 
> Hi Rajendra,
> 
> On Tue, Sep 15, 2020 at 11:14:00AM +0530, Rajendra Nayak wrote:
>> Hi Rob,
>>
>> There has been some discussions on another thread [1] around the DPC (dynamic-power-coefficient) values
>> for CPU's being relative vs absolute (based on real power) and should they be used to derive 'real' power
>> at various OPPs in order to calculate things like 'sustainable-power' for thermal zones.
>> I believe relative values work perfectly fine for scheduling decisions, but with others using this for
>> calculating power values in mW, is there a need to document the property as something that *has* to be
>> based on real power measurements?
> 
> Relative values may work for scheduling decisions, but not for thermal
> management with the power allocator, at least not when CPU cooling devices
> are combined with others that specify their power consumption in absolute
> values. Such a configuration should be supported IMO.

The energy model is used in the cpufreq cooling device and if the
sustainable power is consistent with the relative values then there is
no reason it shouldn't work.



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
