Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31802496516
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 19:33:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346191AbiAUSd0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 13:33:26 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:56634
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1346158AbiAUSdZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Jan 2022 13:33:25 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C86EA3F1E9
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 18:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642789997;
        bh=mXZlfPhqAVSv8NPi2Pl5gmTb003b75PhYIJqXglSUqA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=QCd21mY0oU+lponYpnmTxcH55sXVs7FNdpXDlhBaA/oS80BOAarh0DnawVYvJ2THk
         LTYsTcvLNwtpuErOh2Fo+BpBCWTqlVxS/GHsVXS2TTx6B8Sec9NtDLNz0Etq286BIW
         5I1o5SIDq2w0UCADqCOTKso7bqy3s7t8oueSw+KblUZ2QGKFgTIP8AUviW7NlRsIuV
         l3eZtNUzSndGlZHMsALwdjDZLZ5ptkaCakMDJtHJJ/aHGQ0Cr6d8SPf0vmi9mj6O77
         VSgBatYXe5SDeFuXAhgIjCtX6YrxJSvTpEZNpwANqjgr8FyAVMTebYy0iPeac/fV8d
         D60rUFqrUTdlw==
Received: by mail-ed1-f69.google.com with SMTP id en7-20020a056402528700b00404aba0a6ffso8294816edb.5
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 10:33:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mXZlfPhqAVSv8NPi2Pl5gmTb003b75PhYIJqXglSUqA=;
        b=JvNaVxeSARSLnX1bnwt0XEIWNVQ0Gtu6QkPykx1dsS3Bbv2B6BEOw/fDF70mit1sXy
         r2JhoKWhJbUEnZIVPaZpNn5EL3bs5f6TXsMYN4DRIE/pamLzCMVvVVxn72M5k5MALgcP
         MQmEkxY5ANDK7+qx4XQwQIRAHdzEcTKjO0tlF8StmY9o/R0fUDsmSe88vO1AbBlw9Fba
         Gq/ng9snCeeoZoPVbSyT1JrltpaMUwNDRx/3xJ0vmnUSQo48ZkDkgiz+PskbNaKs0lGz
         83SlwOJpy21TEY3sRMIUEtJZFkQCLecRinf3/8alAIZtQ1jwQuPimKaQM8qrGPzbj0f9
         MqTw==
X-Gm-Message-State: AOAM533zY5PKzfa/Z2Y1POyj0b5lvGTIn019QA6sOMWP9MZhz+x7oC+q
        XR9nuu+yyimq27MXoWkZbzcLvIyWacyATK/VgQpoFG++EPnw6tpWS3XXTGzC/oXFx2FqP8EhXqW
        fldFvzuV/T9geO+6weQkq/4jP1PYGI+k55cI1pyM=
X-Received: by 2002:a17:907:7858:: with SMTP id lb24mr4306532ejc.629.1642789997372;
        Fri, 21 Jan 2022 10:33:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzOKjPuqYPtjHGgNKA+6097tyEbgBqQY22vvlACKfaO33upCODhf6sV7Otiz0IHhhh/a2hzSQ==
X-Received: by 2002:a17:907:7858:: with SMTP id lb24mr4306522ejc.629.1642789997159;
        Fri, 21 Jan 2022 10:33:17 -0800 (PST)
Received: from [192.168.0.51] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e11sm2268231ejd.188.2022.01.21.10.33.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jan 2022 10:33:16 -0800 (PST)
Message-ID: <aa172f14-2328-fc7c-0063-5c0033970d1d@canonical.com>
Date:   Fri, 21 Jan 2022 19:33:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 1/3] spi: dt-bindings: samsung: Add fsd spi compatible
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linus.walleij@linaro.org,
        robh+dt@kernel.org, linux-samsung-soc@vger.kernel.org,
        pankaj.dubey@samsung.com, broonie@kernel.org, andi@etezian.org,
        linux-spi@vger.kernel.org, linux-fsd@tesla.com,
        Adithya K V <adithya.kv@samsung.com>
References: <20220120192438.25555-1-alim.akhtar@samsung.com>
 <CGME20220120193613epcas5p238851849d212e01d7d830d78ca7d6379@epcas5p2.samsung.com>
 <20220120192438.25555-2-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220120192438.25555-2-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2022 20:24, Alim Akhtar wrote:
> Adds spi controller dt-binding compatible information for
> Tesla Full Self-Driving (FSD) SoC.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Adithya K V <adithya.kv@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  Documentation/devicetree/bindings/spi/samsung,spi.yaml | 1 +
>  1 file changed, 1 insertion(+)

I think you forgot to mention - in cover letter - that this depends on
my Samsung SPI bindings conversion to dtschema.

I'll be sending v6 of it after merge window, with minor changes.

> 
> diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> index 61c77088e8ee..bf9a76d931d2 100644
> --- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> +++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
> @@ -21,6 +21,7 @@ properties:
>            - samsung,s3c6410-spi
>            - samsung,s5pv210-spi # for S5PV210 and S5PC110
>            - samsung,exynos5433-spi
> +          - tesla,fsd-spi
>        - const: samsung,exynos7-spi
>          deprecated: true
>  
> 


Best regards,
Krzysztof
