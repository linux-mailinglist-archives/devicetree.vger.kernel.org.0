Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52DA56A1AC5
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:59:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbjBXK7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:59:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229702AbjBXK6f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:58:35 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CF8458487
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:58:31 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id bt28so6825508wrb.8
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BWQnxO1Qoh2BkDXLOlnoREhUBx6MERP/uawbk8zyhDE=;
        b=oIYBcBS1IroSN+gIwdmpGD92lGKnxaCpEVal9alvoswXTnjWR+wsNj8HIy1pvZhg83
         0BJVTC6M2grX3w9wNFNgKBv4oBo6cvjCBTzXNPwkh5SftRZUGQ7xc1uirr3KRFx5yd2+
         lHU5VTv+zCcnIXOjplrdeeHBGPa3FnJmhgHarkMjegfRxiCTY6BLccitUp8E96XcPSE3
         xE9JeN0xJwtQwYceNzORWOWBcjozomasU5yL//L144AJJIRcBvgLegxYUeDcCwTCqBJe
         hqWhqWI3kBLSKqwBIXoYgguws0lSf+P8+83nczcaHN/UEIJd1JA8k66x1FN8yF4hhmiB
         bYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BWQnxO1Qoh2BkDXLOlnoREhUBx6MERP/uawbk8zyhDE=;
        b=n2QWqyzZxkQwj1zFCw4laYr8C9HAl47BLD9z44gapooA8P8oJxbiHd26cVeGz6DGAQ
         f9DklfMzG4Lsc5zy6WUkATsOmrM9UBNHDpCBVkHpNDXqe9Es5skQ37s0szcO8jfBFQGN
         FFRUe5Kmji5Wyve1SfPJwu6upHg1PRPAfVzHXIaL1Ylbr/LLrqQoYylb+2sc8AGYC/Sn
         tgJ45oLQXpXKuIwPsRUfVhB2UpKypmm6q9gaT6wjJZ0L9luf3536HbnXv6DHkbpVYqMy
         ba2LSceaSkDQsk258NX8ZZ4FHEYw1Qg63E+sDizmbN2UgJTWWbb/x3Bj5T4kXPpMcAhp
         JBrw==
X-Gm-Message-State: AO0yUKXNGOD1oxm/LUnMDLEpYb/P/aAmJFGUELw4ER7INFuTJSVxmCxT
        f6OVv4px16keroeee2UrcaGuFg==
X-Google-Smtp-Source: AK7set+20sAValcTBU0xLyseyncEcxYkyBhTV7YB9xSSXQvtIniIzhiGHg6epY5B4L3Xsq5lj7UD+w==
X-Received: by 2002:a5d:56c9:0:b0:2c3:e07d:46cc with SMTP id m9-20020a5d56c9000000b002c3e07d46ccmr14386158wrw.41.1677236309745;
        Fri, 24 Feb 2023 02:58:29 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o24-20020a5d58d8000000b002c7066a6f77sm9714423wrf.31.2023.02.24.02.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 02:58:29 -0800 (PST)
Message-ID: <08fca891-d5df-0337-0615-e49e53fd2940@linaro.org>
Date:   Fri, 24 Feb 2023 11:58:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 05/11] dt-bindings: gpu: mali-bifrost: Add new MT8183
 compatible
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, airlied@gmail.com
Cc:     daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, wenst@chromium.org
References: <20230223133440.80941-1-angelogioacchino.delregno@collabora.com>
 <20230223133440.80941-6-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230223133440.80941-6-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2023 14:34, AngeloGioacchino Del Regno wrote:
> Since new platform data was required in Panfrost for getting GPU DVFS
> finally working on MediaTek SoCs, add a new "mediatek,mt8183b-mali"
> compatible.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/gpu/arm,mali-bifrost.yaml        | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 4d9ab4702582..be18b161959b 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -19,6 +19,7 @@ properties:
>            - enum:
>                - amlogic,meson-g12a-mali
>                - mediatek,mt8183-mali
> +              - mediatek,mt8183b-mali
>                - realtek,rtd1619-mali
>                - renesas,r9a07g044-mali
>                - renesas,r9a07g054-mali
> @@ -157,6 +158,7 @@ allOf:
>              contains:
>                enum:
>                  - mediatek,mt8183-mali
> +                - mediatek,mt8183b-mali
>                  - mediatek,mt8192-mali
>      then:
>        properties:
> @@ -185,6 +187,23 @@ allOf:
>      else:
>        properties:
>          sram-supply: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8183b-mali
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 3

also: maxItems

Best regards,
Krzysztof

