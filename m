Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A20B767204
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 18:39:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbjG1Qj3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 12:39:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjG1Qj2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 12:39:28 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADA394203
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:39:26 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3fde57684d7so23404505e9.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690562365; x=1691167165;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vByKr6oo2J1M3LP2EswYpTAgknyd7AeR6xbbY9MOCNo=;
        b=mo8zWxTM63nVRrUOTO7QI4aIwgzo0/AmsgAVZVATFZSN5xjrfhTFuymKH9XEu2mHr1
         b6eK58AZfiqrvbGFKkcK6Q/uQwzperFyRp2nwx/eHZPxBYgCpVomLZDnLrU02HxkE9UY
         u9VwtEIShsRV9pFpbZP4pQBK1JqEJfxprjjOKRw3quSJi02U1ar8slU5BA+Fwhh+rGiv
         WYEzoW443X5c1OagYCbSI1mGxZ8JjPD5JTNaXqnSG6IDoI9viF9zNnFmJPy5Sv3Byqi0
         S1yAIGzHowPD7AICb2sFDD7bOteZ5gCqL7UJev97PCvXe+V73MaLB8zYBC4zVi7/RpSL
         nPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690562365; x=1691167165;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vByKr6oo2J1M3LP2EswYpTAgknyd7AeR6xbbY9MOCNo=;
        b=HB//qFlge/AtzwG5nHMwe5k5EHHdx+dVnzN0ORTfU71enFTTjYeXAmpTc2/eop1bLs
         rO7cTeJsmCxRluOicziD5zN0eD29BTBNYzQ4FRRNh2gRYO06n8K+I13BsZZPK/ILHzlf
         o93FRcq51/UiCfOWKbNDTr34Xl+WKBdLpX1U3eu69EEkq2nBneW960YW0Mpyf7rzLEXN
         8++uTIlsZUA2I++Ltm9JbHpKW756FBG/QK127EbqpJCxuJE5MiqlW3IMybH/lzsyKePK
         kbr+UhBcDZs4GicCGyGP8qgmSmtjFG9c4kth5T5JXC9HtTsPiXmIuTUrkd9zvofFmIKt
         IC4g==
X-Gm-Message-State: ABy/qLaAeaLyBPKEV2TSB97Oau4W8NK8Sq4oYFnw/QHtINnp1d22gGeP
        0dPIj5lmQhAzDbsVYuEy+epFVQ==
X-Google-Smtp-Source: APBJJlG6cIh0+NK+0YeR7SfuoqonZAGEeuthpdDID4DzwxoaoD5X3hYugr3QF0BBgWxbMliuMZb+/A==
X-Received: by 2002:a1c:ed0d:0:b0:3fb:dd5d:76b with SMTP id l13-20020a1ced0d000000b003fbdd5d076bmr2073630wmh.7.1690562365223;
        Fri, 28 Jul 2023 09:39:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id z24-20020a7bc7d8000000b003fbc681c8d1sm7398747wmk.36.2023.07.28.09.39.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 09:39:24 -0700 (PDT)
Message-ID: <010713ed-1fe7-788c-868d-26149c21d7a7@linaro.org>
Date:   Fri, 28 Jul 2023 18:39:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3] dt-bindings: clock: versal: Convert the
 xlnx,zynqmp-clk.txt to yaml
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>,
        "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "git (AMD-Xilinx)" <git@amd.com>,
        "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
        "Simek, Michal" <michal.simek@amd.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "mturquette@baylibre.com" <mturquette@baylibre.com>
References: <20230724111843.18706-1-shubhrajyoti.datta@amd.com>
 <20230724-direness-syrup-14c0b50c8018@spud>
 <BY5PR12MB4902A95CD14D934BCF3B7C658103A@BY5PR12MB4902.namprd12.prod.outlook.com>
 <20230725-untaxed-footman-0c764cc9792f@spud>
 <BY5PR12MB49023F377CB6A3A1D7C78B7D8106A@BY5PR12MB4902.namprd12.prod.outlook.com>
 <20230728-slit-constrain-641d33f9f99b@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728-slit-constrain-641d33f9f99b@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 18:19, Conor Dooley wrote:
> On Fri, Jul 28, 2023 at 06:41:50AM +0000, Datta, Shubhrajyoti wrote:
>> [AMD Official Use Only - General]
>>
>>> -----Original Message-----
>>> From: Conor Dooley <conor@kernel.org>
>>> Sent: Wednesday, July 26, 2023 12:57 AM
>>> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>
>>> Cc: devicetree@vger.kernel.org; git (AMD-Xilinx) <git@amd.com>; linux-
>>> clk@vger.kernel.org; Simek, Michal <michal.simek@amd.com>;
>>> conor+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>>> robh+dt@kernel.org; sboyd@kernel.org; mturquette@baylibre.com
>>> Subject: Re: [PATCH v3] dt-bindings: clock: versal: Convert the xlnx,zynqmp-
>>> clk.txt to yaml
>>>
>>> On Tue, Jul 25, 2023 at 05:28:07AM +0000, Datta, Shubhrajyoti wrote:
>>>> [AMD Official Use Only - General]
>>>>
>>
>> <snip>
>>>>>>    clocks:
>>>>>>      description: List of clock specifiers which are external input
>>>>>>        clocks to the given clock controller.
>>>>>> -    items:
>>>>>> -      - description: reference clock
>>>>>> -      - description: alternate reference clock
>>>>>> -      - description: alternate reference clock for programmable logic
>>>>>> +    minItems: 3
>>>>>> +    maxItems: 7
>>>>>
>>>>> This doesn't seem right to me. The original binding requires 5 clock
>>>>> inputs, but this will relax it such that only three are needed, no?
>>>>> You'll need to set constraints on a per compatible basis.
>>>>>
>>>> Does below look good.
>>>
>>> I don't think that you tested it with < 5 clocks (hint, if you remove one of the
>>> clocks from your example below, dt_binding_check should fail).
>>> All the constraints need to move into the `if` bits AFAIU.
>>
>>
>> https://lore.kernel.org/all/20230720113110.25047-1-shubhrajyoti.datta@amd.com/
>> Here I had it in the if .
>> Then what I understood from below is that
>>
>> https://lore.kernel.org/all/745fccb0-e49d-7da7-9556-eb28aee4a32b@linaro.org/
>> it should be dropped from the if and added to the above.
>>
>> Maybe I am missing something.
> 
> (Background I got this mail once off-list and tried to make the
> binding's validation work)
> 
> With the current conditions, validation is completely broken. You can
> put in just 1 clock and 1 clock-name and dt-binding-check will pass. The
> only way I could satisfy it, 

I don't understand why you think 1 clock would work. The binding has
clear min/max constraints in top level and strict constraints per each
variant (through listing items). In my opinion this is correct, except
what I wrote - mismatched number of clocks for zynqmp (8 against 7).


> while keeping 7 as the maximum number of
> clocks, was moving the constraints into the if/else. My guess was that 7
> being fewer than the number of clocks in the items: list is part of the
> problem.

Best regards,
Krzysztof

