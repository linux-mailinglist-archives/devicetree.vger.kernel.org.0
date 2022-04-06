Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF76B4F6B20
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 22:17:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232378AbiDFUTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 16:19:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234043AbiDFUSv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 16:18:51 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 921E019479B
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 11:16:33 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id 32so750108pgl.4
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 11:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=74No6gmGBJJXWxGfab66uPN7aRDOOjyBe7G3m6bJFfg=;
        b=IpwI3rlMwvuZf03aoDBoKSvc3me35jpu4hKKdA4Tawnpiku6yNvfM2uuta0nAi2d0K
         hUyUZe1mQ6RXIhA4nj1oma4xCVJ23jcZV7/PUiAllu1OB7Y6ucIwgR/JTT7gUX8OhEpO
         LqmqS84hDbBK+oK3qJQh4yDvR17JtGM/GzBM/rjoY1/sP96z+5yyfBLTBiWw46e8Hb6X
         UcK+szVi8dFtyibfdzB7CSaeKsxel9T/d0BEwgvYKkG2rl8TijBus5FYxzJJ59fEKldc
         zSZ9rNDcOgXW2vRq3XrnL06Qr8qxNNE7crcT3MlcmP6h+bWjn2/Sd/tnpJPdDwiQumck
         PpGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=74No6gmGBJJXWxGfab66uPN7aRDOOjyBe7G3m6bJFfg=;
        b=5DHUpAaeFKVzu8AwqAHZfD94bdSNL0JCUxCRYWufdivRGfWknswyzmdsnewcRx/daq
         4rfJ4lN5KqQG3EtCwfS5aisLLd0E+YrbclA/4TotqN3YdF1UV4ZBQgZTL6IXirKd6yvh
         CshTgUz849HJIqlg0W/rZ1z6+cSllYiEQkA+GyoW4/W4+NAxBK/+/q8b5FbgkYKhtGiz
         tLgdX6rnRZ399MuQZ2btV4/fxrxuFawsBTn1YwAwGD89HyR1DmnyYml4Sxv//dNsy8dR
         LZ7aQnX4OG+d8BUr3Q1OxGf/RjHaADJez81tWB/1skO/LQ1arh8S189mhTkpbe2nzo4P
         BVbg==
X-Gm-Message-State: AOAM531sSQJp3S9oKGQHBYJG7Z9pG5Jp2NHCJa0nwPAUhh3k+6tMiN6y
        r7ZOyx25NjYKLaY18R1kJy8=
X-Google-Smtp-Source: ABdhPJzP9uEONW558Xeq4mwjsuWzh53xXl85o12YMToR338ruJu8QNLFyizLRjC6+xzZAfVN605u6Q==
X-Received: by 2002:a63:7c4e:0:b0:380:8ae9:c975 with SMTP id l14-20020a637c4e000000b003808ae9c975mr8321632pgn.25.1649268992886;
        Wed, 06 Apr 2022 11:16:32 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id f192-20020a636ac9000000b0039836edcf42sm17206041pgc.85.2022.04.06.11.16.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 11:16:32 -0700 (PDT)
Message-ID: <923b1c06-30c8-2f76-89ef-b36299cd1001@gmail.com>
Date:   Wed, 6 Apr 2022 11:16:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 5/5] ARM: dts: BCM5301X: Disable unused gmac0 and gmac2 on
 Asus RT-AC88U
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20220401102002.15765-1-arinc.unal@arinc9.com>
 <20220401102002.15765-5-arinc.unal@arinc9.com>
 <06e49b67a2e2f75040c51f8a05c329ef@milecki.pl>
 <21285586-7c9a-5fda-0f07-1d43312ea8c6@arinc9.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <21285586-7c9a-5fda-0f07-1d43312ea8c6@arinc9.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/1/22 04:36, Arınç ÜNAL wrote:
> On 01/04/2022 13:40, Rafał Miłecki wrote:
>> On 2022-04-01 12:20, Arınç ÜNAL wrote:
>>> Disable gmac0 and gmac2 which are currently not used. This doesn't 
>>> seem to
>>> be implemented yet on drivers/net/ethernet/broadcom/bgmac-bcma.c but 
>>> this
>>> change is harmless, nonetheless.
>>
>> It doesn't matter whether Linux respects that.
>>
>>
>>> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
>>> ---
>>>  arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>>> b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>>> index 2f944d1c0330..0f5c5d576814 100644
>>> --- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>>> +++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
>>> @@ -242,11 +242,19 @@ fixed-link {
>>>      };
>>>  };
>>>
>>> +&gmac0 {
>>> +    status = "disabled";
>>> +};
>>> +
>>>  &gmac1 {
>>>      nvmem-cells = <&et1macaddr>;
>>>      nvmem-cell-names = "mac-address";
>>>  };
>>>
>>> +&gmac2 {
>>> +    status = "disabled";
>>> +};
>>
>> I don't think that is correct. Those interfaces are still there and
>> they are actually connected to switch ports. If you configure your
>> switch properly you can use them.
>>
>> Someone may want to use e.g. gmac0 & gmac1 with two sets of ports to
>> speed up network communication.
>>
>> I think gmac2 is required if you want to enable FA (flow acceleration /
>> accelerator) - even though there isn't Linux driver for it yet.
>>
>> They are not disabled / unpopulated / non functional interfaces.
> 
> I understand your point. However, while we're not supposed to care 
> whether the kernel respects the bindings, don't we also need to make the 
> bindings work on the version of the Linux kernel we're submitting the 
> bindings to?
> 
> With the current way DSA works, only one switch port can be used as a 
> CPU port. If we were to remove the status = "disabled" property from 
> port@8 which connects to gmac2, it'd break the communication between the 
> switch and the CPU on the current Linux kernel.

Are you sure? Because DSA still picks up the CPU port from lowest port 
to highest port number. If port 6 is enabled, then it should take 
precedence.

> 
> If a new driver or a feature is introduced, we should update the 
> bindings accordingly afterwards.
> 
> For this reason, I don't see an issue with explaining the driver side of 
> it on the commit log for DT bindings.
> 
> DT bindings are not exactly static either. Someone could want to use 
> gmac2 instead of gmac1. In that case, I think they should change the 
> bindings themselves as it's for their own use.

This is true, but we are not changing the binding here, the binding is 
the contract between the DTB provider and the DTB consumer, it describes 
properties, their shape and size etc. We are just changing the status of 
particular nodes.

> 
> By the way, gmac0 would be wired to port@5 but since port@5 is wired to 
> realtek switch's port@6 instead, it's actually non-functional.



> 
> Arınç


-- 
Florian
