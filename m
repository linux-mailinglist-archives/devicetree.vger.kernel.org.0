Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E0EA475D22
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:14:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244669AbhLOQOr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:14:47 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54402
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244641AbhLOQOq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 11:14:46 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 59BB43F1FD
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639584885;
        bh=BgY63FchJkPJ4eMrqqHCh/pTnUvExCwHzjMOF853cBI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=kQvjuLgjuSuJon90wlPPUsHIXOlGkKAB8BR83+nT059COoph95huY859tFyNFcYwK
         RYltee/2FhbwdesHMgfqR5VucaaXqoVmrBaHUg3gNPK9pNGbTZ9rZoLxExWgt7EZo3
         1uPeump0c+bxHrd6GwxABC7A9kBDQFIcCF99I/rPV8SRakh2gLtj1MlrVOKIwi6Xab
         GdyBwHHCPQjSq3YyZMcACVP/Aui4KR5FT1FVNLaINuWcHoKQzA9rbvqZhBi9Nr/5Jz
         YKuZ8yEiZQglmNlp2BTU2H6KevqnhwZrRa9eSi73WOBmiNKxhopDR4A238yxzvvaX5
         jFobhcc65AB8w==
Received: by mail-lj1-f199.google.com with SMTP id z18-20020a2e8e92000000b00218e583aff1so7197484ljk.1
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:14:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BgY63FchJkPJ4eMrqqHCh/pTnUvExCwHzjMOF853cBI=;
        b=gkUOjf/AURXNtcoVYTxbFOQbFhkjWQW/V0XJBfvJS1fMybaYGDMVYHdYscTbKeoc8K
         eZtwT8SOA1diuMBujgQkr30JWjv9vMWEUIwgm8GQQHqt3RRrEp1LS02GFSItvZLcXHsU
         6dX44TH5O5qckdC7BvLLJHL+jXpEF3mXXkmHbELAQVvLhqgc+FrvL8ciXXp7BGA9bOJe
         ANouTXCktcEGCMCxHoAU2Ds1PZRVV7aUnL3HYVuJtKtyGYVJV/pG+2dQWjG5sFh7dKig
         16MhoKFPg4C+7JmGhncyHAAPsn+G8y/FreLzcdgOqU/FA+N4rX9jIZLfW21GQrQ8WI4Y
         t+9g==
X-Gm-Message-State: AOAM532mxYgyMUmf7zvkO67BelQXix3R8UervgzfULFXBn9j5JS+Hp9M
        pzUDoSwroqoPddIzcYOCkwx28BTpLlqgUYQ+3Y6AZxo7LjUHJLzzraEUWPpRepALF8d2DanmD6w
        uMxggmvpDjI+i67kOMrf7l8PT/SPQpykCZMtIweI=
X-Received: by 2002:a2e:9a8c:: with SMTP id p12mr10675498lji.526.1639584884732;
        Wed, 15 Dec 2021 08:14:44 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyoFe2zOV0XCkDN3GJvTojPbSxqWGhI9oo5Cf2acMBIzbtAkJY5xqgX9FvmY/8rG8I8ROe7SQ==
X-Received: by 2002:a2e:9a8c:: with SMTP id p12mr10675478lji.526.1639584884570;
        Wed, 15 Dec 2021 08:14:44 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id l18sm385334lfc.97.2021.12.15.08.14.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Dec 2021 08:14:44 -0800 (PST)
Message-ID: <55294fa1-9988-5c10-1fc1-c33f3ec9b231@canonical.com>
Date:   Wed, 15 Dec 2021 17:14:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 4/7] dt-bindings: arm: samsung: Document E850-96 board
 binding
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Hao Fang <fanghao11@huawei.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20211215160906.17451-1-semen.protsenko@linaro.org>
 <20211215160906.17451-5-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211215160906.17451-5-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2021 17:09, Sam Protsenko wrote:
> Add binding for the WinLink E850-96 board, which is based on Samsung
> Exynos850 SoC.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> index ef6dc14be4b5..00f122197476 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> +++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> @@ -205,6 +205,12 @@ properties:
>                - samsung,exynosautov9-sadk   # Samsung Exynos Auto v9 SADK
>            - const: samsung,exynosautov9
>  
> +      - description: Exynos850 based boards
> +        items:
> +          - enum:
> +              - winlink,e850-96                 # WinLink E850-96
> +          - const: samsung,exynos850
> +

Add it before Exynos Auto v9 entry, please.

Best regards,
Krzysztof
