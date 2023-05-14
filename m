Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD84F701CD0
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 12:05:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231916AbjENKFw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 06:05:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjENKFw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 06:05:52 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4CBEE64
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 03:05:50 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-50bdd7b229cso21000549a12.0
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 03:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684058749; x=1686650749;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AEESkSmM2yg5voafFPesEW8VArx2oSNLqjShFMs/DuM=;
        b=OyLcn1Yv30MUfI8z9ssANMpeZZts+OprdcA/iasJMb1DMpuk1R5D101T5Yu1rj/Zt4
         7a2n5wCr0ZBcql6hmpuMzw/R+9iNvyBs4Ae0DnBhr/UJWMWiICKFdgJQtixVz7Aj93AH
         TzBms5ISW5vsqLODzC/ul2SxCrouPD7n804OjnQQQuXxIgloyac5ehD9/hRQebBF2SHl
         0SOLTEpFq8Owh87R9grGOOecAuj9+ZHHwvGnJqKzbQbwihax+W/IEu8BEyXAnn/i3MiN
         +ElxCKV/NLh49jtFFYTn0rrYFCNmEj6aR+QKMy9V7WlluQt61sW4OA23c8N4mzIhyC1O
         C8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684058749; x=1686650749;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AEESkSmM2yg5voafFPesEW8VArx2oSNLqjShFMs/DuM=;
        b=dh5nOZ4Y5llqhOw7Fli+xqDjhkJf9glnLG8Rc0VgL6fdYStnTpeAaYR8YH3Z/Rd9X+
         UQBFNO8/qkj5xvugNWPUrkN4/rhkzUW087ZGbrIN6liFLWaNCoAv00uRSK58nK1onser
         4yqIDptRhDb+OsjTH2H0IZk7zRb+LqWnDC+qjp6Ry6PoiekTnCalNEyl6AkZGuz3Jj4a
         d2l9PAwjzyl9GGIsqh+iAp1B6QiMKPIDcBlxzXXVicm6zj7iTSDZ9y75B+X95XZlGWBP
         EFKh43/UKM0OvxCmZGfBX5UAxWbIWTp9qgMX732D3iJUYAqsl3/Em2rqOn9xVz6ORS+Y
         q7ug==
X-Gm-Message-State: AC+VfDxRwf0/vZQ/oq5gWP0Iym5vXFXkA5h/GzFoQ0kukQX7fzkKKlCK
        Yg8TUkoD93eAoJ73vT9LgomK8YEQg8bXrQ7Hs/bjEQ==
X-Google-Smtp-Source: ACHHUZ5SOGjQ1VP1duapR1kvjIiip6JZnD1Ud80MrMaoNp6c05dBBuvaom4AcL6CYJlc978ETuJfaQ==
X-Received: by 2002:a17:907:720e:b0:966:5a6c:752d with SMTP id dr14-20020a170907720e00b009665a6c752dmr21669896ejc.20.1684058749230;
        Sun, 14 May 2023 03:05:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:715f:ddce:f2ba:123b? ([2a02:810d:15c0:828:715f:ddce:f2ba:123b])
        by smtp.gmail.com with ESMTPSA id w13-20020a170907270d00b0095fbb1b72c2sm7974519ejk.63.2023.05.14.03.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 May 2023 03:05:48 -0700 (PDT)
Message-ID: <b53ffbf3-68c0-244f-0d0b-62a671d0aaef@linaro.org>
Date:   Sun, 14 May 2023 12:05:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 1/2] dt-bindings: samsung,mipi-dsim: Add
 'lane-polarities'
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>
References: <20230509191059.3327960-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230509191059.3327960-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 21:10, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The Samsung DSIM IP block allows the inversion of the clock and
> data lanes.
> 
> Add an optional property called 'lane-polarities' that describes the
> polarities of the MIPI DSI clock and data lanes.
> 
> This property is useful for properly describing the hardware when the
> board designer decided to switch the polarities of the MIPI DSI
> clock and/or data lanes.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v2:
> - Use video-interfaces.yaml (Rob).
> 
>  .../display/bridge/samsung,mipi-dsim.yaml     | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> index e841659e20cd..dad6d06fbdd9 100644
> --- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> @@ -105,6 +105,35 @@ properties:
>            DSI output port node to the panel or the next bridge
>            in the chain.
>  
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                oneOf:

Drop oneOf, no need for it.

> +                  - minItems: 1
> +                    maxItems: 4
> +                    uniqueItems: true
> +                    items:
> +                      enum: [ 1, 2, 3, 4 ]
> +                    description:
> +                      See ../../media/video-interfaces.yaml for details.

Drop description, it's obvious.

> +
> +              lane-polarities:
> +                minItems: 1
> +                maxItems: 5
> +                items:
> +                  enum: [ 0, 1 ]

Drop items, it's already in video-interfaces.

> +                description:
> +                  See ../../media/video-interfaces.yaml for details.

Drop this piece.

> +                  The Samsung MIPI DSI IP requires that all the data lanes have
> +                  the same polarity.
> +
> +            dependencies:
> +              lane-polarities: [data-lanes]
> +
>  required:
>    - clock-names
>    - clocks

Best regards,
Krzysztof

