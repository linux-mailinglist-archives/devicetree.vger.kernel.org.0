Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A53165BCB58
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 14:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbiISMAR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 08:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbiISMAQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 08:00:16 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52883A464
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:00:15 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id k10so46505252lfm.4
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=BXA1S0OHZDiqLxo5rCfev/jbKQNLQJ64NaCQy7L3c5Y=;
        b=aFKD8Ist0LhFZijNg3Xuu49VB7U21+NeHemKjpjq1jXtBvA52h3hKUxC4xte7hNo41
         NIR5WJmT74Qqbmyh83VA/dBPzhLMQmr32+s7UXkBqyOTOCY+MxsZzdcaEl3r5QEzj7Qj
         kNCrRc0HBZzl4bsrnYMiz6LBKSUOiCueQQz++5up8K2NysdABqfNMzx5JPE7Cu+OgP6M
         hJZdLCA8uExhKK1LghqCqooZfUhOBQp1ENtmnRszJsVCOkhEnDhmI7l5Bpq65n7O8CnA
         abcoY3lQbZwy97eZx/qCbwPQIy/n/8FUioLPC+0AFij09wa5DlDxZ7lsmmCIUl76M9M/
         7OYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BXA1S0OHZDiqLxo5rCfev/jbKQNLQJ64NaCQy7L3c5Y=;
        b=g4CMGqY+OmksyyY5PrSwVNyVv4tyJWH9vdwBh6KQJuJovrBzmKmMW3kA2PNlliWBe0
         KWc81dH0UVdJnve2ldyqK2xY46XxSPG0PajvuX1xySaxXwH8FJgw8zxqYBpYHRYfCAJ8
         cBGeDyoewyljcqM1yHCGXMsoWJ2YkczFEg4gvbFVzqjyXwfPeTkaiMReP3erp7Q6GqPz
         Fwc/NPYS+nXG0TU0K2J1Qb8XQj4zSxjPN/Rpp/QW0CGSjhvllorXBmi3Lohq5vZD67bF
         Q/u/H17xedYF0eNQn5Uwf1spGEB8MzZzJU0yG29BfVEZHB+af940lTO0RoJKCmuM5gZK
         nVPw==
X-Gm-Message-State: ACrzQf0vDr2snWbm0VMYkrA8XQsGNclVqfL4c8h36kmYuFDB1ek0JvQF
        69qE4AbXkZmQK5ar/xP+xVxLVw==
X-Google-Smtp-Source: AMsMyM6GU83pvFZhQwbfGPnq17fPZAvClP2s9swUcmYL3YDe15DIzyoTaJsmhqC+guU7Xo6lRKz6mQ==
X-Received: by 2002:a05:6512:1095:b0:49d:1241:a314 with SMTP id j21-20020a056512109500b0049d1241a314mr6655841lfg.595.1663588813678;
        Mon, 19 Sep 2022 05:00:13 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b13-20020a056512070d00b0049464d89e40sm5157930lfs.72.2022.09.19.05.00.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 05:00:13 -0700 (PDT)
Message-ID: <036a6aa7-43f6-409a-38d5-098b838dc2ca@linaro.org>
Date:   Mon, 19 Sep 2022 14:00:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: migrate mt7621 text bindings to
 YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        sr@denx.de
References: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
 <41c7a2a1-86b2-289b-8507-6f3d462aa1ed@linaro.org>
 <CAMhs-H9aT1+BNR6fudMiZ+6xWevqkMm=XMjgwHDD6c6YXwn-Ng@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMhs-H9aT1+BNR6fudMiZ+6xWevqkMm=XMjgwHDD6c6YXwn-Ng@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 13:49, Sergio Paracuellos wrote:
> Hi Krzysztof,
> 
> Thanks for the review.
> 
> On Mon, Sep 19, 2022 at 1:20 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 17/09/2022 06:27, Sergio Paracuellos wrote:
>>> SoC MT7621 I2C bindings used text format, so migrate them to YAML.
>>>
>>> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
>>> ---
>>
>> Again, do not base your patches on something old.
> 
> I will take it into account from now on. Since it was just an addition
> and removal of a file I thought it was not important. So, I guess some
> address I am using in CC is not listed in the MAINTAINERS file now??

You keep cc-ing my address which was changed in mainline around half a
year ago. Patches end up in different mailbox.


(...)

>>
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  clock-names:
>>> +    const: i2c
>>
>> Why adding this?
>>
>> You need to describe in commit msg all deviations from pure conversion.
> 
> Looking into the users of this binding I added all the stuff I found
> in dts nodes. So I think it is preferred to just make a pure
> conversion and set unevaluatedProperties to true?

No, unevaluatedProperties must stay false. As I said:
"You need to describe in commit msg all deviations from pure conversion."

I did not say preferred is to make pure conversion...

Best regards,
Krzysztof
