Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4CDC68882D
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 21:20:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbjBBUUY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 15:20:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230504AbjBBUUX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 15:20:23 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BCB54390D
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 12:20:21 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id l8so2332205wms.3
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 12:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gxuF7ikYyogA9U/SKS/lBdTNIB/rmyK+rN+ghcq+5Gg=;
        b=YtcfjKeQe4R8XxIviX07Q8WBX8Vi0UnVCO48+c//4YAsQV9RQjg6rgRJThl7jIUyr8
         w3UiAFdbUApX6YUAgYwOMLsxRVjN9N5Cjfznr/bUmB89iLPXgzGZ4/FhdNN7CuUy7G4z
         PPLE/jnKsatmlXXizaeFSBnBs4INJjBtmkbM841tUsmceAXwr4P9NIsVITpN3S92aV1a
         qkuzitecsVTc5Y/EjKg2wUs0PQJxxlKE269TmKXxh++Dj84tqD/EnPwksUXs7oocQjE3
         GqY7E9lmK386FA9fOLtztO6WqetOYbXG62+fIM3+xabetyx4hOM2+WEPw1IFdXfD3016
         zcpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gxuF7ikYyogA9U/SKS/lBdTNIB/rmyK+rN+ghcq+5Gg=;
        b=wXEuM7edSrYIDawgtSyzqN6oK9y8bYiliOB1qbwaQWZiuSXmT+4ApzgbJPgxQwwfKM
         7si5PKyMNZIx+cdzTqry+fuWEXhZla3ZanF9rP0A5vCNbjC3NgeRBhUsuAPsWGmvNPJH
         Rko8o83btq49AOQKnw/LOwBn2Kj4t7LOxnxtNO/+MMIMa2aZjeoODzsX0mR0VgcUoLjc
         9taVLiix5yLVT4gDtef0JYzQ5Rjdam0HoTnEiF8Ae8crNeDyUdrwLu7uchT27XCqp2n+
         mSlOq4MzSD4/pQfvgV2DcwFH3hvlE3erMjIIZu4ThOl5w2LPd5XlCikb6rcvQ6QCPc5y
         JMNQ==
X-Gm-Message-State: AO0yUKWEr5KGDhHH54LsC39v/C19p/zHUWqXIusvmkBmmJBLjCMmt+9S
        y8fuS5m98L5q+IYt2h10vroNbEaSk9zcCpAt
X-Google-Smtp-Source: AK7set/6HicccIrBPUPcG8gnvN9JgVUga6wXuJJFuLIZEau8lXFbwLo27g+SR7h6J2MzpYOmbv8/Jg==
X-Received: by 2002:a05:600c:46c7:b0:3de:720c:10ff with SMTP id q7-20020a05600c46c700b003de720c10ffmr7511935wmo.40.1675369219258;
        Thu, 02 Feb 2023 12:20:19 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r13-20020a05600c35cd00b003dc5b59ed7asm837131wmq.11.2023.02.02.12.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 12:20:18 -0800 (PST)
Message-ID: <4111d645-478a-e55f-60bd-4ecbef077183@linaro.org>
Date:   Thu, 2 Feb 2023 21:20:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] Fixed the schema binding according to test
Content-Language: en-US
To:     Ki-Seok Jo <kiseok.jo@irondevice.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230202090715.18384-1-kiseok.jo@irondevice.com>
 <ac140660-0df0-8b43-3585-17511a280830@linaro.org>
 <SLXP216MB0077A1B1F744D74A5B338F0C8CD69@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SLXP216MB0077A1B1F744D74A5B338F0C8CD69@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/02/2023 10:55, Ki-Seok Jo wrote:
>> Thank you for your patch. There is something to discuss/improve.
>>
>> On 02/02/2023 10:07, Kiseok Jo wrote:
>>> Modified according to the writing-schema.rst file and tested.
>>
>> Use imperative, not past tense (Fixed->Fix, Modified->Modify).
> 
> Okay. I got it. I'll do that when I rewrite it. Thanks.
> 
>>>
>>> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
>>
>> Use subject prefixes matching the subsystem (which you can get for example
>> with `git log --oneline -- DIRECTORY_OR_FILE` on the directory your patch
>> is touching). Therefore it should be:
>> "ASoC: dt-bindings: irondevice,sma1303: Rework binding and add missing
>> properties"
>>
> 
> Oh, thank you for good information. I feel like I still lack a lot.
> I'll apply it. Thanks!
> 
>>
>>> ---
>>>  .../bindings/sound/irondevice,sma1303.yaml    | 46 +++++++++++++++++--
>>>  1 file changed, 43 insertions(+), 3 deletions(-)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
>>> b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
>>> index 162c52606635..35d9a046ef75 100644
>>> --- a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
>>> +++ b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
>>> @@ -10,22 +10,62 @@ maintainers:
>>>    - Kiseok Jo <kiseok.jo@irondevice.com>
>>>
>>>  description:
>>> -  SMA1303 digital class-D audio amplifier with an integrated boost
>> converter.
>>> +  SMA1303 digital class-D audio amplifier  with an integrated boost
>>> + converter.
>>>
>>>  allOf:
>>> -  - $ref: name-prefix.yaml#
>>> +  - $ref: dai-common.yaml#
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - irondevice,sma1303
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  '#sound-dai-cells':
>>> +    const: 1
>>> +
>>> +  i2c-retry:
>>> +    description: number of retries for I2C regmap.
>>
>> Why do you need this? Why this fits the purpose of DT (or IOW why this
>> differs between boards)?
> 
> When working with drivers on mulitiple platforms, there were cases where
> I2C did not work properly dpending on the AP or setting.
> So I made it possible to set a few retry settings, and then check or do
> other actions. Retry is performed only when I2C fails.
> 
> And each device may have a different pull-up resisor or strength,
> so there may be differences between boards.

None of I2C drivers need it (except SBS battery), so it should not be
needed here. If you have wrong pin setup, this one should be corrected
instead.

> 
> Could that property be a problem?
> 
>>> +    maximum: 49
>>> +    default: 3
>>> +
>>> +  tdm-slot-rx:
>>> +    description: set the tdm rx start slot.
>>
>> Aren't you now re-writing dai-tdm-slot-rx-mask property? Same for tx below.
>>
> 
> It can be the same as audio DAI's tdm slot, I think but there are cases
> where it is set differently, so I omitted it separately.

Unfortunately I still do not understand why do you need it. Use generic
DAI/TDM properties.

> 
>>> +    maximum: 7
>>> +    default: 0
>>> +
>>> +  tdm-slot-tx:
>>> +    description: set the tdm tx start slot.
>>> +    maximum: 7
>>> +    default: 0
>>> +
>>> +  sys-clk-id:
>>> +    description: select the using system clock.
>>
>> What does it mean? Why do you need such property instead of clocks?
> 
> This can receive an external clock, but it can use internal clock.
> Should I write all the clock descriptions in case?

How do you configure and enable external clock with this property? I
don't see it. If the device has clock input, this should be "clocks". If
it is omitted, then internal clock is used.



Best regards,
Krzysztof

