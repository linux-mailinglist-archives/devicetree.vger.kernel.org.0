Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49E3978750A
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 18:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239222AbjHXQRJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 12:17:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242468AbjHXQQw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 12:16:52 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B065A1BDB
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 09:16:47 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99c3c8adb27so905502766b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 09:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692893806; x=1693498606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/tLvnwDOum/C7NqjeZ7WvB8PzqL6V7KZu8ifXgc/R3I=;
        b=ErLDMrwMWUHzXBYMNr1tKPcG61iJdSIls2jHvL6v7OKr5jzMmaGMzKc1IoibYwan3/
         ZJDF6qW+n5ZspYUEQkuOgI/Ck15ix2TFQ+sD3McDGh9LHC1/zFADzjtnpObSSEsIwR/y
         SzohkoScuyz/of9kNxRCq7LkHPLShiXgZMid4j/bCi4G8rBWQCSoldkwnZuYRAWocqp/
         0Iv3kgm43R6gxPqScSmryV+EfOGCiSYD1LL3EaA9oY6spZyZ9X2amf0UHHviSdszVOzh
         Nw0FUf6eFeQCKZTHzBU5K0QGEs++2Cj8KqivHg6B8TM5yARUUojQXAcYbY9MdrFFojSb
         mg5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692893806; x=1693498606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/tLvnwDOum/C7NqjeZ7WvB8PzqL6V7KZu8ifXgc/R3I=;
        b=Ksrti3p+GN1cG64f/wiz6Wuq7l0JJ/ln/K5LZH9UNyBirzPAYd56gIVAN0uYCfXuJz
         jW6RM9WYnGY8ichCFBrRHQcC494C3vJ+2bYnlpeE5PAdSWpTmMd5OQnyq7xqD3ZwJBOF
         kOa33DXhtDW2zGWA15jw6JYLBqRyRLocY+BwtCIVxmbyHY4HoDiFbgLLSD71TL3H5AbK
         4NBqSNzEMpdfxIURbXlSvfI+vtF896dl1bQQzeMNsm/XZGrvCNAHzwksz/Of71GT/jpn
         dDCSqeGyVOK8iseKfCgaPjXJTrNigpiDhIIEzDrDLx/2wpzXqdDn9Dwgpoe04YMSpcrG
         d91g==
X-Gm-Message-State: AOJu0YyvewXVX2FJu4YmFJq/JyrNn1vLeDFsRKe79pcF6Y8G4+8iokXY
        rN98ko/ACWuvD0I4SR3jR7b16w==
X-Google-Smtp-Source: AGHT+IGVYiqG8sxongGWVoLO3regR9d0PIYEfKPXZhPItNU2GX0VUHfAsgopHgYB6TbQsAmafzv+1g==
X-Received: by 2002:a17:907:a066:b0:9a2:200:b694 with SMTP id ia6-20020a170907a06600b009a20200b694mr2101470ejc.11.1692893806151;
        Thu, 24 Aug 2023 09:16:46 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id k20-20020a1709063e1400b00992b71d8f19sm11170893eji.133.2023.08.24.09.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 09:16:45 -0700 (PDT)
Message-ID: <8d4e2110-4e43-06c4-126d-22c29050f13e@linaro.org>
Date:   Thu, 24 Aug 2023 18:16:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] dt-bindings: misc: rohm,bm92txx: Add BM92Txx support
To:     Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc:     azkali <a.ffcc7@gmail.com>, Adam Jiang <chaoj@nvidia.com>,
        CTCaer <ctcaer@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Derek Kiernan <derek.kiernan@amd.com>,
        Dragan Cvetic <dragan.cvetic@amd.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230824153059.212244-1-linkmauve@linkmauve.fr>
 <20230824153059.212244-2-linkmauve@linkmauve.fr>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230824153059.212244-2-linkmauve@linkmauve.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2023 17:30, Emmanuel Gil Peyrot wrote:
> The BM92T36 is used in the Nintendo Switch as its USB-C Power Delivery
> controller.
> 
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---
>  .../bindings/misc/rohm,bm92txx.yaml           | 67 +++++++++++++++++++
>  MAINTAINERS                                   |  5 ++
>  2 files changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/rohm,bm92txx.yaml

That's not misc device but usb, so please put it in usb.

> 
> diff --git a/Documentation/devicetree/bindings/misc/rohm,bm92txx.yaml b/Documentation/devicetree/bindings/misc/rohm,bm92txx.yaml
> new file mode 100644
> index 000000000000..0322a7f096f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/rohm,bm92txx.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (C) 2023 Emmanuel Gil Peyrot
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/rohm,bm92txx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: BM92Txx USB-C Power Delivery Controller
> +
> +maintainers:
> +  - Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rohm,bm92t10
> +      - rohm,bm92t20
> +      - rohm,bm92t30
> +      - rohm,bm92t36
> +      - rohm,bm92t50

Your driver suggests they are fully compatible.

> +
> +  reg:
> +    maxItems: 1
> +
> +  rohm,dp-signal-toggle-on-resume:
> +    type: boolean
> +    description: |
> +      Do a toggle on resume instead of disable in suspend and enable in resume,
> +      because this also disables the LED effects.

That's OS policy, not suitable for DT. Drop the property.

> +
> +  rohm,led-static-on-suspend:
> +    type: boolean
> +    description: Dim or breathing dock LED.

Ditto

> +
> +  rohm,dock-power-limit-disable:
> +    type: boolean
> +    description: Disable the power limit in dock mode.

Your description copies property name, so it is not much useful. Why
this is board-configurable?

> +
> +  rohm,dp-alerts-enable:
> +    type: boolean
> +    description: Enable DisplayPort alerts.

Same questions.

> +
> +  rohm,pd-5v-current-limit-ma:
> +    $ref: /schemas/types.yaml#/definitions/uint32

Use common property units.

> +    default: 2000
> +    description: Current limit in mA when voltage is 5V.
> +

You miss connector, so binding is incomplete. All these properties look
duplicating connector properties.


> +  rohm,pd-9v-current-limit-ma:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 2000
> +    description: Current limit in mA when voltage is 9V.
> +
> +  rohm,pd-12v-current-limit-ma:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 1500
> +    description: Current limit in mA when voltage is 12V.
> +
> +  rohm,pd-15v-current-limit-ma:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 1200
> +    description: Current limit in mA when voltage is 15V.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

Missing example. You must have and it must be complete.

Best regards,
Krzysztof

