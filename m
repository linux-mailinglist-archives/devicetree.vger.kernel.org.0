Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDF89575EE4
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 11:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231197AbiGOJ6g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 05:58:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230292AbiGOJ6f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 05:58:35 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E8E92AD
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:58:33 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id a9so6994353lfk.11
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=C86CgKrohBVPLloJTNj8K1gKoORUDSvPyPt6pAAbawE=;
        b=rB2JJqIJKnsqiT1A/XGVU3weneNMAbAsD19lOqlO4BK77X9Y5pQ+Y9s4KJxYJfHwzN
         GhD5yehJDup82tAnvYfghosz6zSdx3xhIBIzBfxWqLI/9wbs28u5fNJ6L+Fz64Uslghu
         OHn2hL3qgy7p1oIDWGNZMRYTxACVj7LGXRRWw2S3irhkHG+mYcpCjlf0fIPfScon5LEX
         XfJqPdIE/wXPGgzguT5KfGzHVzJ4wtCd9Q3+GpvXxKGoegoPFf4xKGD6UUn7lYzn6J+2
         119XHg581P5q58E0jHPHSPG5UjH0E274hWi5n/NrzKXvaPh53ULtGUTsPTYHqAWGuFzB
         cgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=C86CgKrohBVPLloJTNj8K1gKoORUDSvPyPt6pAAbawE=;
        b=4Qlc2WOi2LyvA/jquMIF/TLb2iRWMWgEOuVt7++f/N4E8ytGCNV6jz9ADGyFdUTlGJ
         1mYtqtGbnfuYY0vGbRfWkMAhoQ/RsvbCDyFk/pwtqgmTnbumpzTESIKI0Nc+vVzR6V1u
         8P3NBEfdWX84gRf9ETQha+cLuqRa4kWESgjd4mSXT5O48v8IviYc59bxfr3r9dCtiDB6
         NCLQVqf0I3cn9RU32y6uEvOb75sc9FzrR5J3rOZd4scIBwK1seaUKcUIvylQMSdhnB1B
         BzDwJITiEVH7WEGOxMqZLYPKsXqMY8DZ0Lw0rBe1MM1pkz4gf33p9K68X75OpMDQOps1
         XOFw==
X-Gm-Message-State: AJIora/1ZsIrw8FqtVv8N5l3n/Q3pNlBFPk/GVxB4T8ICPecQCw+Zv13
        HEzugxZqEdxC29nZ0ekas1mf1puhj/nc3Q==
X-Google-Smtp-Source: AGRyM1uodWcLzFFFK1uWmceius5sVtz/pGn/o+DolxaBWDM14FBC42JSbj+uFYIlAYElSswdXZuxJQ==
X-Received: by 2002:a05:6512:3b2c:b0:489:e66f:9de6 with SMTP id f44-20020a0565123b2c00b00489e66f9de6mr7443702lfv.304.1657879111687;
        Fri, 15 Jul 2022 02:58:31 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24359000000b00478fc420ea6sm823062lfl.244.2022.07.15.02.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 02:58:30 -0700 (PDT)
Message-ID: <24903621-358d-d380-76f4-6515c6313bbd@linaro.org>
Date:   Fri, 15 Jul 2022 11:58:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: renesas: Add RZ/G2L POEG
 binding
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220713135528.1386594-1-biju.das.jz@bp.renesas.com>
 <20220713135528.1386594-2-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220713135528.1386594-2-biju.das.jz@bp.renesas.com>
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

On 13/07/2022 15:55, Biju Das wrote:
> Add device tree bindings for the RZ/G2L Port Output Enable for GPT (POEG).
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> REF->v1:
>  * Modelled as pincontrol as most of its configuration is intended to be
>    static.
>  * Updated reg size in example.
> ---
>  .../bindings/pinctrl/renesas,rzg2l-poeg.yaml  | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-poeg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-poeg.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-poeg.yaml
> new file mode 100644
> index 000000000000..7607dd87fa68
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-poeg.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/renesas,rzg2l-poeg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/G2L Port Output Enable for GPT (POEG)
> +
> +maintainers:
> +  - Biju Das <biju.das.jz@bp.renesas.com>
> +
> +description: |
> +  The output pins of the general PWM timer (GPT) can be disabled by using
> +  the port output enabling function for the GPT (POEG). Specifically,
> +  either of the following ways can be used.
> +  * Input level detection of the GTETRGA to GTETRGD pins.
> +  * Output-disable request from the GPT.

Shouldn't this all be part of GPT? Is this a real separate device in the
SoC?

> +  * Register settings.

This is confusing... so you can use POEG to mess up registers of GPT
independently, so GPT does not know it?

> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r9a07g044-poeg  # RZ/G2{L,LC}
> +          - renesas,r9a07g054-poeg  # RZ/V2L
> +      - const: renesas,rzg2l-poeg
> +

Best regards,
Krzysztof
