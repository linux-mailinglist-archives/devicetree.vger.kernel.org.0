Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECC4853EAAC
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 19:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238234AbiFFNE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jun 2022 09:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238230AbiFFNDa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jun 2022 09:03:30 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87B3436B5D
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 06:03:21 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id c2so18726748edf.5
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 06:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9OxRTMOPQcoWtDJkrs/ws60KmhDcry5eiLie80rsiV0=;
        b=xoxeEc83WssMlenazqEebhL7ESdnn2WRPAKXcSsM1JgAPUMh85wEYEivR3T+D2TVMn
         vj1fhc9ErRY1A4NtIfYOtMrAB1C5/qlXZ7VyDuT1ERDuuE/Hhzu59eyNRZbQ5QXZaioB
         F70Uqz3Ej8KAxIrj1b6NXy9gOvDixOvxzV8X2hU1GGg385WBeT5ldpcakEZMrGwOF2Ya
         JlfE98zdHlnEMyvEJUDWxNrMtR8Wv1uto71QAHC6Zqh33wcrl888XzOy/YtuMZxevRWt
         OEF81cX4qBKpiEP6mkMx9ixt3bxEMKGWD7je8bHkKHUM3lUTBXGzJLDdUv11zR9MOrDU
         0DWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9OxRTMOPQcoWtDJkrs/ws60KmhDcry5eiLie80rsiV0=;
        b=XlhP1rlKNU90YlsxCu/e0KbfYlBRhUb/5dD/4UhGRmjuAY802/JRnVd1R/klDF7tCk
         ZQZNAnJNPd0LmgNje/YwbLukTDiwPDrUYzCqvinn+mc/YHDu76W9FaJDCYJHIrFU2Zf4
         WbdO7vIRhiIALVKNUE+kzDfgwn7kRfmj9+6jOokdG+3nf0IowzBzYzrD3vawVDxDGOQF
         vHrmsHwCcb8soQbK0rtdxdAyyWs7OxuYyVVhaIyQrUi4WoR4SvY3BLdivK7egFbPk0f/
         VGmyKmbBPvHLFAUO7RsFCiJ5Ka6m07hIx3ml7/4TZj5tlNuaGnHrQOh1OJgebt1UhJle
         HCUg==
X-Gm-Message-State: AOAM533UW3kfruy/ZppyIvqemb01VjPFEIGKuGfmWJdbSLgg+w4EWggQ
        uHXGn5VLGrdkcwKWC802Fa1nXQ==
X-Google-Smtp-Source: ABdhPJyIJ0g5jgaKC+UYSyfG1jno/pBLV87i2zkT42j9LvLZ9rhebxwHb50RHOMeIEFNkou/TJJ7zQ==
X-Received: by 2002:a05:6402:438a:b0:42e:985:4944 with SMTP id o10-20020a056402438a00b0042e09854944mr25827674edc.283.1654520600280;
        Mon, 06 Jun 2022 06:03:20 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y24-20020a170906071800b006feed200464sm6356249ejb.131.2022.06.06.06.03.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 06:03:19 -0700 (PDT)
Message-ID: <1764f3ce-608f-e55c-d977-18fb95e4a0fe@linaro.org>
Date:   Mon, 6 Jun 2022 15:03:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/3] dt-bindings: mfd: atmel,flexcom: Add new compatible
 string for lan966x
Content-Language: en-US
To:     Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, UNGLinuxDriver@microchip.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220603121802.30320-1-kavyasree.kotagiri@microchip.com>
 <20220603121802.30320-3-kavyasree.kotagiri@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603121802.30320-3-kavyasree.kotagiri@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 14:18, Kavyasree Kotagiri wrote:
> LAN966x SoC flexcoms has two optional I/O lines. Namely, CS0 and CS1 in
> flexcom SPI mode. CTS and RTS in flexcom USART mode. These pins
> can be mapped to lan966x FLEXCOM_SHARED[0-20] pins and usage depends on
> functions being configured.
> 
> Signed-off-by: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
> ---
>  .../bindings/mfd/atmel,flexcom.yaml           | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml b/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
> index 221bd840b49e..6050482ad8ef 100644
> --- a/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
> +++ b/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
> @@ -16,7 +16,9 @@ description:
>  
>  properties:
>    compatible:
> -    const: atmel,sama5d2-flexcom
> +    enum:
> +      - atmel,sama5d2-flexcom
> +      - microchip,lan966x-flexcom

Your new v1 is here worse than old v2, where this was just simple
extension of existing enum. Why did you change it?


Best regards,
Krzysztof
