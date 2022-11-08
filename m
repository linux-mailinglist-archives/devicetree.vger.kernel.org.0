Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A9D46217FA
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 16:22:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232923AbiKHPWB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 10:22:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234535AbiKHPWA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 10:22:00 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C4E5C5
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 07:21:59 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id bp15so21626645lfb.13
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 07:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jRzyJnxLYzsMC45/a3kz8XZ7TjuhXHr7cvJ/MBHZNkQ=;
        b=hw0k1LbGg3vqG66OjVuk6oA6tkOW35sqKMUc9v3qxDpYc38pG5DcIuRs4uDv8WIdh/
         n0viDZMSRpHrbG4xEKiGozYKataNa2sQq63PzMhhk5beUlF9VmRRi6sxUrY7iEoMbgvp
         InO211+YW8gWfbrolebIPnWhWMGTqfnWnmTC1W8qiFzrCixhtecLuFXGq7+/odpjn12t
         ElKtJDmuKxrmXsJ0GDiheeRup6S8j26g+R/tljypDNvUR6D1Raz5f1eB1vPickWZM6nZ
         kmaE48SMjTFnhFX0zxwLCA+Xl+PnEf5m1wYusMrnMpTRof3VUkswo6jjPIV9KPAkLwqu
         UKSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jRzyJnxLYzsMC45/a3kz8XZ7TjuhXHr7cvJ/MBHZNkQ=;
        b=nXOHa9mQBhSebvHCzfmcLFGQobcjKtsVLnKrPtqnqQopIPvUKfQ1FOyNQ3GgwKgAie
         unHq6ECmZRYo2L4SaQ73QPAPlOYteXAd6LubK1V2JtndTMtcVePkn+melh9AeOa+ehQt
         yfTuGu9R+ZH2F/0Hd4CstVFdI/7OS2Tx8r4Uw8Toq1sz3NHp5Vo21okEn7Xi9AOAW7oq
         kn3VNermCalM1bXEsmNwzzBCikEvEw8EN5Zx7VXZTj4owukJ1e+Ob8j/prZQl0k6GUU5
         9jaNVPCW0xQqlS7PhlT7mLNSLuvxoMGroxIqPhsykBW7NGQdgrGbPv4td4Q6VgbHgDEj
         xyfw==
X-Gm-Message-State: ACrzQf3f9JlNAr3UfV3GhsQ+RaXH7ti9r0C1FqaeGVN1DJREbtYIpX77
        m5z/L67t2e6E9wHPyPtTiDbZvQ==
X-Google-Smtp-Source: AMsMyM6LqizkdTyXcH8v+ZtywydQIDJ44F2qY7ZT1WgOauSJvGVrxZtsUZXbRwfxXqA//0mgPCPi5A==
X-Received: by 2002:a19:8c46:0:b0:4b1:a5b5:87e6 with SMTP id i6-20020a198c46000000b004b1a5b587e6mr8994696lfj.662.1667920917788;
        Tue, 08 Nov 2022 07:21:57 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id c9-20020a056512324900b004a1e592837esm1830339lfr.140.2022.11.08.07.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 07:21:57 -0800 (PST)
Message-ID: <9fc4d874-a0d0-6c5c-aeee-61ab817fdd9f@linaro.org>
Date:   Tue, 8 Nov 2022 16:21:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 3/3] dt-bindings: gpio: Add Nuvoton NPCM750 serial I/O
 expansion interface(SGPIO)
Content-Language: en-US
To:     Jim Liu <jim.t90615@gmail.com>, JJLIU0@nuvoton.com,
        KWLIU@nuvoton.com, linus.walleij@linaro.org, brgl@bgdev.pl,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org
References: <20221108092840.14945-1-JJLIU0@nuvoton.com>
 <20221108092840.14945-4-JJLIU0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108092840.14945-4-JJLIU0@nuvoton.com>
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

On 08/11/2022 10:28, Jim Liu wrote:
> NPCM750 include two SGPIO modules.
> Each module supports up to 64 input and 64 output pins.
> the output pin must be serial to parallel device(such as the hc595)
> the input in must be parallel to serial device(such as the hc165)
> 
> Signed-off-by: Jim Liu <JJLIU0@nuvoton.com>
> ---
> Changes for v2:
>    - modify description
> ---
>  .../bindings/gpio/nuvoton,sgpio.yaml          | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml b/Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml
> new file mode 100644
> index 000000000000..331e3cb28b98
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/nuvoton,sgpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton SGPIO controller
> +
> +maintainers:
> +  - Jim LIU <JJLIU0@nuvoton.com>
> +
> +description:

description: |

> +  This SGPIO controller is for NUVOTON NPCM7xx and NPCM8xx SoC,
> +  NPCM7xx/NPCM8xx have two sgpio module each module can support up
> +  to 64 output pins,and up to 64 input pin.
> +  Nuvoton NPCM750 SGPIO module is base on serial to parallel IC (HC595)
> +  and parallel to serial IC (HC165).
> +  GPIO pins can be programmed to support the following options
> +  - Support interrupt option for each input port and various interrupt
> +    sensitivity option (level-high, level-low, edge-high, edge-low)
> +  - Directly connected to APB bus and its shift clock is from APB bus clock
> +    divided by a programmable value.
> +  - nin_gpios is number of input GPIO lines
> +  - nout_gpios is number of output GPIO lines
> +  - ngpios is number of nin_gpios GPIO lines and nout_gpios GPIO lines.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,npcm750-sgpio
> +      - nuvoton,npcm845-sgpio
> +
> +  reg:
> +    maxItems: 1
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  nin_gpios: true
> +
> +  nout_gpios: true

These have several issues. No underscores, missing type, no description,
missing maxItems (if these were GPIOs...)

> +
> +  bus-frequency: true

Why? Bus frequency of what? This is a property of bus controllers. You
need to explain in details in description what is this about.

> +
> +required:
> +  - compatible
> +  - reg
> +  - gpio-controller
> +  - '#gpio-cells'
> +  - interrupts
> +  - nin_gpios
> +  - nout_gpios
> +  - clocks
> +  - bus-frequency
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/nuvoton,npcm7xx-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    sgpio1: sgpio@101000 {
> +        compatible = "nuvoton,npcm750-sgpio";
> +        reg = <0x101000 0x200>;
> +        clocks = <&clk NPCM7XX_CLK_APB3>;
> +        interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> +        bus-frequency = <16000000>;
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +        nin_gpios = <64>;
> +        nout_gpios = <64>;
> +        status = "disabled";

Drop


Best regards,
Krzysztof

