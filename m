Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B861512C9B
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 09:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233816AbiD1HX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 03:23:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245024AbiD1HXq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 03:23:46 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C4491CB18
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:20:31 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id k23so7746326ejd.3
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=up7p03H0J0l2JRjS145DbS50uy8AZoB9ENunf28x/sA=;
        b=PEs/6oNfJTBBN0h6QIIIJb6yJ2g32AbHqLBEV+1SLFdYoMXSRbT4yEoKcw3XUuNemC
         uj0IPsvcy+aLjTqkDN0RCJfyuR1Y7fdqG2Xm6zqHBvTbfZetlGIxRzCVig4L+tuVImje
         0KXW3mG472TTAwXzM3e7LTmrHs1WsyGarm2Vyg1vpUnkQyfqYgIB1fRhh3Dq7a35111a
         q0FlxgXc2kKS9zb8OQ0blhu3oqlTYKZtJ5Aa3jeAD5u7/cT2O6WO6kwhkCTUpvU/XsK2
         jBDAH2sfvRylegku/5gfh2b1R7XUUOb9++mgbsDLuepc/c6XTqhAtfu9mJWvctCogwsm
         +QNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=up7p03H0J0l2JRjS145DbS50uy8AZoB9ENunf28x/sA=;
        b=DbK9gpu45t9dwMG4twEHRha7Zfzr+0qbt9oNuLSbr0PaXe3niRQUFgVGxNz9a4gLP+
         gjMqRn2NyMV3B5Dp4SUJwca7PvK+B7C6INK4fnuWNRws1VQD2hoiNZ3/DyDh5EfDfus5
         Ze5RQUXTUMjyCSXdAoFVL220J1lecaccLPUQOien27GFJG6y+kWCqX0u6XjsBUCmoFcy
         G9MmA3jZhoVt/JB/y/jkGA0mUYjloplkcrhDfOfZEpHw1PLvzYLhJPSyqUt6GeT/GgQu
         kROLNHmNNck9+RRJYQzP2R4c+5PFJxPN1PaSoC8CuwW+YPe27xGKnMv1hSgok8Fmx9Mv
         71wQ==
X-Gm-Message-State: AOAM532NWh+c3EdkUenBxL5b8NEERaq33rGw6tKaNfGQYpNWciAQe6xi
        oddJIx4Q4q3/Y4RZ0PfCVdSOTg==
X-Google-Smtp-Source: ABdhPJxeoFy9Xibfpu3oUK6Cb02FyClEqMnD3LwurqLe+iUl9cJaEWfclRXJgrnFyTpqHolYTF2xXg==
X-Received: by 2002:a17:906:3101:b0:6d6:5b64:906f with SMTP id 1-20020a170906310100b006d65b64906fmr30322134ejx.513.1651130429559;
        Thu, 28 Apr 2022 00:20:29 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w14-20020a1709060a0e00b006f01e581668sm7859254ejf.209.2022.04.28.00.20.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 00:20:29 -0700 (PDT)
Message-ID: <d4fb371c-c204-3ab5-6f38-7c88de30b25d@linaro.org>
Date:   Thu, 28 Apr 2022 09:20:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: rtc: mediatek: add mt6358 and mt6366
 compatible
Content-Language: en-US
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220428064637.28288-1-allen-kh.cheng@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220428064637.28288-1-allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2022 08:46, Allen-KH Cheng wrote:
> Add mt6358 and mt6366 compatible in devicetree-binding document for
> MediaTek PMIC based RTC. mt6358 and mt6366 use same compatible data
> to store RTC_WRTGR address offset.
> 
> mt6366-rtc will use mt6358-rts as fallback.
> 
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>
> ---
>  Documentation/devicetree/bindings/rtc/rtc-mt6397.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> index 55a0c8874c03..5b012d222f5b 100644
> --- a/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> +++ b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> @@ -14,6 +14,8 @@ For MediaTek PMIC wrapper bus bindings, see:
>  Required properties:
>  - compatible: Should be one of follows
>         "mediatek,mt6323-rtc": for MT6323 PMIC
> +       "mediatek,mt6358-rtc": for MT6358 PMIC
> +       "mediatek,mt6358-rtc","mediatek,mt6366-rtc": for MT6366 PMIC

Does not look like in correct order.

>         "mediatek,mt6397-rtc": for MT6397 PMIC
>  
>  Example:


Best regards,
Krzysztof
