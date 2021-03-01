Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E885327958
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 09:36:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233170AbhCAIf0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 03:35:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233155AbhCAIfV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 03:35:21 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B595C061786
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 00:34:41 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id do6so26645724ejc.3
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 00:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lDAufuhpzrV03TMTLpI4rsJPdAs1FZA19H3Gjjzj/H8=;
        b=hYd7SO61L3RSn8PhZEs9fr4+k0HyH5eQIyPA4fNHipymNkx7Cbq9/DYvGJwNXMhgCS
         EzwIwbAP1UdNG5AzP5UvleA3yOTwvEwiOUEHiXPRfX7oYM7l7dqQ6CmPzqkceHbNO9uc
         oAaKm3WYacHhtJpVMHvF2FVysEwB/nmVqdLPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lDAufuhpzrV03TMTLpI4rsJPdAs1FZA19H3Gjjzj/H8=;
        b=rJavbjP+8+OHpDUntJ+zVHamZpADv2RA04qRceMvY8yZl10BV7taDWmQI8XiY1r125
         0VM4HP/DkN8mN9iKTIDUx+jVMV5Q1o7b+pAJzMLWTKHOCgoCQ+yhf3/ZGYPu8nfwFfck
         GgSHSY1Klc9mP4FhYp3rsqDYIOWsoF0phHyFb3FXfbBirXODboP4Eyv5dkbgJw02Mww6
         MsDxd8WGh6sjbJXfE1ndVam37MdvfXAh4QLeMY1FFAh4Onf+xoU+9+qJBjawAW7nHJjk
         nQTZy+eMemC5w7wfZKfoujogS5FVeg7AhyW157sHP5rNzQW3A8y7cDWHWRV+2mRyEq1n
         UpHw==
X-Gm-Message-State: AOAM532TEkFV0OpqjkpjOwHl0QtSi5pmDYKr4VWV0lOg7rT0oarFkxrv
        bAiTizv7h4BqivC6hScAKzztXA==
X-Google-Smtp-Source: ABdhPJzyoWxnbcRLJyYqJf+BkrEk3Qke/unRo+Xvj2PJgrlnj5tnNDmHWXtHesVzhkIklMC0YVQ5+g==
X-Received: by 2002:a17:906:35cf:: with SMTP id p15mr5227601ejb.379.1614587679738;
        Mon, 01 Mar 2021 00:34:39 -0800 (PST)
Received: from [192.168.1.149] ([80.208.71.141])
        by smtp.gmail.com with ESMTPSA id p25sm13926890eds.55.2021.03.01.00.34.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 00:34:39 -0800 (PST)
Subject: Re: [PATCH 0/2] add ripple counter dt binding and driver
To:     Guenter Roeck <linux@roeck-us.net>, Arnd Bergmann <arnd@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        linux-clk <linux-clk@vger.kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>
References: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
 <CAK8P3a2=nZ3bbeguXjbFrhz0nWeUOcLM7mRudhPDrcb+jZ4VvQ@mail.gmail.com>
 <e5fd7ce3-3ba6-e5de-1cbc-fa31bd46942c@rasmusvillemoes.dk>
 <2208f466-e509-6bbe-0358-34effb965610@roeck-us.net>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <285d739a-b343-c411-5461-0fe1f44177a5@rasmusvillemoes.dk>
Date:   Mon, 1 Mar 2021 09:34:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2208f466-e509-6bbe-0358-34effb965610@roeck-us.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/02/2021 20.53, Guenter Roeck wrote:
> On 2/26/21 8:35 AM, Rasmus Villemoes wrote:
>> On 26/02/2021 15.35, Arnd Bergmann wrote:
>>> On Fri, Feb 26, 2021 at 3:14 PM Rasmus Villemoes
>>> <linux@rasmusvillemoes.dk> wrote:
>>>
>>>>
>>>> So I'm thinking that the proper way to handle this is to be able to
>>>> represent that ripple counter as a clock consumer in DT and have a
>>>> driver do the clk_prepare_enable(), even if that driver doesn't and
>>>> can't do anything else. But I'm certainly open to other suggestions.
>>>
>>> How about adding support for the optional clock to the gpio_wdt driver,
>>> would that work?
>>
>> I think it would _work_ (all I need is some piece of code doing the
>> clock_prepare_enable(), and until now we've just stashed that in some
>> otherwise unrelated out-of-tree driver, but we're trying to get rid of
>> that one), but the watchdog chip isn't really the consumer of the clock
>> signal, so in-so-far as DT is supposed to describe the hardware, I don't
>> think it's appropriate.
>>
>> OTOH, one could argue that the watchdog chip and the ripple counter
>> together constitute the watchdog circuit.
>>
>> Cc += watchdog maintainers. Context: I have a gpio-wdt which can
>> unfortunately effectively be disabled by disabling a clock output, and
>> that happens automatically unless the clock has a consumer in DT. But
>> the actual consumer is not the gpio-wdt.
>> Please see
>> https://lore.kernel.org/lkml/20210226141411.2517368-1-linux@rasmusvillemoes.dk/
>> for the original thread.
>>
> 
> Sorry, I am missing something. If the watchdog is controlled by the clock,
> it is a consumer of that clock.

But that's just it, the watchdog chip is _not_ a consumer of the clock -
I don't think I've ever seen a gpio_wdt that is not internally clocked,
but even if they exist, that's not the case for this board.

 What else does "consumer" mean ? And why
> not just add optional clock support to the gpio_wdt driver ?

Because, the consumer is a piece of electronics sitting _between_ the
watchdog chip's reset output and the SOCs reset pin, namely the ripple
counter that implements a 64 ms delay from the watchdog fires till the
actual reset. (The watchdog's reset is also routed directly to an
interrupt; so software gets a 64 ms warning that a hard reset is imminent).

Rasmus
