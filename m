Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 737D178D916
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:32:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234310AbjH3ScU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:32:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245267AbjH3PAF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 11:00:05 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C3C7AC
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 08:00:02 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-500c37d479aso3013562e87.2
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 08:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693407601; x=1694012401; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TQn0KeofNTtTdo5iPvVcRWRdRqcYBxA8CBEmcbamr8c=;
        b=xtxzzkLAQOd7ib98b0v+CcZSkxpoZBha5LkOcaCAg9dqC6ZoD+FQLbc8HMjeRepRNl
         S5oMZy8WiIv476eTpknfKAoV2OS6MAG3tk7H1R0EMGXQKWr8uVmxxcY64CdSrUhAcDmv
         YRqumHScfLtXHcNoN/Vrlw4nV/JOBUhKzGKIZ2nPeEHb449QvC2wg20xHDxT9vkMRIIb
         cdMBGS+fm0GGBs5Hl+NJ6xVolfyEWjCkVOh0nJro9XIBhfjBQAiSu3dU6Q2NOgFjJBr0
         R3Me8H5206BYvGyHLtp+uxSBa2E/JEXwobjZnmmtziJa/jvct0jOl8GmZJuJcyHivjkc
         yyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693407601; x=1694012401;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TQn0KeofNTtTdo5iPvVcRWRdRqcYBxA8CBEmcbamr8c=;
        b=E3gNCYEFKQ2MkPcgyByd4KRwUPUNiwFUhBL+7s7TN8Dm3RNkxwNjrkqCnzxCupD4DH
         37/XnDcIPAwPjzPyqaPvERowksgu+q6fdQsrgLkblpF1leTojXigMXOPpMLSU6+Ippeu
         t5itASuKuFlgAqxo6mrRN8bM9RxElR7hfZmV7CsRQpiot0oxksgrkhLCDlOsUQcw037f
         zT+hAMPzNl7N+NEkMue0aTBtu19IHHcnw0+Jbi1/lqhYL7QPijnJO5TxnTmfvP/F5Yw1
         ab2QwwUcQGhUe1FhfUDeJf54MKnLUHkiav/eROgkF1d67WI5zxQkC8aeaEYumVTezHct
         Uy9A==
X-Gm-Message-State: AOJu0YzKjhWwq0N9T2+n3XtTMgtm7Fnct+3r+vxzs96ZxTGBShzLdrU/
        vTK1D73fWf1g+bVITVTBZA3ijLI4XGUNQUnhsY4=
X-Google-Smtp-Source: AGHT+IGgjAb6YASuEfXWV1KpcOxKFm0BiVg8plDyeax04/jVsDDI0EEaN5RupYb4BqDwrafMbX0VlQ==
X-Received: by 2002:ac2:499d:0:b0:500:7e12:c48b with SMTP id f29-20020ac2499d000000b005007e12c48bmr1623085lfl.44.1693407599895;
        Wed, 30 Aug 2023 07:59:59 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id e5-20020a056402148500b0052996528b81sm6862803edv.45.2023.08.30.07.59.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 07:59:59 -0700 (PDT)
Message-ID: <240d4c8f-1938-f812-1bd5-81620f3e42fc@linaro.org>
Date:   Wed, 30 Aug 2023 16:59:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] dt-bindings: arm: realview: Spelling s/Cortex
 A-/Cortex-A/
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <af8722c60c35d869732a638e3d8eef9d4f8cd0bf.1693407125.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <af8722c60c35d869732a638e3d8eef9d4f8cd0bf.1693407125.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 16:53, Geert Uytterhoeven wrote:
> Fix misspellings of "Cortex-A8" and "Cortex-A9".
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/arm/arm,realview.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,realview.yaml b/Documentation/devicetree/bindings/arm/arm,realview.yaml
> index 8d3ed2e4ed315ca5..c4e9b500e02f122f 100644
> --- a/Documentation/devicetree/bindings/arm/arm,realview.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,realview.yaml
> @@ -11,7 +11,7 @@ maintainers:
>  
>  description: |+
>    The ARM RealView series of reference designs were built to explore the ARM
> -  11, Cortex A-8 and Cortex A-9 CPUs. This included new features compared to
> +  11, Cortex-A8 and Cortex-A9 CPUs. This included new features compared to

Probably "ARM" should be moved here to have "ARM 11" in one line, but
anyway:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

