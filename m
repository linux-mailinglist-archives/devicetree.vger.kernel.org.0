Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 872A165FCDE
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 09:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232696AbjAFIfa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 03:35:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232824AbjAFIfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 03:35:11 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F2941663
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 00:34:28 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id bi26-20020a05600c3d9a00b003d3404a89faso3331979wmb.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 00:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m92kzOal4gXjuPv7PrxQIGfw6UMdQvcts3JmeuS3/l8=;
        b=ftZagesGRox1JSO1lt4TzrSTcQEjtxK6cknjK5abjVM3J7ZGgcA6WJPTuWbS4nz47z
         hV6dioqrVHtmYAr9KMmJ27M6rTRncRek0eY1OMdF0CAuP7+1e3+gIqsGAnGKgsoM6UG7
         LSTUZN6izU5W/M1UC2aDzgQSZNKCnX/Ls6OgJZUW7KwfJWev7OunogaQqU7IEFoByNtX
         cMf5yJ98y89c7SsmTaH2jRulpMxRANzXrpirZnO9mpzCIRJmM4yEFKGCydwuY1RhIVle
         ZnuP/DD4XPitL2jE5CHNBCXnnKLLBSroz/MbJ8ZTAqSltou0sXS9busb9244fTYPJvwV
         DwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m92kzOal4gXjuPv7PrxQIGfw6UMdQvcts3JmeuS3/l8=;
        b=ccy+GeD+xGevO00z8BnK601Pbb1QF9PY12xB99tYpoOEnAGsRnIYTiX0EQ/8V7mdoG
         RP4Dk60IvpLNdOqYuWTBzm/pU3MvpY2NVgHr//GNJZ0X9K3lwOH2wpQI+/Cob7NmhO28
         VlnWDXiJeavn9JN3oHXVqI7H9QvE3BtIbvuoDVEnnU1h430e7gm13+gxvO4EnuCXGer3
         m0Jyls6qp7bWCdgFty5Gnr257C0G5fsfRBynWMBBzi68AidTmA/xIidZzZW/prqfHjvN
         byscofqLfql3GiN46XxShNDPOvQp+hHaFwZJdv6B7FDQ/1XIOf96e5MtgOHvA8HKYLtM
         KlRg==
X-Gm-Message-State: AFqh2kqZX4ey6PYK27mCZbq+7FV1qUAmFiz0BjupRmIqiGp6Fk7GkGFG
        RMMyHLDrsR2nLqCoGEPT852GAA==
X-Google-Smtp-Source: AMrXdXt5PZtBg7628GLaC6/rPUB/MnEARluyZ0woNWPIGD+t7sy1tJflYie+CubFAfEL6LRhzotzYA==
X-Received: by 2002:a05:600c:4f83:b0:3d3:49db:d95 with SMTP id n3-20020a05600c4f8300b003d349db0d95mr38310610wmq.37.1672994064956;
        Fri, 06 Jan 2023 00:34:24 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l14-20020a05600c4f0e00b003d96c811d6dsm5757889wmq.30.2023.01.06.00.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 00:34:24 -0800 (PST)
Message-ID: <4a3f0fc7-4723-919a-ed8c-59e364d55c6f@linaro.org>
Date:   Fri, 6 Jan 2023 09:34:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] dt-bindings: media: Add schema for OmniVision OV8858
Content-Language: en-US
To:     Jacopo Mondi <jacopo@jmondi.org>,
        Nicholas Roth <nicholas@rothemail.net>,
        Robert Mader <robert.mader@collabora.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20230105172320.133810-1-jacopo@jmondi.org>
 <20230105172320.133810-2-jacopo@jmondi.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230105172320.133810-2-jacopo@jmondi.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/01/2023 18:23, Jacopo Mondi wrote:
> From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> 

Subject: drop redundant "schema for".

> Add binding schema for the OmniVision OV8858 8 Megapixels camera sensor.
> 

Thank you for your patch. There is something to discuss/improve.

> +properties:
> +  compatible:
> +    const: ovti,ov8858
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: XVCLK external clock
> +
> +  clock-names:
> +    const: xvclk
> +
> +  dvdd-supply:
> +    description: Digital Domain Power Supply
> +
> +  avdd-supply:
> +    description: Analog Domain Power Supply
> +
> +  dovdd-supply:
> +    description: I/O Domain Power Supply
> +
> +  powerdown-gpios:
> +    maxItems: 1

No need for maxItems here - it is coming from gpio-consumer-common.

> +    description: PWDNB powerdown GPIO (active low)
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: XSHUTDN reset GPIO (active low)
> +
> +  port:
> +    description: MIPI CSI-2 transmitter port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        properties:
> +          data-lanes:
> +            minItems: 1
> +            maxItems: 4
> +
> +        required:
> +          - data-lanes
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - assigned-clocks
> +  - assigned-clock-rates

These should not be required.

> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/pinctrl/rockchip.h>

Drop, not needed.

> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c2 {

i2c

> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ov8858: camera@36 {
> +            compatible = "ovti,ov8858";
> +            reg = <0x36>;
> +
> +            clocks = <&cru SCLK_CIF_OUT>;
> +            clock-names = "xvclk";
> +            assigned-clocks = <&cru SCLK_CIF_OUT>;
> +            assigned-clock-rates = <24000000>;
> +
> +            dovdd-supply = <&vcc1v8_dvp>;
> +
> +            reset-gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_LOW>;
> +            powerdown-gpios = <&gpio2 RK_PB4 GPIO_ACTIVE_LOW>;
> +
> +            port {
> +                ucam_out: endpoint {
> +                    remote-endpoint = <&mipi_in_ucam>;
> +                    data-lanes = <1 2 3 4>;
> +                };
> +            };
> +        };
> +    };
> +...
> --
> 2.38.1
> 

Best regards,
Krzysztof

