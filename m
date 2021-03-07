Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB26F330071
	for <lists+devicetree@lfdr.de>; Sun,  7 Mar 2021 12:41:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230319AbhCGLkh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 06:40:37 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:49576 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230417AbhCGLkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Mar 2021 06:40:06 -0500
Received: from mail-ed1-f72.google.com ([209.85.208.72])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lIrlU-0002Jz-2i
        for devicetree@vger.kernel.org; Sun, 07 Mar 2021 11:40:04 +0000
Received: by mail-ed1-f72.google.com with SMTP id o15so3596620edv.7
        for <devicetree@vger.kernel.org>; Sun, 07 Mar 2021 03:40:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IaOI6sfLur1cio+d1DvBU3jWRBzRJHEdk3id990OmYw=;
        b=pTfs8+VRoXSoPwKjX0jy55IeFVNrBTZpVbPvyqs6esz0zD+ydq7SBTWaLpB5yNuQKW
         PHzMf/ozQxxFiSBgTIelFeV6o9AhKj3P+N3JeE2hBkFLQHuthSLO/00SHhMeWxYxps9R
         3keB5X/Vhc4vZeqrrpoHoFx4EYxVbpC+MKDdAQL829B+i5OGBeRcMXoNE1scdhE/SFot
         un4kpXI9MV7TlFHAQ5G7hq2VbhZwNW4X1CPxOoU6YRLerb9fpaIWU/F9a3f5zOuXJvH9
         zibuzYVCOYocqfPLGg2KaR3nbxWiAEuGtUGnW2nDmL+KJqQsnceGfPhzw6GDQVW5uvjm
         EnQA==
X-Gm-Message-State: AOAM531ma2F9E++7OvfCDLo6vGjI83HcKLtpZxXefbKYTXzDuPAE4P0u
        Y+xjXMqO90vgDnpoiX1cnDW4RsHxvJk9O73ZYqad3nBc+gRiq1MRym+boJmU9Yf6z70xD7wJRNa
        rl3nShNk4g9w0Q/uvS/csNYkG9I1bNlp7XweaUww=
X-Received: by 2002:a17:906:b884:: with SMTP id hb4mr10386016ejb.536.1615117203772;
        Sun, 07 Mar 2021 03:40:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzipGzDNC2m7qFZQL7/GmPd9oamLJ2JkMxfSm2OQXdsFLMxQXP2tUZ+TWwrEadIMtG963jLFg==
X-Received: by 2002:a17:906:b884:: with SMTP id hb4mr10385983ejb.536.1615117203555;
        Sun, 07 Mar 2021 03:40:03 -0800 (PST)
Received: from [192.168.1.116] (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id x10sm4560734ejd.69.2021.03.07.03.40.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Mar 2021 03:40:03 -0800 (PST)
Subject: Re: [RFT PATCH v3 24/27] tty: serial: samsung_tty: Add support for
 Apple UARTs
To:     Hector Martin <marcan@marcan.st>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Marc Zyngier <maz@kernel.org>, Rob Herring <robh@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        Tony Lindgren <tony@atomide.com>,
        Mohamed Mediouni <mohamed.mediouni@caramail.com>,
        Stan Skowronek <stan@corellium.com>,
        Alexander Graf <graf@amazon.com>,
        Will Deacon <will@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Christoph Hellwig <hch@infradead.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        Linux Documentation List <linux-doc@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        Linux-Arch <linux-arch@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20210304213902.83903-1-marcan@marcan.st>
 <20210304213902.83903-25-marcan@marcan.st>
 <CAHp75VdFTHPfvdNUZEsn-qUCozASEGXeTDkTTUfOTqZ2TMsfiA@mail.gmail.com>
 <2ed7523f-5c11-976f-ac11-f756d7510400@marcan.st>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <b742457e-bf74-0e93-1d24-26f29a0b873a@canonical.com>
Date:   Sun, 7 Mar 2021 12:40:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <2ed7523f-5c11-976f-ac11-f756d7510400@marcan.st>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/03/2021 18:04, Hector Martin wrote:
> On 06/03/2021 00.28, Andy Shevchenko wrote:
>>> +       case TYPE_APPLE_S5L:
>>> +               WARN_ON(1); // No DMA
>>
>> Oh, no, please use the ONCE variant.
> 
> Thanks, changing this for v4.
> 
>>
>> ...
>>
>>> +       /* Apple types use these bits for IRQ masks */
>>> +       if (ourport->info->type != TYPE_APPLE_S5L) {
>>> +               ucon &= ~(S3C64XX_UCON_TIMEOUT_MASK |
>>> +                               S3C64XX_UCON_EMPTYINT_EN |
>>> +                               S3C64XX_UCON_DMASUS_EN |
>>> +                               S3C64XX_UCON_TIMEOUT_EN);
>>> +               ucon |= 0xf << S3C64XX_UCON_TIMEOUT_SHIFT |
>>
>> Can you spell 0xf with named constant(s), please?
>>
>> In case they are repetitive via the code, introduce either a temporary
>> variable (in case it scoped to one function only), or define it as a
>> constant.
> 
> I'm just moving this code; as far as I can tell this is a timeout value 
> (so just an integer), but I don't know if there is any special meaning 
> to 0xf here. Note that this codepath is for *non-Apple* chips, as the 
> Apple ones don't even have this field (at least not here).

I agree here with Hector. Andi, you propose here unrelated change (which
without documentation might not be doable by Hector).

> 
>>> +       irqreturn_t ret = IRQ_NONE;
>>
>> Redundant. You may return directly.
> 
> What if both interrupts are pending?
> 
>> No IO serialization?
> 
> There is no DMA on the Apple variants (as far as I know; it's not 
> implemented anyway), so there is no need for serializing IO with DMA. In 
> any case, dealing with that is the DMA code's job, the interrupt handler 
> shouldn't need to care.
> 
> If you mean serializing IO with the IRQ: CPU-wise, I would hope that's 
> the irqchip's job (AIC does this with a readl on the event). If you mean 
> ensuring all writes are complete (i.e. posted write issue), on the Apple 
> chips everything is non-posted as explained in the previous patches.
> 
>> Extra blank line (check your entire series for a such)
> 
> Thanks, noted. I'll check the declaration blocks in other patches.
> 
>>> +       ourport->rx_enabled = 1;
>>> +       ourport->tx_enabled = 0;
>>
>> How are these protected against race?
> 
> The serial core should be holding the port mutex for pretty much every 
> call into the driver, as far as I can tell.
> 
>>
>> ...
>>
>>> +               case TYPE_APPLE_S5L: {
>>> +                       unsigned int ucon;
>>> +                       int ret;
>>> +
>>> +                       ret = clk_prepare_enable(ourport->clk);
>>> +                       if (ret) {
>>> +                               dev_err(dev, "clk_enable clk failed: %d\n", ret);
>>> +                               return ret;
>>> +                       }
>>> +                       if (!IS_ERR(ourport->baudclk)) {
>>> +                               ret = clk_prepare_enable(ourport->baudclk);
>>> +                               if (ret) {
>>> +                                       dev_err(dev, "clk_enable baudclk failed: %d\n", ret);
>>> +                                       clk_disable_unprepare(ourport->clk);
>>> +                                       return ret;
>>> +                               }
>>> +                       }
>>
>> Wouldn't it be better to use CLK bulk API?
> 
> Ah, I guess that could save a line or two of code here, even though it 
> requires setting up the array. I'll give it a shot.
> 
>>> +#ifdef CONFIG_ARCH_APPLE
>>
>> Why? Wouldn't you like the one kernel to work on many SoCs?
> 
> This *adds* Apple support, it is not mutually exclusive with all the 
> other SoCs. You can enable all of those options and get a driver that 
> works on all of them. This is the same pattern used throughout the 
> driver for all the other Samsung variants. There is no reason to have 
> Apple SoC support in the samsung driver if the rest of the kernel 
> doesn't have Apple SoC support either, of course.

How ifdef on ARCH_APLLE makes it non-working on many SoCs? All new
platforms are multi... The true question is - do the ifdefs in the code
make it more difficult to read/review?

Best regards,
Krzysztof
