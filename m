Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B880C542E78
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 12:53:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236959AbiFHKwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 06:52:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236971AbiFHKw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 06:52:29 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F14E65F267
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 03:52:26 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id me5so40122496ejb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 03:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=H9gdPAYEu5XJptAc0kQeVYVgl5hWoLoZN5syYTQ5mNM=;
        b=Qh7Ty68rfizvfaF3qG8UEXEMAt0L3arSPDojNDSN3auo8VlkqDM72cqwFuZziVAsa0
         plKefXVcxI4k66rDRYoTRRW41rt9bZNsOeumGTlCSWF6NdgTUl6bHDo7dCSMiFfN41m3
         ouBmkLI4q5sjmmTLuySV7f3HrRmRK5Iq4vu50YsM/ZWBx2Ksr7AuLb7SCZpErlpQUzfE
         V1fQEd7BVgwnY/mzfQmbnuD9aR6iRklNYslEvhNJ6YfKXeezX1RGHUGLX/hNEbDzDipA
         bIeLe8zWV+LJSLMvxR2s4DD089CMhg8Zv79vStXTYNP/dQNUB0+dop1eCwqCoC9uP51u
         LTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H9gdPAYEu5XJptAc0kQeVYVgl5hWoLoZN5syYTQ5mNM=;
        b=PqMRYNyKUtbonoXxp9n6XBFIPvAc/A1O14tUAqMTbo+SE6HWkm6kvX8nPXZXpmwJW2
         KaLA/3CD1HDylwliRub9U+zUsbl3vpEsIIPOtjgMl6cDP8EyEixkc2U/4xHtvjA1Faoo
         yqt+T067RWHS8TT0A70k6kL5fmp8wEkBeSZBN4EUBtGezGXSKJW/OBWFrEeIK/+UpDvU
         ucJVaNBmf4joSAFKIeCMrCmhHYeptSbUEcjvtSxXAK/3+5fjGGohonFNDBTXNzebdxWb
         fM6q5eqia50AeS+o3X50s8ghZsOCZDwoLVUqTeL69+qiMJaATKTnlwrJNUxyR3tyGiMX
         WVBQ==
X-Gm-Message-State: AOAM531sLGptLXd2ARyCW6kRAZr+JcueVzsr6t9ezChn4n18WfU2Kuit
        vG/vNv1T/hgqKBn+EumQt4fhVQ==
X-Google-Smtp-Source: ABdhPJwWec2s26qVJ689sEFpvOyRFQnCAppG/t70ZsXqIRM6ewBZOhQ5Orpe86cCQG5CBFZlBxQUTw==
X-Received: by 2002:a17:906:6a1a:b0:711:ec13:b7bc with SMTP id qw26-20020a1709066a1a00b00711ec13b7bcmr4875722ejc.688.1654685545546;
        Wed, 08 Jun 2022 03:52:25 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b6-20020a17090636c600b006feb6dee4absm9002564ejc.137.2022.06.08.03.52.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 03:52:24 -0700 (PDT)
Message-ID: <83a8fb86-3311-87fe-c4ca-ab8e6d0cf784@linaro.org>
Date:   Wed, 8 Jun 2022 12:52:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: renesas,wdt: Add r9a09g011
 (RZ/V2M) support
Content-Language: en-US
To:     Phil Edworthy <phil.edworthy@renesas.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220607135619.174110-1-phil.edworthy@renesas.com>
 <20220607135619.174110-2-phil.edworthy@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220607135619.174110-2-phil.edworthy@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2022 15:56, Phil Edworthy wrote:
> Add the documentation for the r9a09g011 SoC, but in doing so also
> reorganise the doc to make it easier to read.
> Additionally, make the binding require an interrupt to be specified.
> Whilst the driver does not need an interrupt, all of the SoCs that use
> this binding actually provide one.
> 
> Signed-off-by: Phil Edworthy <phil.edworthy@renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
>  .../bindings/watchdog/renesas,wdt.yaml        | 63 ++++++++++++-------
>  1 file changed, 42 insertions(+), 21 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> index a8d7dde5271b..6473734921e3 100644
> --- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> @@ -31,6 +31,11 @@ properties:
>                - renesas,r9a07g054-wdt    # RZ/V2L
>            - const: renesas,rzg2l-wdt
>  
> +      - items:
> +          - enum:
> +              - renesas,r9a09g011-wdt    # RZ/V2M
> +          - const: renesas,rzv2m-wdt     # RZ/V2M
> +
>        - items:
>            - enum:
>                - renesas,r8a7742-wdt      # RZ/G1H
> @@ -70,13 +75,27 @@ properties:
>    reg:
>      maxItems: 1
>  
> -  interrupts: true
> +  interrupts:
> +    minItems: 1
> +    items:
> +      - description: Timeout
> +      - description: Parity error
>  
> -  interrupt-names: true
> +  interrupt-names:

This also needs minItems

> +    items:
> +      - const: wdt
> +      - const: perrout
>  
> -  clocks: true
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: Register access clock
> +      - description: Main clock
>  
> -  clock-names: true
> +  clock-names:

Ditto

> +    items:
> +      - const: pclk
> +      - const: oscclk
>  

Best regards,
Krzysztof
