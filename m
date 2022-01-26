Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75C4649C534
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 09:25:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238406AbiAZIZT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 03:25:19 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:45918
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238405AbiAZIZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 03:25:18 -0500
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9FBFA4004C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 08:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643185517;
        bh=wVMlwQIQAznWbnKNdFDhyX3s4AFUSBH/dRJ/yqg9njs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=aXKckvf5sblCoYI4y4ElVy0DFYg/27z46AsVxTEvz/DlOu3d6gYIE7p/WkE1FoQZi
         q7YX1uu26pXaEEEByqPpbLPOaQ4Q5crkcq9dAcy4So/tfMMRGjqweo72kN54SQM5MF
         eqy2U9X48o82GBc8Cyd46FW44Fyn252/GvxJG9rItQf5yPaYv8C5TTrwKGG6BJOuL+
         eMvCy8cI4gjAnnPUZbcBxYh52Mzep+ntvaee5eUoBhSYJGNgXJOkXRbirb/Zpek4UP
         AewYCvA4eoOzao+MJMG4fyUGawYEi7NT7cx6pybhimX7w3jVE0Fw+bFyyWWfiHWQCN
         rU5dOpFnK5NDw==
Received: by mail-wm1-f69.google.com with SMTP id v185-20020a1cacc2000000b0034906580813so2249176wme.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 00:25:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wVMlwQIQAznWbnKNdFDhyX3s4AFUSBH/dRJ/yqg9njs=;
        b=CmE0A0/kVyoJtKZZN/WSiGW8VppJjYT8zmXIhyCy0/UQEDmJ05KV0o/qF86BhiNrid
         Wihbk68K0rELcxgwTazZaFlu1WxlsVyoKQ/bAGNJV0GkoYziACRrOfKp9mvwQKqZBwIu
         DXkaKKNAVeu5sdMWrvmtQZT672N3utwnK29R0DieN6Ww5hwL41iipQ6oFEjN67wL4Spj
         lx5g/SM0klZ3rbDJsJ0UgDhHGbzx8nMbH0K25xYvhbPIvzj9TveSXjzW/Dnezbb2D2wG
         0y5UEbGLzlfX5etZUi2/R2fkBFpbKy8XHyrItfAaukY0s5mfEqrL4m4PEnB8+hbJyk1O
         gA/g==
X-Gm-Message-State: AOAM530UZ08PJ3jnEaiEhSbiri5NSB757RXA6p7DxxXTPtgeVEQRrCvx
        CnQuBe+a//rdqaxd/TInSNSM2uuK1c9jPWb+5Uzf28lHNj2IjRrfmd7EuWQnKqsey78cZvJiVn7
        4WyKUhTinUQlIwduKP2eUMOQ5aRxJsgl6jCJUB6U=
X-Received: by 2002:a05:600c:4f88:: with SMTP id n8mr6465448wmq.108.1643185516982;
        Wed, 26 Jan 2022 00:25:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzOwnUK6Il5dJpxUx3TIc/7wdAziDrMet4/OL0cjYwZ0SUYLhSVAP/g6O2jVtgog4q32a7XGg==
X-Received: by 2002:a05:600c:4f88:: with SMTP id n8mr6465431wmq.108.1643185516787;
        Wed, 26 Jan 2022 00:25:16 -0800 (PST)
Received: from [192.168.0.60] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bh26sm2623355wmb.40.2022.01.26.00.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 00:25:16 -0800 (PST)
Message-ID: <500da964-fe29-bbdf-761e-8ea33213318b@canonical.com>
Date:   Wed, 26 Jan 2022 09:25:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] Adding architectural support for HPE's GXP BMC. This is
 the first of a series of patches to support HPE's BMC with Linux Kernel.
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com
Cc:     Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Shawn Guo <shawnguo@kernel.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Hao Fang <fanghao11@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
        "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Mark Rutland <mark.rutland@arm.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Anshuman Khandual <anshuman.khandual@arm.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <nick.hawkins@hpe.com>
 <20220125194609.32314-1-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220125194609.32314-1-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2022 20:46, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  MAINTAINERS                                   |   8 +
>  arch/arm/Kconfig                              |   2 +
>  arch/arm/boot/dts/gxp.dts                     | 700 ++++++++++++++++++
>  arch/arm/configs/gxp_defconfig                | 243 ++++++
>  arch/arm/mach-hpe/Kconfig                     |  20 +
>  arch/arm/mach-hpe/Makefile                    |   1 +
>  arch/arm/mach-hpe/gxp.c                       |  63 ++
>  8 files changed, 1039 insertions(+)
>  create mode 100644 arch/arm/boot/dts/gxp.dts
>  create mode 100644 arch/arm/configs/gxp_defconfig
>  create mode 100644 arch/arm/mach-hpe/Kconfig
>  create mode 100644 arch/arm/mach-hpe/Makefile
>  create mode 100644 arch/arm/mach-hpe/gxp.c
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 294093d45a23..e8b0ec874aed 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -515,6 +515,8 @@ patternProperties:
>      description: Jiangsu HopeRun Software Co., Ltd.
>    "^hp,.*":
>      description: Hewlett Packard

I guess this should be renamed/clarified to "Hewlett Packard
Incorporated", since these are two different companies.

Anyway, bindings go as separate patch, first in the series.

> +  "^hpe,.*":
> +    description: Hewlett Packard Enterprise
>    "^hsg,.*":


Best regards,
Krzysztof
