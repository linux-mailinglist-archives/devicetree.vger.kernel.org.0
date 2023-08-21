Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E4267829B7
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 15:00:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235155AbjHUNAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 09:00:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235150AbjHUNAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 09:00:22 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E0B5D1
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 06:00:20 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fe1b00fce2so4833008e87.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 06:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692622819; x=1693227619;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AXD55IpQ28QwNaboUgeu7XR1+/pauVVuQAUGdvfKMhg=;
        b=PfDpAVZeL5Osr2mXsCnoU8sAien8YM57S73JKyGLVrczOdwKCq6co6S1KMUtuP+dkn
         POp7vgS9/HOUDbWPRbw2zxnoLGCMnJ7sETSnv1yoOqto52+k/PEtsiFQKHzrfRW3nxa7
         eGrCIlUkbBOehS7CqPTD2uG/ErHoovAN1KV5qVSiea8D4SQbEZhtC/lRaBT76TTjPchi
         YEsx8Xxp/QWge+VbHrsFXHHGPS+TqEfMeN6OzuZiEV7ygP2zFTq77N8OCmd+i6qP+PRq
         +RuLIo4xsOJFF8TN7pFHb5Rqc1Devupztcswb5VTnS7Xc1a1Thfe11rX+RRwA8otmOcs
         E2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692622819; x=1693227619;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AXD55IpQ28QwNaboUgeu7XR1+/pauVVuQAUGdvfKMhg=;
        b=H4DRKhRG6j5ADOVbUlCCYr/7uUNKX64eW+nfdcak/AvKHypF3XWUp3V/DJNU7SeY4o
         TmQdmacrmeywmcR5dnAr5WbQJ+O2Qit+H7C8i0J7Gzl00+oI3yqIB2QvoVORPUt7+xNj
         LN6e7HI5WIRYdCp580+qbYbRPhWcfhvRNuHlT++3ily9J1LpvN8NHT4BUKohbPTnvLDj
         Xb60Xci1jGxlo0qm2hZ2wWfqwg5PCWp6Sg3nsGQQxvZi666vyy07E2AhyFM8QnR/cRA/
         I8vg3hcyQMxiy+wdGsV/JTlyQ5MIo8kdYsA0V8Fua/XpDeA1IOe6AJwOHkHUaZDOABxd
         tQlw==
X-Gm-Message-State: AOJu0Yx4l/Wfrm5OF/wcHuaDQguibzQ1Z1RqHkRYQnXVDr7A+tv3M2C2
        Xf60PPIgBMHcpm8Ng6BZApo3yA==
X-Google-Smtp-Source: AGHT+IEso7aKT7I1eVkoH1fesBsxFN+42Ir0Pvzb2Q+oH9fL/5fQI8T3LD4xRCNGC7DIcrEbuBwr3w==
X-Received: by 2002:a05:6512:3d8a:b0:4ff:793f:fbf8 with SMTP id k10-20020a0565123d8a00b004ff793ffbf8mr5838272lfv.51.1692622817567;
        Mon, 21 Aug 2023 06:00:17 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.107])
        by smtp.gmail.com with ESMTPSA id b7-20020a170906d10700b00992d122af63sm6495471ejz.89.2023.08.21.06.00.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 06:00:15 -0700 (PDT)
Message-ID: <697712da-bff9-4621-28ac-9c9f68a76e43@linaro.org>
Date:   Mon, 21 Aug 2023 14:00:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3 11/50] dt-bindings: crypto: add sam9x7 in Atmel TDES
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Varshini.Rajendran@microchip.com, herbert@gondor.apana.org.au,
        davem@davemloft.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230728102442.265820-1-varshini.rajendran@microchip.com>
 <09bd1388-02aa-32c7-319e-d7150a0f3e9c@linaro.org>
 <1ec901d0-44c2-1d28-5976-d93abfffee67@microchip.com>
 <37782447-43c7-50f9-b9b4-5fbca94ce8c6@linaro.org>
 <96033a59-a2ea-c906-a033-84119c5783d7@linaro.org>
 <adeed0b2-e09b-78cf-ebfd-08d3949ca9ea@microchip.com>
 <57e9a9ff-26ed-62d1-91f8-cd5596f1c308@linaro.org>
 <5235260c-8fd6-2b2a-58b9-703191fff526@linaro.org>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <5235260c-8fd6-2b2a-58b9-703191fff526@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/21/23 13:10, Krzysztof Kozlowski wrote:
> On 21/08/2023 11:54, Tudor Ambarus wrote:
>>>>>> I am aware that there is no change in the crypto IP used. This patch is
>>>
>>> Actually, recent history showed us that it's not only the IP itself but
>>> its integration into final product that could have an influence on the
>>> behavior.
>>>
>>>>>> to add a SoC specific compatible as expected by writing-bindings
>>>>>> guideline. Maybe a bit more explanation in the commit description might
>>>>>> do the trick.
>>>>>>
>>>>>
>>>>> So you add a compatible that will never be used just to comply with
>>>>> the writing bindings guideline?
>>>>
>>>> How do you know that it is never going to be used? The guideline asks
>>
>> See
>> https://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git/tree/drivers/crypto/atmel-tdes.c?h=at91-dt#n1120
> 
> What's there? One compatible? How does it prove that it will not be
> used? It only proves that currently it is not used... And anyway this is

Correct, as of now the compatible was not used to determine the hw caps,
the capabilities were retrieved by checking at runtime a version
register. I'm against adding a compatible that will not be used, in this
particular case, defining "microchip,sam9x7-tdes" in the driver but
still solely relying on the runtime version register interrogation.
Unfortunately the commit message does not reveal any intention and from
there these emails changed. Maybe it's just a matter of personal
preference, so I'll stop commenting on this.

> just one implementation in one system. How can you possibly know all
> other possible implementations (other bootloaders/firmwares/systems)?
> One cannot. The guideline is there for specific reason.
> 

I didn't say the guideline is wrong, I just tried to understand how this
particular case is handled.
> 
> 
>>
>>>> for this on purpose, so any future quirks or incompatibilities can be
>>>> easily addressed.
>>>
>>> In this recent case, having a an adapted compatibility string is an
>>> added value.
>>>
>>> And yes, I changed my mind and would like to be systematic now with
>>> at91/microchip DT compatibility strings. Our long history and big legacy
>>> in arm-soc is sometimes difficult to handle, but we're moving little by
>>> little to comply with guidelines.
>>>
>>> My conclusion is that Varshini's addition is the way to go.
>>
>> Ok, fine by me. Then it would be good if one adds compatibles for the
>> previous SoCs as well and add a comment in the drivers that inform
>> readers that the atmel_*_get_cap() methods are used as backup where
>> "atmel,at91sam9g46-" compatibles are used. You'll then have all the
>> previous SoCs have their own dedicated compatibles which will have
>> "atmel,at91sam9g46-" compatible as backup, and "sam9x7" will be the
>> first that will not need the "atmel,at91sam9g46-" backup compatible.
>> In the drivers you'll have 2 flavors of identifying the IP caps, the
>> first one that backups to atmel_*_get_cap(), and a second one where
>> of_device_id data will suffice.
>>
>> If the commit message described how the driver will handle the new
>> compatible, Varshini would have spared us of all these emails exchanged.
> 
> The driver does not have to handle the new compatible, because it is
> independent question. Although if you meant to explicitly say that

As you wish. I retrieve my NACK.

Cheers,
ta
> device is compatible in commit msg, although it is obvious from the
> patch, then sure.
> 
>> Varshini, please update the commit message in the next iteration and
>> describe how the driver will handle the new compatible.
> 
> Best regards,
> Krzysztof
> 
