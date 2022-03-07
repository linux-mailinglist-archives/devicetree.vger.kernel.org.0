Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 076724CFCE9
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 12:30:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235208AbiCGLbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 06:31:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240351AbiCGLbA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 06:31:00 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04A8E289B3
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 03:18:27 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 530993F605
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646651906;
        bh=X1MD5pHlAbnbnPImmhEg02VNFqeLp0wIprexgDJRTzI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=RcxDLkw65ELF4dMRytxRKYiu9GgiZ9/dUvK9SFvdw+JZc1B/x2Q7eb8JeX3SPdinD
         3NnFI54fQWFt1awuKGFc7kJ8xoFtrICbZhAHg2gYlBVh5OxGu6Io5llZ8sqMYAR1A0
         R5TgSvqsj2bluEwaAsmnw72FBvCtceQiIkerk3b3o7hZqkL0tK2KuDPMjEEValpj04
         jEhrqoyF22nYmFlVOdw4uQPyzXSZ5NhD5iXziFZHxrSOS0Bt9ejbtOQhdDqo36/mrL
         Cc9Xxod83h4PhEjg8aeeMTjcHKv4AxFAvn3WF8Y+Z3S7kqzukKU9bye+Uzuf5y3rvH
         /ki7EdXhkqwyg==
Received: by mail-ej1-f70.google.com with SMTP id m12-20020a1709062acc00b006cfc98179e2so6857708eje.6
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 03:18:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=X1MD5pHlAbnbnPImmhEg02VNFqeLp0wIprexgDJRTzI=;
        b=odNID+UK36b7YFvmkIDSH9btWD0k1NH+NRVEJFc8nysuM1vt7dHj2UI82HgoGCbNG7
         nbpgywBkCEf8bApIq3Ff6CSNj+xAUXPQyYtD8SK3sTwVS4gFtSYqWOtU5XFjsMrnYOa6
         I35rlZLLxXn4y/rdbw7bE6KoYnBun4Dcsu6yUmpmAlQW7WSckiyLZA9wq31Bh0W8yqAW
         enP0bC6GFa/8LTv25Q9NyBeHQwCsfG+LPjnRBuihrxtyU/vQiY9VvtZ2UU1AmgA+9R2q
         Auk7uf0Y6/Z79cThgJ7iYAKcqOu3kLl2wWmsQxe4sNL+MhiXKJVGyNDpYgIhlZpxGmIi
         sQ8Q==
X-Gm-Message-State: AOAM530uxpie1jMeouISJQSN7EWleZ4mPG4puYF8kvct7mTj+VI0Cgui
        KP6xZud4NhutVIEdbcs4u671WSR6aKmB+apVCKuA6Nlr7qyNMqLX8FF7IUeSWMa6kJUbsFM1g+C
        qJsaNfBb/sm+3IXKBKCTRhuTgj/8uwG0taQJiQlI=
X-Received: by 2002:a17:907:c012:b0:6d8:ec50:ef9b with SMTP id ss18-20020a170907c01200b006d8ec50ef9bmr8387608ejc.284.1646651905837;
        Mon, 07 Mar 2022 03:18:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyJ7Do91/aSYubSq64oelf7lirRCAHMsWTLT2dRvtqUTjJXKJGV32XNYBoxMgw4C8oib/Lw/A==
X-Received: by 2002:a17:907:c012:b0:6d8:ec50:ef9b with SMTP id ss18-20020a170907c01200b006d8ec50ef9bmr8387591ejc.284.1646651905618;
        Mon, 07 Mar 2022 03:18:25 -0800 (PST)
Received: from [192.168.0.142] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id l20-20020a1709062a9400b006ce71a88bf5sm4617071eje.183.2022.03.07.03.18.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 03:18:24 -0800 (PST)
Message-ID: <73c49f2b-ef2e-5ed8-f3d5-aa696f9af9e6@canonical.com>
Date:   Mon, 7 Mar 2022 12:18:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 2/6] ASoC: dt-bindings: Document Microchip's PDMC
Content-Language: en-US
To:     Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     lars@metafoo.de, broonie@kernel.org, perex@perex.cz,
        tiwai@suse.com, robh+dt@kernel.org, nicolas.ferre@microchip.com
References: <20220307100428.2227511-1-codrin.ciubotariu@microchip.com>
 <20220307100428.2227511-3-codrin.ciubotariu@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307100428.2227511-3-codrin.ciubotariu@microchip.com>
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

On 07/03/2022 11:04, Codrin Ciubotariu wrote:
> Add DT bindings for the new Microchip PDMC embedded in sama7g5 SoCs.
> 
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
> 
> Changes in v2:
>  - renamed patch from 'ASoC: add DT bindings for Microchip PDMC' to
>    'ASoC: dt-bindings: Document Microchip's PDMC';
>  - renamed yaml file from 'mchp,pdmc.yaml' to 'microchip,pdmc.yaml';
>  - used imperative mode in commit description;
>  - renamed mchp,pdmc.h to microchip,pdmc.h;
>  - fixed 'title' to represent HW;
>  - made 'compatible' first property;
>  - s/microhpone/microphone;
>  - none name in example set to 'sound';
> 
>  .../bindings/sound/microchip,pdmc.yaml        | 99 +++++++++++++++++++
>  include/dt-bindings/sound/microchip,pdmc.h    | 13 +++
>  2 files changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/microchip,pdmc.yaml
>  create mode 100644 include/dt-bindings/sound/microchip,pdmc.h
> 
> diff --git a/Documentation/devicetree/bindings/sound/microchip,pdmc.yaml b/Documentation/devicetree/bindings/sound/microchip,pdmc.yaml
> new file mode 100644
> index 000000000000..edfa3cbd318e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/microchip,pdmc.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/microchip,pdmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip Pulse Density Microphone Controller
> +
> +maintainers:
> +  - Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> +
> +description:
> +  The Microchip Pulse Density Microphone Controller (PDMC) interfaces up to 4 digital microphones
> +  having Pulse Density Modulated (PDM) outputs.

This exceeds 80 characters.

> +
> +properties:
> +  compatible:
> +    const: microchip,sama7g5-pdmc
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Peripheral Bus Clock
> +      - description: Generic Clock
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: gclk
> +
> +  dmas:
> +    description: RX DMA Channel
> +    maxItems: 1
> +
> +  dma-names:
> +    const: rx
> +
> +  microchip,mic-pos:
> +    description: |
> +      Position of PDM microphones on the DS line and the sampling edge (rising or falling) of the
> +      CLK line. A microphone is represented as a pair of DS line and the sampling edge. The first
> +      microphone is mapped to channel 0, the second to channel 1, etc.

This is also too long, wrap at 80.

> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    items:
> +      items:
> +        - description: value for DS line
> +        - description: value for sampling edge
> +      anyOf:
> +        - enum:
> +            - [0, 0]
> +            - [0, 1]
> +            - [1, 0]
> +            - [1, 1]
> +    minItems: 1
> +    maxItems: 4
> +    uniqueItems: true
> +
> +required:
> +  - compatible
> +  - "#sound-dai-cells"
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - dmas
> +  - dma-names
> +  - microchip,mic-pos
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/at91.h>
> +    #include <dt-bindings/dma/at91.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/sound/microchip,pdmc.h>
> +
> +    pdmc: sound@e1608000 {
> +        compatible = "microchip,sama7g5-pdmc";
> +        #sound-dai-cells = <0>;
> +        reg = <0xe1608000 0x4000>;

In DTS sources: compatible then reg. I mentioned it in previous version.

Best regards,
Krzysztof
