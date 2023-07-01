Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F0517447FE
	for <lists+devicetree@lfdr.de>; Sat,  1 Jul 2023 10:18:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229532AbjGAISG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jul 2023 04:18:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGAISD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jul 2023 04:18:03 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB6D2E5C
        for <devicetree@vger.kernel.org>; Sat,  1 Jul 2023 01:17:54 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-992bc8b5c5cso263769466b.0
        for <devicetree@vger.kernel.org>; Sat, 01 Jul 2023 01:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688199473; x=1690791473;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFUtqRuFYxZPNfD4i3kr3X3ptU2+o2FOiAEweLLRh0Y=;
        b=hZ/FFeqa4g54JerJ53qoyxU4QTmUnUf0v73u41e+vOdiGZyUnWeNIEbTY9zWw4XMQw
         zX2EuskfWe+XkRlT71jQ/Imrl935VrguDYwH/WJAC6FgSzab8UDCYWrLrjfpaV5+mcEx
         4vjRkfjXAzH8mjoZyJvU6x0Ms+Qxl+jZqu9S7m3AQtatRtdY4C3jxzFPj1iNK9j7tvsj
         fiS79qaZO6xV8jW4vvzP6xdrGYKSsjN4qM4hv01/6t6X6bNKti8xozXaZAEsDIvpgXT5
         CEP1COSjeAsWkkylM7qBrO5SfimMr8i59FAO7XMV/o8vqa2s1MfsNPE+6Xqc69fDc5C1
         C7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688199473; x=1690791473;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nFUtqRuFYxZPNfD4i3kr3X3ptU2+o2FOiAEweLLRh0Y=;
        b=XC1VpyogVR1QiYBNVV4TG9l0Mow1MagMf4CabG/actD7HMIoaJjQS6MAT+COZ9e2vZ
         ZNICn4mS1Nez1Mfj6LI62Mhmf/utIM6W73kL/iBmbx00lvYBevpRztxkXrG02BQlrR+q
         feCs5fZMKN6rwaPYegVWVYhu6hiTtX98rXVojUK5ltj5WkpGIbFydc4VGBUFIy1PxsGg
         N+QgtjnxU3dVlIn57EjRQFIcrLubgaxYRVqP/LJW9wrESUuFFpRSuANSKL/meJWz13eA
         lOyh2pTHsWzAjM/NuocZYDJGxgCub8zIPPb5qoj4VbbMGZ39V9kOh+qkH7rDsUP4MZDw
         7ECQ==
X-Gm-Message-State: ABy/qLZEbW1zQO7Vpicwx2AAFhbmYh6VZRm8zBnQo7IEbgSYGyBkZa13
        CXQR1xbBZY0JY0RfDDdEszCd4Q==
X-Google-Smtp-Source: APBJJlHl6fEgoqPBsy1ZFFH2uK0Gpmfi0RiZj0Uiu8sQs4UkbbfdT3pVNRrhM6i2vh5cofEh0GFVtQ==
X-Received: by 2002:a17:906:3650:b0:974:1d8b:ca5f with SMTP id r16-20020a170906365000b009741d8bca5fmr3422697ejb.9.1688199473199;
        Sat, 01 Jul 2023 01:17:53 -0700 (PDT)
Received: from [192.168.10.214] ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id jj25-20020a170907985900b00992b1c93279sm2693469ejc.110.2023.07.01.01.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Jul 2023 01:17:52 -0700 (PDT)
Message-ID: <c0244a98-4c91-93d8-a3e4-5210d0b3f205@linaro.org>
Date:   Sat, 1 Jul 2023 10:17:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 1/5] ASoC: dt-bindings: Add StarFive JH7110 dummy
 PWM-DAC transmitter
Content-Language: en-US
To:     Hal Feng <hal.feng@starfivetech.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor@kernel.org>,
        Walker Chen <walker.chen@starfivetech.com>,
        Xingyu Wu <xingyu.wu@starfivetech.com>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230626110909.38718-1-hal.feng@starfivetech.com>
 <20230626110909.38718-2-hal.feng@starfivetech.com>
 <006ddacd-0496-70d1-3310-99b16706de84@linaro.org>
 <0312262c-28c0-9445-c6f7-2079a57db8c7@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0312262c-28c0-9445-c6f7-2079a57db8c7@starfivetech.com>
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

On 30/06/2023 03:57, Hal Feng wrote:
> On Mon, 26 Jun 2023 17:34:56 +0200, Krzysztof Kozlowski wrote:
>> On 26/06/2023 13:09, Hal Feng wrote:
>>> Add bindings for StarFive JH7110 dummy PWM-DAC transmitter.
>>
>> ...
>>
>>> +required:
>>> +  - compatible
>>> +  - "#sound-dai-cells"
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    pwmdac-dit {
>>> +        compatible = "starfive,jh7110-pwmdac-dit";
>>> +        #sound-dai-cells = <0>;
>>
>> BTW, I don't see any resources here. Neither in the driver. I think you
>> just added this for driver, not for a real hardware.
> 
> Yes, this is a dummy PWM-DAC transmitter as described in the title. The
> StarFive JH7110 PWM-DAC module doesn't need a hardware codec, but a
> dummy codec is needed for the driver.

Bindings are no for drivers, therefore with such reasoning the answer
is: drop entire binding. If you think otherwise, please give me some
more details about the hardware.

Best regards,
Krzysztof

