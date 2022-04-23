Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AA7F50CD07
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 20:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiDWSvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 14:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236803AbiDWSvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 14:51:53 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C75061C5E38
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:48:54 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id be20so5737698edb.12
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 11:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cn6XbdSV75AzJUqDkArX7N9Qwi67g268+E4pm2dewqo=;
        b=nll2PAJt9YMO/U59Hz37tDWVllasTrAyD3eCrwHBbN7g69GupF5QvhZK7r47s73zmv
         lKM4M1IM0d6ouCQjoWcZ1EoMFOjNhw1IeQBYzMihZv+a/tL2BUhoZsokr1KtK4ydPrAX
         fl2txqmjV93IWaFB0D2Ed3IwG/ZIaoM7ekdzjWGlK1X35Cm2dWCJtH1EWaIVquFWTMfy
         BetrPYvG9XNYTs6dKEG8M0Msy8Um5erafxbhRp0dtjazpFdSBXfTpMU7SxeCfPVWexVI
         oFN9xoJ3h+FV4xTYC5tur8a0iPICcTpTC+qpQbCoWsHI61wxqTDriiRf9iZ7n1bbk6hY
         BGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cn6XbdSV75AzJUqDkArX7N9Qwi67g268+E4pm2dewqo=;
        b=EsdKFjwRdZkHdvhHCT3xz5WeJuKN0AWXha8gF+NUwJPHffjVC3+/Ug0XXGKFfVraeb
         LEwBoe6PEHzF1NlJxvnu7F99anSW2q44CQ2WXiTr1bvUlFrwWHEk0/FGSJuD3lJULoqF
         kb6lUmmuQksKEkY+iLukE++cQSJSbkpuMyXb9ED+1aw6+u7s7yx3ISZ7cNsphYlmE7Vz
         PtVM6P5HGDN/FlRQwn44ugkHUKqKApXKMQcI59/6V4BAGyRLsz65aolOpWlT/RuLSq44
         e06a6Qv/J6/ywtBVawAsi8NkQM8INSfcwi8kBVpqXE2wavWuryruBm6sGK0S670f1kk3
         rzUQ==
X-Gm-Message-State: AOAM530Z2eUnFettM1m/Q+bTVThI0e53CowBmeI2rjRYo5bM2PgvlI+G
        /pzxZ8KEMjvC2cX7VB2hqKoUtQ==
X-Google-Smtp-Source: ABdhPJxqvrPTE82vaER+vS4BSUdN4v+0Gf2elep3T/QIBc2ZZd1aa8/RuntBcjoHt4V0LrYFGGNoZA==
X-Received: by 2002:a50:e70f:0:b0:425:da3c:4731 with SMTP id a15-20020a50e70f000000b00425da3c4731mr683754edn.223.1650739733391;
        Sat, 23 Apr 2022 11:48:53 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l2-20020a50c102000000b0042423e1328fsm2445889edf.26.2022.04.23.11.48.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 11:48:53 -0700 (PDT)
Message-ID: <24d1c786-17e5-bd70-df7f-55cff045df7f@linaro.org>
Date:   Sat, 23 Apr 2022 20:48:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: i3c: Convert cdns,i3c-master to DT schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        =?UTF-8?Q?Przemys=c5=82aw_Gaj?= <pgaj@cadence.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Boris Brezillon <bbrezillon@kernel.org>
Cc:     linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220422192224.2594098-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422192224.2594098-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2022 21:22, Rob Herring wrote:

(...)

> diff --git a/Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml
> new file mode 100644
> index 000000000000..cc40d25358ec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/cdns,i3c-master.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i3c/cdns,i3c-master.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence I3C master block
> +
> +maintainers:
> +  - Boris Brezillon <bbrezillon@kernel.org>
> +
> +allOf:
> +  - $ref: i3c.yaml#
> +
> +properties:
> +  compatible:
> +    const: cdns,i3c-master
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: sysclk
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i3c-master@d040000 {
> +        compatible = "cdns,i3c-master";
> +        clocks = <&coreclock>, <&i3csysclock>;
> +        clock-names = "pclk", "sysclk";
> +        interrupts = <3 0>;

There is a chance this is IRQ_TYPE_NONE and should be something more
reasonable, but without DTS example we might not know.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
