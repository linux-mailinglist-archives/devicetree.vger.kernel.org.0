Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6C53583EB0
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 14:23:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236971AbiG1MXC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 08:23:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238341AbiG1MWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 08:22:42 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 596816BD40
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:22:41 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id e11so1785442ljl.4
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3DW4w/4ZUNYPAF3II/PgaJFeN+0spaAaHoZXNagVUT4=;
        b=jLlXxHNbA+iWPUCPzeb0rVr9SauWOCOFVWLGUwgdFOY1Vi30LTg0DGWqEjXQZy5m7t
         hqowKlT+9ZFGsXA3UKCQlEnot+7zvvH8kE0CNB84clxJN0faNLPuek1rpJGcLP2ELwap
         3K9ZbCNJ9oKwMhYTcd0SJid7G7H5+g7muCaUCjRB8yLB3blQ2QZB/UifOr2t6xpZS0zP
         WmOu3zXEewccBUW+HP0x8zmxCsgy71VGzGXlTsrwcoDEWhIug3HgubzZU9eriHCgrRAX
         05x/WSgqj4ApbPlhJR/oc30HX/ZJP9QsmHBqHz/bjokxLnGSuoZ8Gmf0g2v4tFv5RLDS
         cFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3DW4w/4ZUNYPAF3II/PgaJFeN+0spaAaHoZXNagVUT4=;
        b=fxZy81pAzXKLY4+Ybavhin1qtRmuyzHjTK2yepzOfz3n+McTgE6lw2FFVdNL2Dpfm3
         pY0DneulYhk022xfVwKGwSceXx4c7RrIe7RujExIPBI7j7gq47KhVYrdCbqrIfFIdux7
         VlkAp+IjDqAoT8CfQzeg7IxvxGPRlYIeB3JZFNhRT9YmW4Ryvb58d7xsZOaVmC4wMwG8
         9CkBJl/C3ihXM1x7l1RGMYIplX7IxvTGiPkDTZ3NHU4K1gDHxJorY7bb3WENSP6k6kVB
         h4uuvt3/2QOKU0GNdwayWWaNvhFnm7TlG9yQmEDVffV/LM9JYgjr0t11CO/6DKBX3rUv
         jNNw==
X-Gm-Message-State: AJIora+ulgCl0+qBicnKeLcinVSZ1Ck904SeeNUpzC/WlMduolcziSCO
        FHmQIZ1eDiA5OW15bcXG9fJNuQ==
X-Google-Smtp-Source: AGRyM1sjEQmQI2ZdM4nyj5KDHaohbrn+HJAjJ+4EFXb/MkZ1uaLiRPkivjLUpP9najq0SVmF9EIugw==
X-Received: by 2002:a2e:9303:0:b0:25d:ffd7:6553 with SMTP id e3-20020a2e9303000000b0025dffd76553mr7847498ljh.299.1659010959625;
        Thu, 28 Jul 2022 05:22:39 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b0047f8790085csm178167lfs.71.2022.07.28.05.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 05:22:38 -0700 (PDT)
Message-ID: <c801afa4-a40d-9363-1ebd-9e8e30c21df5@linaro.org>
Date:   Thu, 28 Jul 2022 14:22:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: Add sample format conversion
Content-Language: en-US
To:     Sameer Pujar <spujar@nvidia.com>, broonie@kernel.org,
        lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        kuninori.morimoto.gx@renesas.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1658931983-31647-1-git-send-email-spujar@nvidia.com>
 <1658931983-31647-2-git-send-email-spujar@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1658931983-31647-2-git-send-email-spujar@nvidia.com>
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

On 27/07/2022 16:26, Sameer Pujar wrote:
> Presently "convert-channels" and "convert-rate" DT bindings are available
> for channel and rate fixups respectively.
> 
> Similarly add "convert-sample-format" binding to fixup DAI sample format
> as well. This is added to simple-card and audio-graph based sound cards.
> 
> Signed-off-by: Sameer Pujar <spujar@nvidia.com>
> Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml | 21 +++++++++++++++++++++
>  .../devicetree/bindings/sound/audio-graph.yaml      | 11 +++++++++++
>  .../devicetree/bindings/sound/simple-card.yaml      | 15 +++++++++++++++
>  3 files changed, 47 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 5c36867..d7491038 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -24,6 +24,17 @@ properties:
>    convert-channels:
>      description: CPU to Codec rate channels.
>      $ref: /schemas/types.yaml#/definitions/uint32

Missing blank line.

> +  convert-sample-format:
> +    description: CPU to Codec sample format.
> +      Value    Format
> +        0        S8
> +        2        S16_LE
> +        6        S24_LE
> +        10       S32_LE
> +        32       S24_3LE

Why some random set of integers? Just use string, must more descriptive
and you do not embed programming model to DT... unless there is some
reason for this approach?

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 2, 6, 10, 32]
> +
>  patternProperties:
>    "^endpoint(@[0-9a-f]+)?":
>      $ref: /schemas/graph.yaml#/$defs/endpoint-base
> @@ -70,6 +81,16 @@ patternProperties:
>        convert-channels:
>          description: CPU to Codec rate channels.
>          $ref: /schemas/types.yaml#/definitions/uint32

Ditto

> +      convert-sample-format:
> +        description: CPU to Codec sample format.
> +          Value    Format
> +            0        S8
> +            2        S16_LE
> +            6        S24_LE
> +            10       S32_LE
> +            32       S24_3LE
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [0, 2, 6, 10, 32]

Ditto


>  
>        dai-tdm-slot-width-map:
>          description: Mapping of sample widths to slot widths. For hardware
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph.yaml b/Documentation/devicetree/bindings/sound/audio-graph.yaml
> index 4b46794..df8a994 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph.yaml
> @@ -32,6 +32,17 @@ properties:
>    convert-channels:
>      description: CPU to Codec rate channels.
>      $ref: /schemas/types.yaml#/definitions/uint32

Ditto

> +  convert-sample-format:
> +    description: CPU to Codec sample format.
> +      Value    Format
> +        0        S8
> +        2        S16_LE
> +        6        S24_LE
> +        10       S32_LE
> +        32       S24_3LE

Ditto


> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 2, 6, 10, 32]
> +
>    pa-gpios:
>      maxItems: 1
>    hp-det-gpio:
> diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
> index b261d49..6decd73 100644
> --- a/Documentation/devicetree/bindings/sound/simple-card.yaml
> +++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
> @@ -77,6 +77,17 @@ definitions:
>      description: CPU to Codec rate channels.
>      $ref: /schemas/types.yaml#/definitions/uint32
>  
> +  convert-sample-format:
> +    description: CPU to Codec sample format.
> +      Value    Format
> +        0        S8
> +        2        S16_LE
> +        6        S24_LE
> +        10       S32_LE
> +        32       S24_3LE
> +    $ref: /schemas/types.yaml#/definitions/uint32

Wait, you now put the same property in four different places. Don't you
have something which could be shared?



Best regards,
Krzysztof
