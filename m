Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19CEA5EE3E9
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 20:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233404AbiI1SIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 14:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234186AbiI1SIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 14:08:17 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37444102502
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 11:08:16 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id x29so15263942ljq.2
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 11:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=dz47N9d43oVIDQOrhiG/PtfjNHz7S7woh4wQVpU2xwE=;
        b=oDc3AIyuYdhxjFfYM7g87t9+40ZKmtqXS04ytcQNYm06KN0ZCEhDZtz0wu9a2iLxU0
         tTBTY5BZcZNhUVZzGGSAgUCz3EfiJA9yssljOwkL5g+pFw1eKp5CRVrY54J4ThiO+Z6N
         AD6J4qpLMh4W65tiDTSrl6hqa2fwYEd1hqmsQbJnGz/3Dl/zhpjhM0ORLochuSOBXoNO
         nM89jDy0TJPTwzygSDE9brfnSeEr2ccUnZv9LijIm+8d4AiD9VDa6lUvVxZPvlTc6Ary
         PGmwezJ7qGOZEfbGOuloU6dr/wGjfvlRB+iS9zrmRWGbB3PglD+wE6yuseYfTGba0Ow2
         DjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=dz47N9d43oVIDQOrhiG/PtfjNHz7S7woh4wQVpU2xwE=;
        b=JwXB+hxZ2ptqb42GmyDoGmvL0KSIQSx91SLu/t3E+DyInnthRnxzIKhYdRGjeUsEvV
         Az5ksjb9hyM5JyGuLpSPxyDERaV6rlxbDJ3ey9JSZ8mIjDq3qcjhQImeQTmwPMX62bgX
         nibOAQfM/hXewvETHo3nkYWVz5LU5d+qnGQX1d6LnMDZXyvEy+LBRmxJJsCv4KAJ9A3q
         TkgdETsBF6X5m0zRxO//oh7ERwXGxNeIXcoZDx1piv6Z0N91ff3kwSR51aXb5YszmTs2
         MuN8+/4KU8dQRF9yWDaXW7Hf7hL1ij7Tpctxm0ksEvjEJhjMDP/Tm21ouADp4XLiRQpq
         yeeA==
X-Gm-Message-State: ACrzQf0Kc8hMoZgcNNRgF8S1sueibK6ej2LyYfDJRrlopLYb5VYeDsBh
        gpbXRC7cYfH2YnPxrOrSbViBAw==
X-Google-Smtp-Source: AMsMyM50qlpmjWeaPPeYAEU0LVKsZs3urOezw0hiFOvIYvc2SiLCI3y2ptVXbtWEbEUan4bQKmLVVg==
X-Received: by 2002:a2e:bd84:0:b0:261:e43c:bac3 with SMTP id o4-20020a2ebd84000000b00261e43cbac3mr12670372ljq.198.1664388494581;
        Wed, 28 Sep 2022 11:08:14 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t12-20020a2e954c000000b00268335eaa8asm508314ljh.51.2022.09.28.11.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 11:08:14 -0700 (PDT)
Message-ID: <9cdb0eb8-db72-a77b-e377-1103e12c2c85@linaro.org>
Date:   Wed, 28 Sep 2022 20:08:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] dt-bindings: memory-controller: st,stm32: Split off MC
 properties
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20220926225536.548139-1-marex@denx.de>
 <846bc515-bdda-6022-0611-daaa9a632e64@linaro.org>
 <e787f5b1-88e6-375c-b9e7-22db346c27be@denx.de>
 <393eb833-0dcd-bf6c-49f3-ab8d60e3a8e5@linaro.org>
 <7adc3299-5dd6-fd43-fd5e-c22d150a328a@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7adc3299-5dd6-fd43-fd5e-c22d150a328a@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 19:44, Marek Vasut wrote:
> On 9/28/22 19:24, Krzysztof Kozlowski wrote:
>> On 28/09/2022 19:01, Marek Vasut wrote:
>>> On 9/28/22 09:10, Krzysztof Kozlowski wrote:
>>>
>>> Hi,
>>>
>>> [...]
>>>
>>>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>>>> index a1f535cececcc..49243f447eb90 100644
>>>>> --- a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>>>> +++ b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
>>>>> @@ -49,143 +49,6 @@ patternProperties:
>>>>>      "^.*@[0-4],[a-f0-9]+$":
>>>>>        type: object
>>>>>    
>>>>> -    properties:
>>>>> -      reg:
>>>>> -        description: Bank number, base address and size of the device.
>>>>> -
>>>>
>>>> To be equivalent (and similar to SPI peripherals and controllers) this
>>>> should reference st,stm32-fmc2-ebi-props.yaml as well.
>>>>
>>>> After such reference, you can add here unevaluatedProperties:false
>>>> (could be same or new patch as it is not related to actual split).
>>>
>>> I don't think I understand. I don't see any ref from the controller node
>>> to its props in various SPI controllers (even if that would make sense):
>>
>> Because they reference spi peripheral props...
>>
>>>
>>> next$ git grep qspi-nor-peripheral-props.yaml
>>> Documentation/devicetree/bindings/spi/cdns,qspi-nor-peripheral-props.yaml:$id:
>>> http://devicetree.org/schemas/spi/cdns,qspi-nor-peripheral-props.yaml#
>>> Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml:  -
>>> $ref: cdns,qspi-nor-peripheral-props.yaml#
>>>
>>> No ref to cdns,qspi-nor-peripheral-props.yaml in
>>> Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
>>>
>>> next$ git grep tegra210-quad-peripheral-props
>>> Documentation/devicetree/bindings/spi/nvidia,tegra210-quad-peripheral-props.yaml:$id:
>>> http://devicetree.org/schemas/spi/nvidia,tegra210-quad-peripheral-props.yaml#
>>> Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml:  -
>>> $ref: nvidia,tegra210-quad-peripheral-props.yaml#
>>>
>>> No ref to nvidia,tegra210-quad-peripheral-props.yaml in
>>> Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
>>
>> All your examples do it - reference spi peripheral props.
>>
>> As I said, your change is now not equivalent. If any other device
>> appears in st,stm32-fmc2-ebi, the schema won't be applied.
>>
>> Let me put it that way: you must have there additionalProperties:false
>> or unevaluatedProperties:false. Once you add it, you start seeing errors
>> leading to missing ref.
> 
> Is what you are trying to convey that 
> Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml does ref 
> spi-controller.yaml# and that one does patternProperties: ref: 
> spi-peripheral-props.yaml ?

Yes.

> 
> So the fix for V3 should be the following ?

patternProperties:
  "^.*@[0-4],[a-f0-9]+$":
    type: object
    $ref: st,stm32-fmc2-ebi-props.yaml
    unevaluatedProperties: false


Best regards,
Krzysztof

