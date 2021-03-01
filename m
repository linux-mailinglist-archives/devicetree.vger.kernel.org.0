Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28AAF32793F
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 09:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233061AbhCAIaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 03:30:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233050AbhCAIaQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 03:30:16 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93FDDC06174A
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 00:29:35 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id gt32so15062130ejc.6
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 00:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1OJW58i2V+qbpcJlxYwrqsB9da04RyZ9nHYnyVmXEZ4=;
        b=IN2IxXXj3mi4wuOvmblnpYyJ8Sy6okMxYKI1FA3s0tFAVj8KMoiZufyIaLaApt4mTo
         1zMF6+i12g717Lj1ofu1cdrxjzCX4cbatK1VpFWkayFwKwARz6GV49achfJSZ0SaoLu0
         NWHiovKn+NgChneGJ3TxowVeCsUQb7O8/wHVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1OJW58i2V+qbpcJlxYwrqsB9da04RyZ9nHYnyVmXEZ4=;
        b=Tv5UpAAZTRxEXF44a+zD3VmxjssXQSUGQES2woAwr0+aEGcEIXu02cJ6za7CMwzjCu
         ftEPD7kiSSYwdHUi45UHJkFGG360ELDLtbTwupum/IYZMzWvsA27EjnKitBEerMRejab
         NuGgBEkS8SQDn+FTKCBpjvMMwfHR8DD/Tm9lja6VJm5Vfy6j2lQVr2VLAzgBJSMI9XnN
         FRR4oXUMfC2k/1ttpcr17F1VfocA+K9VkjQsjpIHlFNMBX2wFAZ+MzOQyBK2Kv4APyEc
         fPRdyfAvj8Q+3Du9gj0hBLTR0w4z2wvFcINkqvc6S8JFJnLsQoydeDpv7z0C7Bjz6suO
         uYCQ==
X-Gm-Message-State: AOAM532o9OglYWFCHtMaxyrWxcVB2YDXoe/tzAQNOME6WS8FZCa4x4kd
        Fq0ypQc9TICxy6yhXQS2GBlsNw==
X-Google-Smtp-Source: ABdhPJyPDKQI1BunkBsa0Zu3fCtVAm9ybd5PuYGF01XR9aAqoKQ2gWXYw+iQuJs114BFsQJPbFR5dg==
X-Received: by 2002:a17:906:acb:: with SMTP id z11mr6463031ejf.193.1614587374363;
        Mon, 01 Mar 2021 00:29:34 -0800 (PST)
Received: from [192.168.1.149] ([80.208.71.141])
        by smtp.gmail.com with ESMTPSA id y24sm12030495eds.23.2021.03.01.00.29.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 00:29:33 -0800 (PST)
Subject: Re: [PATCH 2/2] drivers: misc: add ripple counter driver
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
References: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
 <20210226141411.2517368-3-linux@rasmusvillemoes.dk>
 <CAHp75Vc8S2E0vWFcqK-jO9Nhd-Us_7t-aWNj-7k+fWDcqR1XkQ@mail.gmail.com>
 <CAHp75VfNHkJp-SMacKdaSuy3gDECs=u4BNMNe2KjYkrDiwb8jg@mail.gmail.com>
 <CAHp75Vdrsr8zJzuovUEd6RtSHOmdASrQa1--A6HBVmj8mx8+Kw@mail.gmail.com>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <2bdc6d5d-3739-1fd7-5864-b52cc3d90355@rasmusvillemoes.dk>
Date:   Mon, 1 Mar 2021 09:29:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAHp75Vdrsr8zJzuovUEd6RtSHOmdASrQa1--A6HBVmj8mx8+Kw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/02/2021 10.33, Andy Shevchenko wrote:
> On Sun, Feb 28, 2021 at 11:29 AM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
>>
>> On Sun, Feb 28, 2021 at 11:07 AM Andy Shevchenko
>> <andy.shevchenko@gmail.com> wrote:
>>> On Friday, February 26, 2021, Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:
>>>>
>>>> The only purpose of this driver is to serve as a consumer of the input
>>>> clock, to prevent it from being disabled by clk_disable_unused().
>>>
>>> We have a clock API to do the same (something like marking it used or so) why do you need a driver?
>>
>> Example:
>> https://elixir.bootlin.com/linux/latest/source/drivers/platform/x86/pmc_atom.c#L365
>>
>> If it's a DT based platform I think you can make it somehow work thru DT.
> 
> Okay, briefly looking at the state of affairs [1] seems like you need
> to hack it into clock provider.
> 
> [1]: https://elixir.bootlin.com/linux/latest/C/ident/CLK_IS_CRITICAL
> 

I did find CLK_IS_CRITICAL and CLK_IGNORE_UNUSED while trying to figure
out how to handle this. However, while CLK_IS_CRITICAL is in principle
settable via DT, the comment above of_clk_detect_critical() seems to
make it clear that adding a call of that from the RTC driver is a total
no-no.

CLK_IGNORE_UNUSED can't be set at all from DT, and wouldn't solve the
problem fully - while we can and do make sure the bootloader sets the
appropriate bit in the RTCs registers, it's more robust if we also
ensure the kernel explicitly enables the clock.

But if there is some way to do this within the clk framework/existing
bindings, I'm all ears - that's the reason I cc'ed the clk list.

Rasmus
