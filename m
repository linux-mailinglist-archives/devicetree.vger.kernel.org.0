Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6087A6B392C
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:49:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231382AbjCJIti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:49:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231398AbjCJIsl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:48:41 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76EBD102B47
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:48:01 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id u9so17555216edd.2
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678438080;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FUJl7k1M979We1qgGMmgB9bIcQ2E6pfPssKN7N8NYdg=;
        b=jvo8S2iAybLRtQxJoV/xHW5xfdSBUOC7NMfOsQDvVrBfkQ1ROfJE6XCj+7W6jBwghT
         lSKT+L7pGfPTuQcT9WogOnDjx0cLyV6SsATK3r+qXiIbUZqQ3YF3RgnjL6fYcbOPye98
         MnU9hheNzmuO0oZp8c/tzKtxQuI4wgGRiKYSlIzQYSHI74CK2l9PGZuOajITsovgbV6y
         mFdVaIPpo1e7Ckrqfl/Jia+AsB1662BYXz28IDERGzr9MC8mcBy2FIkvDZasMPDHyfbh
         bnqfQLFuB8RWwNTYu1ZW7Z29nBV0B9SqOpHHF4t5R9irOD9NgFW6tAFzSb4qo34LthKs
         FM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678438080;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FUJl7k1M979We1qgGMmgB9bIcQ2E6pfPssKN7N8NYdg=;
        b=YgUvq/Upqfy2GaAY3tPCh6ukA9Pp5nvoc/9QOpOM137FBsNUA4zPoGXZR+LUhFxG5T
         GEuO7hSKadWJBvVGcI/nrFd5uCf7Dfv4ltm/OMKdo6U1TD1P4DHwwJM3uidxiwOuxLur
         QBC3FNIO6Z/NJY/kanCcjqH0beMwadQzTIX8vEXpC8GtXuq41jwjcgMicaHMm1QVIosJ
         NUPiP/tsHRnS9zVzJL4KKt8JvDiSQ1qvDkXZZv1Nf1Wqu5bO9k9sLwdCCvGoJuDarJBv
         atMro1jNzh0fFlhJLwB6GSp3xDBzT9qg05eE2sKBeBhY9tjy5qJ2XyKnv5Fr/ZYABuqm
         wn1w==
X-Gm-Message-State: AO0yUKX5QR7skR0qQeieRJjNbkgZUKTD6moCE6LMN9Uy/5eMX6MbqA38
        QqbnK+J3DJhocELF3Xk366UjqQ==
X-Google-Smtp-Source: AK7set8RF9fKGu1CUeXXJqLZSC5d0kPUQNf8eO0ETxanIPP+bDutAsSa8xkbgdMQw8OLUOFUEnhfEQ==
X-Received: by 2002:a17:906:4ecb:b0:8ea:a647:a5aa with SMTP id i11-20020a1709064ecb00b008eaa647a5aamr741103ejv.38.1678438079916;
        Fri, 10 Mar 2023 00:47:59 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:2a59:841a:ebc:7974? ([2a02:810d:15c0:828:2a59:841a:ebc:7974])
        by smtp.gmail.com with ESMTPSA id g18-20020a50d0d2000000b004e7ffb7db11sm542949edf.76.2023.03.10.00.47.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 00:47:59 -0800 (PST)
Message-ID: <5547887b-c39f-3595-2442-7477080e716f@linaro.org>
Date:   Fri, 10 Mar 2023 09:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: Add Renesas versa3 clock
 generator bindings
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20230309165529.223052-1-biju.das.jz@bp.renesas.com>
 <20230309165529.223052-2-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230309165529.223052-2-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2023 17:55, Biju Das wrote:
> Document Renesas versa3 clock generator(5P35023) bindings.
> 
> The 5P35023 is a VersaClock programmable clock generator and
> is designed for low-power, consumer, and high-performance PCI
> Express applications. The 5P35023 device is a three PLL
> architecture design, and each PLL is individually programmable
> and allowing for up to 6 unique frequency outputs.
> 

Thank you for your patch. There is something to discuss/improve.

> +description: |
> +  The 5P35023 is a VersaClock programmable clock generator and
> +  is designed for low-power, consumer, and high-performance PCI
> +  express applications. The 5P35023 device is a three PLL
> +  architecture design, and each PLL is individually programmable
> +  and allowing for up to 6 unique frequency outputs.
> +
> +  An internal OTP memory allows the user to store the configuration
> +  in the device. After power up, the user can change the device register
> +  settings through the I2C interface when I2C mode is selected.
> +
> +  The driver can read a full register map from the DT, and will use that
> +  register map to initialize the attached part (via I2C) when the system
> +  boots. Any configuration not supported by the common clock framework
> +  must be done via the full register map, including optimized settings.
> +
> +  Link to datasheet: |

| is not correct here

> +  https://www.renesas.com/us/en/products/clocks-timing/clock-generation/programmable-clocks/5p35023-versaclock-3s-programmable-clock-generator
> +
> +properties:
> +  compatible:
> +    enum:
> +      - renesas,5p35023
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  renesas,settings:
> +    description: Optional, complete register map of the device.
> +      Optimized settings for the device must be provided in full
> +      and are written during initialization.
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    maxItems: 37
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +

Stray blank line, drop.

> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;

With both above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

