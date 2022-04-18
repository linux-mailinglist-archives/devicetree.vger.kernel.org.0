Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D95850516C
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 14:32:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239172AbiDRMer (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 08:34:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239209AbiDRMce (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 08:32:34 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3DA925EA8
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:24:22 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id s18so26649466ejr.0
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5BNPomPjSt5hiIea69EjTytPpEqikhMJXfLRqSI0kqc=;
        b=I5SuOIQtfj+q49dWAfkSqB3QEoGkcQfwsNlbTI9LRwxKGBca6C8FMO+RPcsStXcouw
         2FsU+EMejcQ0Xq1EFdGgKf/N0JaDRNSS6bl0roXE2RYiN5oKXz8I6gVyJfznys9CUYX8
         +CoXwOuhTicBgujPYcRgqJdLf7vzTFMmxZd6d7Hgji5Z7cuQcx5Lyjj14s7fbAO7JEzb
         DNDK4/EVWvedwBSd1WFiEqgWHULj7pdR4Hl2iE1K0m1Vgbd0rO1/L/frFwRlQzFaNgAA
         QAce4D+vkqhUF8XTQcjzsAPhK7Gh33ZJmRF2v24MjS1kRSmbU2jYVlHOo2ZL7hzsz/Zc
         NB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5BNPomPjSt5hiIea69EjTytPpEqikhMJXfLRqSI0kqc=;
        b=L9M80v6Zl5WJmxcOQu+6CptIflmEM0T5dDynYL40RTJhUOvnghrtmLE/9waMDF6mJT
         0ADgQSv3HpwugxHv8HM3Jl3UGnRlJ6+VjqCjqut+6u6e9U4QiSzKO13/5IwmB2BroLml
         AuKeNMVLqnOcIWwVMyRHpKKuATRt5OjKtO1rWwflP43JvdX7bNj90OdfrAgOKKg+SJM2
         oHpZNh7QNKWlJNbu2It1vzwGx+psK5W9z8jGiDMV5GbJmfjHEAoZ6U7npxv2SUMzuIa+
         bLAnFVpQW8c7dX7SRkOnFze5fSd41ZNGDxEn3qlzfPDUgqVMaOIgmvls+sHITVQJxgnd
         op4g==
X-Gm-Message-State: AOAM531wWUX12hTwudbrLhBWDlobRXxapzgx9C2JtwUVkW3Xn6nbAEHd
        JI1JUsiRHIukrNVqwYCkskUBug==
X-Google-Smtp-Source: ABdhPJzA+mjTWUhOE3zIGZp8dEO8EaZ9s5olb+oYT5/uf26kP4FWKUquYw+4VYBh+7qW1k0QWLNFNg==
X-Received: by 2002:a17:907:a40b:b0:6da:b4a1:33fa with SMTP id sg11-20020a170907a40b00b006dab4a133famr8628973ejc.22.1650284661044;
        Mon, 18 Apr 2022 05:24:21 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v21-20020a1709064e9500b006e8973a14d0sm4596498eju.174.2022.04.18.05.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Apr 2022 05:24:20 -0700 (PDT)
Message-ID: <d441a648-a85c-6610-fc07-0956395f903d@linaro.org>
Date:   Mon, 18 Apr 2022 14:24:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/4] dt-bindings: input: Add the PinePhone keyboard
 binding
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Ondrej Jirman <x@xff.cz>,
        linux-kernel@vger.kernel.org
References: <20220417021633.56127-1-samuel@sholland.org>
 <20220417021633.56127-2-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220417021633.56127-2-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/04/2022 04:16, Samuel Holland wrote:

(...)

> +properties:
> +  compatible:
> +    const: pine64,pinephone-keyboard
> +
> +  reg:
> +    const: 0x15
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  vbat-supply:
> +    description: Supply for the keyboard MCU
> +
> +  wakeup-source: true
> +
> +  i2c-bus:

Generic node names, so just "i2c".

> +    $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +unevaluatedProperties: false

You do not include any other schema at this level, so this should be
additionalProperties:false.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/input/input.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      keyboard@15 {
> +        compatible = "pine64,pinephone-keyboard";
> +        reg = <0x15>;
> +        interrupt-parent = <&r_pio>;
> +        interrupts = <0 12 IRQ_TYPE_EDGE_FALLING>; /* PL12 */
> +
> +        i2c-bus {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          charger@75 {
> +            reg = <0x75>;
> +          };
> +        };
> +      };
> +    };


Best regards,
Krzysztof
