Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9068A59FB85
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 15:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238297AbiHXNjT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 09:39:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238208AbiHXNjS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 09:39:18 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A317DF63
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:39:17 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id n15so2963578lfe.3
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=V6cj3V/VBiUd6vAyv3IfjrHlstKG/Pry6pMTL1G1HJs=;
        b=q74t/fo7U6QS/5ucuhpK1jsJqlhRCtP9xqse/8U3QXSn9ceiB9Tzh7PsoUubk+Z3CM
         s57Q5iQYNcKg/NefUazZSKlknebDVhlAbJDUZpSilImUYYqCuRXA5dYF3YIWaco8yhCn
         UbyvZlmqTkHh595LagE8IUcPnwfjbFlzWDVV5DF0DkeUIs8zDR2cr4E0UWoITq8bXm1/
         WcCrN/RhqZ9tkxmdAwycNly/Wgna1xvL+UMRyfpnBQcwh1n4msAvZFs1zhZRhqJsfiLN
         DCE7rGfKhdSdC+SZy8nCF0IrFNadZYa2tuTNIMq03ebvKuxNJlQWxWoY6yOhUGkqQuya
         gmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=V6cj3V/VBiUd6vAyv3IfjrHlstKG/Pry6pMTL1G1HJs=;
        b=PFWRFY7GM59i3zaMn1vtCFEpHbLulMyROgrxOo/R5RwazkKGxdtfDR0NEpTQMiqaLI
         kz7rzzNqTUvb1tlbHedHCSUiHPWT9a0jBQDhE1J8j/Yxn39jRFlq/ouykdAboMq/spLB
         3cDgqm5QdKtsc4YJXwZ4xYZpKZXa93PcQ65PX0w67OcaEWWcW8nO7KGbCLeHpBWKy2py
         cUP3cXEbphJeyKBNwXtBt/qfbhYQdHUhJ+zN0xK38nWisswxV0Gi5vikCImYataljNMk
         gHRJbRGsX+r6Ltj4Sj6G9wMaOnTQRz7xEuEknVM2Tn+GmEDp7/u2cxprVvCln4/V2jFg
         dpTA==
X-Gm-Message-State: ACgBeo10lbMsOovBIRF8L9mo1L31aIi01k2BWVSLOapmWWD21Ke7ETfO
        MrMHQFg2aieClaaGjvGQrMCZaQ==
X-Google-Smtp-Source: AA6agR7LNcCr43BB8+jOLwhtpUq/grLdUKAkFlzrhMpGl4TW6Xbgbv3XVwN1q2tZhZkypaBvI1pxZg==
X-Received: by 2002:a05:6512:3503:b0:481:4470:4128 with SMTP id h3-20020a056512350300b0048144704128mr9791239lfs.303.1661348355941;
        Wed, 24 Aug 2022 06:39:15 -0700 (PDT)
Received: from [10.243.4.185] ([193.94.200.84])
        by smtp.gmail.com with ESMTPSA id w26-20020a05651c119a00b00261a7425db8sm2771280ljo.61.2022.08.24.06.39.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 06:39:15 -0700 (PDT)
Message-ID: <2b1ebdad-b407-6867-4caf-2f2f5e1528bb@linaro.org>
Date:   Wed, 24 Aug 2022 16:39:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Document Chongzhou
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org
References: <20220823184242.3554472-1-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823184242.3554472-1-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 21:42, Jagan Teki wrote:
> Chongzhou is a professional is a manufacturer of LCD panels
> from Shenzhen.
> 
> Add vendor prefix for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 2f0151e9f6be..e8ee5084cb89 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -244,6 +244,8 @@ patternProperties:
>      description: ChipOne
>    "^chipspark,.*":
>      description: ChipSPARK
> +  "^chongzhou,.*":
> +    description: Shenzhen Chongzhou Electronic Technology Co., Ltd

Maybe there are some transliteration differences, but isn't this
"Changzhou" (o->a)?

Best regards,
Krzysztof
