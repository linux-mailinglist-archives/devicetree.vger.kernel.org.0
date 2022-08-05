Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFF7B58A7D6
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 10:12:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235774AbiHEIMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 04:12:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240410AbiHEIMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 04:12:23 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74FDA5A892
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 01:12:22 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id c17so2408949lfb.3
        for <devicetree@vger.kernel.org>; Fri, 05 Aug 2022 01:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KHeoxCwyGMsUzl+nlpqEFFBbRy9vJSiFhVU0hDWIDtA=;
        b=ezC1sjjTSFZq2XOrH9kxogwfypRfePp+wwYXJDLuY9PRopehWjxD1x3ppMlMWpO3o7
         ASGObWUi/NB14CYZFg89GkjHDRTPhSWoe280N+Oa17ARjo31rMfpH+45A73Elga7yyu+
         VFXVo+5V3oTc61wctKqq7KcXe9/tJsxXeEuaooGtcqXhWhSDYy5wANZdFmuHDaLts4fO
         JhHtE9e631pYJzfRG3wuRWhdVJ9vdpGOpEd13rLko4Oqpc2L/XFcbqtvcBR90BZI8v0L
         W3OAgL8eNPv7UoJrG+bETFczfAQXivWq/PfqkYGx2QVmi/YWz473xBcZWaTFVyi9KtgD
         pFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KHeoxCwyGMsUzl+nlpqEFFBbRy9vJSiFhVU0hDWIDtA=;
        b=Bgv9z9PuY9ht0zwtmvD6VHm2SviDXf1gvCk4o6uyQcuJqMuEXcFKzNGf62mzroySrh
         KQYJ3CtFS1Q+8kqT15tMLqh2lfCG6lYOSh3ukYA7Az5/Dmc7T+rEgwTDj9X16hJE4XUd
         nJBRWz9tt5jG4qEN1VkmrvEZ+jAa8SbI1H+ACzHuT4Juwip2baXXEcRpus4MIgyfU1CG
         h8VZlD//zXFQY9ZsUm4Jku22kvPjNwA3/4OflalrK6XCB+JrTW1hboV45KAGqsSnmckJ
         G6R5br9aV/91O5NnKHJqNoBamSMHWRCoNb+PW4jaJaDyblF1R3u0djEf2m+urztAqD+O
         pPKQ==
X-Gm-Message-State: ACgBeo3G6O7RR6MPYdtQlK6IczAFHlH+4uEsVIhLlnduoY4g7mGB1SZl
        BW/qn09J+ZPaqLQV+C/mk89IPQ==
X-Google-Smtp-Source: AA6agR4BL6FOJkif3WHMrRbj2Kp1at7eisvtaxg81VC4U9og/RnMotXvm5P2zllUZhPHnpQnoZE1zA==
X-Received: by 2002:a05:6512:118e:b0:48b:897:537c with SMTP id g14-20020a056512118e00b0048b0897537cmr2059908lfr.452.1659687140751;
        Fri, 05 Aug 2022 01:12:20 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id k28-20020a2ea27c000000b0025e6a0a504bsm391858ljm.25.2022.08.05.01.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Aug 2022 01:12:19 -0700 (PDT)
Message-ID: <d94704b7-8a21-9eed-68e8-53221a08d677@linaro.org>
Date:   Fri, 5 Aug 2022 10:12:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 2/4] spi: dt-binding: add coreqspi as a fallback for
 mpfs-qspi
Content-Language: en-US
To:     Conor.Dooley@microchip.com, Nagasuresh.Relli@microchip.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Valentina.FernandezAlanis@microchip.com
References: <20220805053019.996484-1-nagasuresh.relli@microchip.com>
 <20220805053019.996484-3-nagasuresh.relli@microchip.com>
 <a83c5784-6c86-497c-78d8-1550e8add7ec@linaro.org>
 <1e48a9bb-9e35-66e7-e8e7-ff5de9941fc7@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1e48a9bb-9e35-66e7-e8e7-ff5de9941fc7@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2022 09:34, Conor.Dooley@microchip.com wrote:
> On 05/08/2022 07:49, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 05/08/2022 07:30, Naga Sureshkumar Relli wrote:
>>> diff --git a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
>>> index a47d4923b51b..84d32c1a4d60 100644
>>> --- a/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
>>> +++ b/Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
>>> @@ -18,10 +18,12 @@ allOf:
>>>
>>>   properties:
>>>     compatible:
>>> -    enum:
>>> -      - microchip,mpfs-spi
>>> -      - microchip,mpfs-qspi
>>> -      - microchip,coreqspi-rtl-v2 # FPGA QSPI
>>> +   oneOf:
>>> +    - items:
>>> +        - const: microchip,mpfs-qspi
>>> +        - const: microchip,coreqspi-rtl-v2
>>
>> Eh, this does not make sense after looking at your driver...
> 
> What is wrong with explicitly binding the driver to both of the
> compatible strings? The "hard" peripheral in the SoC part of the
> FPGA is a superset of version 2 of the coreQSPI IP so the fallback
> used in the binding here makes sense to me. coreQSPI can be
> instantiated in the FPGA fabric and used there, so it needs a
> compatible of its own.
> 
> That brings me back to the original point question, why not
> explicitly bind the driver to both of the compatible strings it
> is known to work for?

There is nothing particularly bad with matching to both of compatibles.
It is valid code. There are however questions/issues with that:

1. It is redundant. I did not look too much at the driver, but none of
the of_device_id entries have some driver data to differentiate,
therefore - for the driver - the devices are identical. If they are
identical and according to binding compatible, use less code and just
one compatible.

2. Otherwise, maybe the devices are not actually fully compatible?
That's the second problem. If one writes binding like that and codes it
in driver differently, it looks like it was not investigated really and
I ask questions...

Best regards,
Krzysztof
