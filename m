Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B983A699203
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbjBPKof (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:44:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbjBPKod (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:44:33 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F230C54551
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:44:13 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id qw12so4156004ejc.2
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kAeO7LNS/haa+vteM/1xuDnjwbcezFgkB2yPBvYuG9o=;
        b=vHKPZZc7dMt/oZ8Hyn8CnfnRp+oaHTGdYYztfha3aB5aZdfeqo6epo7Kw+XANzQaiK
         998cuNeJwYorM0k7lszHb28JbPoGJjQGARIxy+n4cYE02TJft12LwrPNAQC9z2A37aUI
         s4TT9ggLIC4vSDrSq2cVamnijQ+wRD9qDglCTVukpSsbEDJbF4IGBzFO45/wl3IyFZVp
         dFQObj0jkA4gkklKtP8rD8CtZV1kpZK2xlJlfvR3FCIl6aV6g2nkVr/BOfdN/ktJLUnJ
         au323gu7WhODBH3PK5w2JzJMJQS+Q3oTkQf7oTwUHQGMVTyGrc0UP9piJZuk7O2J2Azr
         TZzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kAeO7LNS/haa+vteM/1xuDnjwbcezFgkB2yPBvYuG9o=;
        b=3O20EY8oPEF23h2swpndmdqxJr71d1NRb0xdRbhstsBzQ0q1DNbjdcf42PTFX8e/ME
         sC32NCqCxwcUL12hPxoB6qHn9Sh5VbstSwrWgzoG4KnJWYR+52/wLZZusNV0q5AWuWx4
         HD9WzIjRUv1NbRSqgLD3Cu3ktVeJne5a8WHjlRkbw3do4XwhvpthAd39jXAJ2I8G8TVc
         xgHZky2ARX9rpmcjtF76lVsQzoKFdOYAmkXo2Xrz0pkNEXr0TbPlcGGGGZzk0ta4foJI
         8vH30KKOH1gRgzkeEVdHrYtF31FsYePqNhJ64UQd8NSyZAUAmTKEOPnJvNTbRlmpBZ86
         iU5g==
X-Gm-Message-State: AO0yUKULUPTxS/HDoys1YlONO7erc5OjupFQwsskFRIwCZNXl0LULbzx
        KcQ7oLsEM5GggfMzrSPAEHRJ4Q==
X-Google-Smtp-Source: AK7set+Dcr4QIHZy7seJx+QjQB2BainiaUbPbSnQo765nWKDQHrz3UG8xsMgAuo4fKOCIiC3KFgjxA==
X-Received: by 2002:a17:907:8c89:b0:8b1:781d:f9a4 with SMTP id td9-20020a1709078c8900b008b1781df9a4mr172717ejc.21.1676544238957;
        Thu, 16 Feb 2023 02:43:58 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id oq15-20020a170906cc8f00b008b165948da6sm490473ejb.101.2023.02.16.02.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:43:47 -0800 (PST)
Message-ID: <a235fecf-bfda-6d9d-f16f-31e1b2e3bf8f@linaro.org>
Date:   Thu, 16 Feb 2023 11:43:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/3] ASoC: dt-bindings: sama7g5-pdmc: add
 microchip,startup-delay-us binding
Content-Language: en-US
To:     Claudiu.Beznea@microchip.com, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lars@metafoo.de, perex@perex.cz,
        tiwai@suse.com, Nicolas.Ferre@microchip.com,
        alexandre.belloni@bootlin.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230214161435.1088246-1-claudiu.beznea@microchip.com>
 <20230214161435.1088246-3-claudiu.beznea@microchip.com>
 <485d74fe-bfb5-c55e-724f-304476624abd@linaro.org>
 <954cdf90-c41a-4e21-31e0-88a0baf26065@microchip.com>
 <fd2f372f-4a1c-72c0-574d-1d5ef99dbdbc@linaro.org>
 <8a2132f6-9745-5ef2-724e-14e76fc456f0@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8a2132f6-9745-5ef2-724e-14e76fc456f0@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 11:41, Claudiu.Beznea@microchip.com wrote:
> On 16.02.2023 12:18, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 16/02/2023 11:15, Claudiu.Beznea@microchip.com wrote:
>>> On 16.02.2023 12:04, Krzysztof Kozlowski wrote:
>>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>>
>>>> On 14/02/2023 17:14, Claudiu Beznea wrote:
>>>>> Add microchip,startup-delay-us binding to let PDMC users to specify
>>>>> startup delay.
>>>>>
>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>>>>> ---
>>>>>  .../devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml   | 6 ++++++
>>>>>  1 file changed, 6 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml b/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml
>>>>> index c4cf1e5ab84b..9b40268537cb 100644
>>>>> --- a/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml
>>>>> +++ b/Documentation/devicetree/bindings/sound/microchip,sama7g5-pdmc.yaml
>>>>> @@ -67,6 +67,12 @@ properties:
>>>>>      maxItems: 4
>>>>>      uniqueItems: true
>>>>>
>>>>> +  microchip,startup-delay-us:
>>>>> +    description: |
>>>>> +      Specifies the delay in microseconds that needs to be applied after
>>>>> +      enabling the PDMC microphones to avoid unwanted noise due to microphones
>>>>> +      not being ready.
>>>>
>>>> Is this some hardware delay? Or OS? If OS, why Linux specific delay is
>>>> put into DT?
>>>
>>> It's the delay used in software workaround that IP needs to filter noises.
>>
>> Then this sounds like OS? Linux related properties usually do not belong
>> to DT.
>>
>>> The IP is not fully featured to do this kind of filtering on its own thus
>>> this software workaround. This delay may depend on used microphones thus
>>> for different kind of setups (PDMC + different microphones) I introduced
>>> this in DT.
>>
>> I understand your driver needs delay and I am not questioning this. I am
>> questioning why this is suitable for DT?
> 
> Because that delay may depend on the microphones that are used with PDMC.
> Different boards may come with different microphones, thus the default
> delay may not fit to fully filter the noise. Due to this I chose to add it
> in DT.

Ah, ok, that's good explanation. Thank you.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

