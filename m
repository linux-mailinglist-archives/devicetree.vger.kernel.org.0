Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57C6468E9BE
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 09:20:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbjBHIUW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 03:20:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbjBHIUU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 03:20:20 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE30C4345A
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 00:20:10 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id bu23so39149wrb.8
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 00:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rL8LBItn4StHZi6ZJiCbES8DujHjLAlePtXEF4dNf0g=;
        b=H/nofoqIUmp53A1gy27FWZ/m0jJJznQ/E/KZPS80H3GOLmSOB4nm0pO/duSckPYhNg
         AVXMeq1840d1Qa0wNphY03L3u0TgrtcBvHZRz/kUIo75jq4GRha2P6Gh/bohMJwvIvOb
         yChvJipGdl5ODYy2btTWHsJlEu+MttL+hnKtgpLRimD6eSrT1n8BBYFKhjt7uNBtVlOJ
         2sD4eAfr6ruQJumXpUzDjzZBmy6KDApknk9ZrPh4RlbjznvAUdkZlBr9fUyyeoGeeXJq
         xJJVMlP7TaIaz9P5B/o4Exd4aw4rYP7dLETT+oQ1c9H32aB8ZH11F4ndlxT7gHfwCchr
         73aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rL8LBItn4StHZi6ZJiCbES8DujHjLAlePtXEF4dNf0g=;
        b=4zteSlCHSpkF9vGIGMmPdicZRMSQPkkdA778C2+vxNpSfsmPbNu9DP7cnjCuDikYZP
         tn6Os+EZ0Jhlrxng/VkeU7O0D69NX4kTlKoe3NlAa+rylhawcmpeNCfZl3Z0J+gaADM8
         oz0ub3wUvlpa4LSnlbrfGW2YIKB/8ZiFqkZrJqtWEWEpNbvnW4s9AvwrUD2fzC75rSn+
         DwVeMSLKRDY2vETaqUTWowxKi6F3tepWdSmBHM4rVnkwoyEE2+B5fubjrA4J9L/Y6/TJ
         AjQluCQKH1c3nSiZhjou/xGWDYxWBp35g+mIXO/4uvXAmi1F7irIUb1kNLso6HHdajUE
         tE1Q==
X-Gm-Message-State: AO0yUKUmmPONxt6d1UeusjdkpitrMQiaXEF4sT/AKDLe1zuGMNrL5rad
        3qbZosRpZNhqLjdELASL64ncDg==
X-Google-Smtp-Source: AK7set+8uThdO0z7pThPVeFWUZwaQVGSujdTBqV6nNjhDNcCzQS1w5bFHAVYpw4AaPnYueRPtqVU8A==
X-Received: by 2002:adf:ed11:0:b0:2bd:d45c:3929 with SMTP id a17-20020adfed11000000b002bdd45c3929mr5331107wro.54.1675844409094;
        Wed, 08 Feb 2023 00:20:09 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o21-20020a5d58d5000000b002c3f0a78e39sm4368258wrf.9.2023.02.08.00.20.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 00:20:08 -0800 (PST)
Message-ID: <8fa6a9eb-df09-73c0-528b-a2efd9b262e7@linaro.org>
Date:   Wed, 8 Feb 2023 09:20:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: adjust to R-Car
 Gen4
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com>
 <87o7q5t012.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87o7q5t012.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 02:32, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> R-Car Gen4 is not compatible with Gen3, this patch adjusts
> to R-Car Gen4.

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

Same below.

> 
> By this patch, "dmas/dma-names" under "rcar_sound,ssi" are dropped
> from "required:" property, because (A) these are not mandatory if it
> was PIO transfer mode, (B) Json schema if-then-else doesn't work
> correctly on there for some reasons. see the Link for detail.

You gave three links, so why? You should rather explain why it does not
work.

> 
> Link: https://lore.kernel.org/r/CAMuHMdW_QHmODAKvn_GwHHUWw-=z4Tdq0NkhdK2u2piG_YgB-Q@mail.gmail.com
> Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.yaml          | 72 ++++++++++++++-----
>  1 file changed, 55 insertions(+), 17 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index c3bea5b0ec40..3214ca9bcc78 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -99,20 +99,6 @@ properties:
>      minItems: 1
>      maxItems: 31
>  
> -  clock-names:
> -    description: List of necessary clock names.
> -    minItems: 1
> -    maxItems: 31

Don't remove properties from top-level.

> -    items:
> -      oneOf:
> -        - const: ssi-all
> -        - pattern: '^ssi\.[0-9]$'
> -        - pattern: '^src\.[0-9]$'
> -        - pattern: '^mix\.[0-1]$'
> -        - pattern: '^ctu\.[0-1]$'
> -        - pattern: '^dvc\.[0-1]$'
> -        - pattern: '^clk_(a|b|c|i)$'
> -
>    ports:
>      $ref: audio-graph-port.yaml#/definitions/port-base
>      unevaluatedProperties: false
> @@ -256,8 +242,6 @@ properties:
>              $ref: /schemas/types.yaml#/definitions/flag
>          required:
>            - interrupts
> -          - dmas
> -          - dma-names

Even with your explanation in commit this does not look related to this
patch. Don't mix features and fixes.

>      additionalProperties: false
>  
>    # For DAI base
> @@ -305,7 +289,14 @@ allOf:
>                - scu
>                - ssi
>                - adg
> -    else:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,rcar_sound-gen2
> +              - renesas,rcar_sound-gen3
> +    then:
>        properties:
>          reg:
>            minItems: 5
> @@ -317,6 +308,53 @@ allOf:
>                - ssiu
>                - ssi
>                - audmapp
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,rcar_sound-gen4
> +    then:
> +      properties:
> +        reg:
> +          minItems: 4


You now add the same mistakes you corrected in 1/2. Really - the same.

> +        reg-names:
> +          items:
> +            enum:
> +              - adg
> +              - ssiu
> +              - ssi
> +              - sdmc
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,rcar_sound-gen4
> +    then:
> +      properties:
> +        clock-names:
> +          description: List of necessary clock names.
> +          minItems: 3

maxItems

> +          items:
> +            enum:
> +              - ssi.0
> +              - ssiu.0
> +              - clkin
> +    else:

Best regards,
Krzysztof

