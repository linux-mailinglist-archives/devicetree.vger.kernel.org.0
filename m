Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E92B30E6F7
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 00:15:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233757AbhBCXOg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 18:14:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233793AbhBCXOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 18:14:24 -0500
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 954F0C061573
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 15:13:44 -0800 (PST)
Received: by mail-qv1-xf30.google.com with SMTP id u20so867493qvx.7
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 15:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=voqQoZ3YZqf0Z/pR7YykXy9pqX6l4kg0PmwwwlXbpf4=;
        b=ZF06FB+nVWeMu0eOTcu4sFf24wJMdeXUtUl78TYWTv40ZVV042Wy6J1pTJ9ZKWSrP0
         qunFZAjufn96IU+36z8+rCK7oWnX7I+llftIUz8VkE0BsGbTW10j/+30UbXuPm76q/2I
         oO0eAxoDpNUc9O+1CGvXg32mHIjUq4Iiy9CX3wsRb66XqbaMBwzAuBCpOcxw2Xtq7K0h
         xpzp9fD00ZJ7AzPi2Z/Nq3SD06GXkN8VZFG6cWfUyuqRoJ+1K2Kv+QIqfJXKMjxFFGMr
         CA8ZTEgIg0TwcN8W9NmB9750RXjiy3ohF9YFHftb3DBp2+Tcrqy08Li0CGdYRvmJ5/kL
         9spw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=voqQoZ3YZqf0Z/pR7YykXy9pqX6l4kg0PmwwwlXbpf4=;
        b=IQkTFutjZMmwSTmKJo0jzzPtPdz+ql5QJNv522EipbUv7aYqBmfEv7s8lToasCR5lq
         yduD8f5ZulsLXPtXdjPme62KlF5aRdIFEs8DNT1LjXrZJveAa6MeAH/WQcKaoD81g6lq
         JE+DJR6rtGXKYV68S45SkpZFeOdJlsgs31NVGCT5Xh9Jg5YxGO23+QIJjIvhn24cAz6F
         9TgGzt7kRXsiQQXvCE9QbBWGqqX38PFy3E91LiVF8tDJJC355qiA3dX0mI40GM3YuqIQ
         LRl8Ots5DvpeB1RPCySP0RoWYfhONrBLyV5+doTvGmwVe6XboaMF+DeNpsVkKQTlfCOm
         beOw==
X-Gm-Message-State: AOAM531aeIEokm95MkoQf8cHt2evM5lmJ6sb4q//KGuQK6RkWQ4bxyOH
        qk/d82yM5MRBDFY9uNSbYkC+QDwHON0=
X-Google-Smtp-Source: ABdhPJyFpJ/dpl4eW3S8VUV6yCIkLxoJjUVjOObZvUqRW/1Z8YUQV7iD1ocfSXkSDQ7kSxbyH7zOCg==
X-Received: by 2002:ad4:5be9:: with SMTP id k9mr5172756qvc.18.1612394023587;
        Wed, 03 Feb 2021 15:13:43 -0800 (PST)
Received: from [192.168.1.201] (pool-108-51-35-162.washdc.fios.verizon.net. [108.51.35.162])
        by smtp.googlemail.com with ESMTPSA id u133sm3358665qka.116.2021.02.03.15.13.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 15:13:42 -0800 (PST)
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Rob Herring <robh@kernel.org>
Cc:     Damien Le Moal <damien.lemoal@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com>
 <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
 <700da807-a5c8-a552-3d50-948b3ff6a734@gmail.com>
 <CAL_JsqK-zuhq=rkHyXPMbcGyFhMdfShZYeNhSzLbCu8c7RvCGQ@mail.gmail.com>
From:   Sean Anderson <seanga2@gmail.com>
Message-ID: <de7566fc-6b4d-3cdf-0cc5-1d2c5909bd5e@gmail.com>
Date:   Wed, 3 Feb 2021 18:13:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqK-zuhq=rkHyXPMbcGyFhMdfShZYeNhSzLbCu8c7RvCGQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/3/21 3:23 PM, Rob Herring wrote:
> On Tue, Feb 2, 2021 at 6:01 PM Sean Anderson <seanga2@gmail.com> wrote:
>>
>> On 2/2/21 2:02 PM, Rob Herring wrote:
>>> On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>>>>
>>>> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
>>>> interrupts property description and maxItems. Also add the standard
>>>> ngpios property to describe the number of GPIOs available on the
>>>> implementation.
>>>>
>>>> Also add the "canaan,k210-gpiohs" compatible string to indicate the use
>>>> of this gpio controller in the Canaan Kendryte K210 SoC. If this
>>>> compatible string is used, do not define the clocks property as
>>>> required as the K210 SoC does not have a software controllable clock
>>>> for the Sifive gpio IP block.
>>>>
>>>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>>>> Cc: Rob Herring <robh@kernel.org>
>>>> Cc: devicetree@vger.kernel.org
>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
>>>> ---
>>>>    .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
>>>>    1 file changed, 18 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>> index ab22056f8b44..2cef18ca737c 100644
>>>> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>>>> @@ -16,6 +16,7 @@ properties:
>>>>          - enum:
>>>>              - sifive,fu540-c000-gpio
>>>>              - sifive,fu740-c000-gpio
>>>> +          - canaan,k210-gpiohs
>>>>          - const: sifive,gpio0
>>>>
>>>>      reg:
>>>> @@ -23,9 +24,9 @@ properties:
>>>>
>>>>      interrupts:
>>>>        description:
>>>> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.
>>>> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.
>>>>        minItems: 1
>>>> -    maxItems: 16
>>>> +    maxItems: 32
>>>>
>>>>      interrupt-controller: true
>>>>
>>>> @@ -38,6 +39,10 @@ properties:
>>>>      "#gpio-cells":
>>>>        const: 2
>>>>
>>>> +  ngpios:
>>>> +    minimum: 1
>>>> +    maximum: 32
>>>
>>> What's the default as obviously drivers already assume something.
>>
>> The driver currently assumes 16. However, as noted in reply to Atish,
>> the number of GPIOs is configurable.
> 
> So you need a 'default: 16' here.

There is no reasonable default. This device can be configured to have
any number of GPIOs between 1 and 32.

>>> Does a driver actually need to know this? For example, does the
>>> register stride change or something?
>>
>> No. I believe that the number of GPIOs sets which bits in the control
>> registers are valid. So the maximum number of GPIOs is the word width of
>> the bus.
> 
> So like register access size (e.g. readw vs readl)? If so, we have
> 'reg-io-width' for that purpose.

This is just the "maximum configurable" due to how the device's
registers are laid out. If you wanted to have more GPIOs than the
register access size, you would need to make more extensive (and likely
incompatible) modifications to the device. However, I don't believe
there are any devices with 64-bit register width (yet) and the driver
does not support 64-bit accesses.

> 
>>> Please don't add it if the only purpose is error check your DT (IOW,
>>> if it just checks the max cell value in gpios phandles).
>>
>> Why not? This seems like exactly the situation this property was
>> designed for.
> 
> Because it is redundant. All the GPIO lines you want to use should be
> connected to something with a *-gpios property. If not, then that's a
> failure to describe part of the h/w.

This is wrong. On SoCs with pinmuxing (such as this one), not all GPIO
lines may be connected for any particular board.

> For comparison, we generally don't define how many interrupts an
> interrupt controller has. Or how many power-domains a power domain
> provider has. I can go on with every provider/consumer binding...

And yet the in-kernel documentation *specifically* recommends using this
property in this situation. I suggest you submit a patch to remove that
paragraph if you think that it is not necessary.

--Sean
