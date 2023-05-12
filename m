Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38BCD700508
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 12:15:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240482AbjELKPU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 06:15:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbjELKPT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 06:15:19 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BCB4D2CC
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 03:14:56 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3078d1c8828so6727833f8f.3
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 03:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683886494; x=1686478494;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YHnhA3bsFZjXjI2KBvdNTkEA6cTI4PkTEh92A9BH1zM=;
        b=S8PGo4cc5Tz3LuPdUzGu4UWFwpneiq8+NePyuExEpbZppz9MgmNbLXYf33dvKz0YLo
         d4/qmKqyLjzw6a3BU2WKQvlqXn4gifQN24rDWez4wTBHJ2tapij7WUx7/4cvj6mF/M5b
         ZB532RByd26rQWs4+HeLmm2+QloO6j/7mklzHVfrD4m+iRGkphjlUfGTX/bTlDqAZwwp
         2ao3ae5gelXdnq99DEPoH2kEqq7TGn38vRmQprgTbA87YYp/8JoiwvleLwhOcvKQBy6O
         j/godrhrygCcvOf8aX0UW2wMgNx4vQr0eOin1sGzJ07L7h+HnHohC8jMDV0Mve0tQ0MQ
         LjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683886494; x=1686478494;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YHnhA3bsFZjXjI2KBvdNTkEA6cTI4PkTEh92A9BH1zM=;
        b=EXQImeLgxZXDR3DRKhykmuCtw50wt+/hsRkV9Ck4RoR1Yy+QESxKKUczIbwT9Xx6d9
         m/9bxVTkW7apz7TrObZMMjBFwFNFKKJQFdjZg1dcmjp/OvG3YYduijVZvRFbO30KIGRK
         VxHPVaHsVqm9aR1tmzMSBaWsKNIf+AQKE0mAEDRB519HrL64Cy87wAu9wlQsydxRO4MN
         Lf1qY6KJPSyqAJt79G+bMCYun2yMLbqmsBQi5R6dSFRiZ3XSK4NCU5Q1uTJyUy4Avh+y
         zNY05/iKNq0rViFOjNd3bJW4lzqe0IYEaNHh/uaUCliDErbpZdxoaJ71rEJIJPb+QMpw
         aA0g==
X-Gm-Message-State: AC+VfDy8O4rW2BlyIV5otzhtdC3DD3nbEuD6vJ2+QM/LrqxuOGSxlqCV
        BqR9XtuPWsv3E/G48go4srGX/6KG4SjYjWCtKnA=
X-Google-Smtp-Source: ACHHUZ6SwFMkMNcp6yW+rNENGPX7CBBWtFxzW+G296zfPURSmofZ5GhZUA/Pxczsz5Ob23whxcz/rA==
X-Received: by 2002:a05:6000:1191:b0:306:462a:b78d with SMTP id g17-20020a056000119100b00306462ab78dmr15388534wrx.53.1683886494530;
        Fri, 12 May 2023 03:14:54 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id h8-20020a1ccc08000000b003f17eaae2c9sm28317794wmb.1.2023.05.12.03.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 03:14:53 -0700 (PDT)
Message-ID: <68aa0f6d-db89-8e01-264d-95d3839fb648@linaro.org>
Date:   Fri, 12 May 2023 11:14:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V2 1/3] dt-bindings: nvmem: brcm,nvram: add
 #nvmem-cell-cells for MACs
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-kernel@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
References: <20230421084312.27932-1-zajec5@gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230421084312.27932-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/04/2023 09:43, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's NVRAM contains MACs for Ethernet interfaces. Those MACs are
> usually base addresses that are also used for calculating other MACs.
> 
> For example if a router vendor decided to use gmac0 it most likely
> programmed NVRAM of each unit with a proper "et0macaddr" value. That is
> a base.
> 
> Ethernet interface is usually connected to switch port. Switch usually
> includes few LAN ports and a WAN port. MAC of WAN port gets calculated
> as relative address to the interface one. Offset varies depending on
> device model.
> 
> Wireless MACs may also need to be calculated using relevant offsets.
> 
> To support all those scenarios let MAC NVMEM cells be referenced with an
> index specifying MAC offset. Disallow additionalProperties while at it.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Applied thanks,

--srini
> V2: Add additionalProperties: false
> ---
>   .../devicetree/bindings/nvmem/brcm,nvram.yaml     | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/brcm,nvram.yaml b/Documentation/devicetree/bindings/nvmem/brcm,nvram.yaml
> index 36def7128fca..13412af7f046 100644
> --- a/Documentation/devicetree/bindings/nvmem/brcm,nvram.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/brcm,nvram.yaml
> @@ -36,14 +36,29 @@ properties:
>     et0macaddr:
>       type: object
>       description: First Ethernet interface's MAC address
> +    properties:
> +      "#nvmem-cell-cells":
> +        description: The first argument is a MAC address offset.
> +        const: 1
> +    additionalProperties: false
>   
>     et1macaddr:
>       type: object
>       description: Second Ethernet interface's MAC address
> +    properties:
> +      "#nvmem-cell-cells":
> +        description: The first argument is a MAC address offset.
> +        const: 1
> +    additionalProperties: false
>   
>     et2macaddr:
>       type: object
>       description: Third Ethernet interface's MAC address
> +    properties:
> +      "#nvmem-cell-cells":
> +        description: The first argument is a MAC address offset.
> +        const: 1
> +    additionalProperties: false
>   
>   unevaluatedProperties: false
>   
