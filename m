Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D440152124C
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 12:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239974AbiEJKlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 06:41:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239928AbiEJKlF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 06:41:05 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 350B92609FC
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 03:37:08 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id gh6so32108427ejb.0
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 03:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=75/C7h5CNsbW/VVYm2sKiusOMpu9/WpRRE2yjuNNA7Y=;
        b=mx5dQxDx0ZCxnBFMxuie5AkL72AsDS45domPNjZ/menpLr7TtONaLqhcO3BBJZCAiw
         fbzrTyl/BaFfLnoney01gyPd88c/7JTL5ibgAtas2kuAcHlN+yq0bEKRHV4V3MW3E+iL
         4NqM88T61dV8HudyVqQuq6uv3CYTaXkk/GdxvJQS56S0drI07ug3dwN3yKI1lQWnQ3gz
         LFJ5FMAcThL38AsM+TY1vwNF6TlKe6SUQXoukCGRbmgW4hrChBkqea6DZ3XxkkkCWI61
         nFlysVi1tfYVVUdnl5DTJkq17vWDQ4Eno0yi3TRLAk4w7lgAdVJkuzrUtKe3u/7W8tT6
         tasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=75/C7h5CNsbW/VVYm2sKiusOMpu9/WpRRE2yjuNNA7Y=;
        b=a1/Mka2Idh7DtUILrAj7fRFIg+QXTr1SKY16NjT/y52vSY4orGXh8bwPCHDOXoLW40
         3gNfm09Yjxt6m743dvYb8LjX/Angj8Nu9NyYqhMznhTp+NOVCdyzSarkWxTJzFzN83dB
         KnYXESLO1llQfmiAZtIZPw7TWRW6K1Yw/C8jVprFeMug9e//zQMt5o25DAOYDNeXDfVQ
         qcu+TCcglT3OfcJokm4qGr44Imhr7L3GN8LgbyiKLoNElZSF8bm73RNU7uToDiAfMo6x
         HD1rKEq3XVQju5Tr5I2Q8dCBPTLKxNdIbXlJ2geVUHZ68VLESmofdTmBmCp+7aS2I154
         Pg7A==
X-Gm-Message-State: AOAM5314w13G5R9ASeLIQQXXVFJbjXhMBM+RG9ZQuFjlhc2RLDvbIuXv
        q3qafktUldd/t79V95ykDXrraQ==
X-Google-Smtp-Source: ABdhPJwTRNAmvlaJMRk0SNOUSPmD2ohyEdjxYr4vHijwfhtSm7X6ktPpLVAZZ/7kBhdWdOvLAz0QQw==
X-Received: by 2002:a17:907:6092:b0:6fa:7951:e26 with SMTP id ht18-20020a170907609200b006fa79510e26mr8537235ejc.734.1652179026740;
        Tue, 10 May 2022 03:37:06 -0700 (PDT)
Received: from [192.168.0.251] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id hv7-20020a17090760c700b006f3ef214e15sm5983621ejc.123.2022.05.10.03.37.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 03:37:06 -0700 (PDT)
Message-ID: <88a0543f-e717-4228-4842-aa69cd7faaf8@linaro.org>
Date:   Tue, 10 May 2022 12:37:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 3/4] dt-bindings: mux: Add lan966 flexcom mux
 controller
Content-Language: en-US
To:     Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
        krzysztof.kozlowski+dt@linaro.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        peda@axentia.se
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, lee.jones@linaro.org,
        linux@armlinux.org.uk, Manohar.Puri@microchip.com,
        UNGLinuxDriver@microchip.com
References: <20220509084920.14529-1-kavyasree.kotagiri@microchip.com>
 <20220509084920.14529-4-kavyasree.kotagiri@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220509084920.14529-4-kavyasree.kotagiri@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2022 10:49, Kavyasree Kotagiri wrote:
> This adds DT bindings documentation for lan966 flexcom
> mux controller.
> 
> Signed-off-by: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> ---
>  .../mux/microchip,lan966-flx-mux.yaml         | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mux/microchip,lan966-flx-mux.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mux/microchip,lan966-flx-mux.yaml b/Documentation/devicetree/bindings/mux/microchip,lan966-flx-mux.yaml
> new file mode 100644
> index 000000000000..63147a2e8f3a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mux/microchip,lan966-flx-mux.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mux/microchip,lan966-flx-mux.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip Lan966 Flexcom multiplexer bindings

s/bindings//

> +
> +maintainers:
> +  - Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> +
> +description: |+

No need for |+

> +  The Microchip Lan966 have 5 Flexcoms. Each flexcom has 2 chip-selects
> +  when operating in USART and SPI modes.
> +  Each chip select of each flexcom can be mapped to 21 flexcom shared pins.
> +  Define register offset and pin number to map a flexcom chip-select
> +  to flexcom shared pin.
> +
> +allOf:
> +  - $ref: /schemas/mux/mux-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: microchip,lan966-flx-mux
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#mux-control-cells':
> +    const: 1
> +
> +  mux-offset-pin:
> +    description: an array of register offset and flexcom shared pin(0-20).

This does not look like generic property, so you need vendor prefix and
type/ref.

> +
> +required:
> +  - compatible
> +  - reg
> +  - '#mux-control-cells'
> +  - mux-offset-pin
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    mux: mux-controller@e2004168 {
> +        compatible = "microchip,lan966-flx-mux";
> +        reg = <0xe2004168 0x8>;
> +        #mux-control-cells = <1>;
> +        mux-offset-pin = <0x18 9>; /* 0: flx3 cs0 offset, pin-9 */
> +    };
> +...


Best regards,
Krzysztof
