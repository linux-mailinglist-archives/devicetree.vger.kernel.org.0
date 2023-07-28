Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E661766D63
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 14:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236598AbjG1Mjr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 08:39:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233367AbjG1Mjq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 08:39:46 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A22A35A8
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:39:43 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9891c73e0fbso432909966b.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690547981; x=1691152781;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/rBzfWXB7xNQDsEV4qCRmgvtd9bp9OhfVonlnSy76S8=;
        b=A0D05NGxqfkg31cngaT2LDDxF3MQdZ3uo3q4ewllKU7r4sbqg+/pW0u7LK04KDAI3z
         FWFT1Xu2v0sY/fFwrj4D4bMCVc7o5Tb08dljKXwq8+mvtWTlraqN2xnYq8Pd/tXEStL/
         DLnKgnyNgGWefEPzk0F2v1GrnrVpaANTSmwPfnaTFYY367+nmp/QYdy+vBPZ2T3+/5V2
         bSuu5bdGrXkpD2E0oPRlOfmrCS2w4PHtPCtnWu06JcGfBqr10OJM0qE7kUGjA2Yj5tAr
         Uo+I+oRxfUp8kOROYhZ+ggZ1PnVtzlWAY9BF+O3Fhcd3meE7oqxU4ITONwBwgxZb1VVf
         NBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690547981; x=1691152781;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rBzfWXB7xNQDsEV4qCRmgvtd9bp9OhfVonlnSy76S8=;
        b=lR10F7z/MqcFYhaoPz4zoUB1sebmP2QMDdxOd8lZI56l8sGoRaePu+2/NuB84k5pfi
         LIOys8HCWxa+n5zA03eiZuo/6BcJ2/ZyTNNK0YP9onBKWDq759i8ZKqTY7E7ygpe2x2v
         TE0zfaqHqkznHxpJ5aPzDEHpPVmPKm1q+DKo3vPcp6abEX5u9uTU1+R6uNmvE+G+0e5U
         MEHqHYgnmpFaZjDdjvZ4znm94fnkT0C7dGW7tA7hF7nO33RCLyNyEPvuVb6t51y0VAgf
         RFgsES6lbbt3zYYUW87KKhTiD+SMxJyUjvvDSeEL+ixFK9LfJTEPaRSZjDuLjXZsPVTj
         AFDw==
X-Gm-Message-State: ABy/qLakGg63Ow3SObmfggax/Zr/0CaAYSLQkWThT8s7XPdj0o6PFtdC
        au2YhFJN9nUg2/EUr/4xwHz6LQ==
X-Google-Smtp-Source: APBJJlEWHsZu0sU6xKqxR3mcuZD7XYG2BIHCSX3zHi7HmYycGTD1JKEV0OksBYVVI8xrnx0iB3MgoA==
X-Received: by 2002:a17:907:7b9d:b0:98d:4b97:acc8 with SMTP id ne29-20020a1709077b9d00b0098d4b97acc8mr6574780ejc.25.1690547981591;
        Fri, 28 Jul 2023 05:39:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id n16-20020a1709067b5000b009927a49ba94sm2009719ejo.169.2023.07.28.05.39.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 05:39:41 -0700 (PDT)
Message-ID: <bfd3d138-5cfa-1ee3-f578-1f2452900f9f@linaro.org>
Date:   Fri, 28 Jul 2023 14:39:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 28/50] dt-bindings: watchdog: sama5d4-wdt: add
 compatible for sam9x7-wdt
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, eugen.hristev@collabora.com,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230728102801.266709-1-varshini.rajendran@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728102801.266709-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 12:28, Varshini Rajendran wrote:
> Add compatible microchip,sam9x7-wdt to DT bindings documentation.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  .../bindings/watchdog/atmel,sama5d4-wdt.yaml      | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml b/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml
> index 816f85ee2c77..ce3d046e7244 100644
> --- a/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/atmel,sama5d4-wdt.yaml
> @@ -14,10 +14,17 @@ allOf:
>  
>  properties:
>    compatible:
> -    enum:
> -      - atmel,sama5d4-wdt
> -      - microchip,sam9x60-wdt
> -      - microchip,sama7g5-wdt
> +    oneOf:
> +      - items:

Drop items.

> +          - enum:
> +              - atmel,sama5d4-wdt
> +              - microchip,sam9x60-wdt
> +              - microchip,sama7g5-wdt
> +      - items:
> +          - enum:
> +              - microchip,sam9x7-wdt
> +          - enum:

Not an enum.

It is surprising how the same change look different between two of your
patches.


Best regards,
Krzysztof

