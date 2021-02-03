Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3041730D01C
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 01:03:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231610AbhBCACP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 19:02:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231223AbhBCACO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 19:02:14 -0500
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CC56C06174A
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 16:01:34 -0800 (PST)
Received: by mail-qk1-x731.google.com with SMTP id k193so21729467qke.6
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 16:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KWrgLgvPSeSqktiYSiGArNaUaJGPgSmru6EUJ4fc25w=;
        b=cp3I13nxA2/k7MXvOcYp9Gef6QHcInoYqEwf4PTFMHMvLgTChlfL+I3yqIrahHjJP5
         1Nj9bk0qQ+miJ57wX0yK5zg+nJqR2sK/ZA2Eas9JYrUAZFpl7oYMFLOrdN3eScjHpF2z
         eqcI/hxyUlNLKICGhnvIhdNIYHqeDflS7tM/sUwcGnMUx4X8GIuz/mySIn2gDegURGnk
         +Z7BHDVDPhzeQL7DAacHOLTIrRd58gl9amndxcn1ofjbRgvLOJNCRrx1yeyul4Do6Wbc
         ZKkSVv04ayQCfCDiCH30Vo923Iq+3U+WgSAjH3CW3u3MPUeg98LV/YUYxIIrwmZ+WgF5
         tubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KWrgLgvPSeSqktiYSiGArNaUaJGPgSmru6EUJ4fc25w=;
        b=H2I54okqJ35fiaED3WeAs3fzdadRq1M+Q7I9HzzFP/8w/KvH0L9rvDkHSNEHnbumVh
         SmZvLrkCNWpmOfERFBY6XT61aRW+HkWVGTf1QQD5x8ZJJ/4btnLr+ee99CDAyZ8UAV4l
         ICpMsZosGQubB36MMJ1xHrvGZqRm3IJGUZJxhiL8OioVgYgwrfoT9xAI28yiO70ZWWdH
         9NjEMk5fgDRwS82ERjZ8jNSisBQX/4qnbY1K8S3O+NVXeoVhKG1rDGu0LUf9tkUF7gss
         ymd0pc1C5+LOCI5yVHCx2T5WCrobXJ2ETn7vsuAjZd27My7SYt3ah4Tb5vz86udUo6fJ
         aesQ==
X-Gm-Message-State: AOAM531PjFD/DS+kiPXiPPpe3fxnKve2Yvsr0jLq8/rebM5+isSs2b66
        PMGLYdIx4BfWobKJxLrvk2TbibcYixY=
X-Google-Smtp-Source: ABdhPJwd++c8dxDLCkBm7EnB/V48iIYc1gZAR4YM11rl08zYJstR7i99PlgF484jqsk0EBQDrFtc+w==
X-Received: by 2002:a37:6897:: with SMTP id d145mr238876qkc.168.1612310493418;
        Tue, 02 Feb 2021 16:01:33 -0800 (PST)
Received: from [192.168.1.201] (pool-108-51-35-162.washdc.fios.verizon.net. [108.51.35.162])
        by smtp.googlemail.com with ESMTPSA id c17sm421985qkb.13.2021.02.02.16.01.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 16:01:32 -0800 (PST)
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Rob Herring <robh@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com>
 <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
From:   Sean Anderson <seanga2@gmail.com>
Message-ID: <700da807-a5c8-a552-3d50-948b3ff6a734@gmail.com>
Date:   Tue, 2 Feb 2021 19:01:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/21 2:02 PM, Rob Herring wrote:
> On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>>
>> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
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
> 
> What's the default as obviously drivers already assume something.

The driver currently assumes 16. However, as noted in reply to Atish,
the number of GPIOs is configurable.

> Does a driver actually need to know this? For example, does the
> register stride change or something?

No. I believe that the number of GPIOs sets which bits in the control
registers are valid. So the maximum number of GPIOs is the word width of
the bus.

> Please don't add it if the only purpose is error check your DT (IOW,
> if it just checks the max cell value in gpios phandles).

Why not? This seems like exactly the situation this property was
designed for.

> Optionally, a GPIO controller may have a "ngpios" property. This property
> indicates the number of in-use slots of available slots for GPIOs. The
> typical example is something like this: the hardware register is 32 bits
> wide, but only 18 of the bits have a physical counterpart. The driver is
> generally written so that all 32 bits can be used, but the IP block is reused
> in a lot of designs, some using all 32 bits, some using 18 and some using
> 12. In this case, setting "ngpios = <18>;" informs the driver that only the
> first 18 GPIOs, at local offset 0 .. 17, are in use.

--Sean
