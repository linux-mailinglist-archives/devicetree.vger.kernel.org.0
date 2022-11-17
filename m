Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10E9862D43C
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 08:39:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234614AbiKQHjX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 02:39:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239112AbiKQHjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 02:39:05 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62103EF
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 23:39:04 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id a15so1614936ljb.7
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 23:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sUvLTegV+G0N0TmpvkICnkOYLNff/i43AeGnNT12OYU=;
        b=gryPTaF8AT0hCXfN1kMmwi+ySsQwvvIvlYuRYzHrQ/IK2QJGuFbSpUCV1pP/ULOLot
         oERFXBjRObHT1YrCkS1RJFZqSqPehCBoZGITYhSfpLMKfqOqX/DJOw98qKOoy5rrgO/t
         BtawxCVJR/Lcj9NNNhaCXTxcem0Kon7cxR6dBMsVf0cgUWj12Ut728op8xHTfMUvSazK
         PhUo1wfrXCfWE8FFkfFr04c5h6aw7mAW16QzqSSAywoVgct5JQcN4Rh6613DOPPIKy9K
         eAKx10HUxTfWOS4+7yZfg94K8aVWhxBN2EFPBcT9UQ85KVvsSMFpKiNZQKfRDp0iN4hQ
         64kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sUvLTegV+G0N0TmpvkICnkOYLNff/i43AeGnNT12OYU=;
        b=0YXni6dwN0B9o1bNhEfOLGLMmehLFaqxwurdXZbZWSzoReFSncYNNn9dLezsvFi5Bn
         okNxAiOOR+ogRG6r4NoKGQ4wHHXAz0KjgTKNHKAZkwX/6VNM7EAuAr1Lka0VV0DunVsO
         C7b5KDz4342KrmfxI28EQaDbd5z8s+vY/naZOIIlFHNUznipO9qfk6HApUZIWYuVkTbB
         zUx25H8RZ75phBTpUxAV6qxR4iA1vt2HLthaMZ/gS5SSImhOSDlUvaUZnCXqwbClrqN0
         MRK0ZnrN0cvvJ1c/CiQwrK+5LCoJM8iElyR/gtuYzSv+HGo5POdawGBN/UOumJ2vjuY/
         8Rcg==
X-Gm-Message-State: ANoB5pk7tYt6yjDYP4y5dPzwom9QX+4+MDWuqrLqVNieSJE5Hike0xEc
        jGuSyB2Li/vMlnkGuUd7204EHg==
X-Google-Smtp-Source: AA0mqf6b93e4ySz+tC7QI4L/A34/l+f9zG80cm3J+IE/QRvaO2GLyKn6z3cdHkLn8Myx7Lp0ZqgayA==
X-Received: by 2002:a2e:8e6f:0:b0:279:6df:38df with SMTP id t15-20020a2e8e6f000000b0027906df38dfmr573644ljk.211.1668670742793;
        Wed, 16 Nov 2022 23:39:02 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o2-20020a05651205c200b0049e9122bd0esm19821lfo.114.2022.11.16.23.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 23:39:02 -0800 (PST)
Message-ID: <6dc67c30-d9c3-5906-a2bc-263ac83df051@linaro.org>
Date:   Thu, 17 Nov 2022 08:39:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] dtbindings: clock: Add bindings for Renesas PhiClock
To:     Alex Helms <alexander.helms.jy@renesas.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        sboyd@kernel.org, mturquette@baylibre.com, geert+renesas@glider.be
References: <20221115192625.9410-1-alexander.helms.jy@renesas.com>
 <20221115192625.9410-2-alexander.helms.jy@renesas.com>
 <e9fd112f-0fd2-e833-8687-9a256c307842@linaro.org>
 <9231404a-85b2-9a9f-f040-f97615bf8ec0@renesas.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9231404a-85b2-9a9f-f040-f97615bf8ec0@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2022 21:11, Alex Helms wrote:
>>> +  clocks:
>>> +    const: 1
>>> +
>>> +  compatible:
>>> +    enum:
>>> +      - renesas,9fgv1006
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  renesas,ss-amount-percent:
>>> +    description: Spread spectrum absolute amount as hundredths of a percent, e.g. 150 is 1.50%.
>>
>> What? If this is percent then it cannot be hundreds of percent. Percent
>> is percent. Use appropriate units.
>> https://jpn01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fdevicetree-org%2Fdt-schema%2Fblob%2Fmain%2Fdtschema%2Fschemas%2Fproperty-units.yaml&amp;data=05%7C01%7Calexander.helms.jy%40renesas.com%7C9c13a32848f3434e217108dac7ab69f6%7C53d82571da1947e49cb4625a166a4a2a%7C0%7C0%7C638041836281252737%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=6MULpJhPyyjWSo1SvPCrz6KidE1VEtiiNYk1O5wS1vI%3D&amp;reserved=0
>>
> 
> Values like 0.5% or 2.5% must be representable which is why this
> property is an integer of hundredths of percent. How else would you
> represent a non-integer percent?

With an appropriate unit.

> 
>>> +    minimum: 0
>>> +    maximum: 500
>>> +
>>> +  renesas,ss-modulation-hz:
>>> +    description: Spread spectrum modulation rate in Hz
>>> +    minimum: 30000
>>> +    maximum: 63000
>>> +
>>> +  renesas,ss-direction:
>>> +    $ref: /schemas/types.yaml#/definitions/string
>>> +    description: Spread spectrum direction
>>> +    enum: [ down, center ]
>>> +
>>> +required:
>>> +  - clock-names
>>> +  - '#clock-cells'
>>> +  - compatible
>>> +  - reg
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    ref25: ref25m {
>>> +      compatible = "fixed-clock";
>>> +      #clock-cells = <0>;
>>> +      clock-frequency = <25000000>;
>>> +    };
>>
>> Drop, it's obvious, isn't it?
>>
> 
> I disagree, this may be obvious to someone familiar with how clocks in
> the device tree works but not long ago it was entirely new to me and
> examples like these in the dt schemas were very helpful in getting the
> device up and running. There are several other bindings that define
> external crystals and reference clocks in this way.

It is obvious because it is the same for every device being a consumer
of external clock. There is no point to duplicate non-device related
examples in every device binding.

Best regards,
Krzysztof

