Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DB8977421D
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:34:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234346AbjHHReT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:34:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234749AbjHHRdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:33:31 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E347110D8
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:14:26 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bdf08860dso3050566b.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691511263; x=1692116063;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vQN2WrIQDnKqqepfQOzswIPO1pOEXGaui58WV1ZpQ54=;
        b=MueoTJmC51NjUXuGrALIGQQ84CNsT2Ru20i52G7jqh8O6vB6lPucBKdpP2eWtWfIpu
         fKGaOBrLT9SCBJBzM9R3ZlRe3MZicfsiFXjAFuBiPSt5mfaZL89s7zMc6VuV4MAdF1l7
         wFkJmiIQSmkfvW1A3jT24rqaEkhiDDErxEzR9dzYcWJqavsnUgcuZ/v7LuBCAmloQiiy
         rYpjk4brzW7DO0VrkEzynZfPvYIYtLpAFebQGvGTi9bldAblvV9kO1h4CD51Y5OKJqin
         zeaSt1/WoqIvexCPHHhmLhU/uJFMqqTITVkB4IIpbyOUqWVXag7vfSs2rxzogiTxN23x
         cZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691511263; x=1692116063;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vQN2WrIQDnKqqepfQOzswIPO1pOEXGaui58WV1ZpQ54=;
        b=aMrJoDgDY97QSBnFC6d42NIFRYdUQ81r0RrHxUH5jzyNOTAVz7388ezHht/awqHlGZ
         Vkz9Utx5EjJcqH/mCrRmGrdkMiZJAm1TSLY4ARJJ2gtIahBB7c9Vq5x+WHw41995g8i+
         YGbBSnr6NArKvXAPVpf2RXzEtU2wyUFLXVoRaFihUh481aCue5g3SY9W9XuTmVj/vAO5
         i9kQFcFwMVC6n9CFY3ATR+FO+ZfNcnaz0tNxS4P+T3XBnHicmQfATwlno8tw4IHzYvLD
         PHaOQ8qfFdmxJxmh8l2zjZMto2Xm0jDCv+k8itcubmhJH0mrsCgFnEo+XyoIH0w2dHmP
         qclw==
X-Gm-Message-State: AOJu0YxJUXmb0imcieiC7Fe/YgLK+7TYGaE7qPzsmLI7AJm33FMzcJWh
        XUxSsdHjJs2WeDs2ul+Jze9/HKc0IcdVvPPp1SM=
X-Google-Smtp-Source: AGHT+IFjcCWkNLtd9+huFXphMmx84LzMQOGNVdG/8yC7bNAWF+WydiqZ3qQOP21ujscxDIahjIMkBA==
X-Received: by 2002:a17:907:2cea:b0:993:f127:2391 with SMTP id hz10-20020a1709072cea00b00993f1272391mr90854ejc.32.1691507137196;
        Tue, 08 Aug 2023 08:05:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id m17-20020a170906235100b00985bdb7dd5fsm6659807eja.201.2023.08.08.08.05.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 08:05:36 -0700 (PDT)
Message-ID: <91f57b0d-a6e9-c039-40b6-0a1a9af5f7a0@linaro.org>
Date:   Tue, 8 Aug 2023 17:05:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 1/2] gpio: dt-bindings: add parsing of loongson gpio
 offset
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        loongson-kernel@lists.loongnix.cn
References: <20230807074043.31288-1-zhuyinbo@loongson.cn>
 <20230807074043.31288-2-zhuyinbo@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230807074043.31288-2-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/08/2023 09:40, Yinbo Zhu wrote:
> Loongson GPIO controllers come in multiple variants that are compatible
> except for certain register offset values. Add support in yaml file for
> device properties allowing to specify them in DT.
> 
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> ---
>  .../bindings/gpio/loongson,ls-gpio.yaml       | 40 ++++++++++++++++++-
>  1 file changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml b/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml
> index fb86e8ce6349..fc51cf40fccd 100644
> --- a/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/loongson,ls-gpio.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - loongson,ls2k-gpio
>        - loongson,ls7a-gpio
> +      - loongson,ls2k1000-gpio
>  
>    reg:
>      maxItems: 1
> @@ -29,6 +30,33 @@ properties:
>  
>    gpio-ranges: true
>  
> +  loongson,gpio-conf-offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This option indicate this GPIO configuration register offset address.
> +
> +  loongson,gpio-out-offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This option indicate this GPIO output register offset address.
> +
> +  loongson,gpio-in-offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This option indicate this GPIO input register offset address.
> +
> +  loongson,gpio-ctrl-mode:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This option indicate this GPIO control mode, where '0' represents
> +      bit control mode and '1' represents byte control mode.

I have no clue what does it mean. Is it only 0 or 1? Then it should be
enum or even bool.

> +
> +  loongson,gpio-inten-offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This option indicate this GPIO interrupt enable register offset
> +      address.
> +
>    interrupts:
>      minItems: 1
>      maxItems: 64
> @@ -39,6 +67,11 @@ required:
>    - ngpios
>    - "#gpio-cells"
>    - gpio-controller
> +  - loongson,gpio-conf-offset
> +  - loongson,gpio-in-offset
> +  - loongson,gpio-out-offset
> +  - loongson,gpio-ctrl-mode
> +  - loongson,gpio-inten-offset

No, you cannot add them as required to every other device. First, there
is no single need. Second, it breaks the ABI.

>    - gpio-ranges
>    - interrupts
>  
> @@ -49,11 +82,16 @@ examples:
>      #include <dt-bindings/interrupt-controller/irq.h>
>  
>      gpio0: gpio@1fe00500 {
> -      compatible = "loongson,ls2k-gpio";
> +      compatible = "loongson,ls2k1000-gpio";
>        reg = <0x1fe00500 0x38>;
>        ngpios = <64>;
>        #gpio-cells = <2>;
>        gpio-controller;
> +      loongson,gpio-conf-offset = <0>;
> +      loongson,gpio-in-offset = <0x20>;
> +      loongson,gpio-out-offset = <0x10>;
> +      loongson,gpio-ctrl-mode = <0>;
> +      loongson,gpio-inten-offset = <0x30>;

I still think that you just embed the programming model into properties,
instead of using dedicated compatible for different blocks. It could be
fine, although I would prefer to check it with your DTS.

Where is your DTS?

Best regards,
Krzysztof

