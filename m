Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 390226DE24B
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 19:17:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbjDKRRq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 13:17:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbjDKRRc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 13:17:32 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 508FD7296
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 10:17:20 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id qa44so21918964ejc.4
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 10:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681233438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f3NLFlTFXQ8L7LUpA/rzLmOr+Nhbuct/tCMEekGX4hs=;
        b=lzVj3UtqYZAKqhPsvbMZAll1i6qMP3h0Bv0VSeLWKTmnxmU7/bkWc79ZZy1OyLymhW
         sFbBjEjXIxxh+o9KdXMpQ0d7iNJ5pBjVmWv2W2QlE4uXdOjKxiogylN+f3o5Tqwa7uxd
         lBmIK2SNX3+HJMoFESkDG+b6LnrqWK9du/pPUbkZmjYcq7XXWTJe8fi3s8lWMHy0ODg+
         NFJrxry6ihOKl3rq5vRT6jrg3zo0RPagu4plQ4Q+oeF5fT8sAD/O8oYwkMDW/ngc3NJV
         vsYNnoHySoWH+SxTeomH92DnHSo3IREXr1PGec5he7AoY+qOLg2W2H/o/ygosHazHlvD
         eROQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681233438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f3NLFlTFXQ8L7LUpA/rzLmOr+Nhbuct/tCMEekGX4hs=;
        b=qIBHaC/vR1lZIQzjpK0kzQhf5jUcNJ/dyfkwcmTtRnl94j9D0jlGMGAAAhe/uf0XqJ
         M5L4Mp1zQjAYzeA0mKPMIW8SC4IatU0xS9zXEXzbTy8QaRiWbHXx99DbkZw6ZhfcmsSX
         mp9A9cDnHsFgSHmmC2djoUng25x9mqwHdIj7eV/wfdc54GN6tteNsUeYEzevrwefSfQe
         1trHhY0FW9UEu+wKR1pn2oiqPTod3hDmRx1OtZj0PPlseCdIJcN7oahgA+EIPB5dp+gP
         fWeV9hXkNybHVDycUaoAwo2SY9z4RiUagbo87OR6sE8yt5o4QlMhfDjKEYNYIMUi1+a5
         1X9w==
X-Gm-Message-State: AAQBX9chwGnrDUj14iWS4nVFfhhkMX03dRpFmk0tvv5qShp12ya5FTnn
        okv2hh88xCi6XMllBpacf+bFvA==
X-Google-Smtp-Source: AKy350Zsgz8RMXWnUNnhZD32QceyI5jdgByDvpV3hdoOpev7un4pmMzNwZvhVrgMQleDzMz7EHI6qw==
X-Received: by 2002:a17:907:a44:b0:930:3916:df1d with SMTP id be4-20020a1709070a4400b009303916df1dmr14552079ejc.0.1681233438190;
        Tue, 11 Apr 2023 10:17:18 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f1da:c117:3657:c8a? ([2a02:810d:15c0:828:f1da:c117:3657:c8a])
        by smtp.gmail.com with ESMTPSA id ss25-20020a170907c01900b0093e261cc8bcsm6354397ejc.58.2023.04.11.10.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Apr 2023 10:17:17 -0700 (PDT)
Message-ID: <0255ff85-71e2-2174-2188-82899b6e9678@linaro.org>
Date:   Tue, 11 Apr 2023 19:17:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/2] dt-bindings: firmware: arm,scmi: support parameter
 passing in smc/hvc
Content-Language: en-US
To:     Nikunj Kela <quic_nkela@quicinc.com>, sudeep.holla@arm.com
Cc:     cristian.marussi@arm.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230409181918.29270-1-quic_nkela@quicinc.com>
 <20230409181918.29270-2-quic_nkela@quicinc.com>
 <5d264f46-b9e8-62ec-9bce-9d666fd1eaa8@linaro.org>
 <74551421-56df-73d3-3f4d-1708768e207a@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <74551421-56df-73d3-3f4d-1708768e207a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2023 19:33, Nikunj Kela wrote:
> 
> On 4/10/2023 10:20 AM, Krzysztof Kozlowski wrote:
>> On 09/04/2023 20:19, Nikunj Kela wrote:
>>> Currently, smc/hvc calls are made with smc-id only. The parameters are
>>> all set to zeros. This patch defines two optional device tree bindings,
>>> that can be used to pass parameters in smc/hvc calls.
>>>
>>> This is useful when multiple scmi instances are used with common smc-id.
>>>
>>> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
>>> ---
>>>   .../devicetree/bindings/firmware/arm,scmi.yaml   | 16 ++++++++++++++++
>>>   1 file changed, 16 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
>>> index 5824c43e9893..08c331a79b80 100644
>>> --- a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
>>> +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
>>> @@ -115,6 +115,22 @@ properties:
>>>       description:
>>>         SMC id required when using smc or hvc transports
>>>   
>>> +  arm,smc32-params:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +    description:
>>> +      An optional parameter list passed in smc32 or hvc32 calls
>>> +    default: 0
>>> +    minItems: 1
>>> +    maxItems: 6
>>> +
>>> +  arm,smc64-params:
>>> +    $ref: /schemas/types.yaml#/definitions/uint64-array
>>> +    description:
>>> +      An optional parameter list passed in smc64 or hvc64 calls
>>> +    default: 0
>>> +    minItems: 1
>>> +    maxItems: 6
>> These do not look like hardware properties and the fact that you need
>> two properties for the same also points that you tied it to specific SW
>> interface.
> 
> This is certainly not the H/W property but then smc-id is also not H/W 
> property either

Yep, maybe it should be also removed?

> 
> but that gets passed via DTB. I could use the same property for both 
> however I wasn't sure
> 
> which datatype should be used, uint32-array/uint64-array. Moreover, I 
> thought if users are
> 
> passing parameters, they better know which SMC convention they are using 
> hence used two
> 
> explicit properties.

Does not solve my concern.

> 
>> Why this should be board-specific? Actually better question - why this
>> should be fixed per board? Doesn't my software want to have different
>> parameters, depending on some other condition?
> 
> Not sure I follow, I didn't say this is board specific.

But putting it in DTS which is customized per board is then board specific.

>  People can use 
> the parameters to pass
> 
> whatever their S/W demands. SMC/HVC calls are made by passing parameters 
> which is what this patch is enabling.

I cannot follow your paragraphs. You cut middle of sentence.

Anyway, if this is to match whatever their SW demands, it is not
Devicetree property.

> 
>>
>> You also did not provide any DTS user for this, so difficult to judge
>> usefulness.
> 
> The work is still on going and we will push the dts in few months, 
> however that shouldn't stop
> 
> making changes in advance.

With a proper DTS maybe it would be easier to convince us why SW
interface should be put to Devicetree... but sure, we can skip DTS and
answer is - this looks like SW property and not a DT.

Best regards,
Krzysztof

