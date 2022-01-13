Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A66A148D903
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 14:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233375AbiAMNcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 08:32:16 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:52916
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233516AbiAMNcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jan 2022 08:32:15 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0C62B3F198
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 13:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642080734;
        bh=t1fGsqpmZOTRML60TK0WG2DkdgMd68nNzRyjYpnjGrc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=JdTe0HjpBKeiHtoKTTGYN/6gc3GVMayZIU7r4Bf/hdPlrbZRT+7Fvit6nFvNxKDLT
         Ujh8ellczpq54clq9mYlMo7WouyRlr7F6M2wG6LTybiH/pCa6LdR5sYQdQXghTXHHx
         YDd+HYCZbV4eyRlDOG6+Seh2Q1kl8XT0P8D/IOCrd59yKDoiKEqyPlkY6mpSfNN4el
         LKDlDsNYwcIA6VjYiWceye+VkmzksDVK638FXx0cAIkNAvZsdmj7ckcAVHj+PvDvE/
         AXbjk6Qa6Sc+TRCzjXH9YexZaAbIebmWnWyEirPveCfzylmtFENzwD3Ows82AaIDeM
         f6hxsYs2e/h1w==
Received: by mail-wm1-f70.google.com with SMTP id d4-20020a05600c34c400b00345d5d47d54so3623618wmq.6
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 05:32:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=t1fGsqpmZOTRML60TK0WG2DkdgMd68nNzRyjYpnjGrc=;
        b=G5GfYfLql9WVjMtc4vCa3qXkVJI7iB5qoXk2quNRtN0MdJryfB6oKcjIAujZ1PIrsa
         h70I2mClvZSTGiS/oOohAdCVwScXu/kzwb+W9x2YfE9B3frxIs1Xpw5O8hM7yyGCUK+4
         up0l2DwzqkmbmpgWKBD+3zdPgtZlHYH8ooq7OFVpDOWYsK4nx4Gvy3J9r35HNcEmdrqc
         Z4BfJ0qcY9RzHh6pv0WmSey1hR9wNBImIVbNJqKI/a0lqKE6T+aRQrFI+klF8L3RIvR/
         9zJUwEY6ALd2HobFzKPZuKPYZ4YV+zkovfGqXNDJsP8JPCjmqcmk/VZ+l7kEgHnm7SYh
         ZFVw==
X-Gm-Message-State: AOAM530ZZQXeVHm5VEga1h/zYGGkRqHb9L4iyQOd3DcTCeKqT9q7vkTN
        fP3q9/pBx/QPmkb8luN+T40/itZRDHy+0Ar73e/G54br+pwLOdZY5/aKLDgEPy59NR2gxsOBOmx
        NJ8gdIyNOtJ00u5MIYoSB/VDuxL/BcBDbAtKdG7w=
X-Received: by 2002:a05:6000:18af:: with SMTP id b15mr4109147wri.616.1642080733634;
        Thu, 13 Jan 2022 05:32:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwGbdSMulTQPsY60UuoLAuZAuY6P+aX+jB+ZR3YiMMLRRXKaWDybBcgGidUepwKg+fmquMeJg==
X-Received: by 2002:a05:6000:18af:: with SMTP id b15mr4109138wri.616.1642080733499;
        Thu, 13 Jan 2022 05:32:13 -0800 (PST)
Received: from [192.168.0.30] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h10sm3615799wmh.0.2022.01.13.05.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 05:32:13 -0800 (PST)
Message-ID: <75ae8b8c-e416-5007-b995-f1317ef207d4@canonical.com>
Date:   Thu, 13 Jan 2022 14:32:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 20/23] dt-bindings: iio: adc: exynos-adc: Add ADC-V3
 variant
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, Tamseel Shams <m.shams@samsung.com>
References: <20220113121143.22280-1-alim.akhtar@samsung.com>
 <CGME20220113122447epcas5p266d44c8df143229d22dfa700c285a786@epcas5p2.samsung.com>
 <20220113121143.22280-21-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220113121143.22280-21-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2022 13:11, Alim Akhtar wrote:
> This patch adds a new compatible string for exynos's ADC-V3 variant.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Tamseel Shams <m.shams@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../devicetree/bindings/iio/adc/samsung,exynos-adc.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> index 81c87295912c..9303053759ca 100644
> --- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - samsung,exynos-adc-v1                 # Exynos5250
>        - samsung,exynos-adc-v2
> +      - samsung,exynos-adc-v3

Please use SoC-specific compatible. IP block versions are tricky because:
1. Documentation/datasheet mentioning which SoC has which block version
are not public.
2. Neither are public the datasheets for ADC blocks.
3. The versioning of IP blocks can be inaccurate.


Best regards,
Krzysztof
