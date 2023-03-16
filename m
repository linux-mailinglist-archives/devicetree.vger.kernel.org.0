Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E58626BD25D
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 15:28:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230488AbjCPO22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 10:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230396AbjCPO2Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 10:28:24 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E954115C92
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:28:11 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id r27so2596511lfe.10
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678976890;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=it9aeYnxGWWMKUhD9kMlVYQPDO4LCr+X6cTL/NBM1V4=;
        b=hE4Pctc0UoYOjpdhHgG5gbMpADrAfdnujllgPy6IWkgw+aRdZx5fqDWts1+ljbkXWd
         YvRZ3n+5UY7QlSakRpf27TQ45XNwTPf2GKtIiLzxMkEK0ASd4KzpKZNjzpg4XAOAVDkh
         Pa0cQBza0mQYPgg5k5h+z5MPeS/3eSJufeztf+ZMASiNWHCPtUpjihODmjUft7wSYUbx
         FZBcH8yQiTsr414Kh2cfVQ/5bzucKCWWhjcyv4zvv/YDl5CFJAiFyveTJFXZJ3KGL0Uw
         wzkSRy0VCgoK4BL9fVSKSrdfvfmnzExdzCAtZmJZQiLU7MxrHzW3aZyKvNyKGOvKEG2r
         pK3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678976890;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=it9aeYnxGWWMKUhD9kMlVYQPDO4LCr+X6cTL/NBM1V4=;
        b=0l1nb6zJ9Utm+yedrPMLA74gXVcrYoDaeUvsueWsxGD66j1rYjDHvrssfTbgN8so9w
         xCMAmxVXoqb9rQEGsPtUwIu+QCzMMNYWjAPeTFJi8XBbWxyCWROrqoGEcx7Wmvc3g42N
         ZBNFYQncnbYTujhl5IWUexfeY86snrAyTOq+CP60s4IdkjHBiD8w2RuACk7WAXdPOB+N
         rxNp1IE8NIvr0NYo4O8wd6++np+LG55yqu3w/L1zKZ/g2JKe5uMGLSqflIREHrttodTc
         ccqAL0NlEdhwmp5wy9c+s9LH0a4df6REKhGBUAUuzVy7n7uAmI3WGFcCtJYJ+ZmEjmTQ
         3EiA==
X-Gm-Message-State: AO0yUKXfUxk1qHBcguM33vHFmZpuqICaUC0gzMCqus8LU3vgahUFy+Yy
        chXerPagbuyqSFBLUkVA4ic=
X-Google-Smtp-Source: AK7set+uUKMPZ7JADhmNhaXXZqPitHdtc8HwflwyErfYhlV309mrVwgb3leFUbuXWa1cpJaIJubuQw==
X-Received: by 2002:a05:6512:3769:b0:4e8:5e39:6234 with SMTP id z9-20020a056512376900b004e85e396234mr1762176lft.16.1678976889708;
        Thu, 16 Mar 2023 07:28:09 -0700 (PDT)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id u5-20020a056512094500b004cafa2bfb7dsm1241553lft.133.2023.03.16.07.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 07:28:09 -0700 (PDT)
Message-ID: <b2810924-169d-0bad-8f20-6ec2e683d170@gmail.com>
Date:   Thu, 16 Mar 2023 15:28:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13.02.2023 03:13, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> There are no compatible for "reg/reg-names" and "clock-name"
> between previous R-Car series and R-Car Gen4.
> 
> "reg/reg-names" needs 3 categorize (for Gen1, for Gen2/Gen3, for Gen4),
> therefore, use 3 if-then to avoid nested if-then-else.
> 
> Move "clock-name" detail properties to under allOf to use if-then-else
> for Gen4 or others.

Hi, this patch seems to add errors for me. Are my tools outdated or is
it a real issue? See below.


> Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com/#r
> Link: https://lore.kernel.org/all/87y1p7bpma.wl-kuninori.morimoto.gx@renesas.com/#r
> Reported-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>   .../bindings/sound/renesas,rsnd.yaml          | 76 ++++++++++++++++---
>   1 file changed, 64 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index 12ccf29338d9..55e5213b90a1 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -101,17 +101,7 @@ properties:
>   
>     clock-names:
>       description: List of necessary clock names.
> -    minItems: 1
> -    maxItems: 31
> -    items:
> -      oneOf:
> -        - const: ssi-all
> -        - pattern: '^ssi\.[0-9]$'
> -        - pattern: '^src\.[0-9]$'
> -        - pattern: '^mix\.[0-1]$'
> -        - pattern: '^ctu\.[0-1]$'
> -        - pattern: '^dvc\.[0-1]$'
> -        - pattern: '^clk_(a|b|c|i)$'
> +    # details are defined below
>   
>     ports:
>       $ref: audio-graph-port.yaml#/definitions/port-base
> @@ -288,6 +278,11 @@ required:
>   
>   allOf:
>     - $ref: dai-common.yaml#
> +
> +  #--------------------
> +  # reg/reg-names
> +  #--------------------
> +  # for Gen1

This seems to cause:

./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:282:4: [error] missing starting space in comment (comments)
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:284:4: [error] missing starting space in comment (comments)
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:339:4: [error] missing starting space in comment (comments)
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:341:4: [error] missing starting space in comment (comments)


>     - if:
>         properties:
>           compatible:
> @@ -303,7 +298,15 @@ allOf:
>                 - scu
>                 - ssi
>                 - adg
> -    else:
> +  # for Gen2/Gen3
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - renesas,rcar_sound-gen2
> +              - renesas,rcar_sound-gen3
> +    then:
>         properties:
>           reg:
>             minItems: 5
> @@ -315,6 +318,55 @@ allOf:
>                 - ssiu
>                 - ssi
>                 - audmapp
> +  # for Gen4
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,rcar_sound-gen4
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 4
> +        reg-names:
> +          items:
> +            enum:
> +              - adg
> +              - ssiu
> +              - ssi
> +              - sdmc
> +
> +  #--------------------
> +  # clock-names
> +  #--------------------
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,rcar_sound-gen4
> +    then:
> +      properties:
> +        clock-names:
> +          maxItems: 3
> +          items:
> +            enum:
> +              - ssi.0
> +              - ssiu.0
> +              - clkin
> +    else:
> +      properties:
> +        clock-names:
> +          minItems: 1
> +          maxItems: 31
> +          items:
> +            oneOf:
> +              - const: ssi-all
> +              - pattern: '^ssi\.[0-9]$'
> +              - pattern: '^src\.[0-9]$'
> +              - pattern: '^mix\.[0-1]$'
> +              - pattern: '^ctu\.[0-1]$'
> +              - pattern: '^dvc\.[0-1]$'
> +              - pattern: '^clk_(a|b|c|i)$'
>   
>   unevaluatedProperties: false
>   

