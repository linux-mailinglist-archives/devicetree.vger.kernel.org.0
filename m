Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D068701944
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 20:38:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbjEMSiJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 14:38:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjEMSiI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 14:38:08 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE644213C
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:38:06 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-50bc37e1525so20906913a12.1
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684003085; x=1686595085;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sVgFhwHOytyuvlsolpGzS2P+RyNCIsvWoWjH/sbEmtE=;
        b=DtRnRg/A4eLKBxwIOINV8zrS4xA4IQslQOM1D8WygiSvDUYpfbyveH+tFEjP8rN/jZ
         Cex33mfHaOurVgiHOf87d6mvaI2G4kpeIGagrUkv+SDgE/+VpwSOSBbPbZvvV64SQ5FJ
         tAetgjBOLVz5i8zr3Tsixz2jeXiso0uhVGUQlbhvoYvYIZUO5LkGscLoRGY9a8KjTCMM
         SX0Q/gSF0sGtohfiDEYjb+dPZbGuveenifM68sn+HzP+GdV9GFAwWAbYg7JueOwpaLr8
         jraazG3zD6Leiw+GGzqiSQnUV2Qpe/5g0Rgyy5vuYvofldDRqqCG9qlccj+cR+8ed2HZ
         QEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684003085; x=1686595085;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sVgFhwHOytyuvlsolpGzS2P+RyNCIsvWoWjH/sbEmtE=;
        b=Oommjc/q168s/o4uHwO2d4r4xugLSIkSq4qZS6vck8LBo++XnRZUDMr6zTrzSFqkyf
         j4S+Uga9aIiUCp80cVwPJ+XPbWrBtY796UHGlLJCMRaI1tm1CQ9FXKaXdfRTTtfCOWBX
         wpNFH8B6Q9R1pqLVPaE8GS5UI6NwyGeuQh9Jq2PXA6E4n8CkKAVGQRNxcd2lhg+t+HPa
         3RKkvyn4F97bEDIYjDBw3TpdxfI6UUZUXvgG3rzDg/VqHxLhVsTNMBw2EV1neeuCDKmx
         GUXfXjJNegqhHdNj3zFKWg+kauVG9Qq0jqCQ0f/UKYb24aJ/2zeTjx7VA5gg/lbfJGaO
         t9Lw==
X-Gm-Message-State: AC+VfDzSHPN0rCvRGiLzxI5NqmEZFE0dxfSN4Srp67BAc7IpoxRBzQ5C
        FiddZDGj7bOCkxT8vNQzlSQjAS56qIB5ZwJKGKGjMQ==
X-Google-Smtp-Source: ACHHUZ79slRCtETc6zkU7ZGXxCapCDmP+cFVxtmTL5H2S439sNsRE0njq6hk/Vnruf0psMaMCUB7+g==
X-Received: by 2002:a17:907:360c:b0:961:800b:3f1e with SMTP id bk12-20020a170907360c00b00961800b3f1emr27294480ejc.73.1684003085137;
        Sat, 13 May 2023 11:38:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ba68:e5c9:694e:c6e4? ([2a02:810d:15c0:828:ba68:e5c9:694e:c6e4])
        by smtp.gmail.com with ESMTPSA id hu7-20020a170907a08700b00969fa8a3533sm6254835ejc.165.2023.05.13.11.38.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 11:38:04 -0700 (PDT)
Message-ID: <877338f8-d157-0f91-33a3-fdb03566aa57@linaro.org>
Date:   Sat, 13 May 2023 20:38:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: nau8824: Convert to dtschema
Content-Language: en-US
To:     David Lin <CTLIN0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230512120146.600128-1-CTLIN0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230512120146.600128-1-CTLIN0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 14:01, David Lin wrote:
> Convert the NAU8824 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> ---

Thank you for your patch. There is something to discuss/improve.

> +
> +  nuvoton,sar-threshold-num:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of buttons supported.
> +    minimum: 1
> +    maximum: 4
> +    default: 4
> +
> +  nuvoton,sar-threshold:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Impedance threshold for each button. Array that contains up to 8 buttons
> +      configuration. SAR value is calculated as
> +      SAR = 255 * MICBIAS / SAR_VOLTAGE * R / (2000 + R) where MICBIAS is
> +      configured by 'nuvoton,micbias-voltage', SAR_VOLTAGE is configured by
> +      'nuvoton,sar-voltage', R - button impedance.
> +      Refer datasheet section 10.2 for more information about threshold
> +      calculation.
> +    minItems: 1
> +    maxItems: 4

Your description mentions 8 buttons, so maybe it should be 8 here? Or
description needs a fix?

> +    items:
> +      minimum: 0
> +      maximum: 255
> +
> +  nuvoton,sar-hysteresis:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Button impedance measurement hysteresis.
> +    default: 0



Best regards,
Krzysztof

