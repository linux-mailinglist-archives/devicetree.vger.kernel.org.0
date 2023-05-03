Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91C1A6F5006
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 08:22:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbjECGWd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 02:22:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbjECGWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 02:22:31 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D8A02680
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 23:22:30 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-95369921f8eso769650366b.0
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 23:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683094948; x=1685686948;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z8XVAqmXI+jhl3BFHPCqjLP+/G26BqqeUS0b4jpObIM=;
        b=VME+7d3JdUeuTaP936ESeJYi8Rkg3Bkw5MUcPv9lLHvq10FrJs4+hA5FUwIjCipCfL
         ib1DEfjqkARo8PuxhGP7YyTiFUPXXxI3cwbjRjlRG/jMinWGWg8e5hoHJowM2yvQnEDb
         OPjkLXMOc7TEaG18GgBbu8yvIBDzE0FWD6/KvG73YAhOKcgY98tBwDG6L+2dZE3W2gdn
         mW2O/IS0uBUUJzUGDBGa72VcQnlaBpDwnonPleryUXxwHApf05JYqT3VyGzxhxZC7pIf
         hb+HuWoeOJG9/jhQqUEkLYnCJNeU1Aq1/Rb+uso6C9Lgxk5N6UgdYZMAfVmqdoN7CKf7
         u3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683094948; x=1685686948;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z8XVAqmXI+jhl3BFHPCqjLP+/G26BqqeUS0b4jpObIM=;
        b=apJyjWu0eO5jcHaOsfJQlKv3wLUdvpKNrEIVoSEY21qxyXJPA7GPzpioY8A+/YCwtO
         iko26mZGLFkrfN7p2HOvtmCeye1/bB7jn6DrV7hSMPJ+I820W+A2FJ7h51eX3czz8lnW
         Y7xpv9WbZLB5kQCMv/7aStqK4K9B9XiaOQi0k6kltusgyVuWRiS7qr/iTGdwwkAQEO0K
         wfF06/gwpGpFU6zxLyHVqzhV1R+EDSGO+BnS28Uqw8oNMSxHNRUzVD+qjQBCMyV04yXQ
         HJyyBRNUugVwvwbyuJZjP3ThzTyPu1WDxHgUgHpBkvMF6pQSyTDnHzJYGTGvw6MyIxo5
         RHPw==
X-Gm-Message-State: AC+VfDxisa0ejrfcCE2r/MZGnrO9CZCvH7TaGhBq5PqsNzMlWl/wFPfx
        SAJN7OHH1bf1sJPklcEatRav0w==
X-Google-Smtp-Source: ACHHUZ4aYV6FzcThjCWwcuu6vNy+xvXpJlGW+eUMldzJuswo1ddRZSQsgQQ2g5v2y51oCnhQf1mHVg==
X-Received: by 2002:a17:907:1b17:b0:94a:4d06:3de3 with SMTP id mp23-20020a1709071b1700b0094a4d063de3mr2278494ejc.72.1683094948531;
        Tue, 02 May 2023 23:22:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id t26-20020a1709064f1a00b0094f34fe27c6sm17016156eju.170.2023.05.02.23.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 23:22:27 -0700 (PDT)
Message-ID: <664379bf-96c4-b66c-6b0b-7b848ae6000c@linaro.org>
Date:   Wed, 3 May 2023 08:22:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v1 1/2] dt-bindings: tegra: Document compatible for IGX
Content-Language: en-US
To:     Shubhi Garg <shgarg@nvidia.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com,
        jonathanh@nvidia.com, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20230502150249.773425-1-shgarg@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230502150249.773425-1-shgarg@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 17:02, Shubhi Garg wrote:
> Document the compatible strings used for Nvidia IGX Orin Development
> kit which uses P3701 SKU8 and P3740 carrier board.
> 
> Signed-off-by: Shubhi Garg <shgarg@nvidia.com>
> ---
>  Documentation/devicetree/bindings/arm/tegra.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
> index 0df41f5b7e2a..34523b8b5d1f 100644
> --- a/Documentation/devicetree/bindings/arm/tegra.yaml
> +++ b/Documentation/devicetree/bindings/arm/tegra.yaml
> @@ -176,5 +176,10 @@ properties:
>            - const: nvidia,p3768-0000+p3767-0000
>            - const: nvidia,p3767-0000
>            - const: nvidia,tegra234
> +      - description: NVIDIA IGX Orin Development Kit
> +        items:
> +          - const: nvidia,p3740-0002+p3701-0008
> +          - const: nvidia,p3701-0008
> +          - const: nvidia,tegra234
>  

Don't stuff things to the end, but put in some logical order. For
example 'I' could be before 'N'.

Best regards,
Krzysztof

