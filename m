Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 029EF64EF32
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 17:34:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231552AbiLPQeB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 11:34:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231496AbiLPQdk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 11:33:40 -0500
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 980E4E89
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:33:36 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id e205so2352309oif.11
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:33:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WdpQJXPwUnb7fStkLNmeiXBz/MV3q7NoGJn3vpIa2Uk=;
        b=v+x5e7AHdFEiVl4yhk9ATCMCNmO4agJVAHzTmclgkRaoDkGPNhMyyARxXH/gj6iPzo
         6wwvCdXJoHuklsanq2JGzbZaJcSPi83poiW9qOQ0lFlJMoqugtlEMg2CEkjKj3Z3fE+p
         eFBOO+dYYEirPzoOOnxeKkNM9ZFZXup0zP/WlorDJEEC8Dqw9YXR5lkWVX4hYiIqcFuq
         UDbLZTlUS12zSXoCwY1acttIdSjN53WpNnFK1ialoJJ/yJO4xrLAystFhEcQ67gP/6eE
         HLKcvDyywsyhagzMMKYL36UY/jFriEgY0DnyW1WIoJh/ZhZJsJKcXuUHwX99Tqs2e6CK
         Tgcg==
X-Gm-Message-State: ANoB5pn6HUify/R6qVns9rM24Zs2pvcxotJrIdye9KsKH4FmOw5H7Vq7
        w8upCGw4jBYlCjT5cMUYYg==
X-Google-Smtp-Source: AA0mqf4tDeiIyYogKgvG5t14pw04hopCs2LWM+XFiXAzuvkeZRnDzAD8mzS7NAAAMyY6h/jtcy/Eaw==
X-Received: by 2002:a54:4e99:0:b0:35a:1e78:dbe5 with SMTP id c25-20020a544e99000000b0035a1e78dbe5mr14379242oiy.55.1671208415753;
        Fri, 16 Dec 2022 08:33:35 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n206-20020aca59d7000000b00354932bae03sm895871oib.10.2022.12.16.08.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:33:35 -0800 (PST)
Received: (nullmailer pid 2862892 invoked by uid 1000);
        Fri, 16 Dec 2022 16:33:34 -0000
Date:   Fri, 16 Dec 2022 10:33:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>
Subject: Re: [PATCH 02/11] ASoC: dt-bindings: audio-graph-port: add
 definitions/ports
Message-ID: <20221216163334.GB2839409-robh@kernel.org>
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87sfhipynv.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87sfhipynv.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 01:22:13AM +0000, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Audio Graph user needs "ports" not only "port".
> This patch adds new "ports" on audio-graph-port to use it easily.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml  | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 56d47dcab490..273da5a76b8a 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -97,6 +97,18 @@ definitions:
>                minimum: 1
>                maximum: 64
>  
> +  ports:
> +    $ref: "#/definitions/port-base"
> +    unevaluatedProperties: false
> +    patternProperties:
> +      "^port(@[0-9a-f]+)?$":
> +        $ref: "#/definitions/port-base"
> +        unevaluatedProperties: false
> +        patternProperties:
> +          "^endpoint(@[0-9a-f]+)?":
> +            $ref: "#/definitions/endpoint-base"
> +            unevaluatedProperties: false
> +

This won't work because any user that uses 'ports' here cannot add any 
properties to port or endpoint nodes which I thought was the point of 
this series.

Rob
