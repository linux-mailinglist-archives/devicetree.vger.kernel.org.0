Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63CF14FF208
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 10:37:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbiDMIjV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 04:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230465AbiDMIjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 04:39:21 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C8621E00
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 01:37:00 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id i27so2419390ejd.9
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 01:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=romxRiluSB3U0MCTAL9z6l+v5VOVo8m/ALapz+wT32A=;
        b=lShIAVau+MdOfLw193QaR654f2SmMyCpR65VcSSgQ9T80U096HXyiqN7tFOuAJVcQY
         NOv1m0HwSDn/80HahOXkffIb6cpa4sGxMqzbnwh5Xn/SbHMFgWbiUh+yt88jpBs5uScl
         95fGpJ6LPrwODzEP2y81iGlD+Bpp4mvO2S2pdz3vH/gklzF7TCYu2Q7SbMaWdxYgrIPt
         AWpK5vWspt8rknmp2iWdE1k7bPYWdP2WXoLBoRIR/GZHU35CDyJvxwcFhOWduAjxNDvR
         Z9fmr2A8rrITyv05jN+T4ojQnpjQBAqFjPg/iJpg/7Q5Yjh+8qFgAegoA5axQXv3FRPf
         AQaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=romxRiluSB3U0MCTAL9z6l+v5VOVo8m/ALapz+wT32A=;
        b=S3ekR/5qG5/ZcUEOmNluyFfUpLRe6O8uxSuQA+gaXs04LtCPhK34D7g5WHCpU3ftOz
         iukJ2i/OMj13+dAqZBxjQ3DwoWOJj/TZNBwnWnM5DY+7H391rkQ4MGr56aiastKaoT03
         RIz7n4yfKtWHfFflLqSrrXplKq5K4Ir99GUq32H3CTYrVIgQNRSRjlGPGj4utRDbsoX7
         p7aurJa0Yx46kPlbU9Nxcg7Q08780xpblbVew4hySlK1vZt56lHIcd5x1/SgREyS32Mw
         EtGhVRUXodePqRj3ZKokHNxWdPoFsis+Ml/GTPbxjSYkxCZFGbBEbVBifVjurjxb/yJV
         5jVA==
X-Gm-Message-State: AOAM533Qo+U9OhH9CB6h6L1huNRvkEiv7xjqI6kXK+GZtUwrSwHypIRs
        RgyJa4RkVs/THwMrZskA5qBPaw==
X-Google-Smtp-Source: ABdhPJwyO3ujtYZ8zdBnstb0qBwrJbgY3E1o/vvFesiYP0u1IUaep7l2Er6QwXBipThd6b61U3Zw2g==
X-Received: by 2002:a17:907:3e0d:b0:6e8:cccd:de80 with SMTP id hp13-20020a1709073e0d00b006e8cccdde80mr1163223ejc.162.1649839018538;
        Wed, 13 Apr 2022 01:36:58 -0700 (PDT)
Received: from [192.168.0.202] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id m19-20020a170906849300b006e89efedf50sm2556102ejx.171.2022.04.13.01.36.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 01:36:58 -0700 (PDT)
Message-ID: <bd861601-1c17-1905-b267-8d8ccb444d8b@linaro.org>
Date:   Wed, 13 Apr 2022 10:36:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: Update TI timer to yaml
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-omap@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Keerthy <j-keerthy@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
References: <20220413081042.27088-1-tony@atomide.com>
 <20220413081042.27088-2-tony@atomide.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220413081042.27088-2-tony@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2022 10:10, Tony Lindgren wrote:
> Let's update the TI timer binding to use yaml. As this binding is specific
> to the TI dual-mode timers also known as dm-timers, let's use file name
> ti,timer-dm.yaml to avoid confusion with other timers.
> 
> We add checks for the deprecated ti,hwmods property as done for other TI
> device driver bindings earlier.
> 
> We also correct the issue with the old binding that was out of date for
> several properties.
> 
> The am43 related timers are undocumented, but compatible with the am3
> timers. Let's add the am43 timers too.
> 
> The dm814 and dm816 timers are missing, let's add them.
> 
> Some timers on some SoCs are dual mapped, like the ABE timers on omap4
> and 5. The reg property maxItems must be updated to 2.
> 
> The timer clocks can be managed by the parent interconnect target module
> with no clocks assigned for the timer node. And in some cases, the SoC may
> need to configure additional system clock for the timer in addition to the
> functional clock.
> 
> The clock names are optional and not specific to the comptible property.
> For example, dra7 timers on l3 interconnect do not need clock-names, while
> the timers on dra7 l4 interconnect need them with both being compatible
> with ti,omap5430-timer.
> 
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Grygorii Strashko <grygorii.strashko@ti.com>
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  .../bindings/pwm/pwm-omap-dmtimer.txt         |   2 +-
>  .../bindings/timer/ti,timer-dm.yaml           | 148 ++++++++++++++++++
>  .../devicetree/bindings/timer/ti,timer.txt    |  44 ------
>  3 files changed, 149 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/timer/ti,timer-dm.yaml
>  delete mode 100644 Documentation/devicetree/bindings/timer/ti,timer.txt
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-omap-dmtimer.txt b/Documentation/devicetree/bindings/pwm/pwm-omap-dmtimer.txt
> --- a/Documentation/devicetree/bindings/pwm/pwm-omap-dmtimer.txt
> +++ b/Documentation/devicetree/bindings/pwm/pwm-omap-dmtimer.txt
> @@ -2,7 +2,7 @@
>  
>  Required properties:
>  - compatible: Shall contain "ti,omap-dmtimer-pwm".
> -- ti,timers: phandle to PWM capable OMAP timer. See timer/ti,timer.txt for info
> +- ti,timers: phandle to PWM capable OMAP timer. See timer/ti,timer-dm.yaml for info
>    about these timers.
>  - #pwm-cells: Should be 3. See pwm.yaml in this directory for a description of
>    the cells format.
> diff --git a/Documentation/devicetree/bindings/timer/ti,timer-dm.yaml b/Documentation/devicetree/bindings/timer/ti,timer-dm.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/ti,timer-dm.yaml
> @@ -0,0 +1,148 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/ti,timer-dm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI dual-mode timer
> +
> +maintainers:
> +  - Tony Lindgren <tony@atomide.com>
> +
> +description: |
> +  The TI dual-mode timer is a general purpose timer with PWM capabilities.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - ti,am335x-timer
> +              - ti,am335x-timer-1ms
> +              - ti,dm814-timer
> +              - ti,dm816-timer
> +              - ti,omap2420-timer
> +              - ti,omap3430-timer
> +              - ti,omap4430-timer
> +              - ti,omap5430-timer
> +      - items:
> +          - const: ti,am4372-timer
> +          - const: ti,am335x-timer
> +      - items:
> +          - const: ti,am4372-timer-1ms
> +          - const: ti,am335x-timer-1ms
> +
> +  reg:
> +    items:
> +      - description: IO address
> +      - description: L3 to L4 mapping for omap4/5 L4 ABE
> +    minItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Functional clock
> +      - description: System clock for omap4/5 and dra7
> +    minItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: fck
> +      - const: timer_sys_ck
> +    minItems: 1
> +
> +  interrupts:
> +    description:
> +      Interrupt if available. The timer PWM features may be usable
> +      in a limited way even without interrupts.
> +    maxItems: 1
> +
> +  ti,timer-alwon:
> +    description:
> +      Timer is always enabled when the SoC is powered. Note that some SoCs like
> +      am335x can suspend to PM coprocessor RTC only mode and in that case the
> +      SoC power is cut including timers.
> +    type: boolean
> +
> +  ti,timer-dsp:
> +    description:
> +      Timer is routable to the DSP in addition to the operating system.
> +    type: boolean
> +
> +  ti,timer-pwm:
> +    description:
> +      Timer has been wired for PWM capability.
> +    type: boolean
> +
> +  ti,timer-secure:
> +    description:
> +      Timer access has been limited to secure mode only.
> +    type: boolean
> +
> +  ti,hwmods:
> +    description:
> +      Name of the HWMOD associated with timer. This is for legacy
> +      omap2/3 platforms only.
> +    $ref: /schemas/types.yaml#/definitions/string
> +    deprecated: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - ti,omap3430-timer
> +                - ti,omap4430-timer
> +                - ti,omap5430-timer
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: IO address

You can skip the items because they are the same as in properties
before. Just keep maxItems:1.

> +          maxItems: 1
> +        clocks:
> +          items:
> +            - description: Functional clock

The same.

> +          maxItems: 1
> +        clock-names:
> +          items:
> +            - const: fck

The same.

> +          maxItems: 1

Rest is good.

Best regards,
Krzysztof
