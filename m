Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6484732E6D9
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 11:56:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbhCEK4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 05:56:14 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:50959 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbhCEKzz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 05:55:55 -0500
Received: from mail-wm1-f69.google.com ([209.85.128.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lI87e-0000zO-DQ
        for devicetree@vger.kernel.org; Fri, 05 Mar 2021 10:55:54 +0000
Received: by mail-wm1-f69.google.com with SMTP id a65so266534wmh.1
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 02:55:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OZMqvPAg3jF+C2BA1ImILhvUZWoYn1pEgrAzLL3Zn+M=;
        b=hjcTaOQehFWaOlCdaXlzZm9J5YOkl63OtXTEDaK8uuRVNTEjo33OVBT7QhPSguUL+g
         Jtvn6+8qH6p5YpOZnvgnU/8lkq/N2iK1GcHtbxZSG3LGk9lt1+DyDhF2LIj3QbKHobEM
         tmsz9CIH6JUCytP8w3adGJ8gp+Ietsa2VNSlH1K3D49l1nKLBP4Eq+9mwtrK0Z+sxTdH
         Q2ic7bfEqRsEXokNqnUh6DONK+65W0XL5/cZ8c1LqmMzw7wpt8NxK0CNkSRG6IgheeeW
         3waKEGS6iaNTPysFYnseTxBIySWGYP1bIcH4e9rAXMgMwmCLLu7F3j1T8Q584NpmXOAr
         db+g==
X-Gm-Message-State: AOAM5310O7sbsaZpvB7c17MMshtE0oFEhM17Ogm8cbGKpR4M2F6z2I1Y
        hRFzu+n7L6x0SG6EZ5oyu4exxgrrr+akjNjd6/tibiy794fyykaUbt1+88/RVBUgbYGRCv1nkZl
        UDMsguU0Uf/7Pj+2GEUCGQHNVccaD6+LeexQC8WY=
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr8277728wma.18.1614941754196;
        Fri, 05 Mar 2021 02:55:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxB10RjsZA/b+LOBLHOFgBxXrz38OatZE1qDwuc8TyZ6RBnwYZWFn3nzUFRUssHcDn4zFTc0g==
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr8277714wma.18.1614941754065;
        Fri, 05 Mar 2021 02:55:54 -0800 (PST)
Received: from [192.168.1.116] (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id y8sm3921881wmi.46.2021.03.05.02.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 02:55:53 -0800 (PST)
Subject: Re: [RFT PATCH v3 25/27] tty: serial: samsung_tty: Add earlycon
 support for Apple UARTs
To:     Hector Martin <marcan@marcan.st>,
        linux-arm-kernel@lists.infradead.org
Cc:     Marc Zyngier <maz@kernel.org>, Rob Herring <robh@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        Tony Lindgren <tony@atomide.com>,
        Mohamed Mediouni <mohamed.mediouni@caramail.com>,
        Stan Skowronek <stan@corellium.com>,
        Alexander Graf <graf@amazon.com>,
        Will Deacon <will@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Christoph Hellwig <hch@infradead.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-doc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>
References: <20210304213902.83903-1-marcan@marcan.st>
 <20210304213902.83903-26-marcan@marcan.st>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <d315bcd3-db89-a100-5e4f-a4c51a48aed5@canonical.com>
Date:   Fri, 5 Mar 2021 11:55:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210304213902.83903-26-marcan@marcan.st>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2021 22:39, Hector Martin wrote:
> Earlycon support is identical to S3C2410, but Apple SoCs also need
> MMIO mapped as nGnRnE. This is handled generically for normal drivers
> including the normal UART path here, but earlycon uses fixmap and
> runs before that scaffolding is ready.
> 
> Since this is the only case where we need this fix, it makes more
> sense to do it here in the UART driver instead of introducing a
> whole fdt nonposted-mmio resolver just for earlycon/fixmap.
> 
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Hector Martin <marcan@marcan.st>
> ---
>  drivers/tty/serial/samsung_tty.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
