Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF081747D27
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 08:35:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230488AbjGEGfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 02:35:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230196AbjGEGfM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 02:35:12 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56DDE10EA
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 23:35:08 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-51da8a744c4so7052551a12.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 23:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688538907; x=1691130907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L2v1CKfZVQZMVUOyMsNIql4zWTZda/d1sC5zxg4FuCA=;
        b=V/nRVVfjRPCdB3E+LJN+f4+i/OJ2iD0j00mDgfn1D1EbUnH1ANjUQf1HcjYX8KsdUL
         IKo5gZIxUqLlUnZ9i3UFlpNYaZv2Z2YnA45KEAz+8cAcQmZpyAsbt8eQxdsZqFHx60rY
         ulwWt8rlINrqCrTCRWhExK78iXQ0r8ZIlR/UiH6Il6PJ6tOMMHHEZ0POo5/39zDpIzUg
         5osuz56Y7lwQ4i9Lfxsd9I5nM0dyXSAktmmSdzQ0yqmlFZNN7uw6Sr6GjhBEgEljuzK2
         uk8GY5gRUxq2JH0mbZKF2s8d/f7o/C3TcrVJbG8qFFfp4OAdTltaV3K87qEzMc3q1DYd
         NxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688538907; x=1691130907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L2v1CKfZVQZMVUOyMsNIql4zWTZda/d1sC5zxg4FuCA=;
        b=RjVmapttPhvThjWmtYdt13xgWen1/qvIVEFvhsMgB2pWT7SWWlzNRQzGG2b8RCIMf/
         InBCbgQMIrvpp/eVdhTJuhA9/JMshgKojP14ICAHo+VLJwQtlEukzCUUe+g5oWm6g/wD
         vpovEIOm+4lwYKJWthWVmtrUtdnIqP65f8J5OqhAg6u1xT9dvbDTTsSt/7/d3znkaWuI
         P2IWvYrd64z92BuDCVVVq8bIGTSo+2VfIam7y5YZTNMkSr7Z4zI6FZ4YCD+0Mf0KJR1a
         r2GSV93lRrDzUybs9wniQFXwkt905y+uf7bX/WJFc8pQlHx7nY4gPllvPvVRmu2AU4ge
         CnJA==
X-Gm-Message-State: ABy/qLZP0VopoVti491pCqNnwpFHO1zX4fH+jpNhWz2jZNHL8XmgUZ6d
        ck5Ws2UqdEtS96OBZfZgzhWxFA==
X-Google-Smtp-Source: APBJJlG24qM865XuqcPSMAJs947Fwrelgv5BYPPB5l2csTsVNZro9MFXhq8fJ7WVl8yeD38H6HuePQ==
X-Received: by 2002:a17:906:370c:b0:991:e12e:9858 with SMTP id d12-20020a170906370c00b00991e12e9858mr10952797ejc.64.1688538906803;
        Tue, 04 Jul 2023 23:35:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id jj25-20020a170907985900b00992b1c93279sm7791863ejc.110.2023.07.04.23.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:35:06 -0700 (PDT)
Message-ID: <1667d1c1-3eaf-6554-8b9d-f0f4e80ef924@linaro.org>
Date:   Wed, 5 Jul 2023 08:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] dt-bindings: arm: Add Polyhex DEBIX SOM A based
 boards
Content-Language: en-US
To:     Marco Felsch <m.felsch@pengutronix.de>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, marex@denx.de, frieder.schrempf@kontron.de
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230704184109.991104-1-m.felsch@pengutronix.de>
 <20230704184109.991104-2-m.felsch@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230704184109.991104-2-m.felsch@pengutronix.de>
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

On 04/07/2023 20:41, Marco Felsch wrote:
> Add devicetree bindings for i.MX8MP based DEBIX SOM A and SOM A I/O
> baseboard:
>   - https://debix.io/hardware/debix-som-a.html
>   - https://debix.io/hardware/debix-som-a-io-board.html
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index d9e763ef932e5..6240485ba13b2 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1059,6 +1059,14 @@ properties:
>            - const: polyhex,imx8mp-debix             # Polyhex Debix boards
>            - const: fsl,imx8mp
>  
> +      - description: Polyhex DEBIX i.MX8MP SOM A based boards
> +        items:
> +          - enum:
> +              - polyhex,imx8mp-debix-som-a-bmb-08   # Polyhex Debix SOM A on SOM A I/O board
> +          - const: polyhex,imx8mp-debix-som-a       # Polyhex Debix SOM A
> +          - const: polyhex,imx8mp-debix             # Polyhex Debix boards

A bit too generic, unless Debix boards are basically very similar. Since
your website links to "debix.io" this looks like compatible for all
vendor boards, thus way too generic.

Best regards,
Krzysztof

