Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B2346EDF22
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 11:25:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233468AbjDYJZE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 05:25:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233452AbjDYJZD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 05:25:03 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E39423AAA
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 02:25:01 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5069097bac7so9788056a12.0
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 02:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682414700; x=1685006700;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VTQTqCCZGjzymhITgf5Q3xyA6Zyj8CaqqpMT/1f1B9g=;
        b=SmJPczl8Q0RYOsntc+RNSKFGyEo+Heq/ZsmdSxJBkd4YCfKNjqEiH316/WyW+C+oin
         mPfkKJLhatE/Rl7lzp50ePPrkUgKMpX6gGXkkVTvQntTVV5zYLzO9VJHsIQIlvDYRx4S
         vPsFNo88Cz59/BwOd6v8x2774kBHQUU28R+dXosx3kMVbDqLgqUOJFC8ko41KvAY4ia/
         64yT6zv+lb7N894bikzuZO6w80Npm4BbXL0kRbHuIf2Q1fQSjqPw2mSHLk3SHBfMH2an
         BCJQR9ck1sxwO5kOmzRvrPBaRotswsrJkxQPcTBiAIQGaA1dpyPBZZD95/AlTiuH16Z0
         /Tvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682414700; x=1685006700;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VTQTqCCZGjzymhITgf5Q3xyA6Zyj8CaqqpMT/1f1B9g=;
        b=gu4V43o3KB/rq9aX/qj7Sc9/u5n7KJ3fOXK5a8BiG9wZQa14+Hl2oMEY+tGr65RPxF
         78wD6PLRaC60F4WLF4Hb3tj/ArIy0fM9z6cHXx5gUgD2YjG0Eu/+A06laZ+csdH+VDlA
         /7Je/CCki51VTCbFRE9Yp6NAHnvL3Gnyz/SR/77os1l3pQgG7xjmPx+wcB0Z8U876JeX
         dvFCD7Ai21tkT8JJ2QWHJov53pA0iewo6OYu8aen0IA+lR47cGY00khZbYd/Yihb3xly
         eot6E210BptAenzqYXtrAvaE4T08mq3rCne7631rw14V8kCayOY3quCjgcAgGW0XvvdN
         HC6w==
X-Gm-Message-State: AAQBX9fCYvWCThi5hDx/NwgEDoNr48czOAm2fkayqWPcGUOv3qDKRJzM
        RdqSVX0LML7+4+XXgHoFVPtsRA==
X-Google-Smtp-Source: AKy350Y5De3LWSBpvFr02fmhJNDamlcWRUqdhqX87K+rkiKyp9OMtaykxqYMUKNdaWX+LbW2kkhlZQ==
X-Received: by 2002:aa7:d5d4:0:b0:504:ba4f:3450 with SMTP id d20-20020aa7d5d4000000b00504ba4f3450mr12126271eds.30.1682414700295;
        Tue, 25 Apr 2023 02:25:00 -0700 (PDT)
Received: from [192.168.9.102] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id u11-20020aa7d0cb000000b0050687dbb5dasm5498604edo.31.2023.04.25.02.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 02:24:59 -0700 (PDT)
Message-ID: <466afe93-f9c2-6a73-ffdb-c30778b273af@linaro.org>
Date:   Tue, 25 Apr 2023 11:24:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 03/43] dt-bindings: pinctrl: Add DT bindings ep93xx
 pinctrl
Content-Language: en-US
To:     Nikita Shubin <nikita.shubin@maquefel.me>
Cc:     Arnd Bergmann <arnd@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230424123522.18302-1-nikita.shubin@maquefel.me>
 <20230424123522.18302-4-nikita.shubin@maquefel.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230424123522.18302-4-nikita.shubin@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2023 14:34, Nikita Shubin wrote:
> Add YAML bindings ep93xx SoC.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> 
> Notes:
>     rfc->v0:
>     - dropped separate bindings description, left only one with all groups,
>       functions and etc...
>     - added Alexander Sverdlin to maintainers
>     - added Linus Reviwed-by tags, through i shoudn't =) too many changes
>     - fixed warning and added seq_file header
> 
>  .../pinctrl/cirrus,ep93xx-pinctrl.yaml        | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/cirrus,ep93xx-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/cirrus,ep93xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/cirrus,ep93xx-pinctrl.yaml
> new file mode 100644
> index 000000000000..cba4be7c5994
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/cirrus,ep93xx-pinctrl.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/cirrus,ep93xx-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cirrus ep93xx pins mux controller
> +
> +maintainers:
> +  - Nikita Shubin <nikita.shubin@maquefel.me>
> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cirrus,ep9301-pinctrl
> +      - cirrus,ep9307-pinctrl
> +      - cirrus,ep9312-pinctrl

Blank line

> +  regmap:
> +    description: phandle to syscon

This should be specific - vendor prefix, property name, explanation what
do you need here in description. "phandle to syscon" is redundant.

You also miss type.

Anyway, your example contradicts this. You do not have regmap.

> +
> +patternProperties:
> +  '^pinctrl-':

'^pins-' instead, because pinctrl is the entire device.

> +    type: object
> +    description: pin node
> +    $ref: pinmux-node.yaml#
> +
> +    properties:
> +      function:
> +        enum: [ spi, ac97, i2s, pwm, keypad, pata, lcd, gpio1, gpio2, gpio3,
> +                gpio4, gpio6, gpio7 ]

Why gpio has different versions? gpio should be one function.

> +      groups:
> +        minItems: 1
> +        maxItems: 2
> +        items:
> +          enum: [ ssp, ac97, i2s_on_ssp, i2s_on_ac97, pwm1, gpio1agrp,
> +                  gpio2agrp, gpio3agrp, gpio4agrp, gpio6agrp, gpio7agrp,
> +                  rasteronsdram0grp, rasteronsdram3grp, keypadgrp, idegrp]
> +
> +    required:
> +      - function
> +      - groups
> +
> +required:
> +  - compatible
> +  - regmap
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscon: syscon@80930000 {
> +        compatible = "cirrus,ep9301-syscon",
> +                     "syscon", "simple-mfd";

You created now dependency on this binding. Drop the parent node. If
this is supposed to be always part of syscon, then example could be in
parent's node... but I have doubts that is a part of syscon in the first
place.

> +        reg = <0x80930000 0x1000>;
> +        #clock-cells = <1>;
> +        #reset-cells = <1>;
> +        pinctrl: pinctrl {
> +                compatible = "cirrus,ep9312-pinctrl";

Mixed indentation. Actually before also looks odd...
Use 4 spaces for example indentation.

> +                regmap = <&syscon>;
> +                spi_default_pins: pinctrl-spi {
> +                        function = "spi";
> +                        groups = "ssp";
> +                };
> +        };
> +    };

Best regards,
Krzysztof

