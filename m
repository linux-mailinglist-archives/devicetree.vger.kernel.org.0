Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5815064EEDB
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 17:21:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbiLPQU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 11:20:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231700AbiLPQUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 11:20:31 -0500
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B71B7419B9
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:20:16 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id c129so2392759oia.0
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 08:20:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZelV8/IrwGDd9k5t5InTYqYUs7Q48WynB8woEn0oJbw=;
        b=PbZ2PzH9uAalQ9PbbBBxQv1nMsFgkFVCAiFCPFEBOAKIG2tUa+bS0Bbh0XRW0tyxrm
         dGN94F7zyx4lUTZdEsp5Wk8FHoj/6Qg2f8MOoV1gy7nCLBOfpoigAXRNS87RHp8qIH38
         e20NUl/A2HPSMtSwdui54JPMDrIwzRlamPQUSWKY2vblbRuovvy4BA/ehUbSIM3teMeX
         2DEBZyMRSTG/z+inBIK0NsuZeqm32B/WVCJpWm39cwpAPZXWkmHRSQAf0oAJsSG8GnR9
         j81v9HB4MRTeKomhwjjKNcJZE84kkK8qf5lTtkyqSbWz6snSGTguK9qLBR7eMwzPSD8j
         DJrw==
X-Gm-Message-State: ANoB5pmIyXEb/cc95lUxMFX/10l3MFf/JI9UHLC5ZU9wDy9ztuXTyBTx
        PJ3rQkH1fnw7mATWK3SR9HiYx9y/fw==
X-Google-Smtp-Source: AA0mqf7/bJA8XzYOPRoLT/re0sj7s/XaFvo72Gw5DfZ+W/H4jYfYtNf6U+9cU7vBUoHMjStMVeQYcw==
X-Received: by 2002:a05:6808:170b:b0:357:7558:d7c6 with SMTP id bc11-20020a056808170b00b003577558d7c6mr23318917oib.20.1671207615955;
        Fri, 16 Dec 2022 08:20:15 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 11-20020aca090b000000b00360bf540072sm798033oij.0.2022.12.16.08.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:20:15 -0800 (PST)
Received: (nullmailer pid 2848741 invoked by uid 1000);
        Fri, 16 Dec 2022 16:20:14 -0000
Date:   Fri, 16 Dec 2022 10:20:14 -0600
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
Subject: Re: [PATCH 04/11] ASoC: dt-bindings: audio-graph-port: add clocks on
 endpoint
Message-ID: <20221216162014.GA2839409-robh@kernel.org>
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
 <87pmcmpyml.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87pmcmpyml.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 01:22:58AM +0000, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Audio Graph endpoint is possible to have clock, but it is
> missing its releated properties on audio-graph-port.
> It is already defined on simple-card.
> This patch adds it. Without this patch, we will get below warning
> 
> ${LINUX}/arch/arm64/boot/dts/renesas/r8a77950-ulcb-kf.dtb: audio-codec@44: ports:port@0:endpoint: Unevaluated properties are not allowed ('clocks' was unexpected)
> 	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml      | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> index 25f7204c7c4a..37c20cc8dc36 100644
> --- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
> @@ -48,6 +48,15 @@ definitions:
>          oneOf:
>            - $ref: /schemas/types.yaml#/definitions/flag
>            - $ref: /schemas/types.yaml#/definitions/phandle
> +      clocks:
> +        description: Indicates system clock
> +        $ref: /schemas/types.yaml#/definitions/phandle

Is this the standard 'clocks' or you defined your own. Because 'clocks' 
is not a 'phandle'. It's a phandle+args.

I don't think we should have 'clocks' in endpoint nodes. Or at least we 
don't want to endorse more cases of it. The graph describes data 
connections. The only properties on endpoints are properties of that 
connection. An endpoint can't really consume a clock.

> +      system-clock-frequency:
> +        $ref: "simple-card.yaml#/definitions/system-clock-frequency"
> +      system-clock-direction-out:
> +        $ref: "simple-card.yaml#/definitions/system-clock-direction-out"
> +      system-clock-fixed:
> +        $ref: "simple-card.yaml#/definitions/system-clock-fixed"

We have standard clock bindings. Whatever you need here should use that 
instead.

>  
>        dai-format:
>          description: audio format.
> -- 
> 2.25.1
> 
> 
