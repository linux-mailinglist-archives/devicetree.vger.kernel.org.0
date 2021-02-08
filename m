Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60BC2314373
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 00:06:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231393AbhBHXFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 18:05:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbhBHXFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 18:05:38 -0500
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D3BC061786
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 15:04:57 -0800 (PST)
Received: by mail-qk1-x736.google.com with SMTP id r77so16235865qka.12
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 15:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TqVqy/3KmKk2Cf5ztpP7PXsRVgos+MMINVYs7YeFPNg=;
        b=sgRluMJG9W8EgoDG0k5uqZlg+P6LMczbp86En3W7plMxcC5b3Loqlcgm7oCRFi2FbW
         R4sbJHXqVPVLHMs9OW+NLiWsMebw0nJ3vX8WicIPlpFFTddJ73yRNs1Rvf0Mux3h1AsM
         u06isKJ3ByeYXGLd0evFpCZEs7t/aAYn9JnLALxm9pEk7gae8Qha4rQokxC1wX0wBxQZ
         +YQmNcffLLv03K9znpk4VNpKWc+uG9k7I3aBqWyYNQDJh9m70iOj5ifSdxtRsmyMVQN5
         fRu05urhBoGinhN3QGkFIy/jDS0YRvNWH+VVmhL+dvsWJ4Xrs3ooMj36TX+PM5vDm8y+
         ztRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TqVqy/3KmKk2Cf5ztpP7PXsRVgos+MMINVYs7YeFPNg=;
        b=e6ipH2xxfl+KrXH+5IOBw2iK6gIAs50SbwBsQaIVzxoKy2WebOT0VlEl3J4VXBkDdI
         jvTlLUVQiQoXCWF2iQhPdCw4RaqpJO2GbNx4lwLz3fGhx0kZ+KtAWBAZTYbZozK5el5e
         xpGbwypkvy60c97TgePmGTVb/8DgwBr8pdxGb87qik5XYw6WjBgaWg1AMlzOSncyPNMV
         qRk2A/igmjOfQclgNUi20MCIHAj/s2gbIXAQ8RAE618dd1ATTf4/7KhIgFs6A6AUGhFX
         9tLw0rki/hpoDs4ijPBD3Z+sfGHLMDoPFWXI6UagsyO6ca1XhdMcKRP0CQkSOy5PvH0f
         2Xqg==
X-Gm-Message-State: AOAM532fMVkSfiMy55r4iYVz0tTyJi9XXO7MK0OP01TSR4TzO1bWEeu1
        ixUxyoBs6BG3SYD/3dwX/BRMp5dky2w8aA==
X-Google-Smtp-Source: ABdhPJx8QIl3XctQx9nOI2jqAw6MD26244OAnaJ2RuuAcCoKy9g3zDAw2lKNOcXZOaTdlLRkGWJgiQ==
X-Received: by 2002:a37:dcf:: with SMTP id 198mr2281719qkn.257.1612825496859;
        Mon, 08 Feb 2021 15:04:56 -0800 (PST)
Received: from [192.168.1.201] (pool-108-51-35-162.washdc.fios.verizon.net. [108.51.35.162])
        by smtp.googlemail.com with ESMTPSA id k90sm14206976qtd.0.2021.02.08.15.04.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Feb 2021 15:04:56 -0800 (PST)
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
To:     Damien Le Moal <Damien.LeMoal@wdc.com>,
        Rob Herring <robh@kernel.org>
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
 <a924468e-9d6e-d66f-403c-77d7e0422651@gmail.com>
 <BL0PR04MB6514747C7AD8FA7E56D61CB9E78F9@BL0PR04MB6514.namprd04.prod.outlook.com>
From:   Sean Anderson <seanga2@gmail.com>
Message-ID: <e451a093-a37f-6078-d158-965b7fce4ebf@gmail.com>
Date:   Mon, 8 Feb 2021 18:04:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <BL0PR04MB6514747C7AD8FA7E56D61CB9E78F9@BL0PR04MB6514.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/8/21 5:55 PM, Damien Le Moal wrote:
> On 2021/02/09 7:53, Sean Anderson wrote:
>> On 2/8/21 3:00 PM, Rob Herring wrote:
>>> On Fri, Feb 5, 2021 at 6:13 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>>>>
>>>> On Fri, 2021-02-05 at 14:25 -0600, Rob Herring wrote:
>>>> [...]
>>>>>> +                   otp0: nvmem@50420000 {
>>>>>> +                           #address-cells = <1>;
>>>>>> +                           #size-cells = <1>;
>>>>>> +                           compatible = "canaan,k210-otp";
>>>>>> +                           reg = <0x50420000 0x100>,
>>>>>> +                                 <0x88000000 0x20000>;
>>>>>> +                           reg-names = "reg", "mem";
>>>>>> +                           clocks = <&sysclk K210_CLK_ROM>;
>>>>>> +                           resets = <&sysrst K210_RST_ROM>;
>>>>>> +                           read-only;
>>>>>> +                           status = "disabled";
>>>>>
>>>>> Your disabled nodes seem a bit excessive. A device should really only be
>>>>> disabled if it's a board level decision to use or not. I'd assume the
>>>>> OTP is always there and usable.
>>>>
>>>> Please see below.
>>>>
>>>>>
>>>>>> +
>>>>>> +                           /* Bootloader */
>>>>>> +                           firmware@00000 {
>>>>>
>>>>> Drop leading 0s.
>>>>>
>>>>> Is this memory mapped? If so, you are missing 'ranges' in the parent to
>>>>> make it translateable.
>>>>>
>>>>>> +                                   reg = <0x00000 0xC200>;
>>>>>> +                           };
>>>>>> +
>>>>>> +                           /*
>>>>>> +                            * config string as described in RISC-V
>>>>>> +                            * privileged spec 1.9
>>>>>> +                            */
>>>>>> +                           config-1-9@1c000 {
>>>>>> +                                   reg = <0x1C000 0x1000>;
>>>>>> +                           };
>>>>>> +
>>>>>> +                           /*
>>>>>> +                            * Device tree containing only registers,
>>>>>> +                            * interrupts, and cpus
>>>>>> +                            */
>>>>>> +                           fdt@1d000 {
>>>>>> +                                   reg = <0x1D000 0x2000>;
>>>>>> +                           };
>>>>>> +
>>>>>> +                           /* CPU/ROM credits */
>>>>>> +                           credits@1f000 {
>>>>>> +                                   reg = <0x1F000 0x1000>;
>>>>>> +                           };
>>>>>> +                   };
>>>>>> +
>>>>>> +                   dvp0: camera@50430000 {
>>>>>> +                           compatible = "canaan,k210-dvp";
>>>>>
>>>>> No documented. Seems to be several of them.
>>>>
>>>> There are no Linux drivers for these undocumented nodes. That is why I did not
>>>> add any documentation.
>>>
>>> Documentation is required when dts files OR Linux drivers use them.
>>>
>>>> make dtbs_check does not complain about that as long as
>>>> the nodes are marked disabled.
>>>
>>> 'disabled' should only turn off required properties missing checks.
>>> Undocumented compatible strings checks are about to get turned on now
>>> that I've made it work without false positives.
>>>
>>>> I kept these nodes to have the DTS in sync with
>>>> U-Boot which has them.
>>>
>>> That's a worthwhile goal. Doesn't u-boot require documenting bindings?
>>
>> Generally, no. Usually if the bindings differ from the kernel they are
>> documented, but usually the device trees are just imported straight from
>> the kernel. This is a bit of an unusual case in that the device tree is
>> being imported from U-Boot instead of the other way around.
>>
>>>
>>>> Keeping them also creates documentation for the SoC
>>>> since this device tree is more detailed than the SoC specsheet...
>>>
>>> It's already 'documented' in u-boot it seems...
>>
>> I would like to keep Kernel and U-Boot device trees in-sync. However, if
>> there are significant divergences, that becomes more difficult.
> 
> Sean,
> 
> Are you OK with removing the nodes without a driver ? I think they are the same
> for the kernel and U-Boot but I have not checked in detail.

I suppose. The 8285 uarts should be kept as iirc someone was using them.
Same with i2c. WDT has a U-Boot driver, and probably has a Linux one too
(I haven't checked). I believe the timers also have working drivers, but
I haven't tested on Linux.

--Sean

> 
>>
>> --Sean
>>
>>>
>>> Rob
>>>
>>
>>
> 
> 

