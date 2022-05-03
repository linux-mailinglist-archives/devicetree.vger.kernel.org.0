Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A5AC518477
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 14:38:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235423AbiECMmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 08:42:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232057AbiECMmU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 08:42:20 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 269EE2B253
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 05:38:48 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id j6so33153329ejc.13
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 05:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1JzddAt8K9KGnbx/PddWeW/aXpN8uCRu8TkesisiDg8=;
        b=mvfUxP6pt9vzvdBY3cVNbRy+KclvMGErYbINAQW6NaHF5qIv+VNGWVeFMp1gMYRsvW
         FKW/A/e/+7ChGel9+1h5uqqZvBLN6e46STMYIa5nxK+NVKJkM3iP2clrXaUoZePekwmR
         UBshk2d157+fhruoX02+No2KT64NPhEsdNgkgFN7IMqT82W8A37hwTjuJ7i59Du1zX78
         EfNqWBotmAJ5tc31hcbif3hvyzLxsJ6iE2ZsqAv9irIbi76ralcj3gsiDxE8BynrZKAT
         J5oJ6Ud1V/ikyua1wctmHRGrCfkaUglX8vmzSQv49kEP1I3Dh0PVRG6Zm0WmidW0JmNN
         9pBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1JzddAt8K9KGnbx/PddWeW/aXpN8uCRu8TkesisiDg8=;
        b=gKvgE2h1rT78ygXRFCN8MMkwJ5DXajde5JDmGqDDbl2Ey/BwMfPoBdFqWmxtzqINXE
         qZerCLwDabdC0XUF5OAnUp0GoBKD4mFBJU16xeuFIuHWLbDbNjP+6SqK1Phaji85XQoM
         domxHwPhc7mSARGQ4qv7BoaRVdxcGL7fEbk2NnZMQl+boY/6iOlQoMqEoXcFy6wj4Uj8
         L3oFITSkglipFXmH4l5yCb0QlUv4zlHjm5y26YFH0QynqMGNe1MaMdrLTDuedfd9HRHi
         QAsNAjfDC73FmiBVm4XAE/cIGxAjG68+7qjte4rACg5E8gTQ4n0HBFmYqgXI6rXoDXzw
         AJ3Q==
X-Gm-Message-State: AOAM530pdZrdjqmm0Aa1ASZkbUOrqBucH70U6fX2ZLT9wg/SsfTjb6Eg
        ZREdjfcZcqYlslLd9x00UkCzfmTcNXutog==
X-Google-Smtp-Source: ABdhPJyj7uCkL5z6VEhssOxk2Co2PObIARzRmJNP5V68Njhr6yo5+Ano7T8RW1xl68iEBFu8/IGXew==
X-Received: by 2002:a17:907:1b09:b0:6d8:faa8:4a06 with SMTP id mp9-20020a1709071b0900b006d8faa84a06mr15055215ejc.701.1651581526703;
        Tue, 03 May 2022 05:38:46 -0700 (PDT)
Received: from [192.168.0.203] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ra48-20020a17090769b000b006f3ef214e69sm4580843ejc.207.2022.05.03.05.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 05:38:46 -0700 (PDT)
Message-ID: <ac774c74-4577-3dfc-7bf4-3c180d45b420@linaro.org>
Date:   Tue, 3 May 2022 14:38:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: power: Add MediaTek Helio X10 MT6795
 power domains
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        chun-jie.chen@mediatek.com, weiyi.lu@mediatek.com,
        mbrugger@suse.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com,
        nfraprado@collabora.com
References: <20220503105436.54901-1-angelogioacchino.delregno@collabora.com>
 <20220503105436.54901-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220503105436.54901-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2022 12:54, AngeloGioacchino Del Regno wrote:
> Add power domains dt-bindings for MediaTek Helio X10 (MT6795).
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../power/mediatek,power-controller.yaml         |  2 ++
>  include/dt-bindings/power/mt6795-power.h         | 16 ++++++++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 include/dt-bindings/power/mt6795-power.h
> 
> diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> index 135c6f722091..b448101fac43 100644
> --- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
> @@ -23,6 +23,7 @@ properties:
>  
>    compatible:
>      enum:
> +      - mediatek,mt6795-power-controller
>        - mediatek,mt8167-power-controller
>        - mediatek,mt8173-power-controller
>        - mediatek,mt8183-power-controller
> @@ -62,6 +63,7 @@ patternProperties:
>        reg:
>          description: |
>            Power domain index. Valid values are defined in:
> +              "include/dt-bindings/power/mt6795-power.h" - for MT8167 type power domain.
>                "include/dt-bindings/power/mt8167-power.h" - for MT8167 type power domain.
>                "include/dt-bindings/power/mt8173-power.h" - for MT8173 type power domain.
>                "include/dt-bindings/power/mt8183-power.h" - for MT8183 type power domain.
> diff --git a/include/dt-bindings/power/mt6795-power.h b/include/dt-bindings/power/mt6795-power.h
> new file mode 100644
> index 000000000000..0e27bc7fa748
> --- /dev/null
> +++ b/include/dt-bindings/power/mt6795-power.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

If it is not a derivative work, should be GPL-2.0 OR BSD


Best regards,
Krzysztof
