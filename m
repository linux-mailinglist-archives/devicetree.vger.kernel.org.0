Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0B3F5A68E1
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 18:57:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbiH3Q5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 12:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbiH3Q5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 12:57:16 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33EC1AB1B2
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 09:57:15 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id p18so8696847ljc.9
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 09:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=NHTv/YagwR+R6J02v+OmtzRbd+ajWoa+eikA7WbAS1I=;
        b=vBNXPrf6dpEWBjfidNj/wZfZsohX0MKSaj+wzW+qLwZFaraoMcHyZwj049UeW3S/uS
         9dvfrHibRjijK17j3Sa2e9oK3wQiPV0z7N/HE+4tRMHikANI3y3LGj5y4zUgQniLAnzQ
         BEPB5OAgti+ZLIZ5l9ql3bJ8uEo31DT2yjdKpceAcDPGX2vzg4ZI47MYP1AiNoTR1nA4
         FQs6XtD46ZJiw0aCLFMWTzOE4MzJscsQveVb8Kk6zZwtYzq0zpnS7nr+uOJWoMeG4Uuc
         v/pk5qLm3BBbnd7tdUVsUIkxnx7ZZASwP/KgP6bSaDSJuoIlmniqxz6F4CpXqEMF/yfW
         F+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=NHTv/YagwR+R6J02v+OmtzRbd+ajWoa+eikA7WbAS1I=;
        b=0JOD2M184wfj2I8Wq2fRSqhuHoaFlMwut0TycnJ0zZCyTEvoJHgRPCRLN2LIU+rsRt
         SHPiktJfeRSyZ52p0SGytD798xjRpcf9rjfSEBpd7I70RTgry9JSWP2nsTs67cTBHfBI
         /wTO/h5iWS7Plk4ELlxMAw8Qelc/wMWzdcb+OYOJbJr8HlGDNTfSfZglymZ7cL8saJSD
         tFjzIiaLQQasPaMBVTFK4HS4wjDwf785pmsgHqn9VL3SsOs1rrNpJw+Z91JBmO5md7iw
         HnYL+z1rbhOcr0urVhDFlVM65kMW7VoLpuGKHRCvEr6BX7KlIrW/N+lA7+9GUYyo1mTQ
         J2fg==
X-Gm-Message-State: ACgBeo12C4uqF81M8d2hODm8W4u2u7hInZg2j/rdAec3oh3txtoFdUhV
        uT8AieDntRKvdq+0mOJ2bMzqFw==
X-Google-Smtp-Source: AA6agR5XI1w7PMCRct7yzLTkgtcUovMkYkLPQmG0bVst51Z9T6sJlArpQ3kbZ5+1C/4YuglhQTXBJA==
X-Received: by 2002:a05:651c:1143:b0:25e:4aa1:e518 with SMTP id h3-20020a05651c114300b0025e4aa1e518mr7265341ljo.57.1661878633601;
        Tue, 30 Aug 2022 09:57:13 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id l19-20020a2e9093000000b0025d5eb5dde7sm1777438ljg.104.2022.08.30.09.57.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 09:57:13 -0700 (PDT)
Message-ID: <7f58edca-3685-d9a8-d4f6-40a45c3f385d@linaro.org>
Date:   Tue, 30 Aug 2022 19:57:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 1/2] dts: arm: Adding documentation for SAMA5D3-EDS
 board
Content-Language: en-US
To:     Jerry Ray <jerry.ray@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220830152428.12625-1-jerry.ray@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830152428.12625-1-jerry.ray@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 18:24, Jerry Ray wrote:
> Adding the SAMA5D3-EDS board from Microchip into the atmel AT91 board
> description yaml file.
> 
> Signed-off-by: Jerry Ray <jerry.ray@microchip.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Use subject prefixes matching the subsystem (git log --oneline -- ...).

> v4->v5:
>  - No change
> v3->v4:
>  - No change
> v2->v3:
>  - No change
> v1->v2:
>  - Added Device Tree documentation for Microchip SAMA5D3-EDS board
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 08efb259a947..635491aaeb0c 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -138,6 +138,13 @@ properties:
>            - const: atmel,at91sam9g20
>            - const: atmel,at91sam9
>  
> +      - description: Microchip SAMA5D3 Ethernet Development System Board
> +        items:
> +          - const: microchip,sama5d3-eds
> +          - const: atmel,sama5d36

This does not match your DTS.

Test your bindings...

Please drop Rob's ack as this is not correct.

Best regards,
Krzysztof
