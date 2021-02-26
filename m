Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EFC732659A
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 17:36:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbhBZQgK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 11:36:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbhBZQgF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 11:36:05 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF418C06174A
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 08:35:22 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id d13so6717238edp.4
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 08:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cOneb72+9BMDKFMeXHoHtH5MZRyiWygS1afzq3OOa+o=;
        b=E4DbkXF/qcHn1t53N2ZY0ECGTpmXtZVoY6SFeeKj+vTG082gR2f+HYW/wmeBaK7HBp
         4Snk/JOoGLiyEYKKMyvH6jjpQfHqHq2hdqW5M+sUcVlgLtybZXDdfYUr+SZDNtkfkvSb
         JAK9hzKINrmqy5B8aGnMd6jvnlQo1FETWwF6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cOneb72+9BMDKFMeXHoHtH5MZRyiWygS1afzq3OOa+o=;
        b=gHlpNUzOCHH2hXuAU7T5gsK58SxbU7jJpjAuuAfRcyYykDQNreAFCx421x4dbuzSXu
         pHMuNEBL9Iua+7C0tSvf/XwhaPqZjtrKA2L5x/wDVZSvuApZGX+dOs6q3NjaV6ejDdCd
         UScB8mx+Y/Ll4s3ZvbHHpxYGyUKRFL48FRkde6boOo+UnrOzk9EbJv2WrZUXWfJdVtvM
         6pFdr1ItON97so69N3je3MC6/6S8EqBASsYgmkt96oZ06jYI9hljg1NHUpftPIH+/hEw
         dzbzr7yAKtZunvYxTnadWpTnZyBFrdom23rY7nJAvCPsfp7qYpMsZfXcFkb0KbITAXCc
         6HsQ==
X-Gm-Message-State: AOAM530/To73Uk5rogUezob4vu1VRc0bGEADfymaFKuOOWUwMA4+uiLe
        BmwbzkRnMSO4U4JvVEMrXp7klw==
X-Google-Smtp-Source: ABdhPJxgWKA9baDmnn7v/NyJDUc1IXanLiIYaaEflz+WN2lJxW3UHkfK6YObK8/eFA/ReW3JQLO+5g==
X-Received: by 2002:aa7:c386:: with SMTP id k6mr1400939edq.224.1614357321498;
        Fri, 26 Feb 2021 08:35:21 -0800 (PST)
Received: from [192.168.1.149] ([80.208.71.141])
        by smtp.gmail.com with ESMTPSA id u18sm5589671ejc.76.2021.02.26.08.35.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 08:35:21 -0800 (PST)
Subject: Re: [PATCH 0/2] add ripple counter dt binding and driver
To:     Arnd Bergmann <arnd@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        linux-clk <linux-clk@vger.kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>
References: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
 <CAK8P3a2=nZ3bbeguXjbFrhz0nWeUOcLM7mRudhPDrcb+jZ4VvQ@mail.gmail.com>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <e5fd7ce3-3ba6-e5de-1cbc-fa31bd46942c@rasmusvillemoes.dk>
Date:   Fri, 26 Feb 2021 17:35:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2=nZ3bbeguXjbFrhz0nWeUOcLM7mRudhPDrcb+jZ4VvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/02/2021 15.35, Arnd Bergmann wrote:
> On Fri, Feb 26, 2021 at 3:14 PM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
> 
>>
>> So I'm thinking that the proper way to handle this is to be able to
>> represent that ripple counter as a clock consumer in DT and have a
>> driver do the clk_prepare_enable(), even if that driver doesn't and
>> can't do anything else. But I'm certainly open to other suggestions.
> 
> How about adding support for the optional clock to the gpio_wdt driver,
> would that work?

I think it would _work_ (all I need is some piece of code doing the
clock_prepare_enable(), and until now we've just stashed that in some
otherwise unrelated out-of-tree driver, but we're trying to get rid of
that one), but the watchdog chip isn't really the consumer of the clock
signal, so in-so-far as DT is supposed to describe the hardware, I don't
think it's appropriate.

OTOH, one could argue that the watchdog chip and the ripple counter
together constitute the watchdog circuit.

Cc += watchdog maintainers. Context: I have a gpio-wdt which can
unfortunately effectively be disabled by disabling a clock output, and
that happens automatically unless the clock has a consumer in DT. But
the actual consumer is not the gpio-wdt.
Please see
https://lore.kernel.org/lkml/20210226141411.2517368-1-linux@rasmusvillemoes.dk/
for the original thread.

Rasmus

