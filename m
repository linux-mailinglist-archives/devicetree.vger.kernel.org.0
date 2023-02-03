Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A71A668931D
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 10:10:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230504AbjBCJJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 04:09:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232603AbjBCJJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 04:09:47 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 803DB1C32C
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 01:09:45 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id t7so4030187wrp.5
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 01:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MHn45+vnENK/TVFtx99s7WoA9gA2YZddyjnUzP5s16c=;
        b=AMN5K4po0wih1uiCioK2NDKoMhZFPH7TpH9vUPEsXKmokVADyzbPdoWoVoFMz1jRD7
         mcSs4Z9hgfq5SsEakOIiz1qASOlNVRvCpGuodPSZEvdMIP2bKxJ6AnUb9mOSrJqbaqyh
         WIiEYKwRuBWljB1udt3BVDR1cBJCNRm7FhwTsvRzCSs5SXRJHQrO3BzNlYVkSCd5A6VG
         PO9Tcx38k31bAUvAe5YgpnJo7d/hacCaYIVzA6XTJyBG06y+tUHqNoEkxWPL17QKEXlD
         sEESzc5OYdKaBfnhGc8XDj0Gos37AH5EsUjvwDARWezGpHlrVlHwh/7g3ebCAiRevVjw
         Fh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MHn45+vnENK/TVFtx99s7WoA9gA2YZddyjnUzP5s16c=;
        b=evebR/XPRaeq7iu3rn+IRnAGzh1hhuHEnC9dx1+/V7ZmgAy8cwSTqwft5RTCk6QQXn
         Gt537OWG8TkGaECwlhw8jY1vuh8PH4xLo4Mb25LMr/H/uq4yf1OqcbXPtybVnEuA3zcE
         ZaMH+9RmKfAsjOLaw+FgqTzJtb5qr9UkhdJOzQN25WBSH4nSYoAkapqIHoL5Qp/3k2gR
         Baxr9TBVgGNDSLl/rGvnlpcVE+/8WtI8MvjoMgbHP/YBfLWLV5UAxVP3xtfj4KtRxse9
         4pKwC/fCAUzpXocjH0vSvFuNUiLoXVQacCyy7ZtJ414rKltg0xfnroQm9tYzxSO0zZuN
         Wh3Q==
X-Gm-Message-State: AO0yUKW0y70EOrJ9qONOeBqX3p8tRQwxPpcXyR4ekJXXO7TVI5ZvikZZ
        ELBfntlo5uYG/n/+H89yT5hXjQ==
X-Google-Smtp-Source: AK7set84hsw/7fWJrGnI1HI7nN5pusbfTFUXGtJoj7Z/splNoJLWpDd3zxqfsMBSwstHnOGC7Hp9iw==
X-Received: by 2002:a5d:61ca:0:b0:2bf:d14a:21dd with SMTP id q10-20020a5d61ca000000b002bfd14a21ddmr10487360wrv.29.1675415384078;
        Fri, 03 Feb 2023 01:09:44 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f9-20020a5d4dc9000000b002bfb37497a8sm1478281wru.31.2023.02.03.01.09.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 01:09:43 -0800 (PST)
Message-ID: <46974ae7-5f7f-8fc1-4ea8-fe77b58f5bfb@linaro.org>
Date:   Fri, 3 Feb 2023 10:09:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ASoC: dt-bindings: renesas: adjust to R-Car Gen4
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
References: <87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 02:22, Kuninori Morimoto wrote:
> 
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> R-Car Gen4 is not compatible with Gen3, this patch adjusts
> to R-Car Gen4.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
> The "required" with if - then - else on "rcar_sound,ssi" is
> always match to "then" even though it is checking "renesas,rcar_sound-gen4" or not.
> Why ?? Is it my fault ??
> 
>  .../bindings/sound/renesas,rsnd.yaml          | 62 ++++++++++++++-----
>  1 file changed, 46 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index d106de00c6b2..9a88b1c34e72 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -106,7 +106,9 @@ properties:
>      items:
>        oneOf:
>          - const: ssi-all
> +        - const: clkin
>          - pattern: '^ssi\.[0-9]$'
> +        - pattern: '^ssiu\.[0-9]$'
>          - pattern: '^src\.[0-9]$'
>          - pattern: '^mix\.[0-1]$'
>          - pattern: '^ctu\.[0-1]$'
> @@ -254,10 +256,20 @@ properties:
>            no-busif:
>              description: BUSIF is not used when [mem -> SSI] via DMA case
>              $ref: /schemas/types.yaml#/definitions/flag
> -        required:
> -          - interrupts
> -          - dmas
> -          - dma-names
> +        allOf:
> +          - if:
> +              properties:
> +                compatible:
> +                  contains:
> +                    const: renesas,rcar_sound-gen4
> +            then:
> +              required:
> +                - interrupts
> +            else:
> +              required:
> +                - interrupts

This does not make sense - you just require it always.



> +                - dmas
> +                - dma-names
>      additionalProperties: false
>  
>    # For DAI base
> @@ -307,18 +319,36 @@ allOf:
>                - ssi
>                - adg
>      else:
> -      properties:
> -        reg:
> -          maxItems: 5
> -        reg-names:
> -          maxItems: 5
> -          items:
> -            enum:
> -              - scu
> -              - adg
> -              - ssiu
> -              - ssi
> -              - audmapp
> +      if:

Please do not embed if within another if, unless strictly necessary. It
gets unmanageable.

> +        properties:
> +          compatible:
> +            contains:
> +              const: renesas,rcar_sound-gen4
> +      then:
> +        properties:
> +          reg:

minItems

> +            maxItems: 4
> +          reg-names:
> +            maxItems: 4

Drop

> +            items:
> +              enum:
> +                - adg
> +                - ssiu
> +                - ssi
> +                - sdmc
> +      else:
> +        properties:
> +          reg:

minItems

> +            maxItems: 5
> +          reg-names:
> +            maxItems: 5

Drop


Best regards,
Krzysztof

