Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73F4C571418
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231753AbiGLIMs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:12:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232486AbiGLIMr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:12:47 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFA8E9E47C
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:12:45 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id bx13so9006573ljb.1
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4i+nNQOuAb8IG2LCXMELsIxWqCoAxgrduDi9ilKLzsE=;
        b=pOERgv7kAwfTbBdUZl2J0fvQqLb2TJPjIKf0/MLehDvfOHf3Vq/Ja+0r2KdIE2DYi1
         M7G35G9vxOc8M20VHcCFu32WI1SoeNTxsMd118uT8gxYxByoE5b88+Yrgv4g6LfHkUTH
         td4Di/pOO0qMOqxpZn9OxAv8wvyshM6pgD7B4dtgboG9zAZL5H/NocWliMDBxXS3YwvJ
         igk15uwnxeddra/y9++sEO9j5SDtIyxKJzXnbT5v8dIVHXwd/pOWCGrbsS5aW6IyFUwu
         oD1YIzv6lOD6Mc4DTFPapjH7GzEVoXtQl4j1IfnKLB+WwRl1PymgN1b0nN6AZb6U7B0X
         64/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4i+nNQOuAb8IG2LCXMELsIxWqCoAxgrduDi9ilKLzsE=;
        b=5bHNQzea2SVChGBn7aspkyEKRIB31UsJiJA2Er4Zaz1Le4r4XP01bjsCogkkSeFbZP
         l9y9kYTy5gbcPJQycRPZp96lb5qYTD/vWyL7XGeYXu5ZZdIlrCydN+sM1vffMLda5iGP
         +iTyvK1sjXjnnK9X916XUpMULH9OaEzfTbv23MnFNoIZGiTJGpoU6QiUlgcEq/V7rHXW
         UdYEqVO5a1eUJ3B+5tjMqG7sko3STCFXykQHHWU6msZoi0EKJmbQRXHMBkaqK6+o43VM
         xT5tjUw73w7w4humedK5+9eZhZQDzESgqo3eaNCCGgPHOR0VQ5itfAHPV+MwzlGI3AsF
         B2eQ==
X-Gm-Message-State: AJIora89Rjphq96OQw9DYQUm+rtHnFKxUIVCFb2u3K3lD0B0/AOj/FPC
        JDn+bmPGo7M7frJemdzme4EbPg==
X-Google-Smtp-Source: AGRyM1uUFoce+sveQIYWnlaJl7QTr6WypMjZW9F4ekLQddnWC/D9rLAkayD78wLc7Spj5OyzsVjCCg==
X-Received: by 2002:a2e:880a:0:b0:25d:73af:52b5 with SMTP id x10-20020a2e880a000000b0025d73af52b5mr3098674ljh.298.1657613564070;
        Tue, 12 Jul 2022 01:12:44 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id f26-20020ac2509a000000b0047f6e590f08sm2048431lfm.128.2022.07.12.01.12.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:12:43 -0700 (PDT)
Message-ID: <2e279f04-04da-80a0-deaa-633740350991@linaro.org>
Date:   Tue, 12 Jul 2022 10:12:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: sound: atmel,classd: Convert to
 json-schema
Content-Language: en-US
To:     Ryan.Wanner@microchip.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220711183010.39123-1-Ryan.Wanner@microchip.com>
 <20220711183010.39123-2-Ryan.Wanner@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711183010.39123-2-Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 20:30, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Convert atmel CLASSD devicetree binding to json-schema.
> Change file name to match json-schema naming.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
> v1 -> v2:
> - Fix title.

Still wrong subsystem prefix. use git log --oneline --

> - Fix formatting.
> - Removed trivial descriptions.
> - Fix filename.
> 
>  .../bindings/sound/atmel,sama5d2-classd.yaml  | 104 ++++++++++++++++++
>  .../bindings/sound/atmel-classd.txt           |  55 ---------
>  2 files changed, 104 insertions(+), 55 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/atmel,sama5d2-classd.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/atmel-classd.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/atmel,sama5d2-classd.yaml b/Documentation/devicetree/bindings/sound/atmel,sama5d2-classd.yaml
> new file mode 100644
> index 000000000000..9ef8c6dde8a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/atmel,sama5d2-classd.yaml
> @@ -0,0 +1,104 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (C) 2022 Microchip Technology, Inc. and its subsidiaries
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/atmel,sama5d2-classd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel ClassD Amplifier
> +
> +maintainers:
> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +  - Claudiu Beznea <claudiu.beznea@microchip.com>
> +
> +description:
> +  The Audio Class D Amplifier (CLASSD) is a digital input, Pulse Width Modulated (PWM)

Wrap at 80, like Linux coding style asks for.

> +  output stereo Class D amplifier.
> +
> +properties:
> +  compatible:
> +    const: atmel,sama5d2-classd
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    const: tx
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: gclk
> +
> +  assigned-clocks:
> +    maxItems: 1
> +    description: classd_gclk

Usually assigned-clocks are not mentioned (they come from core schema),
so why do you need to add it? Maybe just skip it.

> +
> +  atmel,model:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: The user-visible name of this sound complex.
> +    default: CLASSD
> +
> +  atmel,pwm-type:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    enum:
> +      - single
> +      - diff
> +    default: single
> +    description: PWM modulation type, "single" or "diff".

Remove last part - , "single" or "diff" - it duplicates enum.

> +
> +  atmel,non-overlap-time:
> +    description:
> +      Set non-overlapping time, the unit is nanosecond(ns).
> +      Non-overlapping will be disabled if not specified.

Keep description in consistent place, so either as first property or
last. Don't mix.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum:
> +      - 5
> +      - 10
> +      - 15
> +      - 20
> +    default: 10
> +

Best regards,
Krzysztof
