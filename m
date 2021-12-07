Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E05C46B7A4
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 10:40:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229700AbhLGJoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 04:44:04 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:60468
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229485AbhLGJoE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 04:44:04 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A7A193F1FE
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638870033;
        bh=JOMD5NNt/xfvXy1MKrXFMrSWfmb2GWyO1lXjWYdJbus=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=mYMtLfECoJN/ZP0bqmodDZEsFXSydQ293lRL4+0s+IpN2oR3nNEK0NeUZLJ0jWjzR
         vJgxAeN19QhWoM6VtvwEwht++C70mx9RUUl/zG0GCoOvzmecSjqe94pU+qmq/WOe5T
         XMT8hIoIFy9bMERb+InRAr2gdcEFpl3/sF1+0/d8rsK2qlDQ7On19Pk9Sha7xZ521G
         3VHhm9Sa5V+Zt5wZBjNaaVfnJ1cjEL/TNTtIpg2seKHkzcbm2ZNaEHmNm7RZqrR4Ee
         ioghDoW1wf1uSc/uOtoenVpq+ly22Hkrov0YC78bNocYVXKqi66eteVA1dmQzU2FFf
         w2/g0ddofZytg==
Received: by mail-lj1-f200.google.com with SMTP id a7-20020a05651c210700b00219132ab503so4319114ljq.12
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 01:40:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JOMD5NNt/xfvXy1MKrXFMrSWfmb2GWyO1lXjWYdJbus=;
        b=sm060LLkyCvOxiIsBU4aIzArpi5tQx0zbnn5VstzMOMFUxpPtynwMCb9+8znOaEZ/q
         MCm7GDX1o6qWNoz2SFZgUsN7FQBK8sUVNdLvil+hwgj8WReg1ooGuU12Sz06xX4vH+2S
         rkNIO4zpmBq5ZTydIuQGEI2eF0gw+2bNP/0qx8p1L2ubb4QlOs0LRIlPsPvDXxaGfHLG
         jqDiorTAkrcSLic01mk0d8eOCjDjI22h2uWbEElURc1DX3gIDDxDIVqdgbDFVlPOMpga
         xe27xpAnrodqLBRHuiI1oFnXIR5lKWMd+cyzt0KXpjCIsjABEYCOKtNRdtRs2SKNIyja
         9I9A==
X-Gm-Message-State: AOAM531c67iI0ExxLyQtrSBQVkHqBfpSqnPWWFfKWnT3kzdSZFJMoWgh
        J8tkWPf4XNyb0A0L7zf73YUPt/OSiN+IUvvY338i1ln5QTBNSNh/YRX2nIcpO+EEQW+zfv/Fp68
        Ama8LEh0cQKG6ITf6bLUUcGPipzrtjS3bIRXnmmA=
X-Received: by 2002:a05:6512:90c:: with SMTP id e12mr23777133lft.419.1638870032748;
        Tue, 07 Dec 2021 01:40:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwTQ2k0wWW/H+W08cFK0E4G1YScO3MV5cie2qRunh/w3gGjwnDm4UaCRWd67b0Qs0mfxg2tFQ==
X-Received: by 2002:a05:6512:90c:: with SMTP id e12mr23777113lft.419.1638870032568;
        Tue, 07 Dec 2021 01:40:32 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id f13sm1613936lfe.297.2021.12.07.01.40.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Dec 2021 01:40:32 -0800 (PST)
Message-ID: <5ba8fb6f-fc8b-cee4-6a10-38d64545af42@canonical.com>
Date:   Tue, 7 Dec 2021 10:40:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 1/4] dt-bindings: mmc: exynos-dw-mshc: Add support for
 ARTPEC-8
Content-Language: en-US
To:     =?UTF-8?Q?M=c3=a5rten_Lindahl?= <marten.lindahl@axis.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     Doug Anderson <dianders@google.com>, kernel@axis.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211206142929.26729-1-marten.lindahl@axis.com>
 <20211206142929.26729-2-marten.lindahl@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211206142929.26729-2-marten.lindahl@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/12/2021 15:29, Mårten Lindahl wrote:
> The ARTPEC-8 SoC has a DWMMC controller that is compatible with the
> Exynos 7 version v2.70a. The main differences from Exynos 7 is that it
> does not support HS400 and has extended data read timeout.
> 
> Add compatibility string "axis,artpec8-dw-mshc" for ARTPEC-8.
> 
> Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
> ---
> 
> v2:
>  - Change compatible string vendor prefix
> 
>  Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt b/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt
> index 0419a63f73a0..753e9d7d8956 100644
> --- a/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt
> +++ b/Documentation/devicetree/bindings/mmc/exynos-dw-mshc.txt
> @@ -22,6 +22,8 @@ Required Properties:
>  	  specific extensions.
>  	- "samsung,exynos7-dw-mshc-smu": for controllers with Samsung Exynos7
>  	  specific extensions having an SMU.
> +	- "axis,artpec8-dw-mshc": for controllers with ARTPEC-8 specific
> +	  extensions.
>  
>  * samsung,dw-mshc-ciu-div: Specifies the divider value for the card interface
>    unit (ciu) clock. This property is applicable only for Exynos5 SoC's and
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
