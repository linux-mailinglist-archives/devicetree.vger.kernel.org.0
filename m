Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B6B748D8CF
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 14:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235112AbiAMNYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 08:24:39 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:55920
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235105AbiAMNYj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jan 2022 08:24:39 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E61D6402A6
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 13:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642080277;
        bh=jgEXa3jIbZdSwQdiBctgazOr3O8giX16P/36cdj/vYs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=A+LcaMb+vNTyK+jwIwwLGaLyoopwwYV3qwNAditX8h4dAEcI41gQQNz9929fTppK7
         GjrlUgpStGWwRirmQc0nrzKlWav7en1kd/352Q73YZYL8ZI9jAfhdiFwyOC/McVB/p
         mtjs/SwQwmrljHB+5gLjopSwIgcWG4N9+4WvmEYv56wyRZOXR+78ctTid/iWFJgD7Z
         +QJMiCUOayb/c9I8WkXG/giqJezVsaKtQFq1uRpdDdPeZQIUL/8AM91edlVWy7cKLT
         88n5lyC9td3g/f1C7xbS8IR+Cm4OzKUdamKwZhZOX/qUo9klOGi84UIiQMHCIFyvIt
         NkJeS0qmTfTkg==
Received: by mail-ed1-f72.google.com with SMTP id j10-20020a05640211ca00b003ff0e234fdfso5385964edw.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 05:24:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jgEXa3jIbZdSwQdiBctgazOr3O8giX16P/36cdj/vYs=;
        b=H5os4YN4i2UFpfl6MlB6KZCNBBH1BQn14XaMORS5fpVJLHtcI0oCDZn2CclzuLEHHB
         4IG1/SoQ0/MJDDN/tULq682OHS6aX2m8uOEhVJx3Hlo120sxdeKt+59TlvGs9AwHRFAx
         S/rjdkgPQNLnGtLKHPBSiS1DQe0w6w0dzSdhoYGdz18cG7T814XCU1znWGTE0nvIXO/l
         uch9Z6YX/y68YRCT3LtinNU3Xw63ZNARyW4Yx9KpD2G6P1Xvb1uPoFQHEvNyECiNmEIM
         Nqe8OKyQRQ7mlVZN/wDzmw5TZfOBsyAO2Xj8ZE1U/iwn+6sx8Y6zcTVXJi7AndR7GHCc
         zyuw==
X-Gm-Message-State: AOAM532D+rSIOwts6CbZEfzhyR8H92GBtU5tkXMiFqDi0VF8CQEmSyPX
        VKviLgaM3w1JE7Z6z9kMv/QZ/FH6YMtIAgIsFiv6AfEScVrWWDrrf98v15J6maga25wRXFNDbRs
        b2ZGFVUeWlSN61mAfj6QSn4HBt8lwhTud8If84K0=
X-Received: by 2002:a17:906:7e57:: with SMTP id z23mr3540842ejr.674.1642080277465;
        Thu, 13 Jan 2022 05:24:37 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwS4LnTV4+PzPZuQbqmHmEZJRNcweUCHmK6aMYoKKN4T0AB3VCXZZ9fkpjjEJwNNdQtq4JXPQ==
X-Received: by 2002:a17:906:7e57:: with SMTP id z23mr3540832ejr.674.1642080277270;
        Thu, 13 Jan 2022 05:24:37 -0800 (PST)
Received: from [192.168.0.30] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id mp12sm905633ejc.19.2022.01.13.05.24.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 05:24:36 -0800 (PST)
Message-ID: <0d4c7a40-5eec-2cc5-82bc-d0ba4910d665@canonical.com>
Date:   Thu, 13 Jan 2022 14:24:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 17/23] Documentation: bindings: Add fsd spi compatible in
 dt-bindings document
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Adithya K V <adithya.kv@samsung.com>
References: <20220113121143.22280-1-alim.akhtar@samsung.com>
 <CGME20220113122427epcas5p1885d8b3b735e8f127b6694a309796e5a@epcas5p1.samsung.com>
 <20220113121143.22280-18-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220113121143.22280-18-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2022 13:11, Alim Akhtar wrote:
> This patch adds spi controller dt-binding compatible information for
> Tesla Full Self-Driving SoC.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Adithya K V <adithya.kv@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  Documentation/devicetree/bindings/spi/spi-samsung.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Also: subject prefix:
spi: dt-bindings: samsung:

> diff --git a/Documentation/devicetree/bindings/spi/spi-samsung.txt b/Documentation/devicetree/bindings/spi/spi-samsung.txt
> index 49028a4f5df1..3af2408454b4 100644
> --- a/Documentation/devicetree/bindings/spi/spi-samsung.txt
> +++ b/Documentation/devicetree/bindings/spi/spi-samsung.txt
> @@ -11,6 +11,7 @@ Required SoC Specific Properties:
>      - samsung,s5pv210-spi: for s5pv210 and s5pc110 platforms
>      - samsung,exynos5433-spi: for exynos5433 compatible controllers
>      - samsung,exynos7-spi: for exynos7 platforms <DEPRECATED>
> +    - tesla,fsd-spi: spi controller support for Tesla Full Self-Driving SoC
>  
>  - reg: physical base address of the controller and length of memory mapped
>    region.
> 


Best regards,
Krzysztof
