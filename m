Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E70E66DBDD
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236804AbjAQLHm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:07:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236812AbjAQLHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:07:10 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAC0832503
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:06:41 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id d2so10055299wrp.8
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5VlVfjPw+xv6VuujaDXgc7l968YPEAt8+NftJpGeq1A=;
        b=Ia7q1dons5xYu/YX79JDUS9Hz6+VifLyaUFKNQgNr3dFP4tTWBQ2vHRxOa6/bXIY2f
         AfxVuFhWHAiLOZStoUEFjV17HhVKTb4ha7ZRnNYia/TEa/irwK3qLDuns3WxNwRMQ6P9
         o+utIpkjMvnF1b7acf3zuEZpO53dHENlq6QEumDUUf6B1vfUoN60C6HeBDeXHceJTMcr
         RpvSaJZnjzOtS7NmItolKy7Dbq7Ro+/73m+CW2aZwsL3jimUHyrqbzlPvnQYi+JGMAjZ
         UV8zUNgtZeoyrYrvNy+twTp+6fdYDubtg8OkM3J8hBxJdm/Upteo7es1v2HIijN4wVYj
         GJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5VlVfjPw+xv6VuujaDXgc7l968YPEAt8+NftJpGeq1A=;
        b=OQsrvqhUOI9wniyVbYqLMSVU3CbPnle/aAa7WK3upAWVhSieysta6b9RkeQnDnS76q
         sIij4vQt3n6GbUTnX7ZKfBIXnYMcWp0k2rurr0BjU0DwBvQPTSX7MRLlDZgPfS8RmySj
         3lsvEdX/n6K0vrFWYAjdJfpQzzHwLHYmcD0Ij9Mg+E9vBFEgdD+WD0X815+CD4HHPdMl
         3TBVA62fUT0k7VqMWmJKEyWcJMLmoR4Sj3ZR4v1ncV5QniopTFlZZXBvcrTM/I4ZM6Nr
         czOyyci3CrCFEPPcx5iGBWseo95jvSqz3+QMrDUQHUxXUER2PMcuOmbLcsMBMDnpnEjI
         VP9g==
X-Gm-Message-State: AFqh2kom3bG1FB7nKvuxdXqW6I4o8TnNyEFFr+F+xVSDz9IWHWsUqzTz
        80oftaJ5IWWnrnB3JhdMiX4Ifw==
X-Google-Smtp-Source: AMrXdXsbin8MnpDGyCIm/CoMhuyEc/m19GzpyyRmynFQuakWzXuXZ0SuGGa8BPfTNil2dW2jX9Q9Bw==
X-Received: by 2002:adf:f992:0:b0:2bd:da99:bb8b with SMTP id f18-20020adff992000000b002bdda99bb8bmr2661058wrr.5.1673953600343;
        Tue, 17 Jan 2023 03:06:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t10-20020a5d534a000000b00272c0767b4asm28952891wrv.109.2023.01.17.03.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:06:39 -0800 (PST)
Message-ID: <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
Date:   Tue, 17 Jan 2023 12:06:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and
 compatible for Radxa CM3i
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chukun Pan <amadeus@jmu.edu.cn>,
        FUKAUMI Naoki <naoki@radxa.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-3-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117105504.18296-3-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 11:55, Jagan Teki wrote:
> Fix the dt-bindings for Radxa CM3i SoM based boards with proper
> description and compatible strings recommended by Radxa.
> 
> Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> Cc: Chukun Pan <amadeus@jmu.edu.cn>
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 3d3c59624483..6f276d787e50 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -628,11 +628,11 @@ properties:
>            - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
>            - const: rockchip,rk3566
>  
> -      - description: Radxa CM3 Industrial
> +      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
>          items:
>            - enum:
> -              - radxa,e25
> -          - const: radxa,cm3i
> +              - radxa,radxa-e25      # Radxa E25 Carrier Board
> +          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)

No, it does not match your patch 2/7. It also does not make sense to
duplicate vendor prefix.

Best regards,
Krzysztof

