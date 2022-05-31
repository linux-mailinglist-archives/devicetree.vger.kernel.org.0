Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 958CA538E77
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 12:08:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235739AbiEaKIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 06:08:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231720AbiEaKIm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 06:08:42 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9B7F76292
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 03:08:40 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id wh22so25636433ejb.7
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 03:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0xEDKtRJ1gFx9yMLHsbYq7kEF2/saJCmbQuGtwp5BAo=;
        b=FJlTsAsgLQm8T7cg7ztoR+hVidoRf0V5AWOmRsLnTi0T7R1GvuT2r/FFDmqkIl53A6
         DbHgnZvG+DyTKUwG/vdUmgZmVNF+w7UeZKwmdDVjGozRWvHTYOIaY1SWDxFECXfVzcy0
         LAg5f9EqBC3WEIjvhOnIkvR7P+OsgIhI/OiivIkJBdzRo9jS9E+2yx+Sm8NDltnFTUwA
         IYLDY1JDsLGwfIc2HtBk3jWG83NDp0Ea+TiENVqdmzdP+uv3rQqxCeGPQQRIR8kZ+lhz
         EsPkUVZzzGoPnArdmSNQGceUzqD1QuOmhiLIlqBDnkgIxv0uDEGSG52wLOF3N4QCWRdj
         7/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0xEDKtRJ1gFx9yMLHsbYq7kEF2/saJCmbQuGtwp5BAo=;
        b=Kc98AZMKQ9nPW8Yw+rN7tnGbdPbZ3Ov2KGHPIcO5t5hrRiRjqkuybPTjy0fd/Mwp8B
         N8mFpZYEz13XI6r9B2U50Ns4oZU+zh8c8JAsaGhfYDhiIqzRDYcwt81esDr+r1yiG2lX
         QWlc2xqm4qFqYpjXFW0h9/l3ItsO4LRpHd02QxblrVy8SZl3TrGOMTxxlh+kYEJ9Jw/E
         C9Hf9RFUU7ZHGhMwIFY66rYy168Kt7KrAgm6G08q6+5WRxMe0GKRzHLrZV/1D9JWOFxh
         XAUlgpqVYbwChlMarzDLS0AHWFjrFB7nWEza0aOTlXYDOWVYGcj22LH3o64k/wHOKEvz
         IapA==
X-Gm-Message-State: AOAM533rs4sQkHCFXAjGJXuYr4t0Dacj7olrgmspDQTbfPKZPk0tKdkq
        CvvAkX70F3EL08jJcRAuawVJ1g==
X-Google-Smtp-Source: ABdhPJxvLTVkRm6gy9yj0yU6UO395ZmuZmGbmyxXWGwAn4IUJBt1uCvPDQ8Lpwmm1nn62gUGkldWYA==
X-Received: by 2002:a17:906:5d0d:b0:6fe:b420:5eab with SMTP id g13-20020a1709065d0d00b006feb4205eabmr45855204ejt.23.1653991719238;
        Tue, 31 May 2022 03:08:39 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i16-20020a1709063c5000b006fed85c1a72sm4802036ejg.223.2022.05.31.03.08.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 03:08:38 -0700 (PDT)
Message-ID: <4ccba38a-ccde-83cd-195b-77db7a64477c@linaro.org>
Date:   Tue, 31 May 2022 12:08:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/2] dt-bindings: net: Add ICSSG Ethernet Driver
 bindings
Content-Language: en-US
To:     Puranjay Mohan <p-mohan@ti.com>, linux-kernel@vger.kernel.org
Cc:     davem@davemloft.net, edumazet@google.com,
        krzysztof.kozlowski+dt@linaro.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, nm@ti.com, ssantosh@kernel.org,
        s-anna@ti.com, linux-arm-kernel@lists.infradead.org,
        rogerq@kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
        kishon@ti.com, robh+dt@kernel.org, afd@ti.com, andrew@lunn.ch
References: <20220531095108.21757-1-p-mohan@ti.com>
 <20220531095108.21757-2-p-mohan@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531095108.21757-2-p-mohan@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 11:51, Puranjay Mohan wrote:
> Add a YAML binding document for the ICSSG Programmable real time unit
> based Ethernet driver. This driver uses the PRU and PRUSS consumer APIs
> to interface the PRUs and load/run the firmware for supporting ethernet
> functionality.
> 
> Signed-off-by: Puranjay Mohan <p-mohan@ti.com>
> ---
> v1: https://lore.kernel.org/all/20220506052433.28087-2-p-mohan@ti.com/ 
> v1 -> v2:
> * Addressed Rob's Comments

Nope, they were not addressed.

> * It includes indentation, formatting, and other minor changes.
> ---
>  .../bindings/net/ti,icssg-prueth.yaml         | 181 ++++++++++++++++++
>  1 file changed, 181 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml b/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
> new file mode 100644
> index 000000000000..40af968e9178
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/ti,icssg-prueth.yaml
> @@ -0,0 +1,181 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/ti,icssg-prueth.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: |+

Missed Rob's comment.

> +  Texas Instruments ICSSG PRUSS Ethernet
> +
> +maintainers:
> +  - Puranjay Mohan <p-mohan@ti.com>
> +
> +description:
> +  Ethernet based on the Programmable Real-Time
> +  Unit and Industrial Communication Subsystem.
> +
> +allOf:
> +  - $ref: /schemas/remoteproc/ti,pru-consumer.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,am654-icssg-prueth  # for AM65x SoC family
> +
> +  pinctrl-0:
> +    maxItems: 1
> +
> +  pinctrl-names:
> +    items:
> +      - const: default

You do not need these usually, they are coming from schema.

> +
> +  sram:
> +    description:
> +      phandle to MSMC SRAM node
> +
> +  dmas:
> +    maxItems: 10
> +    description:
> +      list of phandles and specifiers to UDMA.

Please follow Rob's comment - drop description.

> +
> +  dma-names:
> +    items:
> +      - const: tx0-0
> +      - const: tx0-1
> +      - const: tx0-2
> +      - const: tx0-3
> +      - const: tx1-0
> +      - const: tx1-1
> +      - const: tx1-2
> +      - const: tx1-3
> +      - const: rx0
> +      - const: rx1
> +
> +  ethernet-ports:
> +    type: object
> +    properties:
> +      '#address-cells':
> +        const: 1
> +      '#size-cells':
> +        const: 0
> +
> +    patternProperties:
> +      ^port@[0-1]$:

How did you implement Rob's comments here?

> +        type: object
> +        description: ICSSG PRUETH external ports
> +
> +        $ref: ethernet-controller.yaml#
> +
> +        unevaluatedProperties: false
> +        additionalProperties: true

No one proposed to add additionalProperties:true... Does it even work?

> +        properties:
> +          reg:
> +            items:
> +              - enum: [0, 1]
> +            description: ICSSG PRUETH port number
> +
> +          ti,syscon-rgmii-delay:
> +            $ref: /schemas/types.yaml#/definitions/phandle-array
> +            description:
> +              phandle to system controller node and register offset
> +              to ICSSG control register for RGMII transmit delay
> +
> +        required:
> +          - reg
> +
> +  ti,mii-g-rt:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: |
> +      phandle to MII_G_RT module's syscon regmap.
> +
> +  ti,mii-rt:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: |
> +      phandle to MII_RT module's syscon regmap
> +
> +  interrupts:
> +    minItems: 2
> +    maxItems: 2
> +    description: |
> +      Interrupt specifiers to TX timestamp IRQ.
> +
> +  interrupt-names:
> +    items:
> +      - const: tx_ts0
> +      - const: tx_ts1
> +
> +required:
> +  - compatible
> +  - sram
> +  - ti,mii-g-rt
> +  - dmas
> +  - dma-names
> +  - ethernet-ports
> +  - interrupts
> +  - interrupt-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +
> +    /* Example k3-am654 base board SR2.0, dual-emac */
> +    pruss2_eth: pruss2_eth {
> +            compatible = "ti,am654-icssg-prueth";

Again missed Rob's comment.

Really, you ignored four of his comments. Please respect reviewers time
but not forcing them to repeat same review comments.

Best regards,
Krzysztof
