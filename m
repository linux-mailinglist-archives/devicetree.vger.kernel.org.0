Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA3A690232
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 09:34:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbjBIIeK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 03:34:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBIIeK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 03:34:10 -0500
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com [IPv6:2607:f8b0:4864:20::a2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F09B05268
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 00:34:08 -0800 (PST)
Received: by mail-vk1-xa2d.google.com with SMTP id b81so581806vkf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 00:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gWuuUdo7aS+R+xwyMPT4inxSLLiy9YRKAIGpnfs3mMw=;
        b=mnc8Ifx6QnAPmYWW1FKA6DpGkfoRhUGOlwZyawmaWZUYXBRs3P3lMZ6UuiJN+OVnrP
         JYO03+hkMmh17dEbozQueyLF/rseofZe1Ytt3Bf02eSA13fv7UUEzVDkYLMk6yry8LOM
         c7xhnpHflipzPwMHeJMaqdWdhYrJCxv4p+PSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gWuuUdo7aS+R+xwyMPT4inxSLLiy9YRKAIGpnfs3mMw=;
        b=mwZKbTf3Z8LnaV9X5utS5/Tt5l0eztGY8L/dUvLwrxmJkFNgovnccAUFmGEaXzMYx2
         fMHjHYtm7DhIO8TKKEa3XJcNA/39qAijeUgrsndHOV0saLrpK2ZuGlqvRil/gUlG/wYc
         t47a4NIoBuC7VCic1tUFwbpI5dWDR+HqmyuFkWPOCAy3k7rBLJDcw+NXifE1uCMr1LKw
         F6P2IneI+Z/ygQNvIAd9Hl6ZwtJPMWu0oRYDFANR58L6wFUXYklo6HAZHtnwFbY6E9UL
         +hPQdSqEYocHaZLopdYclsGdnuNPtnzyJzK2tTlYmSbITpwSHvpnlNc2dVGJ7SMHG/GV
         nshg==
X-Gm-Message-State: AO0yUKW4MMo2zD++zaYOJT0GAgbjjgcA4bQHeDpGkLx8VfM8MV4CI/iD
        tAESrd6FoYRQ9HScBB3db+qHRz50mIiR5DJRuxTnTPfat+0ecI6d
X-Google-Smtp-Source: AK7set8pBou1qM81NL3KNWeDM08Kg7jVEwCB11009P47SaV8veeMsx+j8GewJrleWgySAp8Llo1VSXqxEKvDZ4DLKFA=
X-Received: by 2002:a1f:9493:0:b0:3ea:7394:e9ef with SMTP id
 w141-20020a1f9493000000b003ea7394e9efmr2102117vkd.11.1675931648111; Thu, 09
 Feb 2023 00:34:08 -0800 (PST)
MIME-Version: 1.0
References: <20230208103709.116896-1-angelogioacchino.delregno@collabora.com> <20230208103709.116896-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230208103709.116896-3-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 9 Feb 2023 16:33:57 +0800
Message-ID: <CAGXv+5FXqEJaADrhgu-tPfEPPkP1B=bo_KytBH55xCRea4CmTQ@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: gpu: mali-bifrost: Allow up to 5 power
 domains for MT8192
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, tomeu.vizoso@collabora.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, steven.price@arm.com,
        robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
        alyssa.rosenzweig@collabora.com, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 8, 2023 at 6:37 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> MediaTek MT8192 (and similar) needs five power domains for the
> Mali GPU and no sram-supply: change the binding to allow so.
>

mt8192 compatible was already added, so this should have:

Fixes: 5d82e74a97c2 ("dt-bindings: Add compatible for Mali Valhall (JM)")

> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/gpu/arm,mali-bifrost.yaml        | 34 +++++++++++++++++--
>  1 file changed, 31 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 69212f3b1328..e7aba66ddb8f 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -61,7 +61,7 @@ properties:
>
>    power-domains:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 5
>
>    resets:
>      minItems: 1
> @@ -141,6 +141,18 @@ allOf:
>          - power-domains
>          - resets
>          - reset-names
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - mediatek,mt8183-mali
> +                - mediatek,mt8192-mali
> +    then:
> +      properties:
> +        power-domains:
> +          maxItems: 1
>    - if:
>        properties:
>          compatible:
> @@ -161,10 +173,26 @@ allOf:
>          - sram-supply
>          - power-domains
>          - power-domain-names
> -    else:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8192-mali
> +    then:
>        properties:
>          power-domains:
> -          maxItems: 1
> +          minItems: 5
> +        power-domain-names:
> +          items:
> +            - const: core0
> +            - const: core1
> +            - const: core2
> +            - const: core3
> +            - const: core4
> +
> +      required:
> +        - power-domains
> +        - power-domain-names
>    - if:
>        properties:
>          compatible:
> --
> 2.39.1
>
