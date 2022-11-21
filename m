Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78867631DEB
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:13:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231322AbiKUKNZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:13:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbiKUKNT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:13:19 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E53B822F
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:13:16 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id s8so18073430lfc.8
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tXyKt1cDFcpIxmOysUOnFCPepALLvuM42ETXUOVNOr4=;
        b=MxP3yBFhLd4mDOhZZsPx3S3EpQtQfXB9MiFkvlbv+DIRRHa7Q4lW3fAgP88ylNVIG9
         c6acVC3iQDXaS+T2TkU9OI6XCXTPOC4DLEPb5JdJgiitQizUOUO3Y5jtoMgNSpfOf2XG
         emVJQ/5oQw2jqdECpkaFXvc14fEdf4+jPaU146wqe/IjyI9JsZTm9iRvXsSMIinTnDDs
         iLXaiwIQSlvCOehB5QhaiG4JEBJGlIiFB3qEUF8EMa86FL0YfD68a6Qv8KxufYvFFidG
         jJAg/sqZ6iZkRTbLHu+FnI+VLYU0gaQwjxKh0caElYuNkA5umBz55nQqC05A68xMgoNA
         dW9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tXyKt1cDFcpIxmOysUOnFCPepALLvuM42ETXUOVNOr4=;
        b=iR28jCgei+UDioZyrAVhA8i2jsgZDIusKOlB/GDTYMZo6mqv4y6pe1zT1R3v6iPfDX
         g4Qf4kVZ8AKjxHbA6ceAlQO0z+DxZhWAl/XCBwEwdoh7pwGMwottlAPYeLTv/h73WRDX
         xJf8Um/0b+Z0ESF2+nY80WHf+xUc/SiN60AtysKZ0dc0ELedNAnxZexdvu2SznI2n3yv
         +Nt/WbuhoOE8xFr7HhEiXygUOh3MbkxY8sESRYRhtrLsX60OsoBbcYdgiGlPfONFTZ8U
         P/GSbOOnfMiitAj0V3YjHWN4NRtH/ZlWJyC1SHu5YjJCXj/XDwf+6vMYd7S5+cYZSnCb
         KXuw==
X-Gm-Message-State: ANoB5pnnc8b1iEqGe5FK1Ui7e+MUmCPoFsUjwhWkiwc5Mcq3zU8b4fZA
        KDnAo3ENmJecnexWKUZmxN6bnCykvNqVpWMH
X-Google-Smtp-Source: AA0mqf74j2xf/DYcqvDoHVEVApFcyXDBUs4OT8J1RRHrj6hCQmlzFxEr41QeBt/yTXchv6RbIxcHwQ==
X-Received: by 2002:a05:6512:3483:b0:4a2:8836:c07d with SMTP id v3-20020a056512348300b004a28836c07dmr5412482lfr.661.1669025595298;
        Mon, 21 Nov 2022 02:13:15 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k8-20020a05651210c800b0048a982ad0a8sm1957503lfg.23.2022.11.21.02.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:13:14 -0800 (PST)
Message-ID: <99302e53-c0c9-cfe8-4e6a-c70e8428d9c3@linaro.org>
Date:   Mon, 21 Nov 2022 11:13:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 2/4] dt-bindings: power: Add starfive,jh71xx-power
 bindings
Content-Language: en-US
To:     Walker Chen <walker.chen@starfivetech.com>,
        linux-riscv@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        linux-kernel@vger.kernel.org
References: <20221118133216.17037-1-walker.chen@starfivetech.com>
 <20221118133216.17037-3-walker.chen@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118133216.17037-3-walker.chen@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/11/2022 14:32, Walker Chen wrote:
> Add bindings for the power domain controller on the StarFive JH71XX SoC.
> 

Subject: drop second, redundant "bindings".

> Signed-off-by: Walker Chen <walker.chen@starfivetech.com>
> ---
>  .../bindings/power/starfive,jh71xx-power.yaml | 46 +++++++++++++++++++

1st patch should be squashed here. Headers are part of bindings file.

>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/starfive,jh71xx-power.yaml
> 
> diff --git a/Documentation/devicetree/bindings/power/starfive,jh71xx-power.yaml b/Documentation/devicetree/bindings/power/starfive,jh71xx-power.yaml
> new file mode 100644
> index 000000000000..2537303b4829
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/starfive,jh71xx-power.yaml

Filename like compatible.

> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/starfive,jh71xx-power.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive JH71xx Power Domains Controller
> +
> +maintainers:
> +  - Walker Chen <walker.chen@starfivetech.com>
> +
> +description: |
> +  StarFive JH71xx SoCs include support for multiple power domains which can be
> +  powered on/off by software based on different application scenes to save power.
> +
> +properties:
> +  compatible:
> +    items:

No items. You have just one item,

> +      - enum:
> +          - starfive,jh7110-pmu
> +

Best regards,
Krzysztof

