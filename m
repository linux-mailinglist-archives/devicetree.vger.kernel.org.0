Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC176733FC2
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 10:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232199AbjFQIxN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 04:53:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbjFQIxN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 04:53:13 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0B3110D1
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:53:11 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-978863fb00fso237697666b.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686991990; x=1689583990;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H7v/MuJCI1UFCTEb0ULR4YPwehjpcbKBRUmu39o5MfA=;
        b=VtVrmiLDbD4WsRd7BNVvyMnAtiuxcS9O6ZzkUiy06oD/hw11A6e0xcoBPDLyH8tKbx
         edoByt1J5hbbc4YEa4QryL52GdE1358bbo18frPRqUeF0eAo1aS/u/JPG0cc1jiWbKJ8
         TiTQWAbPfjdebrKN1aFx3AMx0OcKyx9GJ26aV391kGCvXEee+i2pFHFVMYVsqnOBQLoV
         LbfAlNW0XAZpPxRkz245caoXQ1mp6S9C613EkKYnHTT+uI1l1Brt2Ai/EKj6wprGk42j
         GGDj1JgOZ8SZ7720VvNG3eETF4Y3X7WjqRcNriJcb7AiVILQ0MsZwsVWLx+L/jjQm6Zo
         1vfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686991990; x=1689583990;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H7v/MuJCI1UFCTEb0ULR4YPwehjpcbKBRUmu39o5MfA=;
        b=jPTcRkaRpHqAjos6wWkQV2bSIorT7QdD4cd9JKE9siBAwxnqbpFHa+ppqTgEc8hvEk
         tqIQg3sodcl9oxN2WbWz2FUl5FquR1V/SBPNwcdFRndXd9OX/N7lrT1YaR5B2AtEYVR8
         qWYBo131r7Fz1Bk9bB93tYEZNdXbgChIOiMSK7zKDLepGR/A7BUOQRAME4mbDK1t2wII
         Om/mgobFrzsTV76P9bHrmlbYu5HjRWQ588Zp7LU/kxsWCy1Pgv/dDw2nuNIWY7VdbCcr
         vYqkmMNlvoiRlxatYGlc7sEKMUtTpLQ7xVJFBM7X73qXRM8zfNbliuyhCsS8Vb//3iaW
         pMVg==
X-Gm-Message-State: AC+VfDzlGgEEnz131eYzg8/YEJYCFrKKjgwyD5FSW0ZHv8aL2PCAMJLX
        xlLXfpmLCViDH+pU48gh5XToCg==
X-Google-Smtp-Source: ACHHUZ7AMfzuX8rRWUTw0RM7dJ0hcar2M9pAMiePR3WSb1BtFbqqF9p5lR1YlJ+Jt/alv09LczOsxA==
X-Received: by 2002:a17:907:a41e:b0:978:8ecd:fa75 with SMTP id sg30-20020a170907a41e00b009788ecdfa75mr4340090ejc.9.1686991990401;
        Sat, 17 Jun 2023 01:53:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id z5-20020a170906714500b00985767bb5f9sm1997506ejj.70.2023.06.17.01.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 01:53:09 -0700 (PDT)
Message-ID: <73f246a7-7b3f-58a6-2679-fd983eaad9d0@linaro.org>
Date:   Sat, 17 Jun 2023 10:53:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/6] dt-bindings: display: st7789v: bound the number of
 Rx data lines
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>
References: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
 <20230616163255.2804163-3-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616163255.2804163-3-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 18:32, Miquel Raynal wrote:
> The ST7789V LCD controller supports regular SPI wiring, as well as no Rx
> data line at all. The operating system needs to know whether it can read
> registers from the device or not. Let's detail this specific design
> possibility by bounding the spi-rx-bus-width property.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/display/panel/sitronix,st7789v.yaml   | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
> index 0ccf0487fd8e..a25df7e1df88 100644
> --- a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
> @@ -29,6 +29,10 @@ properties:
>    spi-cpha: true
>    spi-cpol: true
>  
> +  spi-rx-bus-width:
> +    minimum: 0
> +    maximum: 1

0 is already minimum, but I understand you want to emphasize lack of RX.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

