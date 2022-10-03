Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4F875F2F02
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 12:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbiJCKuX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 06:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiJCKuW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 06:50:22 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FDD525C4E
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 03:50:20 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id d6so1861999lfs.10
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 03:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8bvcDquIa7vgflP7nJAFbGRu7XRxamVy4jq/4H0AbVk=;
        b=hfJFwhqZ+MLeAQ2D2aI3DRZDyJ2RQTEJFF56XZi0soUxJLJ3gZLQd1lJ2FwqWXjQyt
         1hz1dmBS/MaIwgA8XFNd0MFXPNsqZfrS/qlYL4kk+fgbUUgjq8SFSgw+KnIntJM4fQ81
         gzu7eyeBuhbmF9CWvRjl22Ub5QX8jxS53xtqsujIKoescZ5Vt07CO4/l3azfw/KUGeqd
         x6aKM3mlEw5qyRH/2PRQv74GhfkA7C2HTJePES9Wku6Yo7WwgSHL46yLeRXpQPSzmJfg
         VRvvN5BrusA83mA6Sho24Wp0mTxoduNjespJuIullrlS+Eabzgro42EG+TIlx8hQWYnW
         ElIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8bvcDquIa7vgflP7nJAFbGRu7XRxamVy4jq/4H0AbVk=;
        b=usQ18M9mP4rxZJ0JoUMXDbOt35UV/ixx8uI8j5esD2FG2tFEtr3cQUrpCX8Abrj6Ju
         T3J9x1PL+lkiOWwMorCkch8+hcSsNex6xizWXdKNYjMA64U5rf33kSsfNAUqsRi6xoHh
         NOkpO9ZLOv3Ib25CAUbvsAvXIptzh4LlCec4MaKj4k3TlklfTYuC+RxpF/uZrloAzZnl
         YHxWh982UvCptm+NxHULEP8KAIA8uXNqDbsd2lYYs1eAzEU8ieANEugqzAt1j8iYdTYK
         Lq+ydxbPl1aKZHNsOG28FL5yTSIngXgww06Zmp2AdtYq1TMq/4QB7FoR2MR347zo83gO
         qwug==
X-Gm-Message-State: ACrzQf1GrZD+bFhbYHGzF0hdwyCSirrK4c3Q/kOy6sjY8YCqmBd1/YPC
        59UqdTmQCeF4+x8x0x+2bOxxMw==
X-Google-Smtp-Source: AMsMyM7iv33mRXkg+sYRyPIeNQ1si+vhMY3xO1DGyVuir6e5Lzs1oQYZJCsBXzM/tlynJCDgfuMSfQ==
X-Received: by 2002:ac2:57c9:0:b0:49c:3e64:de95 with SMTP id k9-20020ac257c9000000b0049c3e64de95mr7371010lfo.452.1664794218756;
        Mon, 03 Oct 2022 03:50:18 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d15-20020ac25ecf000000b004979e231fafsm1405630lfq.38.2022.10.03.03.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 03:50:17 -0700 (PDT)
Message-ID: <19bbea63-41d4-1b35-591e-1776eee1b2aa@linaro.org>
Date:   Mon, 3 Oct 2022 12:50:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/2] dt-bindings: clk: Add binding for versal clocking
 wizard
Content-Language: en-US
To:     Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>
Cc:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-clk@vger.kernel.org, git@amd.com, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
        mturquette@baylibre.com,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20220930080400.15619-1-shubhrajyoti.datta@amd.com>
 <20220930080400.15619-2-shubhrajyoti.datta@amd.com>
 <CAL_JsqLaqjZeZd3c-fd9f5m-4OCXgOZcOu+paik9FV_eno5sLg@mail.gmail.com>
 <afb3f19f-eb40-5453-a82b-295e06861f86@amd.com>
 <20220930213924.GA1079711-robh@kernel.org>
 <6e58837e-896c-7069-7913-2afb90af5e95@amd.com>
 <b495804c-cf04-4512-ac05-424eded46468@linaro.org>
 <57989d3e-a186-1d67-cff9-6a059f94ebd3@amd.com>
 <f611237f-0401-9e3c-3a21-79b33141bb51@linaro.org>
 <e8507b3c-3dd5-9a65-8058-200b5a410da3@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e8507b3c-3dd5-9a65-8058-200b5a410da3@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 12:37, Michal Simek wrote:
> 
> 
> On 10/3/22 10:10, Krzysztof Kozlowski wrote:
>> On 03/10/2022 09:58, Michal Simek wrote:
>>>
>>>
>>> On 10/3/22 09:23, Krzysztof Kozlowski wrote:
>>>> On 03/10/2022 09:15, Michal Simek wrote:
>>>>>>> And this is new IP. Not sure who has chosen similar name but this targets
>>>>>>> Xilinx Versal SOCs. Origin one was targeting previous families.
>>>>>>
>>>>>> Do we need a whole new schema doc?
>>>>>
>>>>> It is completely new IP with different logic compare to origin one.
>>>>>
>>>>>>
>>>>>> It is not ideal to define the same property, xlnx,nr-outputs, more than
>>>>>> once. And it's only a new compatible string.
>>>>>
>>>>> I can't see any issue with using dt binding for xlnx,clocking-wizard.yaml
>>>>>
>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
>>>>
>>>> So we already have out of staging document:
>>>> devicetree/bindings/clock/xlnx,clocking-wizard.yaml
>>>
>>> in 6.1 yes.
>>>
>>>>
>>>> and author wants to add one more:
>>>> devicetree/bindings/clock/xlnx,clk-wizard.yaml
>>>
>>> as I said it is completely different IP which requires complete different driver
>>> but IP designers choose similar name which is out of developer control.
>>>
>>>>
>>>> Shall we expect in two years, a third document like:
>>>> devicetree/bindings/clock/xlnx,clk-wzrd.yaml
>>>> ?
>>>
>>> Developer definitely doesn't know. If new SoC requires for the same purpose
>>> different IP with completely different driver is something out of developer
>>> control. As of today I am not aware about such a requirement and need and
>>> personally I can just hope that if they need to do such a change they will be
>>> able to keep current SW driver compatible with new HW IP.
>>
>> Then please start naming them reasonable, not two (and in future
>> x-times) the same names for entirely different blocks. And by name I
>> mean compatible, filename and device name.
>>
>>>>> also for this IP if that's fine with you.
>>>>> Only xlnx,speed-grade can be defined for previous IP which is easy to mark.
>>>>
>>>> That old binding also explained nr-outputs as "Number of outputs".
>>>> Perfect... :(
>>>
>>> Anyway if description should be improved let's just do it. I just want to get
>>> guidance if we should update current dt binding for similar IP or just create
>>> new one as this one is trying to do.
>>
>> IMHO, new binding is extremely confusing. We already have support for
>> devices named "xlnx,clocking-wizard" and now you add exactly the same
>> (clk=clocking) with almost the same properties, named
>> "xlnx,clk-wizard-1.0". For a different IP?
>>
>> How anyone (even Xilinx' customer) can understand which block is for
>> what if they have exactly the same name and (almost) the same
>> properties, but as you said - these are entirely different IP?
> 
> Let me start from last one. Xilinx has IP catalog in design tools called Vivado. 
> You choose device you have and then you will find clk wizard and you get an IP.

So you have a specific device? Why it is not part of name and compatible?

> It means depends on SOC you have ZynqMP or Versal and based on that one or 
> another is taken.

Exactly. The names xlnx,clocking-wizard and xlnx,clk-wizard-1.0 are
therefore not specific enough and mixing different devices.


> And because this is fpga world none is really describing programmable logic by 
> hand because it would take a look a lot of time. That's why I created long time 
> ago device-tree generator (DTG) which gets design data and based on it generate 
> device tree description. Newest version is available for example here.
> https://github.com/Xilinx/device-tree-xlnx
> There is also newer version called system device tree generato
> https://github.com/Xilinx/system-device-tree-xlnx
> 
> Because of this infrastructure user will all the time get proper compatible 
> string which is aligned with IP catalog.

I don't think so. Let's skip for now "clk" and "clocking" differences
and assume both are "clocking". You have then compatibles:

xlnx,clocking-wizard and xlnx,clocking-wizard-1.0

and you said these are entirely different blocks.

There is no way this creates readable DTS.

Best regards,
Krzysztof

