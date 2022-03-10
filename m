Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C04E84D41BC
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 08:23:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240050AbiCJHYA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 02:24:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240047AbiCJHX7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 02:23:59 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D3095AED7
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 23:22:59 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3A1083F4BC
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 07:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646896978;
        bh=vvJ1s6MAam4XpCarGjHQuEzwyDsZZuI/+V4fbf0u5IY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=n1e+nhxU7guf7+QG4BBWFaXb7KqAZtjnpdhBLtjL11Z3mFiXBRUPwmC1ES+3Gl6Hw
         KmIkoitFlHHpjcGTmdZ+wz+rNNgm+yEzcNVfWs2dpXKb6AA8Oi2m1ffjgFUonC9BHP
         7kQYidcKpX38TM1t7a+SLRETu1vrHuF62J0erpt0pPsvBJz6+jY9jxuTrYaIrZbgZS
         uggEBsuRltu9emG93wbdmbFuuCohWkEwVl+RRn+lOgOfi1+L5itmdvDYss4UCABOUn
         YY2QEIY5efs7YKIl3oZGPwIoqoz9TSyUhHOhflXrmbspC0u6R0BZ4tgK3IdByBq68e
         bjWr6BwQS3TyA==
Received: by mail-ej1-f72.google.com with SMTP id ey18-20020a1709070b9200b006da9614af58so2624021ejc.10
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 23:22:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vvJ1s6MAam4XpCarGjHQuEzwyDsZZuI/+V4fbf0u5IY=;
        b=FOITGnfk6xdeYPTwcd4e/wrP2okEHo5lu8ptGtzudQnvKTmQG6Z5AI6WpByWUxaIxb
         RbWpdz9nHqhOWCtzlJC/vEI8JEjP5x5LyxM7mUMG7KMmEVqIb9mFQOrS7aj5cKD0J/oi
         7Tf58WKGuKlNZCoHCII7mneyXxzqKRhmfptfFxKTzpkO9brzBSWptAbUAlDPgrH/UI26
         BtN95mtdxd7Z7vAbrahAi277PIhMP8DLbSnfiT8x3v40/SXwhntPkvWUIFplEvzSVBEa
         Towm7aForJvPbYRU+gjd9IxM9DSJ+bkK4qYcY5D3QVYXvxlE1MOHtr0PoyRpHhRXp1pi
         LKFA==
X-Gm-Message-State: AOAM533jJILTSiWoUpG4LIpQnlyq4pxdZxXDKZloiOnWZArZvrwgwoab
        9MXqgIRIZIDEtTUTE358uaQecfH5FJnczXz9KERbdQzmSYY45fRlcmzV6ibMQyj6oMizCb3pc2B
        lumfVhDzSoTJrz0n57WGkKo7FH9h5lAEKFNJD9T8=
X-Received: by 2002:a05:6402:150f:b0:416:175d:3f5d with SMTP id f15-20020a056402150f00b00416175d3f5dmr2999945edw.184.1646896977394;
        Wed, 09 Mar 2022 23:22:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyEH8VFBsYcKtizhDQ0TramGL1ojYlnymp0dVdUmk7PREVnAiIV2i+N3PUIjHR3Kn6HpURR4w==
X-Received: by 2002:a05:6402:150f:b0:416:175d:3f5d with SMTP id f15-20020a056402150f00b00416175d3f5dmr2999935edw.184.1646896977179;
        Wed, 09 Mar 2022 23:22:57 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id g22-20020a170906395600b006cec40b9cf0sm1484883eje.92.2022.03.09.23.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Mar 2022 23:22:56 -0800 (PST)
Message-ID: <d6886c55-6f4a-916f-20fd-9f6465a8a0cd@canonical.com>
Date:   Thu, 10 Mar 2022 08:22:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] dt-bindings: i2c: at91: Add SAMA7G5 compatible
 strings list
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, robh+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20220309120714.51393-1-sergiu.moga@microchip.com>
 <20220309120714.51393-4-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220309120714.51393-4-sergiu.moga@microchip.com>
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
> Add compatible strings list for SAMA7G5.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
>  .../bindings/i2c/atmel,at91sam-i2c.yaml       | 38 ++++++++++++-------
>  1 file changed, 24 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml b/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
> index d4aadbbd1a11..661a679b98cf 100644
> --- a/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
> +++ b/Documentation/devicetree/bindings/i2c/atmel,at91sam-i2c.yaml
> @@ -16,10 +16,15 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            enum:
> -              - atmel,sama5d4-i2c
> -              - atmel,sama5d2-i2c
> -              - microchip,sam9x60-i2c
> +            oneOf:
> +              - items:
> +                  - enum:
> +                      - atmel,sama5d4-i2c
> +                      - atmel,sama5d2-i2c
> +                      - microchip,sam9x60-i2c
> +              - items:
> +                  - const: microchip,sama7g5-i2c
> +                  - const: microchip,sam9x60-i2c

This looks not needed, because it contains microchip,sam9x60-i2c which
is mentioned earlier.


>      then:
>        properties:
>          i2c-sda-hold-time-ns:
> @@ -29,16 +34,21 @@ allOf:
>  

Best regards,
Krzysztof
