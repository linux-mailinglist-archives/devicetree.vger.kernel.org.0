Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81B8230D00B
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 00:55:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbhBBXzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 18:55:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbhBBXzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 18:55:07 -0500
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C7DCC061788
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 15:54:09 -0800 (PST)
Received: by mail-qk1-x72e.google.com with SMTP id k193so21712555qke.6
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 15:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=owa7yspMu7oxtY/40pJhJawCs1eLW8zh4phVTlhRQGA=;
        b=BOWvLBJ0dKIZx1ByJ56uFwT9ud1ZJnZHsF7ytLpr4i0CFNa6udW4Tps2e2syypWelZ
         gk7kBxiPSAk4L4g6YiSfk6uxwWGfl873Blxi2//W5UN+ZbNSpnHlX7bEwNRegjW859hY
         BM1vd+vffJ5tq4uH82eTSVY41HJiGySOoxQ6KIdewGi9Q1hsr0yoLqaOrYW2mV8KtoN8
         3DSOCWC5xtYAW43ID7NSXfQOEIlkFnK7npZchnIiK/OCy8rgMjwPhwBMfr4kFyHLCQyU
         5LpSzn3fmgYslRMXssdzCZ9GsIM8m2Sia2UjwZS+KawchIM1WzP3+N8Unt3fGchIzrH1
         e+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=owa7yspMu7oxtY/40pJhJawCs1eLW8zh4phVTlhRQGA=;
        b=odC1mSeYucB7cn+wU8NWr0FGBA81s6zPwkvoBaEPudcYiAYlRrDHAHRZD1GGBWtM/2
         2Cywk/92beHAhu9sUYJtBDB5yQH4O3U1Ulq38RW9Ek9INfEeMeGUa2BHrzzNa0Ckkx6G
         UQzNe/bD1Kw5cYxUv2RonE/5zvwGfTslIHs2PafY05pzQUDZFP2qmRVH00Sgmo+Cv5lI
         Nt45MLSokoZcjUpXbeeNVdoD9dFIYzWHS8FOYFKi8bkNG9QAwiD10XA7p+S4w/p64H5g
         +4ol4UL0uczJYTuRpW3lLLIxHeoNI+pv0Y4G5X3oUqv4wmtDsb6/tn/Ik0CZvgBwvNQS
         E8WA==
X-Gm-Message-State: AOAM533PqVdrtRaq3FW3eWPKDPD5ndr0trTVIpHLhRKWbeX7/kHJs58Z
        Z68LFC7s68VfoH1yoTnEjbI=
X-Google-Smtp-Source: ABdhPJxW3GU5vDb2kFDZKMKepKJOoPG54JDdAI7VY/1e98WRrqu4W+TDTU+vuyaj3PmYsFXmEfD/Fw==
X-Received: by 2002:a05:620a:531:: with SMTP id h17mr194998qkh.93.1612310048591;
        Tue, 02 Feb 2021 15:54:08 -0800 (PST)
Received: from [192.168.1.201] (pool-108-51-35-162.washdc.fios.verizon.net. [108.51.35.162])
        by smtp.googlemail.com with ESMTPSA id q25sm404003qkq.32.2021.02.02.15.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 15:54:08 -0800 (PST)
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Atish Patra <atishp@atishpatra.org>,
        Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh@kernel.org>, Anup Patel <anup.patel@wdc.com>,
        Atish Patra <atish.patra@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com>
 <CAOnJCUKQ+yFJN9+biMMQW6Wvf=eckfcfMHVpDB74TmxWVNoEkQ@mail.gmail.com>
From:   Sean Anderson <seanga2@gmail.com>
Message-ID: <5d565fe4-f624-ea28-177b-2fe01a678260@gmail.com>
Date:   Tue, 2 Feb 2021 18:54:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAOnJCUKQ+yFJN9+biMMQW6Wvf=eckfcfMHVpDB74TmxWVNoEkQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/21 1:45 PM, Atish Patra wrote:
> On Tue, Feb 2, 2021 at 2:37 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>>
>> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
> 
> The spec here says 16 GPIOs
> https://static.dev.sifive.com/FU540-C000-v1.0.pdf
> 
> Is there a updated spec available ?

This GPIO device is (AFAICT) from [1]. While the version instantiated on
SiFive's cores has 16 GPIOs, the actual number of GPIOs is configurable. In
Canaan's version, there are 32 GPIOs. Unfortunately, I am not aware of any
non-implementation-specific documentation for this device.

--Sean

[1] https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/gpio

> 
>> interrupts property description and maxItems. Also add the standard
>> ngpios property to describe the number of GPIOs available on the
>> implementation.
>>
>> Also add the "canaan,k210-gpiohs" compatible string to indicate the use
>> of this gpio controller in the Canaan Kendryte K210 SoC. If this
>> compatible string is used, do not define the clocks property as
>> required as the K210 SoC does not have a software controllable clock
>> for the Sifive gpio IP block.
>>
>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
>> ---
>>   .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
>>   1 file changed, 18 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>> index ab22056f8b44..2cef18ca737c 100644
>> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
>> @@ -16,6 +16,7 @@ properties:
>>         - enum:
>>             - sifive,fu540-c000-gpio
>>             - sifive,fu740-c000-gpio
>> +          - canaan,k210-gpiohs
>>         - const: sifive,gpio0
>>
>>     reg:
>> @@ -23,9 +24,9 @@ properties:
>>
>>     interrupts:
>>       description:
>> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.
>> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.
>>       minItems: 1
>> -    maxItems: 16
>> +    maxItems: 32
>>
>>     interrupt-controller: true
>>
>> @@ -38,6 +39,10 @@ properties:
>>     "#gpio-cells":
>>       const: 2
>>
>> +  ngpios:
>> +    minimum: 1
>> +    maximum: 32
>> +
>>     gpio-controller: true
>>
>>   required:
>> @@ -46,10 +51,20 @@ required:
>>     - interrupts
>>     - interrupt-controller
>>     - "#interrupt-cells"
>> -  - clocks
>>     - "#gpio-cells"
>>     - gpio-controller
>>
>> +if:
>> +  properties:
>> +    compatible:
>> +      contains:
>> +        enum:
>> +          - sifive,fu540-c000-gpio
>> +          - sifive,fu740-c000-gpio
>> +then:
>> +  required:
>> +    - clocks
>> +
>>   additionalProperties: false
>>
>>   examples:
>> --
>> 2.29.2
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 
> 
> 

