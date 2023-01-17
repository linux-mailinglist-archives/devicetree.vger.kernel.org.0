Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8249366E45E
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 18:04:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230326AbjAQREn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 12:04:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbjAQREm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 12:04:42 -0500
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9833739CED
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:04:41 -0800 (PST)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-15085b8a2f7so32638008fac.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:04:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1NOHb8+nu+zYx4mxjmXXXdZFvqmNP0X7dlBHqnm0BQ=;
        b=fkZiX0BnF9WA29Oqf046jActDg7s4H6bj6nR4DdNYzZafs/9cTSSSr/0tFOPRTpFE4
         inTPLA10mokG9QokFRZmo7jX1OJa9qWkR07uPdJyL4DnsitmYr9sCzFaf55hvJixXipw
         lOdFutbsxRja8vWPbAgqh15QrJGCDRkhaG5jxQ1TJAE+CCs7sJ/cwlQ2Hp1shUH7blki
         N2oVovvW+ozdR1xReWXfClw3YVJkMffyVB/OjKChqAvNeNvNUovOaOSnAlsavaioC5Tc
         fZNkU1b7cPU5ASByQAIAF5aZU6pVtWpecnlgozbZNfUr4xmuWx+RfXRKBzxoH0N48FuG
         eGgw==
X-Gm-Message-State: AFqh2ko6KkBEZHTs4fAXBJopoEyulAg8WkaX8XaEwvrkC+C5TlsNDBQ1
        1ZYHCZQ8Nw78xbX2ReEKBX0h62GSXQ==
X-Google-Smtp-Source: AMrXdXst7AkBNDxKvrdBelcXQ7R0QKqipV1QTofl1bzW+VXPgBTgX5inmaRNFjB18W58x4vx27DAHg==
X-Received: by 2002:a05:6870:ac8e:b0:15f:4c8:7892 with SMTP id ns14-20020a056870ac8e00b0015f04c87892mr2439937oab.26.1673975080773;
        Tue, 17 Jan 2023 09:04:40 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f15-20020a056870548f00b0015f1024d322sm5286475oan.37.2023.01.17.09.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 09:04:40 -0800 (PST)
Received: (nullmailer pid 3244003 invoked by uid 1000);
        Tue, 17 Jan 2023 17:04:39 -0000
Date:   Tue, 17 Jan 2023 11:04:39 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 02/10] ASoC: dt-bindings: audio-graph-port: add
 definitions/ports
Message-ID: <20230117170439.GA3225212-robh@kernel.org>
References: <87358hj2ub.wl-kuninori.morimoto.gx@renesas.com>
 <87zgapho68.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87zgapho68.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 11, 2023 at 01:09:52AM +0000, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Audio Graph user needs "ports" not only "port".
> This patch adds standard "ports" as definitions to use it easily.
> 
> If user needs standard "ports", it can use
> 
>    ports:
>      $ref: audio-graph-port.yaml#/definitions/ports
> 
> If user want to use custom ports, it can re-use
> audio-graph-port.yaml#/definitions/port-base"
> audio-graph-port.yaml#/definitions/endpoint-base"
> 
> https://lore.kernel.org/r/87sfhipynv.wl-kuninori.morimoto.gx@renesas.com
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml  | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index fa66b73abcaf2..6fcf7f567424d 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -97,6 +97,18 @@ definitions:
>                minimum: 1
>                maximum: 64
>  
> +  ports:
> +    $ref: "#/definitions/port-base"

This applies to 'port' nodes, but this is the 'ports' node.

For example, this schema says you can have endpoint nodes directly under 
'ports' which is not valid.

But why do you need this? The graph.yaml schema should be sufficient 
because you aren't adding custom properties in 'ports'. BTW, the 
preference is to only add properties in 'endpoint' nodes.

> +    unevaluatedProperties: false
> +    patternProperties:
> +      "^port(@[0-9a-f]+)?$":
> +        $ref: "#/definitions/port-base"
> +        unevaluatedProperties: false

If 'ports' schema is applied to a DT, then its 'port' node(s) cannot 
have any additional properties. That defeats the point of patch 1.

You cannot have 2 schemas with child nodes and be able to extend the 
properties on the child nodes. The 2 child node schemas can't 'see' each 
other in that case. In these cases, the base child node schema has to be 
referenced directly by the extended child node schema.


> +        patternProperties:
> +          "^endpoint(@[0-9a-f]+)?":
> +            $ref: "#/definitions/endpoint-base"
> +            unevaluatedProperties: false

The same thing applies here.

Rob
