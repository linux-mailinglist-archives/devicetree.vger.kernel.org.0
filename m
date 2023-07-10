Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 323D974D9B3
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 17:20:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbjGJPUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 11:20:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjGJPUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 11:20:00 -0400
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F15E9A0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:19:58 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3456fda4ed1so24403745ab.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689002398; x=1691594398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKBJSWYguobSqgw2ST9rUfCndiuxEmDCw91JSLUKizE=;
        b=E4GPmevJXNO1+leI/Wq16CJgWLFLf9OMSCO4nYqcKHOyigM6jRabpxrBt1XYw/2KEH
         oduwDyEFsOtXgpGJsNrMgjaYIdofzU8yLiK8SPqGXKGsPdI2QS6ajHxtvpnHGc2AfU0y
         SgnSbS4FRKP/P8PoVcP/8lutpL5QWsGWbuYHPe0ZAZEpUvSEhv6hXTilX3Xv40y/5uMB
         Sz2V1z22nbs/OCj+INlYKZprSbI07Sbb42BlhW0OWKbr1Z9/iTDaN1IEF5HxvT3dmQGj
         O7S1XPAs2a8B7sweLMTV2DaDIN1I3SmJQ0sIKoqU1VIzTbdhxLhpzR5yqzqJk27fqAEd
         HTPQ==
X-Gm-Message-State: ABy/qLaWAmlHgNy/qGOSHJd6ylXm2Yrpto5yHntj0Z/C+jmvstOS1LQJ
        lARkk5TtPG9wQ/DLmLi8RA==
X-Google-Smtp-Source: APBJJlHCigiMWQeoAZDBI7Y7BWxmtnDvCocoeswLmvtyKWBi4JZzDcEG6CBraMQsGMR2hpJWkdatbw==
X-Received: by 2002:a92:c6c8:0:b0:345:83d6:6020 with SMTP id v8-20020a92c6c8000000b0034583d66020mr13161811ilm.21.1689002398238;
        Mon, 10 Jul 2023 08:19:58 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id gv7-20020a0566382e4700b0042bb03d3a2esm1218309jab.96.2023.07.10.08.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jul 2023 08:19:57 -0700 (PDT)
Received: (nullmailer pid 1997035 invoked by uid 1000);
        Mon, 10 Jul 2023 15:19:56 -0000
Date:   Mon, 10 Jul 2023 09:19:56 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Cezary Rojewski <cezary.rojewski@intel.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        =?utf-8?B?IkFtYWRldXN6IFPFgmF3acWEc2tpIg==?= 
        <amadeuszx.slawinski@linux.intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 14/15] ASoC: dt-bindings: renesas,rsnd.yaml: add
 common port-def
Message-ID: <20230710151956.GA1992791-robh@kernel.org>
References: <87mt04o96f.wl-kuninori.morimoto.gx@renesas.com>
 <87351wo921.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87351wo921.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 10, 2023 at 10:21:42AM +0900, Kuninori Morimoto wrote:
> renesas,rsnd uses both "ports" has "port", and these are very similar.
> To avoid duplicated definitions, this patch adds common port-def.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.yaml          | 38 ++++++++-----------
>  1 file changed, 16 insertions(+), 22 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index 8a821dec9526..d9808b130e8d 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -9,6 +9,20 @@ title: Renesas R-Car Sound Driver
>  maintainers:
>    - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>  
> +definitions:

$defs

> +  port-def:
> +    $ref: audio-graph-port.yaml#/definitions/port-base
> +    unevaluatedProperties: false
> +    patternProperties:
> +      "^endpoint(@[0-9a-f]+)?":
> +        $ref: audio-graph-port.yaml#/definitions/endpoint-base
> +        properties:
> +          playback:
> +            $ref: /schemas/types.yaml#/definitions/phandle-array
> +          capture:
> +            $ref: /schemas/types.yaml#/definitions/phandle-array
> +        unevaluatedProperties: false
> +
>  properties:
>  
>    compatible:
> @@ -108,30 +122,10 @@ properties:
>      unevaluatedProperties: false
>      patternProperties:
>        '^port(@[0-9a-f]+)?$':
> -        $ref: audio-graph-port.yaml#/definitions/port-base
> -        unevaluatedProperties: false
> -        patternProperties:
> -          "^endpoint(@[0-9a-f]+)?":
> -            $ref: audio-graph-port.yaml#/definitions/endpoint-base
> -            properties:
> -              playback:
> -                $ref: /schemas/types.yaml#/definitions/phandle-array
> -              capture:
> -                $ref: /schemas/types.yaml#/definitions/phandle-array
> -            unevaluatedProperties: false
> +        $ref: "#/definitions/port-def"
>  
>    port:
> -    $ref: audio-graph-port.yaml#/definitions/port-base
> -    unevaluatedProperties: false
> -    patternProperties:
> -      "^endpoint(@[0-9a-f]+)?":
> -        $ref: audio-graph-port.yaml#/definitions/endpoint-base
> -        properties:
> -          playback:
> -            $ref: /schemas/types.yaml#/definitions/phandle-array
> -          capture:
> -            $ref: /schemas/types.yaml#/definitions/phandle-array
> -        unevaluatedProperties: false
> +    $ref: "#/definitions/port-def"

It would be better if users just always used "ports { port {}; };" even 
in the single port case.

>  
>    rcar_sound,dvc:
>      description: DVC subnode.
> -- 
> 2.25.1
> 
