Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E0BB6FD885
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 09:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235912AbjEJHsn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 03:48:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236159AbjEJHsl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 03:48:41 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE01A1707
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:48:39 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-94a34a14a54so1366619866b.1
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 00:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683704918; x=1686296918;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/LTnCh6R2977sWOSYvBVeAThbB6LN/VUq0y/VvleozI=;
        b=LjYApUNyA75roTFOe6acev02+XGsgesQAoaeso8F0QC6chQiAfZ70LKS2yBGCgGxkc
         5aasKOej1EL2H6X8FB4+93FS0hf584Q9mdZcnjpwVf4CrMHgwMbMKwRqfQR+vIjDHbod
         f1OPIpGk73zoc/T+e29iAkoNuIg0cYhCzA9IK+6v9MCTRO4g/Mr8qkQ2rm/SAl8efw60
         pHYJ4ThIS/S8JYwOd4vfU6byfN4abLxQcaaVe9g+lTkxxWgnel3VDFf4Ms6/Nn1Vs0vT
         01iIfozNouWjaeRYfc8RdO/J5lUh2gVJupapVgOC98ZtHn/AdTI3wGeJ2Z50rqUOavIx
         ILXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683704918; x=1686296918;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/LTnCh6R2977sWOSYvBVeAThbB6LN/VUq0y/VvleozI=;
        b=Wrzqs9gc1hje4h6K74xKeVEhrak2+/mDesegm0e7gYlzee3ceKVATS+3G3smBf0xvJ
         fVEUvtvXVu0kzsUKMkk7fc9Bk3DqDIM5WuqyrbinyKpyqecZSMmk57QrAlDgJO6IkzfK
         +ydugIpKEXRVriBrcqQALUO8gH0VgGN/cM0EWdTDEItxpSvBkSKQ+Kq6HPmJdT/mSK4B
         S1Ir/rEaLZB3t1uTT9dLga+F2wVOdZhM2K01/1eJvf07msGxJY2EFn5ZE4q6ydjEHrUs
         MsIHY7Bb2ZpKTxnSTKX6tn4RJ97lLlOvc99Uwcu2Got7yh1Sqv6dryPU8gt9CHhXEptA
         UBZw==
X-Gm-Message-State: AC+VfDysdDp+SENZZ16EKD8KPhuxo7EBnPc7Okbnbu1BpZnCGrRawP74
        cDxC+ml7gKst9ktDngRs/0SdUQ==
X-Google-Smtp-Source: ACHHUZ4AlAVb86LVpUgdppiueLOdqvRCP+H8oHIJil8ScCoOiD+gDNEcggxDcVOlHjnm3d6LSJ2lPA==
X-Received: by 2002:a17:907:3e13:b0:94e:5679:d950 with SMTP id hp19-20020a1709073e1300b0094e5679d950mr17840182ejc.72.1683704918359;
        Wed, 10 May 2023 00:48:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id w12-20020aa7da4c000000b0050bc5727507sm1588632eds.73.2023.05.10.00.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 00:48:37 -0700 (PDT)
Message-ID: <d82491c5-12e6-abbe-5bb9-87d863454b25@linaro.org>
Date:   Wed, 10 May 2023 09:48:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: nau8825: Convert to dtschema
Content-Language: en-US
To:     AS50 CTLin0 <ctlin0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230510034409.585800-1-CTLIN0@nuvoton.com>
 <39afb004-5f28-2633-a8be-412cb5e74404@linaro.org>
 <36061fee-5491-e829-2c49-27ab81f0aa57@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <36061fee-5491-e829-2c49-27ab81f0aa57@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 09:42, AS50 CTLin0 wrote:
> On 5/10/2023 3:19 PM, Krzysztof Kozlowski wrote:
>> On 10/05/2023 05:44, David Lin wrote:
>>> Convert the NAU8825 audio CODEC bindings to DT schema.
>>>
>>> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
>>> ---
>> Version your patches and provide changelog after ---.
>>
>> If you just send the same with the same mistakes, that's a NAK.
> 
> I know your meanings is to show change log from v1 to v2, but I see
> previous patch have other missing items.

I don't understand it. It does not matter what else is missing in
previous patch. You always must version them and always provide changelog.

> 
> Therefore, I revise it and included your comments. Anyway, I can back to
> previous patch and re-send v2 patch with changelog.

Paste it here (and in v3 of course).

> 
>>
>>>   .../devicetree/bindings/sound/nau8825.txt     | 111 --------
>>>   .../bindings/sound/nuvoton,nau8825.yaml       | 242 ++++++++++++++++++
>>>   2 files changed, 242 insertions(+), 111 deletions(-)
>>>   delete mode 100644 Documentation/devicetree/bindings/sound/nau8825.txt
>>>   create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8825.yaml
>>>
>>
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +unevaluatedProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/gpio/gpio.h>
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +    i2c {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <0>;
>>> +        nau8825@1a {
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my
>> feedback got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all
>> requested changes or keep discussing them.
>>
>> Thank you.
>>
>> Best regards,
>> Krzysztof
> 
> About node item, maybe I misunderstand your meanings.
> 
> When I change from headset: nau8825@1a to audio-codec: nau8825@1a, it
> will have compiler error.

That's label, not nodename. Why would even this create a compile error?

> 
> So I use nau8825@1a to submit.However, when I see your latest comment, I
> seems to understand your point for node name.
> 
> The final result will be codec@1a or audio-codec@1a, right?

Yes.

Best regards,
Krzysztof

