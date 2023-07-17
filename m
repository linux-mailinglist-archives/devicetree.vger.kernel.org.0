Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C4E6755DAB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 10:00:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231126AbjGQIAp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 04:00:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbjGQIAn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 04:00:43 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 547D3DE
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 01:00:40 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9922d6f003cso596094666b.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 01:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689580839; x=1692172839;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=THHFMED/jbOMH1YRv1UObCpRHTU3JeymiO4m4VH30UI=;
        b=JVkc2lCRmJaOr1H3tOGjczXY4e7+wGGkwH424uoSMLfFGyuQwfYbf4VVztm+wtgQM0
         k1KtafwTOYyffgHZqwXgnXqmN/FS/nZoRG/s35hkxZhxG7kmcdaFzKRh8AaFyR/a1NuR
         k2F86TuPe/XBLIQCP4C9q5pNTZwGAbUXCxhp6qGgLgk6As+S4h0Dnn7Yj6/b7fKzZqFU
         X/6GxUUmkSa2tiVLlllntz4up8imTnP0JF2PT+gSW8419n/qIEoMN19TOD7ycyJPtznc
         BePOJ2L+o8VSMPAG/YkbLjdpoHKFvNwtllz8JMTEjJ+pLam/MhEs4jW2d+NcahMHyYMn
         1efA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689580839; x=1692172839;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=THHFMED/jbOMH1YRv1UObCpRHTU3JeymiO4m4VH30UI=;
        b=hoFb1MYixUaxH19yNVZFOd52ssLU8frNT9RyBSJvpdQNA3qaOBvoM/09fkMPD4Iepf
         KiwgFlbfgA2EA+2kZjwm6dbZIuPSe9X//GztgjoAdSGlQquju9xkVtb1z2ERBPG33eJV
         hlsGhTGTuQezSNFtdE6De1f7IQGnPYaxPKSY8/68WEwakRbCGF9ao45+7ONkHiLRiWCK
         kzqLHXW7jqMaWALQ/LrZ9EkNs4oAMW+MBSNp7/jzQ3OA6Y3fss3cpyR6acrNy2Om1frQ
         Ci8rtEZWWK8o/g0ohGuJUQEi2cyHTdSnzgvvRpJ1XDGdUbS/Z4J2Fl66cP7gv8p6897g
         Uhww==
X-Gm-Message-State: ABy/qLYkEXLY1wDMEG43hnKM+M3WnadAjY0BlL061fVRvaLyihPe2F1u
        old9TZv/u2pxSc2FxK70/uRqSA==
X-Google-Smtp-Source: APBJJlE6vsMf+xJHq0O08ELQG4D+gllwRFuPlzUBGX6jzdz35fNbMZ5xU3jC0NMYESeFySVfqn8/vw==
X-Received: by 2002:a17:907:8a11:b0:993:e691:6dd5 with SMTP id sc17-20020a1709078a1100b00993e6916dd5mr12922667ejc.7.1689580838733;
        Mon, 17 Jul 2023 01:00:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id j8-20020a1709064b4800b009929c09abdfsm8914264ejv.70.2023.07.17.01.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 01:00:38 -0700 (PDT)
Message-ID: <6dbf7628-da4e-6be6-27ed-b0bafa15d8bb@linaro.org>
Date:   Mon, 17 Jul 2023 10:00:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 RESEND] dt-bindings: clock: ast2600: Add I3C and MAC
 reset definitions
Content-Language: en-US
To:     Dylan Hung <kobedylan@gmail.com>, mturquette@baylibre.com,
        sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     BMC-SW@aspeedtech.com, Dylan Hung <dylan_hung@aspeedtech.com>
References: <20230717075123.1597977-1-dylan_hung@aspeedtech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230717075123.1597977-1-dylan_hung@aspeedtech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 09:51, Dylan Hung wrote:
> Add reset definitions of AST2600 I3C and MAC controllers.
> 
> Signed-off-by: Dylan Hung <dylan_hung@aspeedtech.com>
> ---
> 
> Resend v2 patch through my gmail account as the aspeedtech.com domain is blocked by gmail.com

Where is the changelog?

> 
>  include/dt-bindings/clock/ast2600-clock.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
> index e149eee61588..712782177c90 100644
> --- a/include/dt-bindings/clock/ast2600-clock.h
> +++ b/include/dt-bindings/clock/ast2600-clock.h
> @@ -90,7 +90,19 @@
>  /* Only list resets here that are not part of a clock gate + reset pair */
>  #define ASPEED_RESET_ADC		55
>  #define ASPEED_RESET_JTAG_MASTER2	54
> +
> +#define ASPEED_RESET_MAC4		53
> +#define ASPEED_RESET_MAC3		52
> +
> +#define ASPEED_RESET_I3C5		45
> +#define ASPEED_RESET_I3C4		44
> +#define ASPEED_RESET_I3C3		43
> +#define ASPEED_RESET_I3C2		42
> +#define ASPEED_RESET_I3C1		41
> +#define ASPEED_RESET_I3C0		40
> +#define ASPEED_RESET_I3C		39
>  #define ASPEED_RESET_I3C_DMA		39

Why adding duplicate ID? Your commit msg or a comment here should
explain this.

Best regards,
Krzysztof

