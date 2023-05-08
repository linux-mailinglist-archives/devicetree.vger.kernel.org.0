Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10EE26FA32B
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 11:23:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233079AbjEHJX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 05:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232167AbjEHJX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 05:23:57 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C795F18DE6
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 02:23:55 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50bc34b98edso6589272a12.3
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 02:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683537834; x=1686129834;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uh0OOUh+CUtWad4ModhS7or1SI+A8hAVgluWLrSsN5M=;
        b=Md4crSOFnwUpjRPGPggqc2HOcE12BN/owuSjgVx4hHwKavdxEutRODEfAVm6DctNdk
         bjAgCZ6MJsvdTubRuOD0itsc89kPii5xjVaZFfGuYZWkIQV9bkyyoLMrllMniDLWtzxA
         c/LQjxUTGrIEHPIzO8UAvV5G1klmpi+yf/q9vbz78Rgo7LE86S3S8cqvvM9vMS8ts4lk
         30R+74zhJKC+k5oFkT+A9nMq8b1MJ+mEo6aliVP60tHN677/+8yRXQ3xpQfDoupk97+V
         OteMaYkcBbV2bnu/bMnKtoknVKL0XK/dXj3PDt851UINRPPsMdbv3d1y0e/5o7i2HAw2
         3sAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683537834; x=1686129834;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uh0OOUh+CUtWad4ModhS7or1SI+A8hAVgluWLrSsN5M=;
        b=LpxaeqMZiGSxY6rQ6VE7SBxPFNO13aSZtTy2qJLkwmNQGR3cZe7oyBanoDD8Cjr1mU
         4O627118JADKAno+s+5H70o2nVS8RLA1i3yDJdOsIkB+LclVp1tSmTA8J7weQpV6zEd5
         F7MoHkcLKLP16WZ8t8U6Onjds3isZ9mgArZZVyEsFITos4cdP4ZVnxU8meYQT+hyZyo+
         HBWIttrJmXucR5650xY/IA+vQ6RCn6vUUYjyhoCeFZAq+FKdZPAjUzIoniN8e03fEgHp
         1p5YZ32qy7zEd3CSUjoLvpSo7C7kNTUsAmImKMIAn+l4yXTT9px5KENzoP7r/S7KyK3g
         SX+A==
X-Gm-Message-State: AC+VfDw7cIz4aSxGzM9JC+Tvw7OPyzdhchi6FLlhgHdTjX/d/MJSY4gs
        lGZoN9cWAtLDe4pR62pULOCr4Q==
X-Google-Smtp-Source: ACHHUZ6Zkd0s9owSKryK3yBLhoMPhlYxxZHCBKhyIa061yEnSZKfkhCLB2mQRVAu6QelLyEPQn44IA==
X-Received: by 2002:a05:6402:104f:b0:50b:c397:bbac with SMTP id e15-20020a056402104f00b0050bc397bbacmr8088569edu.29.1683537834330;
        Mon, 08 May 2023 02:23:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id g21-20020a056402115500b0050da0ff6197sm1092587edw.34.2023.05.08.02.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 02:23:53 -0700 (PDT)
Message-ID: <0ce9003a-5dd2-8dd0-2fa8-96ceaf954d50@linaro.org>
Date:   Mon, 8 May 2023 11:23:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2] dt-bindings: firmware: brcm,kona-smc: convert to YAML
Content-Language: en-US
To:     Stanislav Jakubek <stano.jakubek@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230508081053.GA4675@standask-GA-A55M-S2HP>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508081053.GA4675@standask-GA-A55M-S2HP>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 10:10, Stanislav Jakubek wrote:
> Convert Broadcom Kona family Secure Monitor bounce buffer bindings
> to DT schema.
> 
> Changes during conversion:
>   - move from misc to firmware subdirectory
>   - add used, but previously undocumented SoC-specific compatibles
>   - drop deprecated compatibles (they've been deprecated for ~10 years)
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---
> 
> Changes in V2:
>   - move to firmware subdirectory (Krzysztof)
>   - drop deprecated compatibles (Krzysztof)
>   - adjusted commit message to reflect the above changes
>   
>  .../bindings/firmware/brcm,kona-smc.yaml      | 40 +++++++++++++++++++
>  .../bindings/misc/brcm,kona-smc.txt           | 15 -------
>  2 files changed, 40 insertions(+), 15 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/firmware/brcm,kona-smc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/misc/brcm,kona-smc.txt
> 
> diff --git a/Documentation/devicetree/bindings/firmware/brcm,kona-smc.yaml b/Documentation/devicetree/bindings/firmware/brcm,kona-smc.yaml
> new file mode 100644
> index 000000000000..16c7928a0daa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/brcm,kona-smc.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/brcm,kona-smc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom Kona family Secure Monitor bounce buffer
> +
> +description:
> +  A bounce buffer used for non-secure to secure communications.
> +
> +maintainers:
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +properties:
> +  compatible:
> +    oneOf:

You do not need oneOf.


Best regards,
Krzysztof

