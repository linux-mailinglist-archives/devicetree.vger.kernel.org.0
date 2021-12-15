Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A83AC475D4C
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:23:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244746AbhLOQWZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:22:25 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:50740
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238080AbhLOQWY (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 11:22:24 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E8B1C3F177
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639585343;
        bh=Z23gqncjXTDma3MAGbF/ABiF38CqvJFbYLGLj7MCGK4=;
        h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
         In-Reply-To:Content-Type;
        b=uZCNW0b5LE2n7T0TvqhLYKjPjidHZyWTMF/UaYtUT7nz9poX/jeUXLfmikyEydq6t
         d4taU0KpA8ZRplyJOLglS7lAsqgFUJodS78RFjpzaRZqYj+tGcQKJbh2m2s3myczG6
         VzmZpiDPaYOAmp1bC13c/a2GHaZamGpVC5PNZxeHgTm8SgrubJTWmi+gp0Wx0ugiai
         6NLAa8hHgrhql6bTnA6oCN0BeXrv9vcLU8B4s3LlmlOBwcP4I2ZquSUHfMxpM0uDI2
         Ljs9mWJInWbO36RHe7J6F2oD7G3rowK3n4O6rclE6lyOrrUH/10Nk8uB3azqYJliH0
         Raj+uy07+Fiyw==
Received: by mail-lj1-f197.google.com with SMTP id w16-20020a05651c103000b00218c9d46faeso7226109ljm.2
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:22:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=Z23gqncjXTDma3MAGbF/ABiF38CqvJFbYLGLj7MCGK4=;
        b=RATcrthA4aJ+tAaYb4B+DZaot0+JK/t/QbcRXLqBMvNKBG7Z7nyag6y0dGE4iSkJnx
         fSHa4gVyYZKAgwB0Vx0hvpp+afsJr0iq5dqjk5a0orhon2c7ZHAlX34ev6mwVQ1ay84v
         Bn9wzrV98aQacNXdF7lb17tQpB2PVptWYlfM5nyWPjCNPV9mupMC4UkYvr+iXvWP1oaZ
         ruEk7GHAY7ooVbzzVameiHUPfJFW45wSrcPFPp886ANWWzIzXMDUgTiblIh4VpICy0x6
         5s8a6ABo6qA4OSXoBKTBBCjLCz7bc4lit/EX3Fau5OrM1ukR6fSiYuWfo8lV47Vw2mEd
         boQQ==
X-Gm-Message-State: AOAM5331BoJ3rsNQ+F/IFs8FjPnqdHv5+TjJjU4AaXGkYz5KY+/45KfT
        n9BdR8pbVQkASZ5HmoWpRPBLH4pOlYwFBOz4zmF7Uhj2W36OLQJiq2nkWM0hZrbgyRS8KhT045L
        0VqFa1/NRtpzQU3404zPSVTSti5/VvTfBBUQMDWo=
X-Received: by 2002:a05:6512:487:: with SMTP id v7mr10206226lfq.386.1639585343419;
        Wed, 15 Dec 2021 08:22:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz9qgUSsoTZTEVQwfLvYImmD5LtPngqbyyxLpVI0FQzdKit4LPRNPEyh4OhT5jRHrAxhd9mLg==
X-Received: by 2002:a05:6512:487:: with SMTP id v7mr10206167lfq.386.1639585342645;
        Wed, 15 Dec 2021 08:22:22 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id b13sm388572lfv.200.2021.12.15.08.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Dec 2021 08:22:22 -0800 (PST)
Message-ID: <77ab7341-2311-da24-1128-b5775a71db1c@canonical.com>
Date:   Wed, 15 Dec 2021 17:22:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 4/7] dt-bindings: arm: samsung: Document E850-96 board
 binding
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
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
 <55294fa1-9988-5c10-1fc1-c33f3ec9b231@canonical.com>
In-Reply-To: <55294fa1-9988-5c10-1fc1-c33f3ec9b231@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2021 17:14, Krzysztof Kozlowski wrote:
> On 15/12/2021 17:09, Sam Protsenko wrote:
>> Add binding for the WinLink E850-96 board, which is based on Samsung
>> Exynos850 SoC.
>>
>> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
>> ---
>>  .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
>> index ef6dc14be4b5..00f122197476 100644
>> --- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
>> +++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
>> @@ -205,6 +205,12 @@ properties:
>>                - samsung,exynosautov9-sadk   # Samsung Exynos Auto v9 SADK
>>            - const: samsung,exynosautov9
>>  
>> +      - description: Exynos850 based boards
>> +        items:
>> +          - enum:
>> +              - winlink,e850-96                 # WinLink E850-96
>> +          - const: samsung,exynos850
>> +
> 
> Add it before Exynos Auto v9 entry, please.
> 

And also rebase on my latest for-next - I just applied conflicting
change for Exynos7885 boards.


Best regards,
Krzysztof
