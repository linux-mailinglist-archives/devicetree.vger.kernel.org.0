Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 733755FE5E5
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 01:37:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229594AbiJMXhG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 19:37:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229679AbiJMXhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 19:37:05 -0400
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE15A2F38E
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 16:37:01 -0700 (PDT)
Received: by mail-qv1-xf2f.google.com with SMTP id mx8so2280339qvb.8
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 16:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LfeSqoj2xkCKlJljCXFGihAQXP+bw5EdlDAnTwD29f0=;
        b=DI2r/zw5cprwxbhoFNabIvVoBnWD5Xe3cprvWBoCcO9qSR6QNkCEm8+q+gMOIZGhYC
         rVG95sysEoM0nCLzm92GfrPWtoyrC+WuWu7YXHXJBI90NoEh/dQWxlTwXnN4xqMZC+SI
         RYBRVHTaxyPui+iaz5lurUD8ZqDA0VMAgPnIa9XvMiE58HgydLs71qPbOYQH5+KS/Dcu
         95FtnClffK59VAv88plMGZm0eGyQKO1UEitNW9knFzv2C8oaVf8F8nnrNORSGzPFDBr5
         XFQJzm3QYeRhfYiDQyBYSyzJ88nTYmNn7g9YWwrCpSw8qWCT0DZYWCL3B+3Dg470RPaV
         TsDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LfeSqoj2xkCKlJljCXFGihAQXP+bw5EdlDAnTwD29f0=;
        b=OBvqcGHc+WU0kZztzMWlSWQx/tREwIeBcjCAYLMhhFGOhW/ZTA6bCrBMMBTyvDsFta
         4V2CdvWxKjfL1lX5EX0d84NSAsY0oWAMeZuXTW2Jd3UBh8yyXUxw7tv8L8Jvk/VNsQtW
         gnRH9RwcetDz0dnjXBUi5SktVRgdM6T1IRXc/mSvbw2S7NObTZr4rqhe35Eb0v82Mo1H
         IGAB7bfxQwfav4Q9ezsoLqHXcAG5m155Pt4y/bwNXZw4iAjdtRsb6ZgaUArjvEr69wCj
         LiVPPd/20qAXbQwqVklQwSr8bvKhUUok6d6SUI0HRmrEOXN2HAZefLzeEIAqSGSl8zDP
         tQEg==
X-Gm-Message-State: ACrzQf1ftfGpgbLAakGKv8tC+ioZXAAWzQ9PgUdYlSDGLcCbuVRc65sl
        GC5IcCpYZzYKIizhFG9lcA8eIJlP+xkIrw==
X-Google-Smtp-Source: AMsMyM5673uWNCwb3Q7nTib5kLMEJmjIwEJk3eCcftbHuxk1YZhK2neYq5isJjtuUOJf2Y4Blq8T3g==
X-Received: by 2002:a05:6214:21a6:b0:4b2:d753:ed24 with SMTP id t6-20020a05621421a600b004b2d753ed24mr1928297qvc.78.1665704221094;
        Thu, 13 Oct 2022 16:37:01 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id bi38-20020a05620a31a600b006dfa0891397sm992423qkb.32.2022.10.13.16.36.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 16:37:00 -0700 (PDT)
Message-ID: <4a25e348-c6d4-ceeb-ff08-1fca4132d5a7@linaro.org>
Date:   Thu, 13 Oct 2022 19:34:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2] ASoC: dt-bindings: Document audio OF graph
 dai-tdm-slot-num dai-tdm-slot-width props
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
References: <20220927185359.294322-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220927185359.294322-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 14:53, Marek Vasut wrote:
> Document dai-tdm-slot-num and dai-tdm-slot-width props as those are
> parsed by simple graph card and may therefore appear in audio OF graph
> node.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Drop the definition refs and just fill in type and description
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index bc46a95ed8400..64654ceef2089 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -74,6 +74,12 @@ patternProperties:
>        convert-sample-format:
>          $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-format"
>  
> +      dai-tdm-slot-num:
> +        description: Number of slots in use.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +      dai-tdm-slot-width:
> +        description: Width in bits for each slot.
> +        $ref: /schemas/types.yaml#/definitions/uint32

Isn't the slot width already part of dai-tdm-slot-width-map? Number of
slots maybe as well can be deducted from number of tuples in
dai-tdm-slot-width-map?

>        dai-tdm-slot-width-map:
>          description: Mapping of sample widths to slot widths. For hardware
>            that cannot support a fixed slot width or a slot width always

Best regards,
Krzysztof

