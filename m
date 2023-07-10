Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E37474D9D0
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 17:23:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231403AbjGJPXr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 11:23:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbjGJPXq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 11:23:46 -0400
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017B6E0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:23:46 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7835971026fso146398939f.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:23:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689002625; x=1691594625;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AgntDtiN/HaSOPUrDKiRPniiMg0bi29a5uBEmLG2Jvc=;
        b=PrTaJsZ2toPRlAPfr9x22+5Prtpyq+e0qLZogbduEBSq4z4xTDDWEw0s/xnDUfgwZ2
         KYXglYsKkOTtb+FWVFVQYqA0e0UFAOrlFsZ038jeiKhku7kDVYmUnsL0Z90/ScuRkX5q
         4/fQeh0QVy4h/Q+Ktg9TXodjjm5gEjQBAfV1uZUJw6iWoVHVcrq/2qUNkW2ccvTdnG0/
         5VxvZ+YKk0au64x4tpqD4yTujYyJLUNyzYnfs1bzv3PNT2vHFCdpPdJtV2Fd5Ms2Bq9t
         Xs5+rjFUKOf2giEprmgIy7taWYT2/4ClEjsS9eeRuo7p3UA1pWTnbPEOu57bIpjtc41a
         GLNQ==
X-Gm-Message-State: ABy/qLY3VHHlq6sgoyb4c3K/3mhogeGfAybxI/mDXPXox9snTYJSBisS
        aRnMP8Ppu7usO6YB1vVFu5iclR5vNA==
X-Google-Smtp-Source: APBJJlEIrl+JxrkL+m7AoCnXnNiZ/7i1ohm2Fy0z/ryA9efk1SBhej0LHDNHSpv/cn6JwOv2F1V8Pg==
X-Received: by 2002:a6b:5903:0:b0:786:e612:72f8 with SMTP id n3-20020a6b5903000000b00786e61272f8mr8371903iob.21.1689002625063;
        Mon, 10 Jul 2023 08:23:45 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id f7-20020a056638022700b0042b1cd4c096sm3204527jaq.74.2023.07.10.08.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jul 2023 08:23:44 -0700 (PDT)
Received: (nullmailer pid 2002022 invoked by uid 1000);
        Mon, 10 Jul 2023 15:23:42 -0000
Date:   Mon, 10 Jul 2023 09:23:42 -0600
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
Subject: Re: [PATCH v2 15/15] ASoC: dt-bindings: renesas,rsnd.yaml: enable
 multi ports for multi Component support
Message-ID: <20230710152342.GA1997421-robh@kernel.org>
References: <87mt04o96f.wl-kuninori.morimoto.gx@renesas.com>
 <871qhgo91l.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871qhgo91l.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 10, 2023 at 10:21:58AM +0900, Kuninori Morimoto wrote:
> To enable multi Component support, "multi ports" is needed for Audio Graph
> Card/Card2, and "multi rcar_sound,dai" is needed for Simple Audio Card.
> This patch enable these.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.yaml          | 24 ++++++++++++-------
>  1 file changed, 16 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index d9808b130e8d..13a5a0a10fe6 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -91,6 +91,12 @@ properties:
>        it must be 1 if your system has audio_clkout0/1/2/3
>      enum: [0, 1]
>  
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
>    clock-frequency:
>      description: for audio_clkout0/1/2/3
>  
> @@ -117,13 +123,7 @@ properties:
>      description: List of necessary clock names.
>      # details are defined below
>  
> -  ports:
> -    $ref: audio-graph-port.yaml#/definitions/port-base
> -    unevaluatedProperties: false
> -    patternProperties:
> -      '^port(@[0-9a-f]+)?$':
> -        $ref: "#/definitions/port-def"
> -
> +  # ports is below
>    port:
>      $ref: "#/definitions/port-def"
>  
> @@ -242,8 +242,9 @@ properties:
>            - interrupts
>      additionalProperties: false
>  
> +patternProperties:
>    # For DAI base
> -  rcar_sound,dai:
> +  'rcar_sound,dai(@[0-9a-f]+)?$':

With a unit-address you need a 'reg' property.

>      description: DAI subnode.
>      type: object
>      patternProperties:
> @@ -263,6 +264,13 @@ properties:
>                - capture
>      additionalProperties: false
>  
> +  'ports(@[0-9a-f]+)?$':

Multiple 'ports' nodes is not valid.

Here too would need a 'reg' property. Did you test any of this because 
that would be a dtc warning.

> +    $ref: audio-graph-port.yaml#/definitions/port-base
> +    unevaluatedProperties: false
> +    patternProperties:
> +      '^port(@[0-9a-f]+)?$':
> +        $ref: "#/definitions/port-def"
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.25.1
> 
