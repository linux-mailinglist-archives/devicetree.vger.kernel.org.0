Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 081BA6AB847
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 09:30:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbjCFI35 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 03:29:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbjCFI34 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 03:29:56 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD93CBB84
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 00:29:53 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id o12so35011944edb.9
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 00:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678091392;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CGOEmaNiGGbc7L01BirDqpWOsXPNFEUnsDXX5oXZKD0=;
        b=lYA8d4n5q3CvWYp9VCtKFvChADNU0XNfiO1TRzPCRAbGiuZ0Zm3urX8c0q89LiLBXy
         jSlbxv0ITZV2ZbFiDQ6U0bkpsQ0Uad8cwU10kzwHnrgYbtokv5s2Urwx+kcScuCkLpty
         Sav+Xqu0psOcZTL+WB+FO3X1xxnjsfI1pVT3AscDJ7p8XbZ6jU3hModd49k7EdFiV1P2
         7Kf3K9d5BfdRY+XXuMLOpxtAkZFmWoU3t/ojZeextEwOvlOfOxteFpHHYs4+TzgkYasA
         P9GgT3s+2xCEyGcNDKU7LTYsxbuyebaNhcInWYW1swJ9h4Ddg4L3cLY28A64pM32C+iD
         TxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678091392;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CGOEmaNiGGbc7L01BirDqpWOsXPNFEUnsDXX5oXZKD0=;
        b=dgNeY4I59mhWeumTjwIY70oMjh6KCAv/prMueJi61ixgzqQ6MuWzTIxhZZFjZ+9Ph/
         KZmMMNY10VmplFIhnGrkH4qKjJL4kT7MUtiQw3SGoXHxEh4fX+oKyRsvPzJIYliToLHg
         9r0zi508sv5jvnoqSmhoU7zDAFgttS3NabkISmLt5RNTlXPuPSNLZfluNgwWJ/ECxajd
         RqvTz9glOmUa3Eb2VNPpYO4Loesd/7SLsLA74tIBIXSkNunojjBxWC6xoqRMVKPLiIcv
         ATYmAxhmgrYnnzTGIAMEWIu2mHJOuJNRBIet8RT+CEqnyuJzsnqwdi8XBTj1U5Tqa1sP
         /Hgg==
X-Gm-Message-State: AO0yUKX9q0cv9B1lEPUWt5Lq/aMTCEmOrTQCDyALyQzeXn8m/+3c3vIX
        /+4lb+yx/rG7N7pIWVo1rODBEg==
X-Google-Smtp-Source: AK7set9Rt/mceRfZItcu0lyJvR3AEI+TwG4140OrkenXDQ5rRvMtEVEEDO6b88AMzw1Nmhy+0qthMw==
X-Received: by 2002:a17:906:b007:b0:8aa:c038:974c with SMTP id v7-20020a170906b00700b008aac038974cmr9617550ejy.54.1678091392390;
        Mon, 06 Mar 2023 00:29:52 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:d85d:5a4b:9830:fcfe? ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id mb3-20020a170906eb0300b008e772c97db6sm4211562ejb.128.2023.03.06.00.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 00:29:52 -0800 (PST)
Message-ID: <7dca5cec-5b7b-a3d6-e165-47a5fa26b73a@linaro.org>
Date:   Mon, 6 Mar 2023 09:29:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v10 03/15] dt-bindings: spi: cdns: Add compatible for AMD
 Pensando Elba SoC
Content-Language: en-US
To:     Brad Larson <blarson@amd.com>, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-spi@vger.kernel.org, adrian.hunter@intel.com,
        alcooperx@gmail.com, andy.shevchenko@gmail.com, arnd@arndb.de,
        brendan.higgins@linux.dev, briannorris@chromium.org,
        brijeshkumar.singh@amd.com, catalin.marinas@arm.com,
        davidgow@google.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        skhan@linuxfoundation.org, suravee.suthikulpanit@amd.com,
        thomas.lendacky@amd.com, tonyhuang.sunplus@gmail.com,
        ulf.hansson@linaro.org, vaishnav.a@ti.com, will@kernel.org,
        devicetree@vger.kernel.org
References: <20230306040739.51488-1-blarson@amd.com>
 <20230306040739.51488-4-blarson@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230306040739.51488-4-blarson@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/03/2023 05:07, Brad Larson wrote:
> Document the cadence qspi controller compatible for AMD Pensando
> Elba SoC boards.  The Elba qspi fifo size is 1024.
> 
> Signed-off-by: Brad Larson <blarson@amd.com>
> ---
> 
> v10 changes:
> - Fix cdns,fifo-depth, only amd,pensando-elba-qspi is 1024 bytes
> 
> v9 changes:
> - Add 1024 to cdns,fifo-depth property to resolve dtbs_check error
> 
> ---
>  .../bindings/spi/cdns,qspi-nor.yaml           | 30 +++++++++++++++++--
>  1 file changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> index 5c01db128be0..18e4bc04f091 100644
> --- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> +++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> @@ -20,11 +20,39 @@ allOf:
>        required:
>          - power-domains
>  
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - amd,pensando-elba-qspi
> +    then:
> +      properties:
> +        cdns,fifo-depth:
> +          enum: [ 128, 256, 1024 ]
> +          default: 1024
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: amd,pensando-elba-qspi

This does not make any sense. You have two ifs for the same.

> +    then:
> +      properties:
> +        cdns,fifo-depth:
> +          enum: [ 128, 256, 1024 ]
> +          default: 1024
> +    else:
> +      properties:
> +        cdns,fifo-depth:
> +          enum: [ 128, 256 ]
> +          default: 128
> +
Best regards,
Krzysztof

