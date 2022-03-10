Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60F004D41B5
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 08:21:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240057AbiCJHWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 02:22:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234095AbiCJHWs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 02:22:48 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 721E7131941
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 23:21:47 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 372973F1AF
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 07:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646896906;
        bh=EqxkVb67gGDdKh1qAAOU776fhGQMZtKjkW6ONAgjPtI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=iJQn5ddp7FJODhH4OQG8AlX9dxSs+GwnYRpvVOXsodMYmsVArJJsd1akxF5bR/fEQ
         bTCYnjb62u82ShpfZvvOtDKuasE2K6YTlybDokVqHY7o0Wm0IA1R5vIEDb8a4bP3J4
         6SsDgarq4k7Mc9CZh4hl9/QKoqXSwoz+OMJaGCxkQ8zOTj2rMjp4PXymAcqWGaboLE
         o4gXTGlVN/ZBxc4j34e/2F5yliifPGbrxbE/HHGC5nCpoTfCgFebwVFVfZ8V6WagyT
         ek+EXRzJvieUpO5Dpr+2ROWLGWb3LgkuJ1rOnXIdPOfwdE+MvHmQU03HVlE4WzqGC3
         xih631Zwxx9qA==
Received: by mail-ej1-f69.google.com with SMTP id m12-20020a1709062acc00b006cfc98179e2so2627561eje.6
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 23:21:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EqxkVb67gGDdKh1qAAOU776fhGQMZtKjkW6ONAgjPtI=;
        b=sA1Hxoi8Im0e9cZOGFJSHX660tErA6EFRZjnH3t0h1DMR3zRUY+O35vS4jS4bDLWua
         UKoq7WOlatJA1Z5OZsCBY6/BmBwvxuELWTGJ4Vcb7gSi1ePDmEAysCdldjz2T1pr3mVe
         acNYtSoulCmA6FufO1FQR3mQZ/M8xexioNKd2eiz+lbhKhlzLjGqJhdQyvNrOJZBD3Yh
         17I5fP6diCGF7et0rpwNmWFjTq0BV8qC0quURoj4v83iaHS1I8n4nW/cu/YOZFHpBisy
         cDgyoNCC2NApCrSzPz/4uK0oSm7WNRqYJ/BheRC9I7QpowJTqHVeBiVCGCpsSIfWoHoN
         JkoA==
X-Gm-Message-State: AOAM532CFEVLA9wAZ2VEXxPtuKOwpHA2qgUL87G+kMu5eDmIaxwZeWVG
        hNKas0zZzrHtA+zk/4DdvuUDp38rQ4jr9U1quWlGFRA/gGcdeUytmnUF29NKGmcjg7wuXkZjA6c
        QO59QDhsr6vCnmvQytA8LmlCPralCHPhOgTRYHiY=
X-Received: by 2002:a05:6402:4248:b0:416:9c69:4f80 with SMTP id g8-20020a056402424800b004169c694f80mr2982705edb.83.1646896905852;
        Wed, 09 Mar 2022 23:21:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz+3eWokpxhtXe2wVh6nN7bHWyDGgTMN6Es+jLrgfrpsFjuHIl5WqP65Ub3/K8AH4yn6TiAwg==
X-Received: by 2002:a05:6402:4248:b0:416:9c69:4f80 with SMTP id g8-20020a056402424800b004169c694f80mr2982692edb.83.1646896905665;
        Wed, 09 Mar 2022 23:21:45 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id fx13-20020a170906b74d00b006da9e406786sm1507452ejb.189.2022.03.09.23.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Mar 2022 23:21:45 -0800 (PST)
Message-ID: <4ebce779-63f5-a7b4-6cd7-5152ce345531@canonical.com>
Date:   Thu, 10 Mar 2022 08:21:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/3] dt-bindings: i2c: convert i2c-at91 to json-schema
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, robh+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20220309120714.51393-1-sergiu.moga@microchip.com>
 <20220309120714.51393-3-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220309120714.51393-3-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2022 13:07, Sergiu Moga wrote:
> Convert I2C binding for Atmel/Microchip SoCs to Device Tree Schema
> format.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
>  .../bindings/i2c/atmel,at91sam-i2c.yaml       | 144 ++++++++++++++++++
>  .../devicetree/bindings/i2c/i2c-at91.txt      |  82 ----------
>  2 files changed, 144 insertions(+), 82 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-at91.txt
> 
> diff --git a/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml b/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
> new file mode 100644
> index 000000000000..d4aadbbd1a11
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
> @@ -0,0 +1,144 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 Microchip Technology, Inc. and its subsidiaries
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/atmel,at91sam-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: I2C for Atmel/Microchip platforms
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +
> +allOf:
> +  - $ref: "i2c-controller.yaml"
> +  - if:

allOf with additional if: goes by convention after required:.

> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - atmel,sama5d4-i2c
> +              - atmel,sama5d2-i2c
> +              - microchip,sam9x60-i2c
> +    then:
> +      properties:
> +        i2c-sda-hold-time-ns:
> +          description:
> +            TWD hold time
> +          maxItems: 1
> +
> +properties:
> +  compatible:
> +    enum:
> +      - atmel,at91rm9200-i2c
> +      - atmel,at91sam9261-i2c
> +      - atmel,at91sam9260-i2c
> +      - atmel,at91sam9g20-i2c
> +      - atmel,at91sam9g10-i2c
> +      - atmel,at91sam9x5-i2c
> +      - atmel,sama5d4-i2c
> +      - atmel,sama5d2-i2c
> +      - microchip,sam9x60-i2c
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    default: 100000
> +
> +  dmas:
> +    items:
> +      - description: TX DMA Channel Specifier
> +      - description: RX DMA Channel Specifier
> +
> +  dma-names:
> +    items:
> +      - const: tx
> +      - const: rx
> +
> +  atmel,fifo-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Maximum number of data the RX and TX FIFOs can store for
> +      FIFO capable I2C controllers.
> +
> +  scl-gpios: true
> +
> +  sda-gpios: true
> +
> +  pinctrl:
> +    description: |
> +      Add extra pinctrl to configure i2c pins to gpio function for i2c
> +      bus recovery, call it "gpio" state

This is a generic property, you do not need it.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#address-cells"
> +  - "#size-cells"
> +  - clocks
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/dma/at91.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c0: i2c@fff84000 {
> +        compatible = "atmel,at91sam9g20-i2c";
> +        reg = <0xfff84000 0x100>;
> +        interrupts = <12 IRQ_TYPE_LEVEL_HIGH 6>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        clocks = <&twi0_clk>;
> +        clock-frequency = <400000>;
> +
> +        eeprom@50 {
> +            compatible = "atmel,24c512";
> +            reg = <0x50>;
> +            pagesize = <128>;
> +        };
> +    };
> +
> +    i2c1: i2c@f8034600 {
> +        compatible = "atmel,sama5d2-i2c";
> +        reg = <0xf8034600 0x100>;
> +        interrupts = <19 IRQ_TYPE_LEVEL_HIGH 7>;
> +        dmas = <&dma0
> +            (AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1))
> +            AT91_XDMAC_DT_PERID(11)>,
> +               <&dma0
> +            (AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1))
> +            AT91_XDMAC_DT_PERID(12)>;
> +        dma-names = "tx", "rx";
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        clocks = <&flx0>;
> +        atmel,fifo-size = <16>;
> +        i2c-sda-hold-time-ns = <336>;
> +        pinctrl-names = "default", "gpio";
> +        pinctrl-0 = <&pinctrl_i2c0>;
> +        pinctrl-1 = <&pinctrl_i2c0_gpio>;
> +        sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
> +        scl-gpios = <&pioA 31 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +
> +        eeprom@1a {
> +            compatible = "wm8731";

It seems this is undocumented compatible. Could you use something else,
documented?

Best regards,
Krzysztof
