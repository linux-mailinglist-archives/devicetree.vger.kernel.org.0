Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 635AD46CFDF
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 10:14:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbhLHJSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 04:18:11 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:57844
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230380AbhLHJSK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 04:18:10 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 903B33F1EE
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 09:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638954876;
        bh=tWC5uEY3l7siS6pxl8b+aZx2gmpn1kMKzWABSQrL53k=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Bvbw7feipKwIS30yfTjICqqnlLdVjNG+qCcwrea+MBfEiJnWwjUiJ/0ve2GoW9kcE
         5+yJ05Y/Jl9Y17DjH1Z5ZwmBsM34zIefyzNuUissjBmfxPktlZ85/arakA/k5FQSBA
         3KsNLkab4NWAYwVnh8V/9iLg2LskyQYacGK3AsZB/KlhjOAV7V4pp0NoEGuPjBSvgL
         jtkpQkA5yg/44jjYOiojV3iI8liQkCrXrNNh3HrnJy/PGm5+z7CaosNDLKQi4UqreE
         N9NMCXy09KVRdOZVnQKCIPaWWvyg+Go5+ZtuzlPScmNDHKSiZ+hf5aUerUcEpwkveQ
         qSaS0rQv0+CtQ==
Received: by mail-lf1-f72.google.com with SMTP id k17-20020a05651239d100b0041c32e98751so830836lfu.10
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 01:14:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tWC5uEY3l7siS6pxl8b+aZx2gmpn1kMKzWABSQrL53k=;
        b=LGQlAc1dbEDi21mm/U3AXMzyzWibuLgTxVsy09bSHb8gtJj/dTRs+ue8hpnrQRp2/b
         VonqezY3YcAH7GtMA8/EFqhnRUIZW8QMFb+1jqTDGqqM2iN9/raHgUoF2kSSuoJxYcJb
         Foqgq500q9rseAGIpR6scjoLfyIExvNC/qJCZaXPs8z22Gb4ukrnVsv4hSLPk1F1/u6b
         Xfwqw5qrJMYsagSj11vzxRz5nC0esxZBEUZynZBoW79uKB/J+91/w/ZuKlgVAFvWZj1F
         gfCWB469PqUIuO/8Xc9WJ4p7ATuUDjjsOaFDqmkIqr1h4/a8HLyyrWq0g06RNvVMEZ4n
         GQMA==
X-Gm-Message-State: AOAM531C/vwFbZhj5+gtqXd3xYOju6ytm2CD436RaBy7At/nYesa84aS
        r/SFpVgMmV6tuki6INHYLrNxL9hftgfqeUc3e5vqATAD3Ruhy1qr6/w1Wyec0dKppnWCPxRurQS
        fUWViVMsulMzxYThHSU1JSVAn0aUBR3/VWMFhOl4=
X-Received: by 2002:a2e:9685:: with SMTP id q5mr48279567lji.240.1638954875928;
        Wed, 08 Dec 2021 01:14:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx4jnGcTBOC1p2b0ge0kb67RnkM7EEiMgZbAbmBolLl+vQCThbRFMDe0UWlX29KscIB34zUkg==
X-Received: by 2002:a2e:9685:: with SMTP id q5mr48279550lji.240.1638954875757;
        Wed, 08 Dec 2021 01:14:35 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id bp41sm195301lfb.129.2021.12.08.01.14.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 01:14:35 -0800 (PST)
Message-ID: <efa3f4ec-399c-3d86-eeb1-3c32c1b22f02@canonical.com>
Date:   Wed, 8 Dec 2021 10:14:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH] arm64: dts: exynosautov9: convert serial_0 for USI
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>
References: <CGME20211208004609epcas2p11185399272e994c19fd8ce8cfd18cc7d@epcas2p1.samsung.com>
 <20211208003946.139423-1-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211208003946.139423-1-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/12/2021 01:39, Chanho Park wrote:
> According to USI v2 driver change[1], serial_0 node should be converted to
> use the USI node hierarchy. syscon_peric0 will be used as a syscon node
> to control the USI00_USI_SW_CONF register.
> This also changes the serial node name from uart@ to serial@.
> 
> [1]: https://lore.kernel.org/linux-samsung-soc/20211204195757.8600-2-semen.protsenko@linaro.org/
> 
> Cc: Sam Protsenko <semen.protsenko@linaro.org>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../boot/dts/exynos/exynosautov9-sadk.dts     |  4 +++
>  arch/arm64/boot/dts/exynos/exynosautov9.dtsi  | 36 ++++++++++++++-----
>  2 files changed, 32 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
> index ef46d7aa6e28..6cc903443809 100644
> --- a/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
> +++ b/arch/arm64/boot/dts/exynos/exynosautov9-sadk.dts
> @@ -41,6 +41,10 @@ ufs_0_fixed_vcc_reg: regulator-0 {
>  	};
>  };
>  
> +&usi_0 {
> +	status = "okay";
> +};
> +

Put this one alphabetically in DTS.

>  &serial_0 {
>  	status = "okay";
>  };

Best regards,
Krzysztof
