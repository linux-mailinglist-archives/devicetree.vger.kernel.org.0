Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC9F755B9E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 08:26:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjGQG0r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 02:26:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231140AbjGQG0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 02:26:46 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E91921701
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:26:15 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-98de21518fbso588167466b.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689575133; x=1692167133;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=chypWeQof4eZMpNxOQ7bwpe/4BlH0k2ZjlVM2ysN2ag=;
        b=tSvUHZ/dfsh2AS1KjJ4+HyHU0yuwHol2XSCRegzesMGf2acJQu3k6klTWKnn1fe0V4
         DqIzw5vBmKP6sKhTqnhVlfP6wPB0wPGlsvrxeGE1TQNdebWJ611sbU96yb7U/q+wIGey
         Jh0e4TPnK1/Uswsq70/pyd0+7Gi7S/H8ftQxiCohdS3MXgMXKzc4lcJu7s2BgS5OrHVm
         gEGCeXjHJ+uCPMNb87clkp2JIPlzOyt+BQAhPpxNc5jrNLJwrCIcijTS/o8y5tIDYHHK
         FxDxDWaC3JC+3FDz5tjT8/cjpMVxTv5G9FFMVzi69cM46CyI4B8UEl6TX2IdYE0hx2sH
         DvxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689575133; x=1692167133;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=chypWeQof4eZMpNxOQ7bwpe/4BlH0k2ZjlVM2ysN2ag=;
        b=kUlOMBMWwiTLdP9FEIelScn6+0RjjD3ilv75jyPr13TlGghjp4vnl/XYPn+jOpExPf
         hwQeKNOqXqNXuXkZhl2qO9N4X+kWDA2s2WBsPcnyHrbg9BPAkfzu7FovKeptfrNLOtk4
         w+kxRwjOO+S8JJ+Ef9ikiVG7A22kYe+t8QMZQQ/XwtM9Z9gECkg592F7cUN2N8mAIfIt
         54icHGflmJx9LfVJ1rKeYTJ4C0Xgc1dL0H/rFHQ71ZXzYvZNNVjt/NNRx1JYvO6+L/wU
         lqVGo25YoLwC/O1dgCwhPkzK+POc1JqX+Np5oiePpnQ5uFAFzkiHSG0ScV/kSF6hruhW
         xQ1w==
X-Gm-Message-State: ABy/qLYRGRU7eIWajFDx4FAjyzVGUhu8hJoHhZLelzxSDlZrNO8csBaZ
        hlI1B9vuS1XcUZbsO/vzEJ8Km0ml6llWJhW6lPgHfw==
X-Google-Smtp-Source: APBJJlHyhzL6nlTig/tpsNYVFy33IRvan6jkBmK6Lnq2glVnJN33Njy1Fz2Md6teFo7t5ql+RPjaIw==
X-Received: by 2002:a17:906:113:b0:987:fe18:1c56 with SMTP id 19-20020a170906011300b00987fe181c56mr11403416eje.47.1689575133290;
        Sun, 16 Jul 2023 23:25:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id c7-20020a17090654c700b009882e53a42csm8698829ejp.81.2023.07.16.23.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jul 2023 23:25:32 -0700 (PDT)
Message-ID: <d0682516-28aa-dbfc-81d1-33300c669835@linaro.org>
Date:   Mon, 17 Jul 2023 08:25:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: adding MCP3564 ADC
Content-Language: en-US
To:     marius.cristea@microchip.com, jic23@kernel.org, lars@metafoo.de,
        robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230714150051.637952-1-marius.cristea@microchip.com>
 <20230714150051.637952-2-marius.cristea@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230714150051.637952-2-marius.cristea@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2023 17:00, marius.cristea@microchip.com wrote:
> From: Marius Cristea <marius.cristea@microchip.com>
> 
> This is the device tree schema for iio driver for
> Microchip family of 153.6 ksps, Low-Noise 16/24-Bit

...

> +
> +dependencies:
> +  spi-cpol: [ spi-cpha ]
> +  spi-cpha: [ spi-cpol ]

Put dependencies after patternProperties:, before required:.

> +
> +patternProperties:
> +  "^channel@([0-9]|([1-7][0-9]))$":
> +    $ref: adc.yaml
> +    type: object

Missing unevaluatedProperties: false.

Open other bindings and look how it is done there.

> +    description: Represents the external channels which are connected to the ADC.
> +
> +    properties:
> +      reg:
> +        description: The channel number in single-ended and differential mode.
> +        minimum: 0
> +        maximum: 79
> +
> +      diff-channels: true

Why? Drop, unless you want to say there all other ADC properties are
invalid for this type of device (device, not driver!).

> +
> +    required:
> +      - reg



Best regards,
Krzysztof

