Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 698C931434B
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 23:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230029AbhBHWyT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 17:54:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231249AbhBHWyL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 17:54:11 -0500
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43150C061788
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 14:53:26 -0800 (PST)
Received: by mail-qk1-x72a.google.com with SMTP id o193so6720190qke.11
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 14:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LNObx/xsKx0muGd8o1UdmLNQwbfWnKf1Zhlj9wUcgLk=;
        b=puPBo81BTM6aQFml9nbQ9JmMBD3XfODsW8PGsRouYdnjPo7p+UPIZnKevuHfuUhU5Q
         xjsDnAKKl/O/ly0gLz1oxNrDrGaeVCmYfbh6OXTINu1qKGb99AUsHyBsjf92TwfpTNr3
         Azi0w1zHwxZFPKzoRyHlOBfGjLDCxyoVhwBo5zFNAFI38SA6eyEU0QO8n2vq46ukEt0r
         82Ev1x9KZvfmhI5PgJkOInApJSjciqQaFk1SJMlcDDJOATQeQwdGrQiGsc8fdpcgkRaH
         JnXfLWl49UU6cNs3VyT2mqEKsDAAcT5a1GMZcGYX6FnU/t6SIMfxG57wEuXkwNWUJtg0
         fMAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LNObx/xsKx0muGd8o1UdmLNQwbfWnKf1Zhlj9wUcgLk=;
        b=cOisuUv2AP64kCvdNMWNf8vDdvdpxzkluwtttgCxjM1qQ9RW5BnG9FWQfqyVkdwLSt
         aBBViYqrn4dRb5P14mFKq9majjjr78lSYpLbmPjhKgvLp4R8fiNZqlt2woTHZgUpdblG
         EVumYeXcz7HOZGO5LaRCtQzJDH1c/vLLRbL7ElI8Eox3zCr+zxDiMSml50OPYdWDbQOw
         VJTMKgYFM8fwsnEN+c8Yy5gMASB2HcHVG0PL6ZHJ/TG02kvKp2z7s7HY/SV0bqipSvZK
         zTpPw+twdVtoLsQAGD/LMEWDz0OE9OJDOx6zSI+QgMGaCI2YITjfXyycEPkRzfS+wOP2
         aIUQ==
X-Gm-Message-State: AOAM5312vBtsm/ZOSflrnoVZ4TyICOse5zRd9RDS782YOfWuVJK4kpg4
        iJMuIaHY73KT0Z77tr/qL0oGYcZ6xiwfJg==
X-Google-Smtp-Source: ABdhPJy9MvLaVUfwTXT5pTO0nfI3HQoC5oiuH7jPfgl7vi70YhHUGzP8mhBjgu0a9BN1LFJOh4iUVA==
X-Received: by 2002:a37:aa94:: with SMTP id t142mr1154343qke.40.1612824805248;
        Mon, 08 Feb 2021 14:53:25 -0800 (PST)
Received: from [192.168.1.201] (pool-108-51-35-162.washdc.fios.verizon.net. [108.51.35.162])
        by smtp.googlemail.com with ESMTPSA id o17sm16404744qtl.47.2021.02.08.14.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 14:53:24 -0800 (PST)
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
To:     Rob Herring <robh@kernel.org>,
        Damien Le Moal <Damien.LeMoal@wdc.com>
Cc:     "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-10-damien.lemoal@wdc.com>
 <20210205202505.GA3625674@robh.at.kernel.org>
 <aab05bea310fbdbac38990656647dd0fbf3c8323.camel@wdc.com>
 <CAL_JsqLbMbMx3TLf+CPG-MdimHTz2sdzgQdmmuQkLfnsTJQAvQ@mail.gmail.com>
From:   Sean Anderson <seanga2@gmail.com>
Message-ID: <a924468e-9d6e-d66f-403c-77d7e0422651@gmail.com>
Date:   Mon, 8 Feb 2021 17:53:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLbMbMx3TLf+CPG-MdimHTz2sdzgQdmmuQkLfnsTJQAvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/8/21 3:00 PM, Rob Herring wrote:
> On Fri, Feb 5, 2021 at 6:13 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>>
>> On Fri, 2021-02-05 at 14:25 -0600, Rob Herring wrote:
>> [...]
>>>> +                   otp0: nvmem@50420000 {
>>>> +                           #address-cells = <1>;
>>>> +                           #size-cells = <1>;
>>>> +                           compatible = "canaan,k210-otp";
>>>> +                           reg = <0x50420000 0x100>,
>>>> +                                 <0x88000000 0x20000>;
>>>> +                           reg-names = "reg", "mem";
>>>> +                           clocks = <&sysclk K210_CLK_ROM>;
>>>> +                           resets = <&sysrst K210_RST_ROM>;
>>>> +                           read-only;
>>>> +                           status = "disabled";
>>>
>>> Your disabled nodes seem a bit excessive. A device should really only be
>>> disabled if it's a board level decision to use or not. I'd assume the
>>> OTP is always there and usable.
>>
>> Please see below.
>>
>>>
>>>> +
>>>> +                           /* Bootloader */
>>>> +                           firmware@00000 {
>>>
>>> Drop leading 0s.
>>>
>>> Is this memory mapped? If so, you are missing 'ranges' in the parent to
>>> make it translateable.
>>>
>>>> +                                   reg = <0x00000 0xC200>;
>>>> +                           };
>>>> +
>>>> +                           /*
>>>> +                            * config string as described in RISC-V
>>>> +                            * privileged spec 1.9
>>>> +                            */
>>>> +                           config-1-9@1c000 {
>>>> +                                   reg = <0x1C000 0x1000>;
>>>> +                           };
>>>> +
>>>> +                           /*
>>>> +                            * Device tree containing only registers,
>>>> +                            * interrupts, and cpus
>>>> +                            */
>>>> +                           fdt@1d000 {
>>>> +                                   reg = <0x1D000 0x2000>;
>>>> +                           };
>>>> +
>>>> +                           /* CPU/ROM credits */
>>>> +                           credits@1f000 {
>>>> +                                   reg = <0x1F000 0x1000>;
>>>> +                           };
>>>> +                   };
>>>> +
>>>> +                   dvp0: camera@50430000 {
>>>> +                           compatible = "canaan,k210-dvp";
>>>
>>> No documented. Seems to be several of them.
>>
>> There are no Linux drivers for these undocumented nodes. That is why I did not
>> add any documentation.
> 
> Documentation is required when dts files OR Linux drivers use them.
> 
>> make dtbs_check does not complain about that as long as
>> the nodes are marked disabled.
> 
> 'disabled' should only turn off required properties missing checks.
> Undocumented compatible strings checks are about to get turned on now
> that I've made it work without false positives.
> 
>> I kept these nodes to have the DTS in sync with
>> U-Boot which has them.
> 
> That's a worthwhile goal. Doesn't u-boot require documenting bindings?

Generally, no. Usually if the bindings differ from the kernel they are
documented, but usually the device trees are just imported straight from
the kernel. This is a bit of an unusual case in that the device tree is
being imported from U-Boot instead of the other way around.

> 
>> Keeping them also creates documentation for the SoC
>> since this device tree is more detailed than the SoC specsheet...
> 
> It's already 'documented' in u-boot it seems...

I would like to keep Kernel and U-Boot device trees in-sync. However, if
there are significant divergences, that becomes more difficult.

--Sean

> 
> Rob
> 

