Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A8CB521242
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 12:33:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239886AbiEJKht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 06:37:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239771AbiEJKho (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 06:37:44 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 760F8207930
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 03:33:47 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id n10so32028314ejk.5
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 03:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uqfSWWso3ePPIxs5kUlqIUVR6u0WQr5mUIPDHk0rKyY=;
        b=lwF57YVYOdfouAUjyiC3oJLXQQRBz2XRn4Q4lItpEDKVFMCpUAA2IBvFZPlLuZJ88l
         DyE/uUgu1ufs376VS1TqZmCLvtQIF5xuRh+9OKaghWaoMNHJTevL7VgD2wY43zECuHai
         g493920Iq2idgbrhXzrShdhw36MJzW1BZ6RRcSeShIkTvIrTRPe7UYiMEs1x+khaFXRG
         jEttGrTVk1VIjQlwaoi7Hzectd/GhsWmnwFuF4Q6lthywCmN/T251LuS5AEhEyJautKN
         J2uakY75QPrmG4bAtZLxyeh4fPNAyGxK12OZb+UsikUwWy9Sj0i54zFWRcGnTNg1gI19
         el/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uqfSWWso3ePPIxs5kUlqIUVR6u0WQr5mUIPDHk0rKyY=;
        b=0f0aSgUL/K2wQGqxINR3Y2souLm6PAyURiLijaBKiksC9y03uKjtRjIKCDVEfoMUY/
         rvKfWMTy7Umy1KeysOqg0DAArB0QV68N5OkvdN8SuKp1MLxDUKOz7XWubJEGQh6trzhu
         QFjqGarJjseUvP1+3zAB+FnAkRfIZJXig30H3TwKffdUOsbP94sdGU4mDGBvKpiqQFFE
         aBXPPrWWzm6kf28ZEfMgWS1J6obFBQCy7UGVzmWVozAw8+pO5QWzfP+waiDlnPKqCNxc
         zLEuKH5BIiyGqmLHqy6xzULNcU+ZpaB6Kbjzf5NtkB1TdBHgMdZ/Ue62mDDm1zkyoFsX
         klxA==
X-Gm-Message-State: AOAM533czKVE+fG4DB9hZGybqVhTpQekickcmHqFzS/pIU5LmWu4ZaNJ
        DnT+8z6L12KA1LuXq+wu0VjhTg==
X-Google-Smtp-Source: ABdhPJwASNrI52m0BHrPQWu6QJ2yOhCOdP9buMehfDsa+IIPExnannmqd2Mo77B1dcT0GDU/oKVxbQ==
X-Received: by 2002:a17:906:dc8d:b0:6f4:75da:2fc8 with SMTP id cs13-20020a170906dc8d00b006f475da2fc8mr18488945ejc.7.1652178826051;
        Tue, 10 May 2022 03:33:46 -0700 (PDT)
Received: from [192.168.0.251] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id rn28-20020a170906d93c00b006fa9820b4a2sm765029ejb.165.2022.05.10.03.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 03:33:45 -0700 (PDT)
Message-ID: <b0a12d60-819f-38a7-52ee-d8e96a606e94@linaro.org>
Date:   Tue, 10 May 2022 12:33:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 2/4] dt-bindings: mfd: atmel,flexcom: Add lan966
 compatible string and mux properties
Content-Language: en-US
To:     Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
        krzysztof.kozlowski+dt@linaro.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        peda@axentia.se
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, lee.jones@linaro.org,
        linux@armlinux.org.uk, Manohar.Puri@microchip.com,
        UNGLinuxDriver@microchip.com
References: <20220509084920.14529-1-kavyasree.kotagiri@microchip.com>
 <20220509084920.14529-3-kavyasree.kotagiri@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220509084920.14529-3-kavyasree.kotagiri@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2022 10:49, Kavyasree Kotagiri wrote:
> Add lan966 flexcom compatible string and flexcom mux
> device tree properties.
> 
> Signed-off-by: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> ---
>  .../bindings/mfd/atmel,flexcom.yaml           | 52 ++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml b/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
> index 79ec7ebc7055..228c095c84ca 100644
> --- a/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
> +++ b/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
> @@ -16,7 +16,9 @@ description:
>  
>  properties:
>    compatible:
> -    const: atmel,sama5d2-flexcom
> +    enum:
> +      - atmel,sama5d2-flexcom
> +      - microchip,lan966-flexcom
>  
>    reg:
>      maxItems: 1
> @@ -57,6 +59,27 @@ required:
>  
>  additionalProperties: false
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: microchip,lan966-flexcom
> +
> +    then:
> +      properties:
> +        mux-controls:
> +          minItems: 1
> +          maxItems: 2
> +          $ref: /schemas/types.yaml#/definitions/phandle-array
> +
> +        mux-control-names:
> +          minItems: 1
> +          $ref: ../mux/mux-consumer.yaml

absolute path, so:
/schemas/mux/mux-consumer.yaml


Best regards,
Krzysztof
