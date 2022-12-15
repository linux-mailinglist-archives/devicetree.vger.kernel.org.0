Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C785C64D853
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 10:12:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiLOJMM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 04:12:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229889AbiLOJMB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 04:12:01 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74A8C4B9A2
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 01:11:50 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 1so14693061lfz.4
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 01:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bmdAanfz/VP8hVI+pvXvUMPxx98Oy0JHDJIXTuPRBKM=;
        b=FMb4qhYzCEhjm+w8BD1qR1gQoxNOcTynbj1GoaKthWEJayVLT/xTWQjWo7I34tbyvJ
         82ZOD7/eFMUeo1NZoIMFYNx6GdNpmuH/KhdX7UU3OiaFzxuqdyfcx2TXtT2hAyjsRBqS
         pOov4bHFEdcZxgUMmHy8IiqLKf9rS+oZQizq9MpQaJy7rbuv5cvqD1a3Eq3bV2RsFX/w
         brW5d8kFHfwjkVQLoxSM8G6S6r093vgXpnvUdt9HQIO7T6/9DYE0YflRohsI2nazGSg5
         YgyJ2jeuG1S8l5bGKV6J0p0kOQ2miwHX7fw7TLFedFsNLLnBG3lMH1maB9hNAMTf27r8
         82Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bmdAanfz/VP8hVI+pvXvUMPxx98Oy0JHDJIXTuPRBKM=;
        b=NhyQrQclBlASCbf677Iie4LLddvRB+DtfSAeFt7VLUa9S7mZiQGX7VA/Wmk9sX1qQR
         DTCOphDFMq2o7m24oSF48Oa59mlFUmQJw6JdDg+S0ce04034pgk1QN061oWZyHxv2Vsy
         /kCBJRXlnwqVmiBjXwrd8qMBJihdBbcBglRreiTAH8pkU/mP2w6MYvSBol5iRQI/kXfy
         3YXn9u0FeL30txWd2IbT2XJeuSH1v2EFK0pMGA7DIeYTvS0LE2SxFh+yOZoy4WPy7Ep4
         vc7MQ5NctrcncUHYioxXXFoinJh22u4MOwUpQnSEZgYr/e8Ncjkon40OBpqtcjbPI0+5
         LkBQ==
X-Gm-Message-State: ANoB5pn9TYxmvvW24ZwzglNBaeaToqHGinRW09Wcnty44iEDEoYzFWAn
        IY2cjPR3Umr/xNlTuIAhLt3sMw==
X-Google-Smtp-Source: AA0mqf7nEkEV4/tCj1TBlPApxAfYX5q1f0BDFX1yY2eEWeGW/++VjsHo366CKQ1bD+xUI4ccIM0nWg==
X-Received: by 2002:a05:6512:b24:b0:4b6:f027:2af8 with SMTP id w36-20020a0565120b2400b004b6f0272af8mr4688139lfu.66.1671095508751;
        Thu, 15 Dec 2022 01:11:48 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 13-20020a05651c128d00b0027e3d929fc8sm156942ljc.118.2022.12.15.01.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 01:11:48 -0800 (PST)
Message-ID: <d38655cb-d387-5bbd-c430-52a0b04ae3cc@linaro.org>
Date:   Thu, 15 Dec 2022 10:11:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [RFC PATCH v2 1/3] dt-bindings: gpio: Add gpio-delay binding
 document
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20221214095342.937303-1-alexander.stein@ew.tq-group.com>
 <20221214095342.937303-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221214095342.937303-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2022 10:53, Alexander Stein wrote:
> This adds bindings for a GPIO enable/disable delay driver.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/gpio/gpio-delay.yaml  | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-delay.yaml b/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> new file mode 100644
> index 000000000000..20871356e9b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/gpio-delay.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/gpio-delay.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: GPIO delay controller
> +
> +maintainers:
> +  - Alexander Stein <linux@ew.tq-group.com>
> +
> +description: |
> +  This binding describes an electrical setup where setting an GPIO output
> +  is delayed by some external setup, e.g. RC curcuit.
> +
> +  +----------+                    +-----------+
> +  |          |             VCC_B  |           |
> +  |          |              |     |           |
> +  |          | VCC_A        _     |           |
> +  |  GPIO    |             | | R  |  Consumer |
> +  |controller|        ___  |_|    |           |
> +  |          |       |   |  |     |           |
> +  |      [IOx|-------|   |--+-----|-----+     |
> +  |          |       |___|  |     |   input   |
> +  |          |              |     |           |
> +  +----------+             --- C  +-----------+
> +                           ---
> +                            |
> +                            -
> +                           GND
> +
> +  If the input on the consumer is controlled by an open-drain signal

If IOx is open-drain, what is the VCC_A on the diagram? I think it
wasn't present in original Laurent's diagram.

> +  attached to an RC curcuit the ramp-up delay is not under control
> +  of the GPIO controller.
> +
> +properties:
> +  compatible:
> +    const: gpio-delay
> +
> +  "#gpio-cells":
> +    description: |
> +      Specifies the pin, ramp-up and ramp-down delays. The
> +      delays are specified in microseconds.
> +    const: 3
> +
> +  input-gpios:
> +    description: Array of GPIOs which output signal change is delayed

maxItems: 32 or some other reasonable value

> +
> +  gpio-controller: true
> +
> +  gpio-line-names: true

and then the same maxItems.

> +
> +required:
> +  - compatible
> +  - "#gpio-cells"
> +  - gpio-controller
> +  - input-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    enable_delay: enable-delay {
> +        compatible = "gpio-delay";

I am not sure whether the naming is the most accurate - it represents
desired behavior (so the delay in rising signal), not actual hardware
(RC filter), but maybe that's a bit more generic.

Anyway look fine for me.

> +        #gpio-cells = <3>;
> +        gpio-controller;
> +        input-gpios = <&gpio0 3 GPIO_ACTIVE_LOW>,
> +                      <&gpio3 1 GPIO_ACTIVE_HIGH>;
> +    };
> +
> +    consumer {
> +        enable-gpios = <&enable_delay 0 130000 30000>;
> +    };

Best regards,
Krzysztof

